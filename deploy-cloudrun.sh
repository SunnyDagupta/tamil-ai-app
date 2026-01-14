#!/bin/bash

# Tamil AI - Google Cloud Run Deployment Script

set -e

echo "🚀 Deploying Tamil AI to Google Cloud Run..."

# Configuration - UPDATED WITH ACTUAL PROJECT DETAILS
PROJECT_ID="gen-lang-client-0703034928"
REGION="us-central1"  # Same region as Cloud SQL
SERVICE_NAME="tamil-ai"
IMAGE_NAME="gcr.io/${PROJECT_ID}/${SERVICE_NAME}"
CLOUD_SQL_INSTANCE="${PROJECT_ID}:${REGION}:free-trial-first-project"

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null; then
    echo "❌ gcloud CLI is not installed. Please install it first:"
    echo "https://cloud.google.com/sdk/docs/install"
    exit 1
fi

# Set project
echo "📦 Setting project to ${PROJECT_ID}..."
gcloud config set project ${PROJECT_ID}

# Enable required APIs
echo "⚙️  Enabling required Google Cloud APIs..."
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable cloudbuild.googleapis.com

# Build using Cloud Build (no local Docker needed)
echo "🐳 Building Docker image with Cloud Build..."
gcloud builds submit --tag ${IMAGE_NAME}:latest .

# Deploy to Cloud Run with Cloud SQL connection
echo "☁️  Deploying to Cloud Run..."
gcloud run deploy ${SERVICE_NAME} \
  --image ${IMAGE_NAME}:latest \
  --platform managed \
  --region ${REGION} \
  --allow-unauthenticated \
  --port 8080 \
  --memory 1Gi \
  --cpu 1 \
  --min-instances 0 \
  --max-instances 100 \
  --set-env-vars="NODE_ENV=production" \
  --add-cloudsql-instances="${CLOUD_SQL_INSTANCE}" \
  --set-env-vars="DATABASE_URL=mysql://root:\${CLOUD_SQL_ROOT_PASSWORD}@localhost/tamilai?socket=/cloudsql/${CLOUD_SQL_INSTANCE}"

echo "✅ Deployment complete!"
echo "🌐 Your app is live at:"
gcloud run services describe ${SERVICE_NAME} --region ${REGION} --format='value(status.url)'
