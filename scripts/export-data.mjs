import mysql from 'mysql2/promise';
import fs from 'fs';

// Manus database connection (local)
const manusConfig = {
  host: process.env.DB_HOST || '127.0.0.1',
  port: parseInt(process.env.DB_PORT || '3306'),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'tamilai'
};

async function exportData() {
  console.log('Connecting to Manus database...');
  const connection = await mysql.createConnection(manusConfig);
  
  // Tables to export (in order to respect foreign keys)
  const tables = [
    'thirukkural',
    'meditation_categories',
    'subscription_tiers',
    'achievements',
    'learning_pathways'
  ];
  
  const exportData = {};
  
  for (const table of tables) {
    console.log(`Exporting ${table}...`);
    const [rows] = await connection.execute(`SELECT * FROM ${table}`);
    exportData[table] = rows;
    console.log(`  - ${rows.length} rows`);
  }
  
  // Write to JSON file
  fs.writeFileSync('/tmp/manus_data_export.json', JSON.stringify(exportData, null, 2));
  console.log('Data exported to /tmp/manus_data_export.json');
  
  await connection.end();
}

exportData().catch(console.error);
