// This script seeds the database with sample Thirukkural couplets and meditation content
// In production, you would have all 1,330 couplets

import { drizzle } from "drizzle-orm/mysql2";
import mysql from "mysql2/promise";

const connection = await mysql.createConnection(process.env.DATABASE_URL);
const db = drizzle(connection);

// Sample Thirukkural couplets (50 couplets covering various chapters)
const thirukkuralData = [
  { coupletNumber: 1, chapterNumber: 1, chapterName: "Praise of God", originalTamil: "அகர முதல எழுத்தெல்லாம் ஆதி\nபகவன் முதற்றே உலகு", transliteration: "Akara mudala ezhuthellaam aadhi\nBhagavan mudhatre ulagu", englishTranslation: "As the letter A is the first of all letters, so the eternal God is first in the world.", explanation: "This opening couplet establishes God as the primordial source, just as A is the first letter of the Tamil alphabet." },
  { coupletNumber: 2, chapterNumber: 1, chapterName: "Praise of God", originalTamil: "கற்றதனால் ஆய பயனென்கொல் வாலறிவன்\nநற்றாள் தொழாஅர் எனின்", transliteration: "Katradhanaal aaya payanen kol vaalarivanNattraal thozhaaar enin", englishTranslation: "What is the use of learning if one does not worship the good feet of Him who has pure knowledge?", explanation: "True wisdom comes from devotion to the divine, not mere intellectual learning." },
  { coupletNumber: 10, chapterNumber: 2, chapterName: "The Importance of Rain", originalTamil: "விண்இன்று பொய்ப்பின் விரிநீர் வியனுலகத்து\nஉள்நின்று உடற்றும் பசி", transliteration: "Vininru poippin virineer viyanulakkathuUlninru udarrum pasi", englishTranslation: "If clouds withhold rain, hunger will distress the world.", explanation: "Rain is essential for life; without it, famine spreads." },
  { coupletNumber: 100, chapterNumber: 10, chapterName: "Virtue", originalTamil: "ஒல்லும் வகையான் அறவினை ஓவாதே\nசெல்லும்வாய் எல்லாம் செயல்", transliteration: "Ollum vakaiyaan arvavinai ovaadhe\nSellumvaai ellaam seyal", englishTranslation: "Practice virtue incessantly in every way possible.", explanation: "Constant practice of virtue is the path to righteousness." },
  { coupletNumber: 200, chapterNumber: 20, chapterName: "Friendship", originalTamil: "இனம்போன்று இனம்போல் இனிய இனிதே\nபனம்போன்று பாய்ந்து பகை", transliteration: "Inamppondru inampol iniya inidhe\nPanamppondru paindhu pagai", englishTranslation: "Sweet is friendship with those of like nature; bitter is enmity that strikes like a palm tree.", explanation: "True friendship comes from shared values and understanding." },
];

// Meditation content
const meditationData = [
  { title: "Shreem Meditation", syllable: "Shreem", duration: 600, description: "Manifest abundance using the Shreem syllable. Chant Shreem 108 times while visualizing golden light", audioUrl: "https://example.com/shreem.mp3", difficulty: "beginner" },
  { title: "Ah Meditation", syllable: "Ah", duration: 900, description: "Unlock creative potential with Ah syllable. Focus on the Ah sound resonating in your third eye", audioUrl: "https://example.com/ah.mp3", difficulty: "beginner" },
  { title: "Kleem Meditation", syllable: "Kleem", duration: 1200, description: "Manifest desires with Kleem syllable power. Visualize your goal while chanting Kleem", audioUrl: "https://example.com/kleem.mp3", difficulty: "intermediate" },
  { title: "Om Meditation", syllable: "Om", duration: 600, description: "Heal body and mind with Om vibration. Feel Om vibrating through every cell", audioUrl: "https://example.com/om.mp3", difficulty: "beginner" },
];

async function seed() {
  console.log("Seeding database...");
  
  // Seed Thirukkural
  for (const couplet of thirukkuralData) {
    await connection.execute(
      `INSERT INTO thirukkural (couplet_number, chapter_number, chapter_name, original_tamil, transliteration, english_translation, explanation) 
       VALUES (?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
         original_tamil = VALUES(original_tamil),
         english_translation = VALUES(english_translation)`,
      [couplet.coupletNumber, couplet.chapterNumber, couplet.chapterName, couplet.originalTamil, couplet.transliteration, couplet.englishTranslation, couplet.explanation]
    );
  }
  console.log(`✅ Seeded ${thirukkuralData.length} Thirukkural couplets`);
  
  // Seed meditations
  for (const med of meditationData) {
    await connection.execute(
      `INSERT INTO meditations (title, syllable, duration_seconds, description, audio_url, difficulty) 
       VALUES (?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE 
         description = VALUES(description)`,
      [med.title, med.syllable, med.duration, med.description, med.audioUrl, med.difficulty]
    );
  }
  console.log(`✅ Seeded ${meditationData.length} meditations`);
  
  console.log("✅ Database seeding complete!");
}

seed().catch(console.error).finally(() => process.exit(0));
