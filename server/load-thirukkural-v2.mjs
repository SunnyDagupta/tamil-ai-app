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
  // Load the JSON data
  const dataFile = path.join(__dirname, 'thirukkural_seed_data.json');
  const couplets = JSON.parse(fs.readFileSync(dataFile, 'utf-8'));
  
  console.log(`Loaded ${couplets.length} couplets from JSON`);
  
  // Clear existing data
  await connection.query('DELETE FROM thirukkural');
  console.log('✓ Cleared existing data');
  
  // Insert in batches of 50
  const batchSize = 50;
  let inserted = 0;
  
  for (let i = 0; i < couplets.length; i += batchSize) {
    const batch = couplets.slice(i, i + batchSize);
    
    // Build INSERT statement for this batch
    const values = batch.map(c => 
      `(${c.coupletNumber}, ${c.chapterNumber}, ${connection.escape(c.chapterName)}, ${connection.escape(c.originalTamil)}, ${connection.escape(c.transliteration)}, ${connection.escape(c.englishTranslation)}, ${connection.escape(c.explanation)})`
    ).join(',\n  ');
    
    const sql = `INSERT INTO thirukkural (couplet_number, chapter_number, chapter_name, original_tamil, transliteration, english_translation, explanation) VALUES\n  ${values}`;
    
    await connection.query(sql);
    inserted += batch.length;
    console.log(`✓ Inserted couplets ${i + 1} to ${Math.min(i + batchSize, couplets.length)}`);
  }
  
  // Verify the count
  const [rows] = await connection.query('SELECT COUNT(*) as count FROM thirukkural');
  console.log(`\n✅ Database now contains ${rows[0].count} Thirukkural couplets`);
  
} catch (error) {
  console.error('❌ Error loading Thirukkural data:', error.message);
  process.exit(1);
} finally {
  await connection.end();
}

console.log('\n📖 Attribution: This data is from Project Madurai, an open initiative to digitize Tamil literature.');
console.log('🔗 Visit /attribution page in the app for full acknowledgements');

process.exit(0);
