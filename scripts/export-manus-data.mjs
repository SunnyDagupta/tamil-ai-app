import { drizzle } from 'drizzle-orm/mysql2';
import fs from 'fs';

// Connect to Manus database using DATABASE_URL from environment
async function exportData() {
  const dbUrl = process.env.DATABASE_URL;
  if (!dbUrl) {
    console.error('DATABASE_URL not set');
    process.exit(1);
  }
  
  console.log('Connecting to Manus database...');
  const db = drizzle(dbUrl);
  
  // Export thirukkural data
  console.log('Exporting thirukkural data...');
  const thirukkuralData = await db.execute('SELECT * FROM thirukkural');
  console.log(`Found ${thirukkuralData[0].length} thirukkural records`);
  
  // Export meditation_categories
  console.log('Exporting meditation_categories...');
  const meditationCategoriesData = await db.execute('SELECT * FROM meditation_categories');
  console.log(`Found ${meditationCategoriesData[0].length} meditation_categories records`);
  
  // Export subscription_tiers
  console.log('Exporting subscription_tiers...');
  const subscriptionTiersData = await db.execute('SELECT * FROM subscription_tiers');
  console.log(`Found ${subscriptionTiersData[0].length} subscription_tiers records`);
  
  // Export achievements
  console.log('Exporting achievements...');
  const achievementsData = await db.execute('SELECT * FROM achievements');
  console.log(`Found ${achievementsData[0].length} achievements records`);
  
  // Export learning_pathways
  console.log('Exporting learning_pathways...');
  const learningPathwaysData = await db.execute('SELECT * FROM learning_pathways');
  console.log(`Found ${learningPathwaysData[0].length} learning_pathways records`);
  
  const exportData = {
    thirukkural: thirukkuralData[0],
    meditation_categories: meditationCategoriesData[0],
    subscription_tiers: subscriptionTiersData[0],
    achievements: achievementsData[0],
    learning_pathways: learningPathwaysData[0]
  };
  
  // Write to JSON file
  fs.writeFileSync('/tmp/manus_data_export.json', JSON.stringify(exportData, null, 2));
  console.log('Data exported to /tmp/manus_data_export.json');
  
  process.exit(0);
}

exportData().catch(err => {
  console.error('Export failed:', err);
  process.exit(1);
});
