# Tamil AI - Google Cloud Deployment Guide

This document provides comprehensive instructions for deploying the Tamil AI application to Google Cloud Platform, including Cloud Run for hosting and Cloud SQL for the database.

## Overview

The Tamil AI application has been prepared for a complete migration to Google Cloud Platform. This migration replaces the Manus infrastructure with Google Cloud services, providing scalability, reliability, and full control over the infrastructure.

| Component | Current (Manus) | Target (Google Cloud) |
|-----------|-----------------|----------------------|
| Web Hosting | Manus Platform | Cloud Run |
| Database | Manus MySQL | Cloud SQL (MySQL 8.0) |
| LLM API | Manus LLM | Google Gemini 2.5 Flash |
| File Storage | Manus S3 | Google Cloud Storage |

## Prerequisites

Before proceeding with deployment, ensure you have the following:

1. A Google Cloud account with billing enabled
2. The gcloud CLI installed on your local machine
3. Docker installed (optional, for local testing)
4. Access to the Google Cloud Console

## Cloud SQL Configuration

The Cloud SQL instance has already been created and configured with the following details:

| Setting | Value |
|---------|-------|
| Project ID | gen-lang-client-0703034928 |
| Instance Name | free-trial-first-project |
| Region | us-central1 |
| Database Engine | MySQL 8.0 |
| Database Name | tamilai |
| Public IP | 34.31.42.182 |
| Connection Name | gen-lang-client-0703034928:us-central1:free-trial-first-project |

### Database Schema

The database contains 18 tables that have been migrated from the Manus database:

| Table | Records | Description |
|-------|---------|-------------|
| thirukkural | 1,330 | All Thirukkural couplets with Tamil text and translations |
| meditation_categories | 4 | Categories for meditation content |
| subscription_tiers | 3 | Subscription tier definitions |
| achievements | 6 | User achievement definitions |
| learning_pathways | 3 | Learning pathway configurations |
| users | - | User accounts and profiles |
| bookmarks | - | User bookmarked couplets |
| user_lesson_progress | - | Lesson completion tracking |
| user_pathway_progress | - | Pathway progress tracking |
| user_streaks | - | User activity streaks |
| meditation_sessions | - | Meditation session history |
| meditations | - | Meditation content |
| community_posts | - | Community discussion posts |
| community_comments | - | Comments on posts |
| post_likes | - | Post like records |
| user_achievements | - | Unlocked achievements |
| user_subscriptions | - | User subscription records |
| lessons | - | Lesson content |

## Deployment Steps

### Step 1: Authenticate with Google Cloud

Open a terminal and run the following commands:

```bash
gcloud auth login
gcloud config set project gen-lang-client-0703034928
```

### Step 2: Enable Required APIs

Enable the necessary Google Cloud APIs:

```bash
gcloud services enable run.googleapis.com
gcloud services enable containerregistry.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable sqladmin.googleapis.com
```

### Step 3: Create Service Account

Create a service account for Cloud Run with Cloud SQL access:

```bash
gcloud iam service-accounts create tamil-ai-cloudrun \
  --display-name="Tamil AI Cloud Run Service Account"

gcloud projects add-iam-policy-binding gen-lang-client-0703034928 \
  --member="serviceAccount:tamil-ai-cloudrun@gen-lang-client-0703034928.iam.gserviceaccount.com" \
  --role="roles/cloudsql.client"
```

### Step 4: Build the Container Image

Navigate to the project directory and build the container using Cloud Build:

```bash
cd /path/to/tamil-ai-app
gcloud builds submit --tag gcr.io/gen-lang-client-0703034928/tamil-ai:latest .
```

This process typically takes 5-10 minutes and builds the Docker image in the cloud.

### Step 5: Deploy to Cloud Run

Deploy the application to Cloud Run with the following command:

```bash
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

Replace `YOUR_PASSWORD` with your Cloud SQL root password and `YOUR_GEMINI_API_KEY` with your Gemini API key.

### Step 6: Verify Deployment

After deployment, retrieve the service URL:

```bash
gcloud run services describe tamil-ai --region us-central1 --format='value(status.url)'
```

Visit the URL in your browser to verify the application is running correctly.

## Environment Variables

The following environment variables must be configured for the application:

| Variable | Description | Required |
|----------|-------------|----------|
| NODE_ENV | Set to "production" for production deployment | Yes |
| DATABASE_URL | Cloud SQL connection string with Unix socket | Yes |
| GOOGLE_GEMINI_API_KEY | API key for Google Gemini LLM | Yes |
| PORT | Automatically set by Cloud Run (8080) | Auto |

## Cost Estimation

Based on typical usage patterns, the estimated monthly costs are:

| Service | Estimated Cost |
|---------|---------------|
| Cloud Run | $0-10 (pay per request) |
| Cloud SQL (db-f1-micro) | $7-15 |
| Cloud Build | Free tier |
| Container Registry | $1-2 |
| **Total** | **$10-30/month** |

For higher traffic scenarios, costs may increase based on Cloud Run scaling and database usage.

## Security Recommendations

After successful deployment, implement the following security measures:

1. **Restrict Cloud SQL Network Access**: Remove the temporary 0.0.0.0/0 authorized network and rely solely on Cloud Run's private connection via Cloud SQL Proxy.

2. **Enable SSL/TLS**: Ensure all database connections use SSL encryption.

3. **Set Up Cloud Armor**: Configure Cloud Armor for DDoS protection and web application firewall capabilities.

4. **Enable Cloud Logging**: Configure logging for monitoring and debugging purposes.

5. **Set Up Alerts**: Create alerting policies for high traffic, errors, and resource utilization.

## Connecting Custom Domain

To connect your custom domain (payradeepu.ai):

1. Navigate to Cloud Run in the Google Cloud Console
2. Select the tamil-ai service
3. Click "Manage Custom Domains"
4. Add your domain and follow the DNS verification steps
5. Update your domain's DNS records as instructed

## Troubleshooting

### Cloud SQL Connection Issues

If the application cannot connect to Cloud SQL:

1. Verify the Cloud SQL instance is running in the Google Cloud Console
2. Check that the service account has the `cloudsql.client` role
3. Verify the connection name format is correct
4. Check the DATABASE_URL environment variable syntax

### Gemini API Errors

If LLM features are not working:

1. Verify the GOOGLE_GEMINI_API_KEY is set correctly
2. Check API quota in the Google Cloud Console
3. Review Cloud Run logs for specific error messages

### Application Not Starting

If the application fails to start:

1. Check Cloud Run logs for error messages
2. Verify all required environment variables are set
3. Ensure the container image was built successfully
4. Check memory and CPU allocation

## Support

For additional support or questions about this deployment, consult the following resources:

- [Google Cloud Run Documentation](https://cloud.google.com/run/docs)
- [Google Cloud SQL Documentation](https://cloud.google.com/sql/docs)
- [Google Gemini API Documentation](https://ai.google.dev/docs)

---

*Document prepared by Manus AI*
*Last updated: January 15, 2026*
