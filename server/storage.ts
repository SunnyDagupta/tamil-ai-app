/**
 * Storage Service - Google Cloud Storage
 * 
 * This module provides file storage functionality using Google Cloud Storage.
 * For Cloud Run deployment, it uses the default service account.
 * Falls back to Manus storage if GCS is not configured.
 */

import { Storage } from '@google-cloud/storage';

// Check if we should use Google Cloud Storage
const USE_GCS = process.env.GCS_BUCKET_NAME || process.env.GOOGLE_APPLICATION_CREDENTIALS;

// Google Cloud Storage configuration
const GCS_PROJECT_ID = process.env.GCS_PROJECT_ID || 'gen-lang-client-0703034928';
const GCS_BUCKET_NAME = process.env.GCS_BUCKET_NAME || 'tamil-ai-storage';

// Initialize Google Cloud Storage (lazy initialization)
let _storage: Storage | null = null;

function getStorage(): Storage {
  if (!_storage) {
    _storage = new Storage({
      projectId: GCS_PROJECT_ID,
    });
  }
  return _storage;
}

function getBucket() {
  return getStorage().bucket(GCS_BUCKET_NAME);
}

function normalizeKey(relKey: string): string {
  return relKey.replace(/^\/+/, '');
}

/**
 * Upload a file to storage
 */
export async function storagePut(
  relKey: string,
  data: Buffer | Uint8Array | string,
  contentType = 'application/octet-stream'
): Promise<{ key: string; url: string }> {
  const key = normalizeKey(relKey);

  if (USE_GCS) {
    // Use Google Cloud Storage
    const bucket = getBucket();
    const file = bucket.file(key);

    const buffer = typeof data === 'string' 
      ? Buffer.from(data) 
      : Buffer.from(data);

    await file.save(buffer, {
      contentType,
      metadata: { contentType },
      public: true,
    });

    const url = `https://storage.googleapis.com/${GCS_BUCKET_NAME}/${key}`;
    return { key, url };
  } else {
    // Fallback to Manus storage (for development)
    const baseUrl = process.env.BUILT_IN_FORGE_API_URL;
    const apiKey = process.env.BUILT_IN_FORGE_API_KEY;

    if (!baseUrl || !apiKey) {
      throw new Error('Storage not configured: set GCS_BUCKET_NAME for Google Cloud Storage or BUILT_IN_FORGE_API_URL for Manus');
    }

    const uploadUrl = new URL('v1/storage/upload', baseUrl.endsWith('/') ? baseUrl : `${baseUrl}/`);
    uploadUrl.searchParams.set('path', key);

    const blob = typeof data === 'string'
      ? new Blob([data], { type: contentType })
      : new Blob([data as any], { type: contentType });
    
    const form = new FormData();
    form.append('file', blob, key.split('/').pop() ?? key);

    const response = await fetch(uploadUrl, {
      method: 'POST',
      headers: { Authorization: `Bearer ${apiKey}` },
      body: form,
    });

    if (!response.ok) {
      const message = await response.text().catch(() => response.statusText);
      throw new Error(`Storage upload failed: ${message}`);
    }

    const result = await response.json();
    return { key, url: result.url };
  }
}

/**
 * Get a URL for downloading a file from storage
 */
export async function storageGet(
  relKey: string,
  expiresInMinutes = 60
): Promise<{ key: string; url: string }> {
  const key = normalizeKey(relKey);

  if (USE_GCS) {
    // Use Google Cloud Storage
    const bucket = getBucket();
    const file = bucket.file(key);

    // Try to get public URL first
    try {
      const [metadata] = await file.getMetadata();
      // If file exists and is public, return public URL
      return {
        key,
        url: `https://storage.googleapis.com/${GCS_BUCKET_NAME}/${key}`,
      };
    } catch (error) {
      // File might not exist or need signed URL
    }

    // Generate signed URL for private files
    const [signedUrl] = await file.getSignedUrl({
      action: 'read',
      expires: Date.now() + expiresInMinutes * 60 * 1000,
    });

    return { key, url: signedUrl };
  } else {
    // Fallback to Manus storage
    const baseUrl = process.env.BUILT_IN_FORGE_API_URL;
    const apiKey = process.env.BUILT_IN_FORGE_API_KEY;

    if (!baseUrl || !apiKey) {
      throw new Error('Storage not configured');
    }

    const downloadUrl = new URL('v1/storage/downloadUrl', baseUrl.endsWith('/') ? baseUrl : `${baseUrl}/`);
    downloadUrl.searchParams.set('path', key);

    const response = await fetch(downloadUrl, {
      method: 'GET',
      headers: { Authorization: `Bearer ${apiKey}` },
    });

    const result = await response.json();
    return { key, url: result.url };
  }
}

/**
 * Delete a file from storage
 */
export async function storageDelete(relKey: string): Promise<void> {
  const key = normalizeKey(relKey);

  if (USE_GCS) {
    const bucket = getBucket();
    const file = bucket.file(key);
    await file.delete({ ignoreNotFound: true });
  } else {
    // Manus storage doesn't have a delete endpoint in the current implementation
    console.warn('storageDelete not implemented for Manus storage');
  }
}

/**
 * Check if a file exists in storage
 */
export async function storageExists(relKey: string): Promise<boolean> {
  const key = normalizeKey(relKey);

  if (USE_GCS) {
    const bucket = getBucket();
    const file = bucket.file(key);
    const [exists] = await file.exists();
    return exists;
  } else {
    // Try to get the file URL - if it works, file exists
    try {
      await storageGet(relKey);
      return true;
    } catch {
      return false;
    }
  }
}
