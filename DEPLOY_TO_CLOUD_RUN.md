# Deploy Tamil AI to Google Cloud Run

This guide walks you through deploying the Tamil AI app to Google Cloud Run with Cloud SQL.

## Prerequisites

1. **Google Cloud Account** with billing enabled
2. **gcloud CLI** installed on your computer
3. **Cloud SQL instance** already created (done!)
4. **Database migrated** with all data (done!)

## Your Cloud Configuration

| Setting | Value |
|---------|-------|
| Project ID | `gen-lang-client-0703034928` |
| Region | `us-central1` |
| Cloud SQL Instance | `free-trial-first-project` |
| Cloud SQL Connection | `gen-lang-client-0703034928:us-central1:free-trial-first-project` |
| Database Name | `tamilai` |
| Public IP | `34.31.42.182` |

## Step 1: Install gcloud CLI (if not already installed)

### macOS
```bash
brew install google-cloud-sdk
```

### Windows
Download from: https://cloud.google.com/sdk/docs/install

### After installation
```bash
gcloud init
gcloud auth login
```

## Step 2: Set Your Project

```bash
gcloud config set project gen-lang-client-0703034928
```

## Step 3: Enable Required APIs

```bash
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable sqladmin.googleapis.com
```

## Step 4: Create a Service Account for Cloud Run

```bash
# Create service account
gcloud iam service-accounts create tamil-ai-cloudrun \
  --display-name="Tamil AI Cloud Run Service Account"

# Grant Cloud SQL Client role
gcloud projects add-iam-policy-binding gen-lang-client-0703034928 \
  --member="serviceAccount:tamil-ai-cloudrun@gen-lang-client-0703034928.iam.gserviceaccount.com" \
  --role="roles/cloudsql.client"
```

## Step 5: Build and Deploy

### Option A: Using Cloud Build (Recommended - No Docker Required)

From the `tamil-ai-app` directory:

```bash
# Build the image using Cloud Build
gcloud builds submit --tag gcr.io/gen-lang-client-0703034928/tamil-ai:latest .

# Deploy to Cloud Run
gcloud run deploy tamil-ai \
  --image gcr.io/gen-lang-client-0703034928/tamil-ai:latest \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --port 8080 \
  --memory 1Gi \
  --cpu 1 \
  --min-instances 0 \
  --max-instances 100 \
  --add-cloudsql-instances=gen-lang-client-0703034928:us-central1:free-trial-first-project \
  --set-env-vars="NODE_ENV=production" \
  --set-env-vars="DATABASE_URL=mysql://root:YOUR_PASSWORD@localhost/tamilai?socket=/cloudsql/gen-lang-client-0703034928:us-central1:free-trial-first-project" \
  --set-env-vars="GOOGLE_GEMINI_API_KEY=YOUR_GEMINI_API_KEY" \
  --service-account=tamil-ai-cloudrun@gen-lang-client-0703034928.iam.gserviceaccount.com
```

**Important:** Replace `YOUR_PASSWORD` with your Cloud SQL root password and `YOUR_GEMINI_API_KEY` with your Gemini API key.

### Option B: Using Local Docker

```bash
# Build locally
docker build -t gcr.io/gen-lang-client-0703034928/tamil-ai:latest .

# Push to Container Registry
docker push gcr.io/gen-lang-client-0703034928/tamil-ai:latest

# Deploy (same command as above)
```

## Step 6: Verify Deployment

```bash
# Get the URL
gcloud run services describe tamil-ai --region us-central1 --format='value(status.url)'
```

Visit the URL to test your app!

## Step 7: Update Mobile App API URL

After deployment, update your mobile app's API URL:

1. Open `tamil-ai-mobile/app.json`
2. Find the API URL configuration
3. Update it to your Cloud Run URL (e.g., `https://tamil-ai-xxxxx-uc.a.run.app`)

## Environment Variables Reference

| Variable | Description | Required |
|----------|-------------|----------|
| `NODE_ENV` | Set to `production` | Yes |
| `DATABASE_URL` | Cloud SQL connection string with socket | Yes |
| `GOOGLE_GEMINI_API_KEY` | Your Gemini API key | Yes |
| `PORT` | Set automatically by Cloud Run (8080) | Auto |

## Troubleshooting

### "Cloud SQL connection failed"
- Verify the Cloud SQL instance is running
- Check the service account has `cloudsql.client` role
- Verify the connection name is correct

### "Database not found"
- Ensure the database `tamilai` exists
- Check the password in DATABASE_URL

### "Gemini API error"
- Verify GOOGLE_GEMINI_API_KEY is set correctly
- Check API quota in Google Cloud Console

## Cost Estimate

| Service | Monthly Cost |
|---------|-------------|
| Cloud Run | ~$0-10 (pay per use) |
| Cloud SQL (db-f1-micro) | ~$7-15 |
| Cloud Build | Free tier usually sufficient |
| Container Registry | ~$1-2 |
| **Total** | **~$10-30/month** |

## Security Recommendations (Post-Launch)

1. **Restrict Cloud SQL network access:**
   - Remove `0.0.0.0/0` from authorized networks
   - Use only Cloud Run's private connection

2. **Set up Cloud Armor** for DDoS protection

3. **Enable Cloud Logging** for monitoring

4. **Set up alerts** for high traffic or errors

## Next Steps

1. ✅ Deploy to Cloud Run
2. ✅ Test the web app
3. ✅ Update mobile app API URL
4. ✅ Submit iOS app to TestFlight
5. ✅ Build and test Android APK
6. ✅ Connect custom domain (payradeepu.ai)
