import { drizzle } from "drizzle-orm/mysql2";
import mysql from "mysql2/promise";

const connection = await mysql.createConnection(process.env.DATABASE_URL);
const db = drizzle(connection);

console.log("🌱 Seeding database...");

// Subscription Tiers
console.log("Adding subscription tiers...");
await db.execute(`
  INSERT INTO subscription_tiers (name, display_name, description, price, features) VALUES
  ('beginner', 'Beginner', 'Free access to basic meditations and Thirukkural', 0, '["Basic meditations", "Search Thirukkural", "Track progress"]'),
  ('pro', 'Pro', 'Premium meditations, learning pathways, and advanced features', 1999, '["All beginner features", "Premium meditations", "Learning pathways", "Community access", "Priority support"]'),
  ('advanced', 'Advanced', 'Exclusive content, live events, and research access', 4999, '["All pro features", "Live meditation events", "Exclusive content", "Research preview", "1-on-1 coaching"]')
  ON DUPLICATE KEY UPDATE name=name;
`);

// Meditation Categories
console.log("Adding meditation categories...");
await db.execute(`
  INSERT INTO meditation_categories (name, display_name, description, icon, color) VALUES
  ('creativity', 'Creativity', 'Enhance creative thinking and innovation', 'Sparkles', '#f59e0b'),
  ('prosperity', 'Prosperity', 'Attract abundance and financial success', 'TrendingUp', '#8b5cf6'),
  ('health', 'Health', 'Heal body and mind, boost vitality', 'Heart', '#10b981'),
  ('manifestation', 'Manifestation', 'Manifest your dreams into reality', 'Zap', '#ec4899')
  ON DUPLICATE KEY UPDATE name=name;
`);

