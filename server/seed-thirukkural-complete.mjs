import { drizzle } from "drizzle-orm/node-postgres";
import { thirukkuralCouplets } from "../drizzle/schema.js";
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const db = drizzle(process.env.DATABASE_URL);

// Load the complete Thirukkural dataset from JSON file
const dataPath = path.join(__dirname, 'thirukkural_seed_data.json');
const couplets = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));

console.log(`Loading ${couplets.length} Thirukkural couplets into database...`);

// Clear existing data
await db.delete(thirukkuralCouplets);
console.log('Cleared existing Thirukkural data');

// Insert in batches of 100 to avoid overwhelming the database
const batchSize = 100;
for (let i = 0; i < couplets.length; i += batchSize) {
  const batch = couplets.slice(i, i + batchSize);
  await db.insert(thirukkuralCouplets).values(batch);
  console.log(`Inserted couplets ${i + 1} to ${Math.min(i + batchSize, couplets.length)}`);
}

console.log(`✓ Successfully seeded ${couplets.length} Thirukkural couplets`);
console.log('Data sourced from Project Madurai (https://www.projectmadurai.org/)');

process.exit(0);
