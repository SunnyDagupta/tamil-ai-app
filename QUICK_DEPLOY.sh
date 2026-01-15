#!/bin/bash
# Tamil AI - Quick Deploy to Google Cloud Run
# Just run: ./QUICK_DEPLOY.sh

echo "=== Tamil AI Cloud Run Deployment ==="
echo ""

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null; then
    echo "ERROR: gcloud is not installed. Please install it first."
    exit 1
fi

# Login and set project
echo "Step 1: Logging in to Google Cloud..."
gcloud auth login
gcloud config set project gen-lang-client-0703034928

# Get secrets from user
echo ""
echo "Step 2: Enter your secrets..."
read -p "Enter your Cloud SQL password: " CLOUD_SQL_PASSWORD
read -p "Enter your Gemini API key: " GEMINI_KEY
read -p "Enter a JWT secret (any random string): " JWT_SECRET

# Deploy
echo ""
echo "Step 3: Deploying to Cloud Run (this takes 5-10 minutes)..."
gcloud run deploy tamil-ai \
  --source . \
  --region us-central1 \
  --allow-unauthenticated \
  --port 8080 \
  --memory 2Gi \
  --cpu 2 \
  --min-instances 1 \
  --max-instances 100 \
  --add-cloudsql-instances=gen-lang-client-0703034928:us-central1:free-trial-first-project \
  --set-env-vars="NODE_ENV=production" \
  --set-env-vars="DATABASE_URL=mysql://root:${CLOUD_SQL_PASSWORD}@localhost/tamilai?socket=/cloudsql/gen-lang-client-0703034928:us-central1:free-trial-first-project" \
  --set-env-vars="GOOGLE_GEMINI_API_KEY=${GEMINI_KEY}" \
  --set-env-vars="JWT_SECRET=${JWT_SECRET}" \
  --set-env-vars="GCS_BUCKET_NAME=tamil-ai-storage" \
  --set-env-vars="GCS_PROJECT_ID=gen-lang-client-0703034928"

echo ""
echo "=== Deployment Complete! ==="
echo "Your app URL will be shown above."
