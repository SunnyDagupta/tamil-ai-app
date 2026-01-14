import mysql from 'mysql2/promise';
import fs from 'fs';

// Cloud SQL connection via proxy
const cloudSqlConfig = {
  host: '127.0.0.1',
  port: 3308,
  user: 'root',
  password: process.env.CLOUD_SQL_ROOT_PASSWORD,
  database: 'tamilai'
};

async function importData() {
  console.log('Reading exported data...');
  const data = JSON.parse(fs.readFileSync('/tmp/manus_data_export.json', 'utf-8'));
  
  console.log('Connecting to Cloud SQL...');
  const connection = await mysql.createConnection(cloudSqlConfig);
  
  // Disable foreign key checks for faster import
  await connection.execute('SET FOREIGN_KEY_CHECKS = 0');
  
  // Import thirukkural in batches of 100
  console.log(`Importing ${data.thirukkural.length} thirukkural records in batches...`);
  const batchSize = 100;
  for (let i = 0; i < data.thirukkural.length; i += batchSize) {
    const batch = data.thirukkural.slice(i, i + batchSize);
    const values = batch.map(row => [
      row.id,
      row.couplet_number,
      row.chapter_number,
      row.chapter_name,
      row.chapter_name_tamil,
      row.section_name,
      row.original_tamil,
      row.transliteration,
      row.english_translation,
      row.explanation,
      row.themes,
      row.keywords,
      row.is_premium,
      row.createdAt
    ]);
    
    const placeholders = batch.map(() => '(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)').join(', ');
    const flatValues = values.flat();
    
    await connection.execute(
      `INSERT INTO thirukkural (id, couplet_number, chapter_number, chapter_name, chapter_name_tamil, section_name, original_tamil, transliteration, english_translation, explanation, themes, keywords, is_premium, createdAt) 
       VALUES ${placeholders}
       ON DUPLICATE KEY UPDATE 
       chapter_name = VALUES(chapter_name),
       original_tamil = VALUES(original_tamil),
       english_translation = VALUES(english_translation),
       explanation = VALUES(explanation)`,
      flatValues
    );
    console.log(`  Imported ${Math.min(i + batchSize, data.thirukkural.length)}/${data.thirukkural.length}`);
  }
  console.log('Thirukkural import complete!');
  
  // Import meditation_categories (small table, single insert)
  console.log(`Importing ${data.meditation_categories.length} meditation_categories...`);
  for (const row of data.meditation_categories) {
    await connection.execute(
      `INSERT INTO meditation_categories (id, name, display_name, description, icon, color, createdAt) 
       VALUES (?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
       display_name = VALUES(display_name),
       description = VALUES(description)`,
      [row.id, row.name, row.display_name, row.description, row.icon, row.color, row.createdAt]
    );
  }
  
  // Import subscription_tiers
  console.log(`Importing ${data.subscription_tiers.length} subscription_tiers...`);
  for (const row of data.subscription_tiers) {
    await connection.execute(
      `INSERT INTO subscription_tiers (id, name, display_name, description, price, features, createdAt) 
       VALUES (?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
       display_name = VALUES(display_name),
       price = VALUES(price)`,
      [row.id, row.name, row.display_name, row.description, row.price, row.features, row.createdAt]
    );
  }
  
  // Import achievements
  console.log(`Importing ${data.achievements.length} achievements...`);
  for (const row of data.achievements) {
    await connection.execute(
      `INSERT INTO achievements (id, name, description, icon_url, category, unlock_criteria, points, createdAt) 
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
       name = VALUES(name),
       description = VALUES(description)`,
      [row.id, row.name, row.description, row.icon_url, row.category, row.unlock_criteria, row.points, row.createdAt]
    );
  }
  
  // Import learning_pathways
  console.log(`Importing ${data.learning_pathways.length} learning_pathways...`);
  for (const row of data.learning_pathways) {
    await connection.execute(
      `INSERT INTO learning_pathways (id, title, description, level, total_lessons, estimated_hours, thumbnail_url, required_tier, enrollment_count, is_active, createdAt) 
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
       title = VALUES(title),
       description = VALUES(description)`,
      [row.id, row.title, row.description, row.level, row.total_lessons, row.estimated_hours, row.thumbnail_url, row.required_tier, row.enrollment_count, row.is_active, row.createdAt]
    );
  }
  
  // Re-enable foreign key checks
  await connection.execute('SET FOREIGN_KEY_CHECKS = 1');
  
  console.log('\\n=== Import Complete! ===');
  
  // Verify counts
  const [thirukkuralCount] = await connection.execute('SELECT COUNT(*) as count FROM thirukkural');
  const [meditationCount] = await connection.execute('SELECT COUNT(*) as count FROM meditation_categories');
  const [tiersCount] = await connection.execute('SELECT COUNT(*) as count FROM subscription_tiers');
  const [achievementsCount] = await connection.execute('SELECT COUNT(*) as count FROM achievements');
  const [pathwaysCount] = await connection.execute('SELECT COUNT(*) as count FROM learning_pathways');
  
  console.log('\\nVerification:');
  console.log(`- Thirukkural: ${thirukkuralCount[0].count} records`);
  console.log(`- Meditation Categories: ${meditationCount[0].count} records`);
  console.log(`- Subscription Tiers: ${tiersCount[0].count} records`);
  console.log(`- Achievements: ${achievementsCount[0].count} records`);
  console.log(`- Learning Pathways: ${pathwaysCount[0].count} records`);
  
  await connection.end();
  console.log('\\nCloud SQL import successful!');
}

importData().catch(err => {
  console.error('Import failed:', err);
  process.exit(1);
});
