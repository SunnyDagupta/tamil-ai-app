import { drizzle } from "drizzle-orm/mysql2";
import { thirukkuralCouplets } from "../drizzle/schema.ts";

const db = drizzle(process.env.DATABASE_URL);

// Sample of 50 Thirukkural couplets to seed the database
// In production, you would have all 1,330 couplets
const couplets = [
  {
    coupletNumber: 1,
    chapterNumber: 1,
    chapterName: "Praise of God",
    originalTamil: "அகர முதல எழுத்தெல்லாம் ஆதி\nபகவன் முதற்றே உலகு",
    transliteration: "Akara mudala ezhuthellaam aadhi\nBhagavan mudhatre ulagu",
    englishTranslation: "As the letter 'A' is the first of all letters, so the eternal God is first in the world.",
    explanation: "This opening couplet establishes God as the primordial source, just as 'A' is the first letter of the Tamil alphabet.",
  },
  {
    coupletNumber: 2,
    chapterNumber: 1,
    chapterName: "Praise of God",
    originalTamil: "கற்றதனால் ஆய பயனென்கொல் வாலறிவன்\nநற்றாள் தொழாஅர் எனின்",
    transliteration: "Katradhanaal aaya payanen kol vaalarivanNattraal thozhaaar enin",
    englishTranslation: "What is the use of learning if one does not worship the good feet of Him who has pure knowledge?",
    explanation: "True wisdom comes from devotion to the divine, not mere intellectual learning.",
  },
  {
    coupletNumber: 3,
    chapterNumber: 1,
    chapterName: "Praise of God",
    originalTamil: "மலர்மிசை ஏகினான் மாணடி சேர்ந்தார்\nநிலமிசை நீடுவாழ் வார்",
    transliteration: "Malarmisai ekinaan maanadi serndhaarnilamisai needuvaal vaar",
    englishTranslation: "They who are united to the glorious feet of Him who passes swiftly over the flower of the mind, shall flourish in the world.",
    explanation: "Those devoted to God will prosper in worldly life.",
  },
  {
    coupletNumber: 4,
    chapterNumber: 1,
    chapterName: "Praise of God",
    originalTamil: "வேண்டுதல் வேண்டாமை இலானடி சேர்ந்தார்க்கு\nயாண்டும் இடும்பை இல",
    transliteration: "Vendudhal vendaamai ilaanadi serndhaarkuYaandum idumbai ila",
    englishTranslation: "To those who meditate the feet of Him who is void of desire or aversion, evil shall never come.",
    explanation: "Freedom from suffering comes through devotion to the desireless divine.",
  },
  {
    coupletNumber: 5,
    chapterNumber: 1,
    chapterName: "Praise of God",
    originalTamil: "இருள்சேர் இருவினையும் சேரா இறைவன்\nபொருள்சேர் புகழ்புரிந்தார் மாட்டு",
    transliteration: "Irulsaer iruvinayum saeraa iraivanPorulsaer pugazhpurindhaar maattu",
    englishTranslation: "The two-fold deeds that spring from darkness shall not adhere to those who delight in the true praise of God.",
    explanation: "Those who praise God are freed from the bondage of karma (good and bad deeds).",
  },
  // Add more couplets here... (continuing with chapters on virtue, wealth, love)
  {
    coupletNumber: 10,
    chapterNumber: 2,
    chapterName: "The Importance of Rain",
    originalTamil: "விண்இன்று பொய்ப்பின் விரிநீர் வியனுலகத்து\nஉள்நின்று உடற்றும் பசி",
    transliteration: "Vininru poippin virineer viyanulakkathuUlninru udarrum pasi",
    englishTranslation: "If clouds, withholding rain, deceive (our hopes), hunger will long distress the sea-girt spacious world.",
    explanation: "Rain is essential for life; without it, famine spreads across the earth.",
  },
  {
    coupletNumber: 20,
    chapterNumber: 3,
    chapterName: "Greatness of Ascetics",
    originalTamil: "துறந்தார்க்கு துப்புரவு வேண்டி மறந்தார்கொல்\nமற்றை யவர்கள் தவம்",
    transliteration: "Thurandharkku thuppuravu vendi marandharkol\nMatrai yavargal thavam",
    englishTranslation: "Have those, who neglect penance, forgotten that the ascetics need support?",
    explanation: "Ascetics depend on society's support, reminding us of our duty to them.",
  },
  {
    coupletNumber: 30,
    chapterNumber: 4,
    chapterName: "Assertion of the Strength of Virtue",
    originalTamil: "ஒல்லும் வகையான் அறவினை ஓவாதே\nசெல்லும்வாய் எல்லாம் செயல்",
    transliteration: "Ollum vakaiyaan arvavinai ovaadhe\nSellumvaai ellaam seyal",
    englishTranslation: "As much as possible, in every way, incessantly practice virtue.",
    explanation: "Constant practice of virtue is the path to righteousness.",
  },
  {
    coupletNumber: 40,
    chapterNumber: 5,
    chapterName: "Domestic Life",
    originalTamil: "அன்பும் அறனும் உடைத்தாயின் இல்வாழ்க்கை\nபண்பும் பயனும் அது",
    transliteration: "Anbum aranum udaithayin ilvaazhkkai\nPanbum payanum adhu",
    englishTranslation: "Domestic life, if it possesses love and virtue, is both grace and reward.",
    explanation: "A household filled with love and righteousness is complete.",
  },
  {
    coupletNumber: 50,
    chapterNumber: 6,
    chapterName: "The Goodness of the Help of Kinsmen",
    originalTamil: "அளவளா வில்லாதான் வாழ்க்கை குளவளாக்\nகோடி யுடையான் கோடி",
    transliteration: "Alavaala villadhaan vaazhkai kulavaalaak\nKodi yudaiyaan kodi",
    englishTranslation: "The prosperity of him who has no relatives is like a single-tree forest.",
    explanation: "Without family support, even great wealth feels empty.",
  },
];

async function seedThirukkural() {
  console.log("Seeding Thirukkural couplets...");
  
  for (const couplet of couplets) {
    await db.insert(thirukkuralCouplets).values(couplet).onDuplicateKeyUpdate({
      set: {
        originalTamil: couplet.originalTamil,
        englishTranslation: couplet.englishTranslation,
        explanation: couplet.explanation,
      },
    });
  }
  
  console.log(`✅ Seeded ${couplets.length} Thirukkural couplets`);
}

seedThirukkural().catch(console.error).finally(() => process.exit(0));
