import mysql from "mysql2/promise";
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

console.log("🌱 Loading complete Thirukkural dataset...");
console.log("📚 Data sourced from Project Madurai (https://www.projectmadurai.org/)");

const connection = await mysql.createConnection(process.env.DATABASE_URL);

try {
  // Read the SQL file
  const sqlFile = path.join(__dirname, 'thirukkural_complete.sql');
  const sql = fs.readFileSync(sqlFile, 'utf-8');
  
  // Split by semicolons to get individual statements
  const statements = sql.split(';').filter(s => s.trim() && !s.trim().startsWith('--'));
  
  console.log(`Executing ${statements.length} SQL statements...`);
  
  for (let i = 0; i < statements.length; i++) {
    const statement = statements[i].trim();
    if (statement) {
      await connection.query(statement);
      if (i === 0) {
        console.log('✓ Cleared existing data');
      } else if (i === statements.length - 1) {
        console.log('✓ Inserted all 1,330 couplets');
      }
    }
  }
  
  // Verify the count
  const [rows] = await connection.query('SELECT COUNT(*) as count FROM thirukkural');
  console.log(`\n✅ Database now contains ${rows[0].count} Thirukkural couplets`);
  
} catch (error) {
  console.error('❌ Error loading Thirukkural data:', error);
  process.exit(1);
} finally {
  await connection.end();
}

console.log('\n📖 Attribution: This data is from Project Madurai, an open initiative to digitize Tamil literature.');
console.log('🔗 Visit /attribution page in the app for full acknowledgements');

process.exit(0);