// Sample Thirukkural Couplets
console.log("Adding sample Thirukkural couplets...");
await db.execute(`
  INSERT INTO thirukkural (couplet_number, chapter_number, chapter_name, chapter_name_tamil, section_name, original_tamil, transliteration, english_translation, explanation, themes, keywords, is_premium) VALUES
  (1, 1, 'The Praise of God', 'கடவுள் வாழ்த்து', 'Prologue', 'அகர முதல எழுத்தெல்லாம் ஆதி\\nபகவன் முதற்றே உலகு', 'Agara mudhala ezhuthellaam aadhi\\nBhagavan mudhatre ulagu', 'As the letter A is the first of all letters, so the eternal God is first in the world.', 'This couplet establishes the primacy of the divine in all creation, comparing it to the letter A which begins the Tamil alphabet.', '["divinity", "creation", "primacy"]', '["god", "first", "beginning", "creation"]', 0),
  (2, 1, 'The Praise of God', 'கடவுள் வாழ்த்து', 'Prologue', 'கற்றதனால் ஆய பயனென்கொல் வாலறிவன்\\nநற்றாள் தொழாஅர் எனின்', 'Katradhanaal aaya payanenkol vaalariwan\\nNatraal thozhaar enin', 'What is the use of learning if one does not worship the good feet of Him who has pure knowledge?', 'True wisdom comes from devotion to the divine. Knowledge without spiritual grounding is incomplete.', '["wisdom", "devotion", "knowledge"]', '["learning", "wisdom", "worship", "knowledge"]', 0),
  (10, 2, 'The Excellence of Rain', 'வான்சிறப்பு', 'Prologue', 'ஏரினும் நன்றால் எருவிடுதல் நன்றால்\\nவாரி வளம் படுத்து', 'Erinum nandral eruvidhudhal nandral\\nVaari valam paduthu', 'Though ploughing is good and manuring is good, it is the abundance of water that makes them fruitful.', 'Rain is essential for agriculture. Without water, even the best farming practices are ineffective.', '["agriculture", "water", "prosperity"]', '["rain", "water", "farming", "prosperity"]', 0),
  (50, 5, 'Domestic Life', 'இல்வாழ்க்கை', 'Domestic Virtue', 'இல்வாழ்வான் என்பான் இயல்புடைய மூவர்க்கும்\\nநல்லாற்றின் நின்ற துணை', 'Ilvaazhvaan enpaan iyalbudaiya moovarkkum\\nNallaatrrin nindra thunai', 'The householder is one who is a firm support to the other three orders of life.', 'The householder supports ascetics, guests, and ancestors through righteous living and generosity.', '["duty", "support", "virtue"]', '["householder", "duty", "support", "virtue"]', 0),
  (100, 10, 'Not Coveting Another\\'s Wife', 'பிறன்மனை நோக்காமை', 'Domestic Virtue', 'பிறன்மனை நோக்காத பேதைமை வாய்மையால்\\nதன்மனை நோக்கிற் பெறும்', 'Piranmanai nokkaadha paedhaimai vaaymayaal\\nThanmanai nokkir perum', 'The folly of not coveting another\\'s wife brings the reward of a faithful wife at home.', 'Fidelity and respect for others\\' relationships strengthen one\\'s own marriage.', '["fidelity", "respect", "marriage"]', '["fidelity", "marriage", "respect", "virtue"]', 0),
  (200, 20, 'Friendship', 'நட்பு', 'Ascetic Virtue', 'இனம்போன்று இனத்தோடு இனிது பழகுதல்\\nதினம்போன்று வேண்டும் நட்பு', 'Inamppondru inattodu inithu pazhagudhal\\nThinamppondru vendum natpu', 'Friendship should be like food - daily, pleasant, and shared with those of similar nature.', 'True friendship requires regular interaction, mutual enjoyment, and compatibility.', '["friendship", "compatibility", "daily practice"]', '["friendship", "companionship", "compatibility"]', 0),
  (300, 30, 'Virtue', 'அறன்வலியுறுத்தல்', 'Ascetic Virtue', 'அறத்தாற்றின் இல்லாயின் மற்றுஅதன்\\nபொறுத்தாற்றின் போஆம் பொருள்', 'Aratthaatrin illaayin matraadhan\\nPoruththaatrin poaam porul', 'If virtue is not practiced, wealth will depart even if one tries to retain it.', 'Wealth without virtue is unstable and will eventually be lost.', '["virtue", "wealth", "stability"]', '["virtue", "wealth", "righteousness"]', 0),
  (400, 40, 'Fate', 'ஊழ்', 'Ascetic Virtue', 'ஆகூழால் தோன்றும் அசைவின்மை கைம்மாறு\\nபோகூழால் தோன்றும் மடி', 'Aakoozhaal thondrum asaivinmai kaimmaaru\\nPokoozhaal thondrum madi', 'Good fate brings steadfastness; bad fate brings negligence.', 'Destiny influences character - good fortune encourages diligence, misfortune breeds laziness.', '["fate", "character", "diligence"]', '["fate", "destiny", "character"]', 0),
  (500, 50, 'The Might of the Army', 'படைமாட்சி', 'Royalty', 'உறுப்பொத்தல் மற்றுஅதன் ஒட்பக்கம் காண்கிற்பின்\\nவெறுக்கை உடைத்து படை', 'Uruppoththal matraadhan otpakkam kaankitrpin\\nVerukkai udaiththu padai', 'An army is strong when its parts work together and support each other.', 'Military strength comes from unity and coordination among all units.', '["unity", "strength", "coordination"]', '["army", "unity", "strength"]', 0),
  (600, 60, 'Friendship with the Great', 'பெரியாரைத் துணைக்கோடல்', 'Royalty', 'தம்மின் பெரியார் தமரா ஒழுகுதல்\\nவன்மையுள் எல்லாம் தலை', 'Thammin periyaar thamaraa ozhugudhal\\nVanmaiyul ellaam thalai', 'Associating with those greater than oneself is the best of all strengths.', 'Seeking guidance from superiors is the highest form of wisdom and strength.', '["mentorship", "wisdom", "association"]', '["mentorship", "guidance", "wisdom"]', 0),
  (700, 70, 'Not Envying', 'அவாவறுத்தல்', 'Ascetic Virtue', 'அவாவினை ஆற்ற அறுப்பின் தவாவினை\\nதான்வேண்டு மாற்றான் வரும்', 'Avaavinai aatra aruppin thavaavinai\\nThaanvendu maattraan varum', 'If desire is completely cut off, the desired benefit will come of its own accord.', 'Detachment from craving paradoxically brings what is truly needed.', '["detachment", "desire", "fulfillment"]', '["desire", "detachment", "fulfillment"]', 0),
  (800, 80, 'Fate', 'ஊழ்', 'Ascetic Virtue', 'ஊழிற் பெருவலி யாவுள மற்றொன்று\\nசூழினும் தான்முந் துறும்', 'Oozhir peruval yaavula matrondru\\nSoozhinum thaanmun thurum', 'What power is greater than fate? Even if we plan otherwise, fate will prevail.', 'Destiny is the ultimate force that shapes outcomes despite human efforts.', '["fate", "destiny", "power"]', '["fate", "destiny", "power"]', 0),
  (1000, 100, 'Impermanence', 'நிலையாமை', 'Ascetic Virtue', 'நில்லாத வற்றை நிலையின என்றுணரும்\\nபொல்லாத மாக்கள் கடை', 'Nillaadha vaatrai nilaiyin endroonum\\nPollaadha maakkal kadai', 'The ignorant believe that impermanent things are permanent - this is their downfall.', 'Mistaking temporary things for permanent leads to suffering and delusion.', '["impermanence", "ignorance", "wisdom"]', '["impermanence", "ignorance", "wisdom"]', 0),
  (1100, 110, 'Chastity', 'கற்பு', 'Love', 'பெண்ணின் பெருந்தக்க யாவுள கற்பென்னும்\\nதெண்ணீர் பெருக்கு', 'Pennin peruntakka yaavula karpennum\\nThenneer perukku', 'What is more valuable than a woman? Her chastity, which flows like clear water.', 'A woman\\'s virtue and fidelity are her greatest treasures and strengths.', '["chastity", "virtue", "honor"]', '["chastity", "virtue", "honor"]', 1),
  (1200, 120, 'Rejoicing in Her Love', 'காதற் சிறப்புரைத்தல்', 'Love', 'காமம் விழைவின் இயற்கை இருவர்க்கும்\\nஏமம் மிகுதி தரும்', 'Kaamam vizhaivin iyarkai iruvarkkum\\nEmam miguthi tharum', 'Love\\'s nature is desire, and it brings great joy to both lovers.', 'Mutual love and desire create profound happiness for both partners.', '["love", "desire", "joy"]', '["love", "desire", "joy"]', 1),
  (1300, 130, 'Lamenting the Separation', 'நினைந்தவர் புலம்பல்', 'Love', 'நினைந்தவர் போன்று நினையாமை போன்றும்\\nதினைத்தாம் பெரிது', 'Ninaindhavar pondru ninaiyaamai pondrum\\nThinaiththaam peridhu', 'Pretending not to think of one\\'s beloved is a greater torment than thinking of them.', 'Suppressing thoughts of a loved one causes more pain than openly longing for them.', '["separation", "longing", "pain"]', '["separation", "longing", "pain"]', 1)
  ON DUPLICATE KEY UPDATE couplet_number=couplet_number;
`);

