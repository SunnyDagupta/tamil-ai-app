#!/bin/bash

# Tamil AI - Google Cloud Run Deployment Script

set -e

echo "🚀 Deploying Tamil AI to Google Cloud Run..."

# Configuration
PROJECT_ID="your-project-id"  # Replace with your GCP project ID
REGION="asia-south1"  # Closest to India
SERVICE_NAME="tamil-ai"
IMAGE_NAME="gcr.io/${PROJECT_ID}/${SERVICE_NAME}"

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null; then
    echo "❌ gcloud CLI is not installed. Please install it first:"
    echo "https://cloud.google.com/sdk/docs/install"
    exit 1
fi

# Authenticate with Google Cloud
echo "🔐 Authenticating with Google Cloud..."
gcloud auth login

# Set project
echo "📦 Setting project to ${PROJECT_ID}..."
gcloud config set project ${PROJECT_ID}

# Enable required APIs
echo "⚙️  Enabling required Google Cloud APIs..."
gcloud services enable run.googleapis.com
gcloud services enable sql-component.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable storage-api.googleapis.com

# Build and push Docker image
echo "🐳 Building Docker image..."
docker build -t ${IMAGE_NAME}:latest .

echo "📤 Pushing image to Google Container Registry..."
docker push ${IMAGE_NAME}:latest

# Deploy to Cloud Run
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
  --add-cloudsql-instances="${PROJECT_ID}:${REGION}:tamil-ai-db"

echo "✅ Deployment complete!"
echo "🌐 Your app is live at:"
gcloud run services describe ${SERVICE_NAME} --region ${REGION} --format='value(status.url)'
