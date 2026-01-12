import { readFileSync } from 'fs';
import mysql from 'mysql2/promise';
import dotenv from 'dotenv';

dotenv.config();

async function importThirukkural() {
  console.log("Importing complete Thirukkural database...");
  
  // Read the JSON file
  const data = JSON.parse(readFileSync('./thirukkural-complete.json', 'utf-8'));
  const kurals = data.kural;
  
  console.log(`Found ${kurals.length} couplets to import`);
  
  // Connect to database
  const connection = await mysql.createConnection(process.env.DATABASE_URL);
  
  // Clear existing data
  await connection.execute('DELETE FROM thirukkural');
  console.log("Cleared existing Thirukkural data");
  
  // Import all couplets
  let imported = 0;
  for (const kural of kurals) {
    try {
      // Determine chapter number and name from the data
      // Thirukkural has 133 chapters with 10 couplets each
      const chapterNumber = Math.ceil(kural.Number / 10);
      const chapterName = `Chapter ${chapterNumber}`;
      
      await connection.execute(
        `INSERT INTO thirukkural (
          couplet_number, 
          chapter_number, 
          chapter_name, 
          original_tamil, 
          transliteration, 
          english_translation, 
          explanation
        ) VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [
          kural.Number,
          chapterNumber,
          chapterName,
          `${kural.Line1}\n${kural.Line2}`,
          `${kural.transliteration1 || ''}\n${kural.transliteration2 || ''}`,
          kural.Translation || kural.couplet || '',
          kural.explanation || kural.mk || ''
        ]
      );
      imported++;
      
      if (imported % 100 === 0) {
        console.log(`Imported ${imported}/${kurals.length} couplets...`);
      }
    } catch (error) {
      console.error(`Error importing kural ${kural.Number}:`, error.message);
    }
  }
  
  await connection.end();
  console.log(`✅ Successfully imported ${imported} Thirukkural couplets!`);
}

importThirukkural().catch(console.error);