// Sample Meditations
console.log("Adding sample meditations...");
await db.execute(`
  INSERT INTO meditations (title, title_tamil, description, syllable, syllable_tamil, category_id, duration_seconds, audio_url, thumbnail_url, difficulty, required_tier, play_count, is_active) VALUES
  ('Shreem Meditation for Prosperity', 'ஸ்ரீம் தியானம்', 'Attract abundance and financial prosperity through the powerful Shreem syllable', 'SHREEM', 'ஸ்ரீம்', 2, 900, 'https://example.com/audio/shreem.mp3', 'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=800', 'beginner', 'beginner', 0, 1),
  ('Kleem for Creativity', 'க்லீம் படைப்பாற்றல்', 'Unlock your creative potential with the Kleem syllable meditation', 'KLEEM', 'க்லீம்', 1, 600, 'https://example.com/audio/kleem.mp3', 'https://images.unsplash.com/photo-1499209974431-9dddcece7f88?w=800', 'beginner', 'beginner', 0, 1),
  ('Aim for Health and Vitality', 'ஐம் உடல்நலம்', 'Heal your body and boost vitality with the Aim syllable', 'AIM', 'ஐம்', 3, 1200, 'https://example.com/audio/aim.mp3', 'https://images.unsplash.com/photo-1545389336-cf090694435e?w=800', 'intermediate', 'beginner', 0, 1),
  ('Hrim for Manifestation', 'ஹ்ரீம் வெளிப்படுத்தல்', 'Manifest your deepest desires with the Hrim syllable', 'HRIM', 'ஹ்ரீம்', 4, 1800, 'https://example.com/audio/hrim.mp3', 'https://images.unsplash.com/photo-1528715471579-d1bcf0ba5e83?w=800', 'intermediate', 'pro', 0, 1),
  ('Advanced Shreem Practice', 'மேம்பட்ட ஸ்ரீம்', 'Deep dive into Shreem for wealth consciousness transformation', 'SHREEM', 'ஸ்ரீம்', 2, 2700, 'https://example.com/audio/shreem-advanced.mp3', 'https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?w=800', 'advanced', 'pro', 0, 1),
  ('Gam for Obstacle Removal', 'கம் தடைகள் நீக்கம்', 'Remove obstacles from your path with Ganesha\\'s syllable', 'GAM', 'கம்', 4, 900, 'https://example.com/audio/gam.mp3', 'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=800', 'beginner', 'beginner', 0, 1),
  ('Exclusive: Quantum Thinking', 'குவாண்டம் சிந்தனை', 'Develop quantum-level thinking abilities - Advanced members only', 'OM SHREEM', 'ஓம் ஸ்ரீம்', 1, 3600, 'https://example.com/audio/quantum.mp3', 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=800', 'advanced', 'advanced', 0, 1)
  ON DUPLICATE KEY UPDATE title=title;
`);

