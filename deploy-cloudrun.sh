#!/bin/bash

# Tamil AI - Google Cloud Run Deployment Script
# Complete migration from Manus to Google Cloud Platform
# Designed for 100K+ user scalability

set -e

echo "🚀 Deploying Tamil AI to Google Cloud Run..."
echo "   Configured for 100K+ users with auto-scaling"

# ============================================
# CONFIGURATION - UPDATE THESE VALUES
# ============================================
PROJECT_ID="gen-lang-client-0703034928"
REGION="us-central1"
SERVICE_NAME="tamil-ai"
IMAGE_NAME="gcr.io/${PROJECT_ID}/${SERVICE_NAME}"

# Cloud SQL Configuration
CLOUD_SQL_INSTANCE="${PROJECT_ID}:${REGION}:free-trial-first-project"
DATABASE_NAME="tamilai"

# Google Cloud Storage Configuration
GCS_BUCKET_NAME="tamil-ai-storage"

# ============================================
# PRE-FLIGHT CHECKS
# ============================================

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null; then
    echo "❌ gcloud CLI is not installed. Please install it first:"
    echo "   https://cloud.google.com/sdk/docs/install"
    exit 1
fi

# Check if authenticated
if ! gcloud auth list --filter=status:ACTIVE --format="value(account)" | head -1 > /dev/null 2>&1; then
    echo "❌ Not authenticated. Please run: gcloud auth login"
    exit 1
fi

# ============================================
# ENVIRONMENT VARIABLES (from secrets)
# ============================================

# These should be set before running the script or passed as arguments
: ${CLOUD_SQL_ROOT_PASSWORD:?"CLOUD_SQL_ROOT_PASSWORD is required"}
: ${GOOGLE_GEMINI_API_KEY:?"GOOGLE_GEMINI_API_KEY is required"}
: ${JWT_SECRET:?"JWT_SECRET is required"}

# ============================================
# SETUP
# ============================================

echo "📦 Setting project to ${PROJECT_ID}..."
gcloud config set project ${PROJECT_ID}

# Enable required APIs
echo "⚙️  Enabling required Google Cloud APIs..."
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable storage.googleapis.com

# ============================================
# CREATE GCS BUCKET (if not exists)
# ============================================

echo "📦 Setting up Google Cloud Storage bucket..."
if ! gsutil ls -b gs://${GCS_BUCKET_NAME} > /dev/null 2>&1; then
    echo "   Creating bucket ${GCS_BUCKET_NAME}..."
    gsutil mb -l ${REGION} gs://${GCS_BUCKET_NAME}
    gsutil iam ch allUsers:objectViewer gs://${GCS_BUCKET_NAME}
else
    echo "   Bucket ${GCS_BUCKET_NAME} already exists"
fi

# ============================================
# BUILD CONTAINER
# ============================================

echo "🐳 Building Docker image with Cloud Build..."
gcloud builds submit --tag ${IMAGE_NAME}:latest .

# ============================================
# DEPLOY TO CLOUD RUN
# ============================================

echo "☁️  Deploying to Cloud Run..."
echo "   - Region: ${REGION}"
echo "   - Max instances: 100 (auto-scaling)"
echo "   - Memory: 1Gi per instance"

gcloud run deploy ${SERVICE_NAME} \
  --image ${IMAGE_NAME}:latest \
  --platform managed \
  --region ${REGION} \
  --allow-unauthenticated \
  --port 8080 \
  --memory 1Gi \
  --cpu 1 \
  --min-instances 1 \
  --max-instances 100 \
  --concurrency 80 \
  --timeout 300 \
  --add-cloudsql-instances="${CLOUD_SQL_INSTANCE}" \
  --set-env-vars="NODE_ENV=production" \
  --set-env-vars="DATABASE_URL=mysql://root:${CLOUD_SQL_ROOT_PASSWORD}@localhost/${DATABASE_NAME}?socket=/cloudsql/${CLOUD_SQL_INSTANCE}" \
  --set-env-vars="GOOGLE_GEMINI_API_KEY=${GOOGLE_GEMINI_API_KEY}" \
  --set-env-vars="JWT_SECRET=${JWT_SECRET}" \
  --set-env-vars="GCS_BUCKET_NAME=${GCS_BUCKET_NAME}" \
  --set-env-vars="GCS_PROJECT_ID=${PROJECT_ID}"

# ============================================
# GET SERVICE URL
# ============================================

echo ""
echo "✅ Deployment complete!"
echo ""
echo "🌐 Your app is live at:"
SERVICE_URL=$(gcloud run services describe ${SERVICE_NAME} --region ${REGION} --format='value(status.url)')
echo "   ${SERVICE_URL}"
echo ""
echo "📊 View logs at:"
echo "   https://console.cloud.google.com/run/detail/${REGION}/${SERVICE_NAME}/logs?project=${PROJECT_ID}"
echo ""
echo "🔧 Next steps:"
echo "   1. Update your mobile app API URL to: ${SERVICE_URL}"
echo "   2. Configure custom domain (payradeepu.ai) in Cloud Run console"
echo "   3. Remove 0.0.0.0/0 from Cloud SQL authorized networks"
