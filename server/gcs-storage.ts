/**
 * Google Cloud Storage Service
 * Replaces Manus S3 storage with Google Cloud Storage
 */

import { Storage } from '@google-cloud/storage';

// Initialize Google Cloud Storage
// In Cloud Run, this will use the default service account
// For local development, set GOOGLE_APPLICATION_CREDENTIALS env var
const storage = new Storage({
  projectId: process.env.GCS_PROJECT_ID || 'gen-lang-client-0703034928',
});

// Bucket name - should be set via environment variable
const BUCKET_NAME = process.env.GCS_BUCKET_NAME || 'tamil-ai-storage';

/**
 * Get the storage bucket
 */
function getBucket() {
  return storage.bucket(BUCKET_NAME);
}

/**
 * Normalize the storage key (remove leading slashes)
 */
function normalizeKey(relKey: string): string {
  return relKey.replace(/^\/+/, '');
}

/**
 * Upload a file to Google Cloud Storage
 * @param relKey - Relative path/key for the file
 * @param data - File data as Buffer, Uint8Array, or string
 * @param contentType - MIME type of the file
 * @returns Object with key and public URL
 */
export async function storagePut(
  relKey: string,
  data: Buffer | Uint8Array | string,
  contentType = 'application/octet-stream'
): Promise<{ key: string; url: string }> {
  const key = normalizeKey(relKey);
  const bucket = getBucket();
  const file = bucket.file(key);

  // Convert data to Buffer if needed
  const buffer = typeof data === 'string' 
    ? Buffer.from(data) 
    : Buffer.from(data);

  await file.save(buffer, {
    contentType,
    metadata: {
      contentType,
    },
    // Make the file publicly readable
    public: true,
  });

  // Get the public URL
  const url = `https://storage.googleapis.com/${BUCKET_NAME}/${key}`;

  return { key, url };
}

/**
 * Get a signed URL for downloading a file from Google Cloud Storage
 * @param relKey - Relative path/key for the file
 * @param expiresInMinutes - How long the signed URL should be valid (default: 60 minutes)
 * @returns Object with key and signed URL
 */
export async function storageGet(
  relKey: string,
  expiresInMinutes = 60
): Promise<{ key: string; url: string }> {
  const key = normalizeKey(relKey);
  const bucket = getBucket();
  const file = bucket.file(key);

  // Check if file is public, if so return public URL
  try {
    const [metadata] = await file.getMetadata();
    if (metadata.acl?.some((acl: any) => acl.entity === 'allUsers')) {
      return {
        key,
        url: `https://storage.googleapis.com/${BUCKET_NAME}/${key}`,
      };
    }
  } catch (error) {
    // File might not exist or not have public access, continue to signed URL
  }

  // Generate a signed URL for private files
  const [signedUrl] = await file.getSignedUrl({
    action: 'read',
    expires: Date.now() + expiresInMinutes * 60 * 1000,
  });

  return { key, url: signedUrl };
}

/**
 * Delete a file from Google Cloud Storage
 * @param relKey - Relative path/key for the file
 */
export async function storageDelete(relKey: string): Promise<void> {
  const key = normalizeKey(relKey);
  const bucket = getBucket();
  const file = bucket.file(key);

  await file.delete({ ignoreNotFound: true });
}

/**
 * Check if a file exists in Google Cloud Storage
 * @param relKey - Relative path/key for the file
 * @returns true if file exists, false otherwise
 */
export async function storageExists(relKey: string): Promise<boolean> {
  const key = normalizeKey(relKey);
  const bucket = getBucket();
  const file = bucket.file(key);

  const [exists] = await file.exists();
  return exists;
}

/**
 * List files in a directory/prefix
 * @param prefix - Directory prefix to list
 * @returns Array of file keys
 */
export async function storageList(prefix: string): Promise<string[]> {
  const bucket = getBucket();
  const [files] = await bucket.getFiles({
    prefix: normalizeKey(prefix),
  });

  return files.map(file => file.name);
}
