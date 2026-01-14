# Google Cloud SQL Migration Guide

## Step 1: Create Cloud SQL Instance

1. Go to https://console.cloud.google.com/sql
2. Click "Create Instance"
3. Choose "MySQL"
4. Configuration:
   - **Instance ID:** `tamil-ai-db`
   - **Password:** (create a strong password and save it)
   - **Database version:** MySQL 8.0
   - **Region:** `asia-south1` (Mumbai - closest to India)
   - **Zonal availability:** Single zone (for cost savings)
   - **Machine type:** `db-n1-standard-1` (1 vCPU, 3.75GB RAM)
   - **Storage:** 10GB SSD with automatic increase enabled
   - **Backups:** Enabled (automated daily backups)
   - **Connections:** 
     - ✅ Public IP
     - ✅ Private IP (for Cloud Run)
5. Click "Create Instance" (takes 5-10 minutes)

## Step 2: Create Database

Once the instance is created:

1. Click on your instance `tamil-ai-db`
2. Go to "Databases" tab
3. Click "Create database"
4. Database name: `tamilai`
5. Click "Create"

## Step 3: Get Connection Details

1. Go to your Cloud SQL instance overview
2. Note down:
   - **Connection name:** `your-project-id:asia-south1:tamil-ai-db`
   - **Public IP address:** (for local testing)
   - **Private IP address:** (for Cloud Run)

## Step 4: Update Environment Variables

Create a `.env.production` file with:

```bash
# Google Cloud SQL Connection
DATABASE_HOST=<PUBLIC_IP_ADDRESS>  # Or use Cloud SQL Proxy
DATABASE_PORT=3306
DATABASE_NAME=tamilai
DATABASE_USER=root
DATABASE_PASSWORD=<YOUR_PASSWORD>

# Google Gemini API
GOOGLE_GEMINI_API_KEY=<YOUR_GEMINI_API_KEY>

# Other configs
NODE_ENV=production
PORT=8080
```

## Step 5: Migrate Schema

### Option A: Using Cloud SQL Proxy (Recommended for local migration)

1. Install Cloud SQL Proxy:
```bash
curl -o cloud-sql-proxy https://storage.googleapis.com/cloud-sql-connectors/cloud-sql-proxy/v2.8.0/cloud-sql-proxy.darwin.amd64
chmod +x cloud-sql-proxy
```

2. Start the proxy:
```bash
./cloud-sql-proxy your-project-id:asia-south1:tamil-ai-db
```

3. Run migrations:
```bash
cd tamil-ai-app
pnpm drizzle-kit push
```

### Option B: Direct Connection (if public IP is enabled)

1. Allow your IP address in Cloud SQL:
   - Go to Cloud SQL instance
   - Click "Connections" → "Networking"
   - Add your IP to "Authorized networks"

2. Update `.env` with public IP and run:
```bash
pnpm drizzle-kit push
```

## Step 6: Migrate Data

Export data from current Manus database:

```bash
# Export current data
mysqldump -h <current-host> -u <user> -p tamilai > backup.sql
```

Import to Cloud SQL:

```bash
# Using Cloud SQL Proxy
mysql -h 127.0.0.1 -u root -p tamilai < backup.sql

# Or using public IP
mysql -h <cloud-sql-public-ip> -u root -p tamilai < backup.sql
```

## Step 7: Test Connection

Create a test script `test-cloudsql.ts`:

```typescript
import mysql from 'mysql2/promise';

async function testConnection() {
  const connection = await mysql.createConnection({
    host: process.env.DATABASE_HOST,
    port: 3306,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME,
  });

  const [rows] = await connection.execute('SELECT COUNT(*) as count FROM thirukkural');
  console.log('✅ Connected to Cloud SQL!');
  console.log('Thirukkural couplets:', rows[0].count);
  
  await connection.end();
}

testConnection();
```

Run:
```bash
tsx test-cloudsql.ts
```

## Step 8: Deploy to Cloud Run

Once database is ready and tested:

```bash
./deploy-cloudrun.sh
```

## Cost Estimate

**Google Cloud SQL (db-n1-standard-1):**
- Instance: ~$50/month
- Storage (10GB): ~$2/month
- Backups: ~$1/month
- **Total: ~$53/month**

## Troubleshooting

### Connection Issues

1. Check if Cloud SQL instance is running
2. Verify IP whitelist (if using public IP)
3. Check credentials in `.env`
4. Ensure database `tamilai` exists

### Migration Fails

1. Check schema compatibility
2. Verify MySQL version (should be 8.0)
3. Check for foreign key constraints
4. Review error logs in Cloud SQL console

## Security Best Practices

1. ✅ Use Cloud SQL Proxy for local development
2. ✅ Use Private IP for Cloud Run connection
3. ✅ Enable SSL/TLS connections
4. ✅ Rotate passwords regularly
5. ✅ Enable automated backups
6. ✅ Set up point-in-time recovery
7. ✅ Monitor query performance