// Sample Learning Pathways
console.log("Adding learning pathways...");
await db.execute(`
  INSERT INTO learning_pathways (title, description, level, total_lessons, estimated_hours, thumbnail_url, required_tier, enrollment_count, is_active) VALUES
  ('Introduction to Tamil Wisdom', 'Begin your journey into ancient Tamil knowledge and Thirukkural teachings', 'beginner', 10, 5, 'https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?w=800', 'beginner', 0, 1),
  ('Mastering Syllable Meditation', 'Learn the science and practice of Tamil syllable meditations', 'intermediate', 15, 10, 'https://images.unsplash.com/photo-1499209974431-9dddcece7f88?w=800', 'pro', 0, 1),
  ('Advanced Manifestation Techniques', 'Develop Siddhi powers through advanced practices', 'advanced', 20, 20, 'https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?w=800', 'advanced', 0, 1)
  ON DUPLICATE KEY UPDATE title=title;
`);

// Sample Achievements
console.log("Adding achievements...");
await db.execute(`
  INSERT INTO achievements (name, description, icon_url, category, unlock_criteria, points) VALUES
  ('First Steps', 'Complete your first meditation session', NULL, 'meditation', '{"sessions": 1}', 10),
  ('Dedicated Seeker', 'Maintain a 7-day meditation streak', NULL, 'streak', '{"streak": 7}', 50),
  ('Wisdom Explorer', 'Bookmark 10 Thirukkural couplets', NULL, 'learning', '{"bookmarks": 10}', 25),
  ('Meditation Master', 'Complete 50 meditation sessions', NULL, 'meditation', '{"sessions": 50}', 100),
  ('Unwavering Focus', 'Maintain a 30-day streak', NULL, 'streak', '{"streak": 30}', 200),
  ('Tamil Scholar', 'Read all 133 chapters of Thirukkural', NULL, 'learning', '{"chapters": 133}', 500)
  ON DUPLICATE KEY UPDATE name=name;
`);

console.log("✅ Database seeded successfully!");

await connection.end();
