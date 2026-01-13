-- Complete Thirukkural Dataset
-- Data sourced from Project Madurai (https://www.projectmadurai.org/)
-- Total: 1,330 couplets

-- Clear existing Thirukkural data
DELETE FROM thirukkural;

-- Insert all 1,330 couplets
INSERT INTO thirukkural (couplet_number, chapter_number, chapter_name, original_tamil, transliteration, english_translation, explanation) VALUES
  (1, 1, 'கடவுள் வாழ்த்து', 'அகர முதல எழுத்தெல்லாம் ஆதி
பகவன் முதற்றே உலகு.', 'Akara Mudhala Ezhuththellaam Aadhi', '\'A\' leads letters; the Ancient Lord Leads and lords the entire world', 'As the letter A is the first of all letters, so the eternal God is first in the world'),
  (2, 1, 'கடவுள் வாழ்த்து', 'கற்றதனால் ஆய பயனென்கொல் வாலறிவன்
நற்றாள் தொழாஅர் எனின்.', 'Katradhanaal Aaya Payanenkol Vaalarivan', 'That lore is vain which does not fall  At His good feet who knoweth all', 'What Profit have those derived from learning, who worship not the good feet of Him who is possessed of pure knowledge ?'),
  (3, 1, 'கடவுள் வாழ்த்து', 'மலர்மிசை ஏகினான் மாணடி சேர்ந்தார்
நிலமிசை நீடுவாழ் வார்.', 'Malarmisai Ekinaan Maanati Serndhaar', 'Long they live on earth who gain The feet of God in florid brain', 'They who are united to the glorious feet of Him who passes swiftly over the flower of the mind, shall flourish long above all worlds'),
  (4, 1, 'கடவுள் வாழ்த்து', 'வேண்டுதல் வேண்டாமை இலானடி சேர்ந்தார்க்கு
யாண்டும் இடும்பை இல.', 'Ventudhal Ventaamai Ilaanati Serndhaarkku', 'Who hold His feet who likes nor loathes Are free from woes of human births', 'To those who meditate the feet of Him who is void of desire or aversion, evil shall never come'),
  (5, 1, 'கடவுள் வாழ்த்து', 'இருள்சேர் இருவினையும் சேரா இறைவன்
பொருள்சேர் புகழ்புரிந்தார் மாட்டு.', 'Irulser Iruvinaiyum Seraa Iraivan', 'God\'s praise who tell, are free from right  And wrong, the twins of dreaming night', 'The two-fold deeds that spring from darkness shall not adhere to those who delight in the true praise of God'),
  (6, 1, 'கடவுள் வாழ்த்து', 'பொறிவாயில் ஐந்தவித்தான் பொய்தீர் ஒழுக்க
நெறிநின்றார் நீடுவாழ் வார்.', 'Porivaayil Aindhaviththaan Poidheer Ozhukka', 'They prosper long who walk His way Who has the senses signed away', 'Those shall long proposer who abide in the faultless way of Him who has destroyed the five desires of the senses'),
  (7, 1, 'கடவுள் வாழ்த்து', 'தனக்குவமை இல்லாதான் தாள்சேர்ந்தார்க் கல்லால்
மனக்கவலை மாற்றல் அரிது.', 'Thanakkuvamai Illaadhaan Thaalserndhaark Kallaal', 'His feet, whose likeness none can find, Alone can ease the anxious mind', 'Anxiety of mind cannot be removed, except from those who are united to the feet of Him who is incomparable'),
  (8, 1, 'கடவுள் வாழ்த்து', 'அறவாழி அந்தணன் தாள்சேர்ந்தார்க் கல்லால்
பிறவாழி நீந்தல் அரிது.', 'Aravaazhi Andhanan Thaalserndhaark Kallaal', 'Who swims the sea of vice is he Who clasps the feet of Virtue\'s sea', 'None can swim the sea of vice, but those who are united to the feet of that gracious Being who is a sea of virtue'),
  (9, 1, 'கடவுள் வாழ்த்து', 'கோளில் பொறியின் குணமிலவே எண்குணத்தான்
தாளை வணங்காத் தலை.', 'Kolil Poriyin Kunamilave Enkunaththaan', 'Like senses stale that head is vain Which bows not to Eight-Virtued Divine', 'The head that worships not the feet of Him who is possessed of eight attributes, is as useless as a sense without the power of sensation'),
  (10, 1, 'கடவுள் வாழ்த்து', 'பிறவிப் பெருங்கடல் நீந்துவர் நீந்தார்
இறைவன் அடிசேரா தார்.', 'Piravip Perungatal Neendhuvar Neendhaar', 'The sea of births they alone swim Who clench His feet and cleave to Him', 'None can swim the great sea of births but those who are united to the feet of God'),
  (11, 2, 'வான்சிறப்பு', 'வான்நின்று உலகம் வழங்கி வருதலால்
தான்அமிழ்தம் என்றுணரற் பாற்று.', 'Vaannindru Ulakam Vazhangi Varudhalaal', 'The genial rain ambrosia call: The world but lasts while rain shall fall', 'By the continuance of rain the world is preserved in existence; it is therefore worthy to be called ambrosia'),
  (12, 2, 'வான்சிறப்பு', 'துப்பார்க்குத் துப்பாய துப்பாக்கித் துப்பார்க்குத்
துப்பாய தூஉம் மழை.', 'Thuppaarkkuth Thuppaaya Thuppaakkith Thuppaarkkuth', 'The rain begets the food we eat', 'Rain produces good food, and is itself food'),
  (13, 2, 'வான்சிறப்பு', 'விண்இன்று பொய்ப்பின் விரிநீர் வியனுலகத்து
உள்நின்று உடற்றும் பசி.', 'Vinindru Poippin Virineer Viyanulakaththu', 'Let clouds their visits stay, and dearth Distresses all the sea-girt earth', 'If the cloud, withholding rain, deceive (our hopes) hunger will long distress the sea-girt spacious world'),
  (14, 2, 'வான்சிறப்பு', 'ஏரின் உழாஅர் உழவர் புயல்என்னும்
வாரி வளங்குன்றிக் கால்.', 'Erin Uzhaaar Uzhavar Puyalennum', 'Unless the fruitful shower descend, The ploughman\'s sacred toil must end', 'If the abundance of wealth imparting rain diminish, the labour of the plough must cease'),
  (15, 2, 'வான்சிறப்பு', 'கெடுப்பதூஉம் கெட்டார்க்குச் சார்வாய்மற் றாங்கே
எடுப்பதூஉம் எல்லாம் மழை.', 'Ketuppadhooum Kettaarkkuch Chaarvaaimar Raange', 'Destruction it may sometimes pour But only rain can life restore', 'Rain by its absence ruins men; and by its existence restores them to fortune'),
  (16, 2, 'வான்சிறப்பு', 'விசும்பின் துளிவீழின் அல்லால்மற் றாங்கே
பசும்புல் தலைகாண்பு அரிது.', 'Visumpin Thuliveezhin Allaalmar Raange', 'No grassy blade its head will rear, If from the cloud no drop appear', 'If no drop falls from the clouds, not even the green blade of grass will be seen'),
  (17, 2, 'வான்சிறப்பு', 'நெடுங்கடலும் தன்நீர்மை குன்றும் தடிந்தெழிலி
தான்நல்கா தாகி விடின்.', 'Netungatalum Thanneermai Kundrum Thatindhezhili', 'The ocean\'s wealth will waste away, Except the cloud its stores repay', 'Even the wealth of the wide sea will be diminished, if the cloud that has drawn (its waters) up gives them not back again (in rain)'),
  (18, 2, 'வான்சிறப்பு', 'சிறப்பொடு பூசனை செல்லாது வானம்
வறக்குமேல் வானோர்க்கும் ஈண்டு.', 'Sirappotu Poosanai Sellaadhu Vaanam', 'The earth, beneath a barren sky, Would offerings for the gods deny', 'If the heaven dry up, neither yearly festivals, nor daily worship will be offered in this world, to the celestials'),
  (19, 2, 'வான்சிறப்பு', 'தானம் தவம்இரண்டும் தங்கா வியன்உலகம்
வானம் வழங்கா தெனின்.', 'Thaanam Thavamirantum Thangaa Viyanulakam', 'Were heaven above to fail below Nor alms nor penance earth would show', 'If rain fall not, penance and alms-deeds will not dwell within this spacious world'),
  (20, 2, 'வான்சிறப்பு', 'நீர்இன்று அமையாது உலகெனின் யார்யார்க்கும்
வான்இன்று அமையாது ஒழுக்கு.', 'Neerindru Amaiyaadhu Ulakenin Yaaryaarkkum', 'Water is life that comes from rain Sans rain our duties go in vain', 'If it be said that the duties of life cannot be discharged by any person without water, so without rain there cannot be the flowing of water'),
  (21, 3, 'நீத்தார் பெருமை', 'ஒழுக்கத்து நீத்தார் பெருமை விழுப்பத்து
வேண்டும் பனுவல் துணிவு.', 'Ozhukkaththu Neeththaar Perumai Vizhuppaththu', 'No merit can be held so high As theirs who sense and self deny', 'The end and aim of all treatise is to extol beyond all other excellence, the greatness of those who, while abiding in the rule of conduct peculiar to their state, have abandoned all desire'),
  (22, 3, 'நீத்தார் பெருமை', 'துறந்தார் பெருமை துணைக்கூறின் வையத்து
இறந்தாரை எண்ணிக்கொண் டற்று.', 'Thurandhaar Perumai Thunaikkoorin Vaiyaththu', 'To con ascetic glory here Is to count the dead upon the sphere', 'To describe the measure of the greatness of those who have forsaken the two-fold desires, is like counting the dead'),
  (23, 3, 'நீத்தார் பெருமை', 'இருமை வகைதெரிந்து ஈண்டுஅறம் பூண்டார்
பெருமை பிறங்கிற்று உலகு.', 'Irumai Vakaidherindhu Eentuaram Poontaar', 'No lustre can with theirs compare Who know the right and virtue wear', 'The greatness of those who have discovered the properties of both states of being, and renounced the world, shines forth on earth (beyond all others)'),
  (24, 3, 'நீத்தார் பெருமை', 'உரனென்னும் தோட்டியான் ஓரைந்தும் காப்பான்
வரனென்னும் வைப்பிற்கோர் வித்து.', 'Uranennum Thottiyaan Oraindhum Kaappaan', 'With hook of firmness to restrain The senses five, is heaven to gain', 'He who guides his five senses by the hook of wisdom will be a seed in the world of heaven'),
  (25, 3, 'நீத்தார் பெருமை', 'ஐந்தவித்தான் ஆற்றல் அகல்விசும்பு ளார்கோமான்
இந்திரனே சாலுங் கரி.', 'Aindhaviththaan Aatral Akalvisumpu Laarkomaan', 'Indra himself has cause to say How great the power ascetics\' sway', 'Indra, the king of the inhabitants of the spacious heaven, is himself, a sufficient proof of the strength of him who has subdued his five senses'),
  (26, 3, 'நீத்தார் பெருமை', 'செயற்கரிய செய்வார் பெரியர் சிறியர்
செயற்கரிய செய்கலா தார்.', 'Seyarkariya Seyvaar Periyar Siriyar', 'The small the paths of ease pursue The great achieve things rare to do', 'The great will do those things which is difficult to be done; but the mean cannot do them'),
  (27, 3, 'நீத்தார் பெருமை', 'சுவைஒளி ஊறுஓசை நாற்றமென ஐந்தின்
வகைதெரிவான் கட்டே உலகு.', 'Suvaioli Ooruosai Naatramendru Aindhin', 'They gain the world, who grasp and tell Of taste, sight, hearing, touch and smell', 'The world is within the knowledge of him who knows the properties of taste, sight, touch, hearing and smell'),
  (28, 3, 'நீத்தார் பெருமை', 'நிறைமொழி மாந்தர் பெருமை நிலத்து
மறைமொழி காட்டி விடும்.', 'Niraimozhi Maandhar Perumai Nilaththu', 'Full-worded men by what they say, Their greatness to the world display', 'The hidden words of the men whose words are full of effect, will shew their greatness to the world'),
  (29, 3, 'நீத்தார் பெருமை', 'குணமென்னும் குன்றேறி நின்றார் வெகுளி
கணமேயும் காத்தல் அரிது.', 'Kunamennum Kundreri Nindraar Vekuli', 'Their wrath, who\'ve climb\'d the mount of good, Though transient, cannot be withstood', 'The anger of those who have ascended the mountain of goodness, though it continue but for a moment, cannot be resisted'),
  (30, 3, 'நீத்தார் பெருமை', 'அந்தணர் என்போர் அறவோர்மற் றெவ்வுயிர்க்கும்
செந்தண்மை பூண்டொழுக லான்.', 'Andhanar Enpor Aravormar Revvuyir', 'With gentle mercy towards all, The sage fulfils the vitue\'s call', 'The virtuous are truly called Anthanar; because in their conduct towards all creatures they are clothed in kindness'),
  (31, 4, 'அறன் வலியுறுத்தல்', 'சிறப்புஈனும் செல்வமும் ஈனும் அறத்தினூஉங்கு
ஆக்கம் எவனோ உயிர்க்கு.', 'Sirappu Eenum Selvamum Eenum', 'From virtue weal and wealth outflow; What greater good can mankind know?', 'Virtue will confer heaven and wealth; what greater source of happiness can man possess ?'),
  (32, 4, 'அறன் வலியுறுத்தல்', 'அறத்தினூஉங்கு ஆக்கமும் இல்லை அதனை
மறத்தலின் ஊங்கில்லை கேடு.', 'Araththinooungu Aakkamum Illai Adhanai', 'Virtue enhances joy and gain; Forsaking it is fall and pain', 'There can be no greater source of good than (the practice of) virtue; there can be no greater source of evil than the forgetfulness of it'),
  (33, 4, 'அறன் வலியுறுத்தல்', 'ஒல்லும் வகையான் அறவினை ஓவாதே
செல்லும்வாய் எல்லாஞ் செயல்.', 'Ollum Vakaiyaan Aravinai Ovaadhe', 'Perform good deeds as much you can Always and everywhere, o man!', 'As much as possible, in every way, incessantly practise virtue'),
  (34, 4, 'அறன் வலியுறுத்தல்', 'மனத்துக்கண் மாசிலன் ஆதல் அனைத்தறன்
ஆகுல நீர பிற.', 'Manaththukkan Maasilan Aadhal Anaiththu', 'In spotless mind virtue is found And not in show and swelling sound', 'Let him who does virtuous deeds be of spotless mind; to that extent is virtue; all else is vain show'),
  (35, 4, 'அறன் வலியுறுத்தல்', 'அழுக்காறு அவாவெகுளி இன்னாச்சொல் நான்கும்
இழுக்கா இயன்றது அறம்.', 'Azhukkaaru Avaavekuli Innaachchol Naankum', 'Four ills eschew and virtue reach, Lust, anger, envy, evil-speech', 'That conduct is virtue which is free from these four things, viz, malice, desire, anger and bitter speech'),
  (36, 4, 'அறன் வலியுறுத்தல்', 'அன்றறிவாம் என்னாது அறஞ்செய்க மற்றது
பொன்றுங்கால் பொன்றாத் துணை.', 'Andrarivaam Ennaadhu Aranjeyka Matradhu', 'Do good enow; defer it not A deathless aid in death if sought', 'Defer not virtue to another day; receive her now; and at the dying hour she will be your undying friend'),
  (37, 4, 'அறன் வலியுறுத்தல்', 'அறத்தாறு இதுவென வேண்டா சிவிகை
பொறுத்தானோடு ஊர்ந்தான் இடை.', 'Araththaaru Ithuvena Ventaa Sivikai', 'Litter-bearer and rider say  Without a word, the fortune\'s way', 'The fruit of virtue need not be described in books; it may be inferred from seeing the bearer of a palanquin and the rider therein'),
  (38, 4, 'அறன் வலியுறுத்தல்', 'வீழ்நாள் படாஅமை நன்றாற்றின் அஃதொருவன்
வாழ்நாள் வழியடைக்கும் கல்.', 'Veezhnaal Pataaamai Nandraatrin Aqdhoruvan', 'Like stones that block rebirth and pain Are doing good and good again', 'If one allows no day to pass without some good being done, his conduct will be a stone to block up the passage to other births'),
  (39, 4, 'அறன் வலியுறுத்தல்', 'அறத்தான் வருவதே இன்பம் மற்றெல்லாம்
புறத்த புகழும் இல.', 'Araththaan Varuvadhe Inpam Mar', 'Weal flows only from virtue done The rest is rue and renown gone', 'Only that pleasure which flows from domestic virtue is pleasure; all else is not pleasure, and it is without praise'),
  (40, 4, 'அறன் வலியுறுத்தல்', 'செயற்பால தோரும் அறனே ஒருவற்கு
உயற்பால தோரும் பழி.', 'Seyarpaala Thorum Arane Oruvarku', 'Worthy act is virtue done Vice is what we ought to shun', 'That is virtue which each ought to do, and that is vice which each should shun'),
  (41, 5, 'இல்வாழ்க்கை', 'இல்வாழ்வான் என்பான் இயல்புடைய மூவர்க்கும்
நல்லாற்றின் நின்ற துணை.', 'Ilvaazhvaan Enpaan Iyalputaiya Moovarkkum', 'The ideal householder is he Who aids the natural orders there', 'He will be called a (true) householder, who is a firm support to the virtuous of the three orders in'),
  (42, 5, 'இல்வாழ்க்கை', 'துறந்தார்க்கும் துவ்வாதவர்க்கும் இறந்தார்க்கும்
இல்வாழ்வான் என்பான் துணை.', 'Thurandhaarkkum Thuvvaa Dhavarkkum Irandhaarkkum', 'His help the monk and retired share, And celibate students are his care', 'He will be said to flourish in domestic virtue who aids the forsaken, the poor, and the dead'),
  (43, 5, 'இல்வாழ்க்கை', 'தென்புலத்தார் தெய்வம் விருந்தொக்கல் தானென்றாங்கு
ஐம்புலத்தாறு ஓம்பல் தலை.', 'Thenpulaththaar Theyvam Virundhokkal Thaanendraangu', 'By dutiful householder\'s aid God, manes, kin, self and guests are served', 'The chief (duty of the householder) is to preserve the five-fold rule (of conduct) towards the manes, the Gods, his guests, his relations and himself'),
  (44, 5, 'இல்வாழ்க்கை', 'பழியஞ்சிப் பாத்தூண் உடைத்தாயின் வாழ்க்கை
வழியெஞ்சல் எஞ்ஞான்றும் இல்.', 'Pazhiyanjip Paaththoon Utaiththaayin Vaazhkkai', 'Sin he shuns and food he shares His home is bright and brighter fares', 'His descendants shall never fail who, living in the domestic state, fears vice (in the acquisition of property) and shares his food (with others)'),
  (45, 5, 'இல்வாழ்க்கை', 'அன்பும் அறனும் உடைத்தாயின் இல்வாழ்க்கை
பண்பும் பயனும் அது.', 'Anpum Aranum Utaiththaayin Ilvaazhkkai', 'In grace and gain the home excels, Where love with virtue sweetly dwells', 'If the married life possess love and virtue, these will be both its duty and reward'),
  (46, 5, 'இல்வாழ்க்கை', 'அறத்தாற்றின் இல்வாழ்க்கை ஆற்றின் புறத்தாற்றில்
போஒய்ப் பெறுவ தெவன்?', 'Araththaatrin Ilvaazhkkai Aatrin Puraththaatril', 'Who turns from righteous family To be a monk, what profits he?', 'What will he who lives virtuously in the domestic state gain by going into the other, (ascetic) state ?'),
  (47, 5, 'இல்வாழ்க்கை', 'இயல்பினான் இல்வாழ்க்கை வாழ்பவன் என்பான்
முயல்வாருள் எல்லாம் தலை.', 'Iyalpinaan Ilvaazhkkai Vaazhpavan Enpaan', 'Of all who strive for bliss, the great Is he who leads the married state', 'Among all those who labour (for future happiness) he is greatest who lives well in the household state'),
  (48, 5, 'இல்வாழ்க்கை', 'ஆற்றின் ஒழுக்கி அறனிழுக்கா இல்வாழ்க்கை
நோற்பாரின் நோன்மை உடைத்து.', 'Aatrin Ozhukki Aranizhukkaa Ilvaazhkkai', 'Straight in virtue, right in living Make men brighter than monks praying', 'The householder who, not swerving from virtue, helps the ascetic in his way, endures more than those who endure penance'),
  (49, 5, 'இல்வாழ்க்கை', 'அறனெனப் பட்டதே இல்வாழ்க்கை அஃதும்
பிறன்பழிப்ப தில்லாயின் நன்று.', 'Aran Enap Pattadhe Ilvaazhkkai', 'Home-life and virtue, are the same; Which spotless monkhood too can claim', 'The marriage state is truly called virtue The other state is also good, if others do not reproach it'),
  (50, 5, 'இல்வாழ்க்கை', 'வையத்துள் வாழ்வாங்கு வாழ்பவன் வான்உறையும்
தெய்வத்துள் வைக்கப் படும்.', 'Vaiyaththul Vaazhvaangu Vaazhpavan Vaanu�ryum', 'He is a man of divine worth Who lives in ideal home on earth', 'He who on earth has lived in the conjugal state as he should live, will be placed among the Gods who dwell in heaven'),
  (51, 6, 'வாழ்க்கைத் துணைநலம்', 'மனைக்தக்க மாண்புடையள் ஆகித்தற் கொண்டான்
வளத்தக்காள் வாழ்க்கைத் துணை.', 'Manaikdhakka Maanputaiyal Aakiththar Kontaan', 'A good housewife befits the house, Spending with thrift the mate\'s resource', 'She who has the excellence of home virtues, and can expend within the means of her husband, is a help in the domestic state'),
  (52, 6, 'வாழ்க்கைத் துணைநலம்', 'மனைமாட்சி இல்லாள்கண் இல்லாயின் வாழ்க்கை
எனைமாட்சித் தாயினும் இல்.', 'Manaimaatchi Illaalkan Illaayin Vaazhkkai', 'Bright is home when wife is chaste If not all greatness is but waste', 'If the wife be devoid of domestic excellence, whatever (other) greatness be possessed, the conjugal state, is nothing'),
  (53, 6, 'வாழ்க்கைத் துணைநலம்', 'இல்லதென் இல்லவள் மாண்பானால் உள்ளதென்
இல்லவள் மாணாக் கடை?', 'Illadhen Illaval Maanpaanaal Ulladhen', 'What is rare when wife is good What can be there when she is bad?', 'If his wife be eminent (in virtue), what does (that man) not possess ? If she be without excellence, what does (he) possess ?'),
  (54, 6, 'வாழ்க்கைத் துணைநலம்', 'பெண்ணின் பெருந்தக்க யாவுள கற்பென்னும்
திண்மைஉண் டாகப் பெறின்.', 'Pennin Perundhakka Yaavula Karpennum', 'What greater fortune is for men Than a constant chaste woman?', 'What is more excellent than a wife, if she possess the stability of chastity ?'),
  (55, 6, 'வாழ்க்கைத் துணைநலம்', 'தெய்வம் தொழாஅள் கொழுநன் தொழுதெழுவாள்
பெய்யெனப் பெய்யும் மழை.', 'Theyvam Thozhaaal Kozhunan Thozhudhezhuvaal', 'Her spouse before God who adores, Is like rain that at request pours', 'If she, who does not worship God, but who rising worships her husband, say, "let it rain," it will rain'),
  (56, 6, 'வாழ்க்கைத் துணைநலம்', 'தற்காத்துத் தற்கொண்டாற் பேணித் தகைசான்ற
சொற்காத்துச் சோர்விலாள் பெண்.', 'Tharkaaththuth Tharkontaar Penith Thakaisaandra', 'The good wife guards herself from blame, She tends her spouse and brings him fame', 'She is a wife who unweariedly guards herself, takes care of her husband, and preserves an unsullied fame'),
  (57, 6, 'வாழ்க்கைத் துணைநலம்', 'சிறைகாக்கும் காப்பெவன் செய்யும் மகளிர்
நிறைகாக்கும் காப்பே தலை.', 'Siraikaakkum Kaappevan Seyyum Makalir', 'Of what avail are watch and ward? Their purity is women\'s guard', 'What avails the guard of a prison ? The chief guard of a woman is her chastity'),
  (58, 6, 'வாழ்க்கைத் துணைநலம்', 'பெற்றாற் பெறின்பெறுவர் பெண்டிர் பெருஞ்சிறப்புப்
புத்தேளிர் வாழும் உலகு.', 'Petraar Perinperuvar Pentir Perunjirappup', 'Women who win their husbands\' heart Shall flourish where the gods resort', 'If women shew reverence to their husbands, they will obtain great excellence in the world where the gods flourish'),
  (59, 6, 'வாழ்க்கைத் துணைநலம்', 'புகழ்புரிந்த இல்லிலோர்க்கு இல்லை இகழ்வார்முன்
ஏறுபோல் பீடு நடை.', 'Pukazhpurindha Illilorkku Illai Ikazhvaarmun', 'A cuckold has not the lion-like gait Before his detractors aright', 'The man whose wife seeks not the praise (of chastity) cannot walk with lion-like stately step, before those who revile them'),
  (60, 6, 'வாழ்க்கைத் துணைநலம்', 'மங்கலம் என்ப மனைமாட்சி மற்று அதன்
நன்கலம் நன்மக்கட் பேறு.', 'Mangalam Enpa Manaimaatchi Matru', 'An honest wife is home\'s delight And children good are jewels abright', 'The excellence of a wife is the good of her husband; and good children are the jewels of that goodness'),
  (61, 7, 'புதல்வரைப் பெறுதல்', 'பெறுமவற்றுள் யாமறிவது இல்லை அறிவறிந்த
மக்கட்பேறு அல்ல பிற.', 'Perumavatrul Yaamarivadhu Illai Arivarindha', 'The world no higher bliss bestows Than children virtuous and wise', 'Among all the benefits that may be acquired, we know no greater benefit than the acquisition of intelligent children'),
  (62, 7, 'புதல்வரைப் பெறுதல்', 'எழுபிறப்பும் தீயவை தீண்டா பழிபிறங்காப்
பண்புடை மக்கட் பெறின்.', 'Ezhupirappum Theeyavai Theentaa Pazhipirangaap', 'No evil comes and no blemish; Noble sons bring all we wish', 'The evils of the seven births shall not touch those who abtain children of a good disposition, free from vice'),
  (63, 7, 'புதல்வரைப் பெறுதல்', 'தம்பொருள் என்பதம் மக்கள் அவர்பொருள்
தம்தம் வினையான் வரும்.', 'Thamporul Enpadham Makkal Avarporul', 'Children are one\'s wealth indeed Their wealth is measured by their deed', 'Men will call their sons their wealth, because it flows to them through the deeds which they (sons) perform on their behalf'),
  (64, 7, 'புதல்வரைப் பெறுதல்', 'அமிழ்தினும் ஆற்ற இனிதேதம் மக்கள்
சிறுகை அளாவிய கூழ்.', 'Amizhdhinum Aatra Inidhedham Makkal', 'The food is more than nectar sweet In which one\'s children hands insert', 'The rice in which the little hand of their children has dabbled will be far sweeter (to the parent) than ambrosia'),
  (65, 7, 'புதல்வரைப் பெறுதல்', 'மக்கள்மெய் தீண்டல் உடற்கின்பம் மற்றுஅவர்
சொற்கேட்டல் இன்பம் செவிக்கு.', 'Makkalmey Theental Utarkinpam Matru', 'Children\'s touch delights the body Sweet to ears are their words lovely', 'The touch of children gives pleasure to the body, and the hearing of their words, pleasure to the ear'),
  (66, 7, 'புதல்வரைப் பெறுதல்', 'குழல்இனிது யாழ்இனிது என்பதம் மக்கள்
மழலைச்சொல் கேளா தவர்.', 'Kuzhal Inidhu Yaazhinidhu Enpadham', 'The flute and lute are sweet they say Deaf to baby\'s babble\'s lay!', '"The pipe is sweet, the lute is sweet," say those who have not heard the prattle of their own children'),
  (67, 7, 'புதல்வரைப் பெறுதல்', 'தந்தை மகற்காற்றும் நன்றி அவையத்து
முந்தி இருப்பச் செயல்.', 'Thandhai Makarkaatrum Nandri Avaiyaththu', 'A father\'s duty to his son is  To seat him in front of the wise', 'The benefit which a father should confer on his son is to give him precedence in the assembly of the learned'),
  (68, 7, 'புதல்வரைப் பெறுதல்', 'தம்மின்தம் மக்கள் அறிவுடைமை மாநிலத்து
மன்னுயிர்க் கெல்லாம் இனிது.', 'Thammindham Makkal Arivutaimai Maanilaththu', 'With joy the hearts of parents swell  To see their children themselves excel', 'That their children should possess knowledge is more pleasing to all men of this great earth than to themselves'),
  (69, 7, 'புதல்வரைப் பெறுதல்', 'ஈன்ற பொழுதின் பெரிதுவக்கும் தன்மகனைச்
சான்றோன் எனக்கேட்ட தாய்.', 'Eendra Pozhudhin Peridhuvakkum Thanmakanaich', 'The mother, hearing her son\'s merit  Delights more than when she begot', 'The mother who hears her son called "a wise man" will rejoice more than she did at his birth'),
  (70, 7, 'புதல்வரைப் பெறுதல்', 'மகன்தந்தைக்கு ஆற்றும் உதவி இவன்தந்தை
என்நோற்றான் கொல் எனும் சொல்.', 'Makandhandhaikku Aatrum Udhavi Ivandhandhai', 'The son to sire this word is debt  \\"What penance such a son begot!\\"', '(So to act) that it may be said "by what great penance did his father beget him," is the benefit which a son should render to his father'),
  (71, 8, 'அன்புடைமை', 'அன்பிற்கும் உண்டோ அடைக்குந்தாழ் ஆர்வலர்
புன்கணீர் பூசல் தரும்.', 'Anpirkum Unto Ataikkundhaazh Aarvalar', 'What bolt can bar true love in fact  The tricking tears reveal the heart', 'Is there any fastening that can shut in love ? Tears of the affectionate will publish the love that is within'),
  (72, 8, 'அன்புடைமை', 'அன்பிலார் எல்லாம் தமக்குரியர் அன்புடையார்
என்பும் உரியர் பிறர்க்கு.', 'Anpilaar Ellaam Thamakkuriyar Anputaiyaar', 'To selves belong the loveless ones;  To oth\'rs the loving e\'en to bones', 'Those who are destitute of love appropriate all they have to themselves; but those who possess love consider even their bones to belong to others'),
  (73, 8, 'அன்புடைமை', 'அன்போடு இயைந்த வழக்கென்ப ஆருயிர்க்கு
என்போடு இயைந்த தொடர்பு.', 'Anpotu Iyaindha Vazhakkenpa Aaruyirkku', 'Soul is encased in frame of bone  To taste the life of love alone', 'They say that the union of soul and body in man is the fruit of the union of love and virtue (in a former birth)'),
  (74, 8, 'அன்புடைமை', 'அன்புஈனும் ஆர்வம் உடைமை அதுஈனும்
நண்பு என்னும் நாடாச் சிறப்பு.', 'Anpu Eenum Aarvam Utaimai', 'Love yields aspiration and thence  Friendship springs up in excellence', 'Love begets desire: and that (desire) begets the immeasureable excellence of friendship'),
  (75, 8, 'அன்புடைமை', 'அன்புற்று அமர்ந்த வழக்கென்ப வையகத்து
இன்புற்றார் எய்தும் சிறப்பு.', 'Anputru Amarndha Vazhakkenpa Vaiyakaththu', 'The crowning joy of home life flows  From peaceful psychic love always', 'These are the fruits of tranquil life of love'),
  (76, 8, 'அன்புடைமை', 'அறத்திற்கே அன்புசார் பென்ப அறியார்
மறத்திற்கும் அஃதே துணை.', 'Araththirke Anpusaar Penpa Ariyaar', '\\"Love is virtue\'s friend\\" say know-nots  It helps us against evil plots', 'The ignorant say that love is an ally to virtue only, but it is also a help to get out of vice'),
  (77, 8, 'அன்புடைமை', 'என்பி லதனை வெயில்போலக் காயுமே
அன்பி லதனை அறம்.', 'Enpi Ladhanai Veyilpolak Kaayume', 'Justice burns the loveless form  Like solar blaze the boneless worm', 'Virtue will burn up the soul which is without love, even as the sun burns up the creature which is without bone, ie worms'),
  (78, 8, 'அன்புடைமை', 'அன்பகத் தில்லா உயிர்வாழ்க்கை வன்பாற்கண்
வற்றல் மரந்தளிர்த் தற்று.', 'Anpakath Thillaa Uyirvaazhkkai Vanpaarkan', 'Life bereft of love is gloom  Can sapless tree in desert bloom?', 'The domestic state of that man whose mind is without love is like the flourishing of a withered tree upon the parched desert'),
  (79, 8, 'அன்புடைமை', 'புறத்துறுப் பெல்லாம் எவன்செய்யும் யாக்கை
அகத்துறுப்பு அன்பி லவர்க்கு.', 'Puraththurup Pellaam Evanseyyum Yaakkai', 'Love is the heart which limbs must move,  Or vain the outer parts will prove', 'Of what avail are all the external members (of the body) to those who are destitute of love, the internal member'),
  (80, 8, 'அன்புடைமை', 'அன்பின் வழியது உயிர்நிலை அஃதிலார்க்கு
என்புதோல் போர்த்த உடம்பு.', 'Anpin Vazhiyadhu Uyirnilai Aqdhilaarkku', 'The seat of life is love alone;  Or beings are but skin and bone!', 'That body alone which is inspired with love contains a living soul: if void of it, (the body) is bone overlaid with skin'),
  (81, 9, 'விருந்தோம்பல்', 'இருந்தோம்பி இல்வாழ்வ தெல்லாம் விருந்தோம்பி
வேளாண்மை செய்தற் பொருட்டு.', 'Irundhompi Ilvaazhva Thellaam Virundhompi', 'Men set up home, toil and earn  To tend the guests and do good turn', 'The whole design of living in the domestic state and laying up (property) is (to be able) to exercise the benevolence of hospitality'),
  (82, 9, 'விருந்தோம்பல்', 'விருந்து புறத்ததாத் தானுண்டல் சாவா
மருந்தெனினும் வேண் டற்பாற் றன்று.', 'Virundhu Puraththadhaath Thaanuntal Saavaa', 'To keep out guests cannot be good  Albeit you eat nector-like food', 'It is not fit that one should wish his guests to be outside (his house) even though he were eating the food of immortality'),
  (83, 9, 'விருந்தோம்பல்', 'வருவிருந்து வைகலும் ஓம்புவான் வாழ்க்கை
பருவந்து பாழ்படுதல் இன்று.', 'Varuvirundhu Vaikalum Ompuvaan Vaazhkkai', 'Who tends his guests day in and out  His life in want never wears out', 'The domestic life of the man that daily entertains the guests who come to him shall not be laid waste by poverty'),
  (84, 9, 'விருந்தோம்பல்', 'அகனமர்ந்து செய்யாள் உறையும் முகனமர்ந்து
நல்விருந்து ஓம்புவான் இல்.', 'Akanamarndhu Seyyaal Uraiyum Mukanamarndhu', 'The goddess of wealth will gladly rest  Where smiles welcome the worthy guest', 'Lakshmi with joyous mind shall dwell in the house of that man who, with cheerful countenance, entertains the good as guests'),
  (85, 9, 'விருந்தோம்பல்', 'வித்தும் இடல்வேண்டும் கொல்லோ விருந்தோம்பி
மிச்சில் மிசைவான் புலம்.', 'Viththum Italventum Kollo Virundhompi', 'Should his field be sown who first  Feeds the guests and eats the rest?', 'Is it necessary to sow the field of the man who, having feasted his guests, eats what may remain ?'),
  (86, 9, 'விருந்தோம்பல்', 'செல்விருந்து ஓம்பி வருவிருந்து பார்த்திருப்பான்
நல்வருந்து வானத் தவர்க்கு.', 'Selvirundhu Ompi Varuvirundhu Paarththiruppaan', 'Who tends a guest and looks for next  Is a welcome guest in heaven\'s feast', 'He who, having entertained the guests that have come, looks out for others who may yet come, will be a welcome guest to the inhabitants of heaven'),
  (87, 9, 'விருந்தோம்பல்', 'இனைத்துணைத் தென்பதொன் றில்லை விருந்தின்
துணைத்துணை வேள்விப் பயன்.', 'Inaiththunaith Thenpadhon Rillai Virundhin', 'Worth of the guest of quality  Is worth of hospitality', 'The advantages of benevolence cannot be measured; the measure (of the virtue) of the guests (entertained) is the only measure'),
  (88, 9, 'விருந்தோம்பல்', 'பரிந்தோம்பிப் பற்றற்றேம் என்பர் விருந்தோம்பி
வேள்வி தலைப்படா தார்.', 'Parindhompip Patratrem Enpar Virundhompi', 'Who loathe guest-service one day cry:  \\"We toil and store; but life is dry\\"', 'Those who have taken no part in the benevolence of hospitality shall (at length lament) saying, "we have laboured and laid up wealth and are now without support."'),
  (89, 9, 'விருந்தோம்பல்', 'உடைமையுள் இன்மை விருந்தோம்பல் ஓம்பா
மடமை மடவார்கண் உண்டு.', 'Utaimaiyul Inmai Virundhompal Ompaa', 'The man of wealth is poor indeed  Whose folly fails the guest to feed', 'That stupidity which excercises no hospitality is poverty in the midst of wealth It is the property of the stupid'),
  (90, 9, 'விருந்தோம்பல்', 'மோப்பக் குழையும் அனிச்சம் முகந்திரிந்து
நோக்கக் குநழ்யும் விருந்து.', 'Moppak Kuzhaiyum Anichcham Mukandhirindhu', 'Anicham smelt withers: like that  A wry-faced look withers the guest', 'As the Anicham flower fades in smelling, so fades the guest when the face is turned away'),
  (91, 10, 'இனியவைகூறல்', 'இன்சொலால் ஈரம் அளைஇப் படிறுஇலவாம்
செம்பொருள் கண்டார்வாய்ச் சொல்.', 'Insolaal Eeram Alaiip Patiruilavaam', 'The words of Seers are lovely sweet  Merciful and free from deceit', 'Sweet words are those which imbued with love and free from deceit flow from the mouth of the virtuous'),
  (92, 10, 'இனியவைகூறல்', 'அகன்அமர்ந்து ஈதலின் நன்றே முகனமர்ந்து
இன்சொலன் ஆகப் பெறின்.', 'Akanamarndhu Eedhalin Nandre Mukanamarndhu', 'Sweet words from smiling lips dispense  More joys than heart\'s beneficence', 'Sweet speech, with a cheerful countenance is better than a gift made with a joyous mind'),
  (93, 10, 'இனியவைகூறல்', 'முகத்தான் அமர்ந்து இனிதுநோக்கி அகத்தானாம்
இன்சொ லினதே அறம்.', 'Mukaththaan Amarndhuinidhu Nokki Akaththaanaam', 'Calm face, sweet look, kind words from heart  Such is the gracious virtue\'s part', 'Sweet speech, flowing from the heart (uttered) with a cheerful countenance and a sweet look, is true virtue'),
  (94, 10, 'இனியவைகூறல்', 'துன்புறூஉம் துவ்வாமை இல்லாகும் யார்மாட்டும்
இன்புறூஉம் இன்சொ லவர்க்கு.', 'Thunpurooum Thuvvaamai Illaakum Yaarmaattum', 'Whose loving words delight each one  The woe of want from them is gone', 'Sorrow-increasing poverty shall not come upon those who use towards all, pleasure-increasing sweetness of speech'),
  (95, 10, 'இனியவைகூறல்', 'பணிவுடையன் இன்சொலன் ஆதல் ஒருவற்கு
அணியல்ல மற்றுப் பிற.', 'Panivutaiyan Insolan Aadhal Oruvarku', 'To be humble and sweet words speak  No other jewel do wise men seek', 'Humility and sweetness of speech are the ornaments of man; all others are not (ornaments)'),
  (96, 10, 'இனியவைகூறல்', 'அல்லவை தேய அறம்பெருகும் நல்லவை
நாடி இனிய சொலின்', 'Allavai Theya Aramperukum Nallavai', 'His sins vanish, his virtues grow  Whose fruitful words with sweetness flow', 'If a man, while seeking to speak usefully, speaks also sweetly, his sins will diminish and his virtue increase'),
  (97, 10, 'இனியவைகூறல்', 'நயன்ஈன்று நன்றி பயக்கும் பயன்ஈன்று
பண்பின் தலைப்பிரியாச் சொல்.', 'Nayan Eendru Nandri Payakkum', 'The fruitful courteous kindly words  Lead to goodness and graceful deeds', 'That speech which, while imparting benefits ceases not to please, will yield righteousness (for this world) and merit (for the next world)'),
  (98, 10, 'இனியவைகூறல்', 'சிறுமையுவு நீங்கிய இன்சொல் மறுமையும்
இம்மையும் இன்பம் தரும்.', 'Sirumaiyul Neengiya Insol Marumaiyum', 'Kind words free from meanness delight  This life on earth and life the next', 'Sweet speech, free from harm to others, will give pleasure both in this world and in the next'),
  (99, 10, 'இனியவைகூறல்', 'இன்சொல் இனிதீன்றல் காண்பான் எவன்கொலோ
வன்சொல் வழங்கு வது?', 'Insol Inidheendral Kaanpaan Evankolo', 'Who sees the sweets of sweetness here  To use harsh words how can he dare?', 'Why does he use harsh words, who sees the pleasure which sweet speech yields ?'),
  (100, 10, 'இனியவைகூறல்', 'இனிய உளவாக இன்னாத கூறல்
கனிஇருப்பக் காய்கவர்ந் தற்று.', 'Iniya Ulavaaka Innaadha Kooral', 'Leaving ripe fruits the raw he eats  Who speaks harsh words when sweet word suits', 'To say disagreeable things when agreeable are at hand is like eating unripe fruit when there is ripe'),
  (101, 11, 'செய்ந்நன்றி அறிதல்', 'செய்யாமல் செய்த உதவிக்கு வையகமும்
வானகமும் ஆற்றல் அரிது.', 'Seyyaamal Seydha Udhavikku Vaiyakamum', 'Unhelped in turn good help given  Exceeds in worth earth and heaven', '(The gift of) heaven and earth is not an equivalent for a benefit which is conferred where none had been received'),
  (102, 11, 'செய்ந்நன்றி அறிதல்', 'காலத்தி னாற்செய்த நன்றி சிறிதெனினும்
ஞாலத்தின் மாணப் பெரிது.', 'Kaalaththi Naarseydha Nandri Siridheninum', 'A help rendered in hour of need  Though small is greater than the world', 'A favour conferred in the time of need, though it be small (in itself), is (in value) much larger than the world'),
  (103, 11, 'செய்ந்நன்றி அறிதல்', 'பயன்தூக்கார் செய்த உதவி நயன்தூக்கின்
நன்மை கடலின் பெரிது.', 'Payandhookkaar Seydha Udhavi Nayandhookkin', 'Help rendered without weighing fruits  Outweighs the sea in grand effects', 'If we weigh the excellence of a benefit which is conferred without weighing the return, it is larger than the sea'),
  (104, 11, 'செய்ந்நன்றி அறிதல்', 'தினைத்துணை நன்றி செயினும் பனைத்துணையாக்
கொள்வர் பயன்தெரி வார்.', 'Thinaiththunai Nandri Seyinum Panaiththunaiyaak', 'Help given though millet-small  Knowers count its good palm-tree tall', 'Though the benefit conferred be as small as a millet seed, those who know its advantage will consider it as large as a palmyra fruit'),
  (105, 11, 'செய்ந்நன்றி அறிதல்', 'உதவி வரைத்தன்று உதவி உதவி
செயப்பட்டார் சால்பின் வரைத்து.', 'Udhavi Varaiththandru Udhavi Udhavi', 'A help is not the help\'s measure  It is gainer\'s worth and pleasure', 'The benefit itself is not the measure of the benefit; the worth of those who have received it is its measure'),
  (106, 11, 'செய்ந்நன்றி அறிதல்', 'மறவற்க மாசற்றார் கேண்மை துறவற்க
துன்பத்துள் துப்பாயார் நட்பு.', 'Maravarka Maasatraar Kenmai Thuravarka', 'Forget not friendship of the pure  Forsake not timely helpers sure', 'Forsake not the friendship of those who have been your staff in adversity Forget not be benevolence of the blameless'),
  (107, 11, 'செய்ந்நன்றி அறிதல்', 'எழுமை எழுபிறப்பும் உள்ளுவர் தங்கண்
விழுமந் துடைத்தவர் நட்பு.', 'Ezhumai Ezhupirappum Ulluvar Thangan', 'Through sevenfold births, in memory fares  The willing friend who wiped one\'s tears', '(The wise) will remember throughout their seven-fold births the love of those who have wiped away their affliction'),
  (108, 11, 'செய்ந்நன்றி அறிதல்', 'நன்றி மறப்பது நன்றன்று நன்றல்லது
அன்றே மறப்பது நன்று.', 'Nandri Marappadhu Nandrandru Nandralladhu', 'To forget good turns is not good  Good it is over wrong not to brood', 'It is not good to forget a benefit; it is good to forget an injury even in the very moment (in which it is inflicted)'),
  (109, 11, 'செய்ந்நன்றி அறிதல்', 'கொன்றன்ன இன்னா செயினும் அவர்செய்த
ஒன்றுநன்று உள்ளக் கெடும்.', 'Kondranna Innaa Seyinum Avarseydha', 'Let deadly harms be forgotten  While remembering one good-turn', 'Though one inflict an injury great as murder, it will perish before the thought of one benefit (formerly) conferred'),
  (110, 11, 'செய்ந்நன்றி அறிதல்', 'எந்நன்றி கொன்றார்க்கும் உய்வுண்டாம் உய்வில்லை
செய்ந்நன்றி கொன்ற மகற்கு.', 'Ennandri Kondraarkkum Uyvuntaam Uyvillai', 'The virtue-killer may be saved  Not benefit-killer who is damned', 'He who has killed every virtue may yet escape; there is no escape for him who has killed a benefit'),
  (111, 12, 'நடுவு நிலைமை', 'தகுதி எனவொன்று நன்றே பகுதியால்
பாற்பட்டு ஒழுகப் பெறின்.', 'Thakudhi Enavondru Nandre Pakudhiyaal', 'Equity is supreme virtue  It is to give each man his due', 'That equity which consists in acting with equal regard to each of (the three) divisions of men [enemies, strangers and friends] is a pre-eminent virtue'),
  (112, 12, 'நடுவு நிலைமை', 'செப்பம் உடையவன் ஆக்கஞ் சிதைவின்றி
எச்சத்திற் கேமாப்பு உடைத்து.', 'Seppam Utaiyavan Aakkanj Chidhaivindri', 'Wealth of the man of equity  Grows and lasts to posterity', 'The wealth of the man of rectitude will not perish, but will bring happiness also to his posterity'),
  (113, 12, 'நடுவு நிலைமை', 'நன்றே தரினும் நடுவிகந்தாம் ஆக்கத்தை
அன்றே யொழிய விடல்.', 'Nandre Tharinum Natuvikandhaam Aakkaththai', 'Though profitable, turn away  From unjust gains without delay', 'Forsake in the very moment (of acquisition) that gain which, though it should bring advantage, is without equity'),
  (114, 12, 'நடுவு நிலைமை', 'தக்கார் தகவிலர் என்பது அவரவர்
எச்சத்தாற் காணப்ப படும்.', 'Thakkaar Thakavilar Enpadhu Avaravar', 'The worthy and the unworthy  Are seen in their posterity', 'The worthy and unworthy may be known by the existence or otherwise of good offsprings'),
  (115, 12, 'நடுவு நிலைமை', 'கேடும் பெருக்கமும் இல்லல்ல நெஞ்சத்துக்
கோடாமை சான்றோர்க் கணி.', 'Ketum Perukkamum Illalla Nenjaththuk', 'Loss and gain by cause arise;  Equal mind adorns the wise', 'Loss and gain come not without cause; it is the ornament of the wise to preserve evenness of mind (under both)'),
  (116, 12, 'நடுவு நிலைமை', 'கெடுவல்யான் என்பது அறிகதன் நெஞ்சம்
நடுவொரீஇ அல்ல செயின்.', 'Ketuvalyaan Enpadhu Arikadhan Nenjam', 'Of perdition let him be sure  Who leaves justice to sinful lure', 'Let him whose mind departing from equity commits sin well consider thus within himself, "I shall perish."'),
  (117, 12, 'நடுவு நிலைமை', 'கெடுவாக வையாது உலகம் நடுவாக
நன்றிக்கண் தங்கியான் தாழ்வு.', 'Ketuvaaka Vaiyaadhu Ulakam Natuvaaka', 'The just reduced to poverty  Is not held down by equity', 'The great will not regard as poverty the low estate of that man who dwells in the virtue of equity'),
  (118, 12, 'நடுவு நிலைமை', 'சமன்செய்து சீர்தூக்குங் கோல்போல் அமைந்தொருபால்
கோடாமை சான்றோர்க் கணி.', 'Samanseydhu Seerdhookkung Kolpol Amaindhorupaal', 'Like balance holding equal scales  A well poised mind is jewel of the wise', 'To incline to neither side, but to rest impartial as the even-fixed scale is the ornament of the wise'),
  (119, 12, 'நடுவு நிலைமை', 'சொற்கோட்டம் இல்லது செப்பம் ஒருதலையா
உட்கோட்டம் இன்மை பெறின்.', 'Sorkottam Illadhu Seppam Orudhalaiyaa', 'Justice is upright, unbending  And free from crooked word-twisting', 'Freedom from obliquity of speech is rectitude, if there be (corresponding) freedom from bias of mind'),
  (120, 12, 'நடுவு நிலைமை', 'வாணிகம் செய்வார்க்கு வாணிகம் பேணிப்
பிறவும் தமபோல் செயின்.', 'Vaanikam Seyvaarkku Vaanikam Penip', 'A trader\'s trade prospers fairly  When his dealings are neighbourly', 'The true merchandize of merchants is to guard and do by the things of others as they do by their own'),
  (121, 13, 'அடக்கமுடைமை', 'அடக்கம் அமரருள் உய்க்கும் அடங்காமை
ஆரிருள் உய்த்து விடும்.', 'Atakkam Amararul Uykkum Atangaamai', 'Self-rule leads to realms of gods  Indulgence leads to gloomy hades', 'Self-control will place (a man) among the Gods; the want of it will drive (him) into the thickest darkness (of hell)'),
  (122, 13, 'அடக்கமுடைமை', 'காக்க பொருளா அடக்கத்தை ஆக்கம்
அதனினூஉங் கில்லை உயிர்க்கு.', 'Kaakka Porulaa Atakkaththai Aakkam', 'No gains with self-control measure  Guard with care this great treasure', 'Let self-control be guarded as a treasure; there is no greater source of good for man than that'),
  (123, 13, 'அடக்கமுடைமை', 'செறிவறிந்து சீர்மை பயக்கும் அறிவறிந்து
ஆற்றின் அடங்கப் பெறின்.', 'Serivarindhu Seermai Payakkum Arivarindhu', 'Knowing wisdom who lives controlled  Name and fame seek him untold', 'Knowing that self-control is knowledge, if a man should control himself, in the prescribed course, such self-control will bring him distinction among the wise'),
  (124, 13, 'அடக்கமுடைமை', 'நிலையின் திரியாது அடங்கியான் தோற்றம்
மலையினும் மாணப் பெரிது.', 'Nilaiyin Thiriyaadhu Atangiyaan Thotram', 'Firmly fixed in self serene  The sage looks grander than mountain', 'More lofty than a mountain will be the greatness of that man who without swerving from his domestic state, controls himself'),
  (125, 13, 'அடக்கமுடைமை', 'எல்லார்க்கும் நன்றாம் பணிதல் அவருள்ளும்
செல்வர்க்கே செல்வம் தகைத்து.', 'Ellaarkkum Nandraam Panidhal Avarullum', 'Humility is good for all  To the rich it adds a wealth special', 'Humility is good in all; but especially in the rich it is (the excellence of) higher riches'),
  (126, 13, 'அடக்கமுடைமை', 'ஒருமையுள் ஆமைபோல் ஐந்தடக்கல் ஆற்றின்
எழுமையும் ஏமாப் புடைத்து.', 'Orumaiyul Aamaipol Aindhatakkal Aatrin', 'Who senses five like tortoise hold  Their joy prolongs to births sevenfold', 'Should one throughout a single birth, like a tortoise keep in his five senses, the fruit of it will prove a safe-guard to him throughout the seven-fold births.'),
  (127, 13, 'அடக்கமுடைமை', 'யாகாவா ராயினும் நாகாக்க காவாக்கால்
சோகாப்பர் சொல்லிழுக்குப் பட்டு.', 'Yaakaavaa Raayinum Naakaakka Kaavaakkaal', 'Rein the tongue if nothing else  Or slips of tongue bring all the woes', 'Whatever besides you leave unguarded, guard your tongue; otherwise errors of speech and the consequent misery will ensue'),
  (128, 13, 'அடக்கமுடைமை', 'ஒன்றானுந் தீச்சொல் பொருட்பயன் உண்டாயின்
நன்றாகா தாகி விடும்.', 'Ondraanun Theechchol Porutpayan Untaayin', 'Even a single evil word  Will turn all good results to bad', 'If a man\'s speech be productive of a single evil, all the good by him will be turned into evil'),
  (129, 13, 'அடக்கமுடைமை', 'தீயினாற் சுட்டபுண் உள்ளாறும் ஆறாதே
நாவினாற் சுட்ட வடு.', 'Theeyinaar Suttapun Ullaarum Aaraadhe', 'The fire-burnt wounds do find a cure  Tongue-burnt wound rests a running sore', 'The wound which has been burnt in by fire may heal, but a wound burnt in by the tongue will never heal'),
  (130, 13, 'அடக்கமுடைமை', 'கதங்காத்துக் கற்றடங்கல் ஆற்றுவான் செவ்வி
அறம்பார்க்கும் ஆற்றின் நுழைந்து.', 'Kadhangaaththuk Katratangal Aatruvaan Sevvi', 'Virtue seeks and peeps to see  Self-controlled savant anger free', 'Virtue, seeking for an opportunity, will come into the path of that man who, possessed of learning and self-control, guards himself against anger'),
  (131, 14, 'ஒழுக்கமுடைமை', 'ஒழுக்கம் விழுப்பந் தரலான் ஒழுக்கம்
உயிரினும் ஓம்பப் படும்.', 'Ozhukkam Vizhuppan Tharalaan Ozhukkam', 'Decorum does one dignity  More than life guard its purity', 'Propriety of conduct leads to eminence, it should therefore be preserved more carefully than life'),
  (132, 14, 'ஒழுக்கமுடைமை', 'பரிந்தோம்பிக் காக்க ஒழுக்கம் தெரிந்தோம்பித்
தேரினும் அஃதே துணை.', 'Parindhompik Kaakka Ozhukkam Therindhompith', 'Virtues of conduct all excel;  The soul aid should be guarded well', 'Let propriety of conduct be laboriously preserved and guarded; though one know and practise and excel in many virtues, that will be an eminent aid'),
  (133, 14, 'ஒழுக்கமுடைமை', 'ஒழுக்கம் உடைமை குடிமை இழுக்கம்
இழிந்த பிறப்பாய் விடும்.', 'Ozhukkam Utaimai Kutimai Izhukkam', 'Good conduct shows good family  Low manners mark anomaly', 'Propriety of conduct is true greatness of birth, and impropriety will sink into a mean birth'),
  (134, 14, 'ஒழுக்கமுடைமை', 'மறப்பினும் ஓத்துக் கொளலாகும் பார்ப்பான்
பிறப்பொழுக்கங் குன்றக் கெடும்.', 'Marappinum Oththuk Kolalaakum Paarppaan', 'Readers recall forgotten lore,  But conduct lost returns no more', 'A Brahman though he should forget the Vedas may recover it by reading; but, if he fail in propriety of conduct even his high birth will be destroyed'),
  (135, 14, 'ஒழுக்கமுடைமை', 'அழுக்கா றுடையான்கண் ஆக்கம்போன்று இல்லை
ஒழுக்க மிலான்கண் உயர்வு.', 'Azhukkaa Rutaiyaankan Aakkampondru Illai', 'The envious prosper but ill  The ill-behaved sinks lower still', 'Just as the envious man will be without wealth, so will the man of destitute of propriety of conduct be without greatness'),
  (136, 14, 'ஒழுக்கமுடைமை', 'ஒழுக்கத்தின் ஒல்கார் உரவோர் இழுக்கத்தின்
ஏதம் படுபாக் கறிந்து.', 'Ozhukkaththin Olkaar Uravor Izhukkaththin', 'The firm from virtue falter not  They know the ills of evil thought', 'Those firm in mind will not slacken in their observance of the proprieties of life, knowing, as they do, the misery that flows from the transgression from them'),
  (137, 14, 'ஒழுக்கமுடைமை', 'ஒழுக்கத்தின் எய்துவர் மேன்மை இழுக்கத்தின்
எய்துவர் எய்தாப் பழி.', 'Ozhukkaththin Eydhuvar Menmai Izhukkaththin', 'Conduct good ennobles man,  Bad conduct entails disgrace mean', 'From propriety of conduct men obtain greatness; from impropriety comes insufferable disgrace'),
  (138, 14, 'ஒழுக்கமுடைமை', 'நன்றிக்கு வித்தாகும் நல்லொழுக்கம் தீயொழுக்கம்
என்றும் இடும்பை தரும்.', 'Nandrikku Viththaakum Nallozhukkam Theeyozhukkam', 'Good conduct sows seeds of blessings  Bad conduct endless evil brings', 'Propriety of conduct is the seed of virtue; impropriety will ever cause sorrow'),
  (139, 14, 'ஒழுக்கமுடைமை', 'ஒழுக்க முடையவர்க்கு ஒல்லாவே தீய
வழுக்கியும் வாயாற் சொலல்.', 'Ozhukka Mutaiyavarkku Ollaave Theeya', 'Foul words will never fall from lips  Of righteous men even by slips', 'Those who study propriety of conduct will not speak evil, even forgetfully'),
  (140, 14, 'ஒழுக்கமுடைமை', 'உலகத்தோடு ஒட்ட ஒழுகல் பலகற்றும்
கல்லார் அறிவிலா தார்', 'Ulakaththotu Otta Ozhukal Palakatrum', 'Though read much they are ignorant  Whose life is not world-accordant', 'Those who know not how to act agreeably to the world, though they have learnt many things, are still ignorant'),
  (141, 15, 'பிறனில் விழையாமை', 'பிறன்பொருளாள் பெட்டொழுகும் பேதைமை ஞாலத்து
அறம்பொருள் கண்டார்கண் இல்.', 'Piranporulaal Pettozhukum Pedhaimai Gnaalaththu', 'Who know the wealth and virtue\'s way  After other\'s wife do not stray', 'The folly of desiring her who is the property of another will not be found in those who know (the attributes of) virtue and (the rights of) property'),
  (142, 15, 'பிறனில் விழையாமை', 'அறன்கடை நின்றாருள் எல்லாம் பிறன்கடை
நின்றாரின் பேதையார் இல்.', 'Arankatai Nindraarul Ellaam Pirankatai', 'He is the worst law breaking boor  Who haunts around his neighbour\'s door', 'Among all those who stand on the outside of virtue, there are no greater fools than those who stand outside their neighbour\'s door'),
  (143, 15, 'பிறனில் விழையாமை', 'விளிந்தாரின் வேறல்லர் மன்ற தெளிந்தாரில்
தீமை புரிந்து ஒழுகு வார்.', 'Vilindhaarin Verallar Mandra Thelindhaaril', 'The vile are dead who evil aim  And put faithful friends\' wives to shame', 'Certainly they are no better than dead men who desire evil towards the wife of those who'),
  (144, 15, 'பிறனில் விழையாமை', 'எனைத்துணையர் ஆயினும் என்னாம் தினைத்துணையும்
தேரான் பிறனில் புகல்.', 'Enaiththunaiyar Aayinum Ennaam Thinaiththunaiyum', 'Their boasted greatness means nothing  When to another\'s wife they cling', 'However great one may be, what does it avail if, without at all considering his guilt, he goes unto the wife of another ?'),
  (145, 15, 'பிறனில் விழையாமை', 'எளிதென இல்லிறப்பான் எய்துமெஞ் ஞான்றும்
விளியாது நிற்கும் பழி.', 'Elidhena Illirappaan Eydhumenj Gnaandrum', 'Who trifles with another\'s wife  His guilty stain will last for life', 'He who thinks lightly of going into the wife of another acquires guilt that will abide with him imperishably and for ever'),
  (146, 15, 'பிறனில் விழையாமை', 'பகைபாவம் அச்சம் பழியென நான்கும்
இகவாவாம் இல்லிறப்பான் கண்.', 'Pakaipaavam Achcham Pazhiyena Naankum', 'Hatred, sin, fear, and shame-these four  Stain adulterers ever more', 'Hatred, sin, fear, disgrace; these four will never leave him who goes in to his neighbour\'s wife'),
  (147, 15, 'பிறனில் விழையாமை', 'அறனியலான் இல்வாழ்வான் என்பான் பிறனியலாள்
பெண்மை நயவா தவன்.', 'Araniyalaan Ilvaazhvaan Enpaan Piraniyalaal', 'He is the righteous householder  His neighbour\'s wife who covets never', 'He who desires not the womanhood of her who should walk according to the will of another will be praised as a virtuous house-holder'),
  (148, 15, 'பிறனில் விழையாமை', 'பிறன்மனை நோக்காத பேராண்மை சான்றோர்க்கு
அறனொன்றோ ஆன்ற வொழுக்கு.', 'Piranmanai Nokkaadha Peraanmai Saandrorkku', 'They lead a high-souled manly life  The pure who eye not another\'s wife', 'That noble manliness which looks not at the wife of another is the virtue and dignity of the great'),
  (149, 15, 'பிறனில் விழையாமை', 'நலக்குரியார் யாரெனின் நாமநீர் வைப்பின்
பிறர்க்குரியாள் தோள்தோயா தார்.', 'Nalakkuriyaar Yaarenin Naamaneer Vaippin', 'Good in storm bound earth is with those  Who clasp not arms of another\'s spouse', 'Is it asked, "who are those who shall obtain good in this world surrounded by the terror-producing sea ?" Those who touch not the shoulder of her who belongs to another'),
  (150, 15, 'பிறனில் விழையாமை', 'அறன்வரையான் அல்ல செயினும் பிறன்வரையாள்
பெண்மை நயவாமை நன்று.', 'Aranvaraiyaan Alla Seyinum Piranvaraiyaal', 'Sinners breaking virtue\'s behest  Lust not for another\'s wife at least', 'Though a man perform no virtuous deeds and commit (every) vice, it will be well if he desire not the womanhood of her who is within the limit (of the house) of another'),
  (151, 16, 'பொறையுடைமை', 'அகழ்வாரைத் தாங்கும் நிலம்போலத் தம்மை
இகழ்வார்ப் பொறுத்தல் தலை.', 'Akazhvaaraith Thaangum Nilampolath Thammai', 'As earth bears up with diggers too  To bear revilers is prime virtue', 'To bear with those who revile us, just as the earth bears up those who dig it, is the first of virtues'),
  (152, 16, 'பொறையுடைமை', 'பொறுத்தல் இறப்பினை என்றும் அதனை
மறத்தல் அதனினும் நன்று.', 'Poruththal Irappinai Endrum Adhanai', 'Forgive insults is a good habit  Better it is to forget it', 'Bear with reproach even when you can retaliate; but to forget it will be still better than that'),
  (153, 16, 'பொறையுடைமை', 'இன்மையுள் இன்மை விருந்தொரால் வன்மையுள்
வன்மை மடவார்ப் பொறை.', 'Inmaiyul Inmai Virundhoraal Vanmaiyul', 'Neglect the guest is dearth of dearth  To bear with fools is strength of strength', 'To neglect hospitality is poverty of poverty To bear with the ignorant is might of might'),
  (154, 16, 'பொறையுடைமை', 'நிறையுடைமை நீங்காமை வேண்டின் பொற்யுடைமை
போற்றி யொழுகப் படும்.', 'Niraiyutaimai Neengaamai Ventin Poraiyutaimai', 'Practice of patient quality  Retains intact itegrity', 'If you desire that greatness should never leave, you preserve in your conduct the exercise of patience'),
  (155, 16, 'பொறையுடைமை', 'ஒறுத்தாரை ஒன்றாக வையாரே வைப்பர்
பொறுத்தாரைப் பொன்போற் பொதிந்து.', 'Oruththaarai Ondraaka Vaiyaare Vaippar', 'Vengeance is not in esteem held  Patience is praised as hidden gold', '(The wise) will not at all esteem the resentful They will esteem the patient just as the gold which they lay up with care'),
  (156, 16, 'பொறையுடைமை', 'ஒறுத்தார்க்கு ஒருநாளை இன்பம் பொறுத்தார்க்குப்
பொன்றுந் துணையும் புகழ்.', 'Oruththaarkku Orunaalai Inpam Poruththaarkkup', 'Revenge accords but one day\'s joy  Patience carries its praise for aye', 'The pleasure of the resentful continues for a day The praise of the patient will continue until (the final destruction of) the world'),
  (157, 16, 'பொறையுடைமை', 'திறனல்ல தற்பிறர் செய்யினும் நோநொந்து
அறனல்ல செய்யாமை நன்று.', 'Thiranalla Tharpirar Seyyinum Nonondhu', 'Though others cause you wanton pain  Grieve not; from unjust harm refrain', 'Though others inflict injuries on you, yet compassionating the evil (that will come upon them) it will be well not to do them anything contrary to virtue'),
  (158, 16, 'பொறையுடைமை', 'மிகுதியான் மிக்கவை செய்தாரைத் தாந்தம்
தகுதியான் வென்று விடல்.', 'Mikudhiyaan Mikkavai Seydhaaraith Thaandham', 'By noble forbearance vanquish  The proud that have caused you anguish', 'Let a man by patience overcome those who through pride commit excesses'),
  (159, 16, 'பொறையுடைமை', 'துறந்தாரின் தூய்மை உடையர் இறந்தார்வாய்
இன்னாச்சொல் நோற்கிற் பவர்.', 'Thurandhaarin Thooimai Utaiyar Irandhaarvaai', 'More than ascetics they are pure  Who bitter tongues meekly endure', 'Those who bear with the uncourteous speech of the insolent are as pure as the ascetics'),
  (160, 16, 'பொறையுடைமை', 'உண்ணாது நோற்பார் பெரியர் பிறர்சொல்லும்
இன்னாச்சொல் நோற்பாரின் பின்.', 'Unnaadhu Norpaar Periyar Pirarsollum', 'Who fast are great to do penance  Greater are they who bear offence', 'Those who endure abstinence from food are great, next to those who endure the uncourteous speech of others'),
  (161, 17, 'அழுக்காறாமை', 'ஒழுக்காறாக் கொள்க ஒருவன்தன் நெஞ்சத்து
அழுக்காறு இலாத இயல்பு.', 'Ozhukkaaraak Kolka Oruvandhan Nenjaththu', 'Deem your heart as virtuous  When your nature is not jealous', 'Let a man esteem that disposition which is free from envy in the same manner as propriety of conduct'),
  (162, 17, 'அழுக்காறாமை', 'விழுப்பேற்றின் அஃதொப்பது இல்லையார் மாட்டும்
அழுக்காற்றின் அன்மை பெறின்.', 'Vizhuppetrin Aqdhoppadhu Illaiyaar Maattum', 'No excellence excels the one  That by nature envies none', 'Amongst all attainable excellences there is none equal to that of being free from envy towords others'),
  (163, 17, 'அழுக்காறாமை', 'அறன்ஆக்கம் வேண்டாதான் என்பான் பிறனாக்கம்
பேணாது அழுக்கறுப் பான்.', 'Aranaakkam Ventaadhaan Enpaan Piranaakkam', 'Who envies others\' good fortune  Can\'t prosper in virtue of his own', 'Of him who instead of rejoicing in the wealth of others, envies it, it will be said "he neither desires virtue not wealth."'),
  (164, 17, 'அழுக்காறாமை', 'அழுக்காற்றின் அல்லவை செய்யார் இழுக்காற்றின்
ஏதம் படுபாக்கு அறிந்து.', 'Azhukkaatrin Allavai Seyyaar Izhukkaatrin', 'The wise through envy don\'t others wrong  Knowing that woes from evils throng', '(The wise) knowing the misery that comes from transgression will not through envy commit unrighteous deeds'),
  (165, 17, 'அழுக்காறாமை', 'அழுக்காறு உடையார்க்கு அதுசாலும் ஒன்னார்
வழுக்காயும் கேடீன் பது.', 'Azhukkaaru Utaiyaarkku Adhusaalum Onnaar', 'Man shall be wrecked by envy\'s whim  Even if enemies spare him', 'To those who cherish envy that is enough Though free from enemies that (envy) will bring destruction'),
  (166, 17, 'அழுக்காறாமை', 'கொடுப்பது அழுக்கறுப்பான் சுற்றம் உடுப்பதூஉம்
உண்பதூஉம் இன்றிக் கெடும்.', 'Kotuppadhu Azhukkaruppaan Sutram Utuppadhooum', 'Who envies gifts shall suffer ruin  Without food and clothes with his kin', 'He who is envious at a gift (made to another) will with his relations utterly perish destitute of food and rainment'),
  (167, 17, 'அழுக்காறாமை', 'அவ்வித்து அழுக்காறு உடையானைச் செய்யவள்
தவ்வையைக் காட்டி விடும்.', 'Avviththu Azhukkaaru Utaiyaanaich Cheyyaval', 'Fortune deserts the envious  Leaving misfortune omnious', 'Lakshmi envying (the prosperity) of the envious man will depart and introduce him to her sister'),
  (168, 17, 'அழுக்காறாமை', 'அழுக்காறு எனஒரு பாவி திருச்செற்றுத்
தீயுழி உய்த்து விடும்.', 'Azhukkaaru Enaoru Paavi Thiruchchetruth', 'Caitiff envy despoils wealth  And drags one into evil path', 'Envy will destroy (a man\'s) wealth (in his world) and drive him into the pit of fire (in the world to come.)'),
  (169, 17, 'அழுக்காறாமை', 'அவ்விய நெஞ்சத்தான் ஆக்கமும் செவ்வியான்
கேடும் நினைக்கப் படும்.', 'Avviya Nenjaththaan Aakkamum Sevviyaan', 'Why is envy rich, goodmen poor  People with surprise think over', 'The wealth of a man of envious mind and the poverty of the righteous will be pondered'),
  (170, 17, 'அழுக்காறாமை', 'அழுக்கற்று அகன்றாரும் இல்லை அஃதுஇல்லார்
பெருக்கத்தில் தீர்ந்தாரும் இல்.', 'Azhukkatru Akandraarum Illai Aqdhuillaar', 'The envious prosper never  The envyless prosper ever', 'Never have the envious become great; never have those who are free from envy been without greatness'),
  (171, 18, 'வெஃகாமை', 'நடுவின்றி நன்பொருள் வெஃகின் குடிபொன்றிக்
குற்றமும் ஆங்கே தரும்.', 'Natuvindri Nanporul Veqkin Kutipondrik', 'Who covets others\' honest wealth  That greed ruins his house forthwith', 'If a man departing from equity covet the property (of others), at that very time will his family be destroyed and guilt be incurred'),
  (172, 18, 'வெஃகாமை', 'படுபயன் வெஃகிப் பழிப்படுவ செய்யார்
நடுவன்மை நாணு பவர்.', 'Patupayan Veqkip Pazhippatuva Seyyaar', 'Who shrink with shame from sin, refrain  From coveting which brings ruin', 'Those who blush at the want of equity will not commit disgraceful acts through desire of the profit that may be gained'),
  (173, 18, 'வெஃகாமை', 'சிற்றின்பம் வெஃகி அறனல்ல செய்யாரே
மற்றின்பம் வேண்டு பவர்.', 'Sitrinpam Veqki Aranalla Seyyaare', 'For spiritual bliss who long  For fleeting joy commit no wrong', 'Those who desire the higher pleasures (of heaven) will not act unjustly through desire of the trifling joy. (in this life.)'),
  (174, 18, 'வெஃகாமை', 'இலமென்று வெஃகுதல் செய்யார் புலம்வென்ற
புன்மையில் காட்சி யவர்.', 'Ilamendru Veqkudhal Seyyaar Pulamvendra', 'The truth-knowers of sense-control  Though in want covet not at all', 'The wise who have conquered their senses and are free from crime, will not covet (the things of others), with the thought "we are destitute."'),
  (175, 18, 'வெஃகாமை', 'அஃகி அகன்ற அறிவென்னாம் யார்மாட்டும்
வெஃகி வெறிய செயின்.', 'Aqki Akandra Arivennaam Yaarmaattum', 'What is one\'s subtle wisdom worth  If it deals ill with all on earth', 'What is the advantage of extensive and accurate knowledge if a man through covetousness act senselessly towards all ?'),
  (176, 18, 'வெஃகாமை', 'அருள்வெஃகி ஆற்றின்கண் நின்றான் பொருள்வெஃகிப்
பொல்லாத சூழக் கெடும்.', 'Arulveqki Aatrinkan Nindraan Porulveqkip', 'Who seeks for grace on righteous path  Suffers by evil covetous wealth', 'If he, who through desire of the virtue of kindness abides in the domestic state ie, the path in which it may be obtained, covet (the property of others) and think of evil methods (to obtain it), he will perish'),
  (177, 18, 'வெஃகாமை', 'வேண்டற்க வெஃகியாம் ஆக்கம் விளைவயின்
மாண்டற் கரிதாம் பயன்.', 'Ventarka Veqkiyaam Aakkam Vilaivayin', 'Shun the fruit of covetousness  All its yield is inglorious', 'Desire not the gain of covetousness In the enjoyment of its fruits there is no glory'),
  (178, 18, 'வெஃகாமை', 'அஃகாமை செல்வத்திற்கு யாதெனின் வெஃகாமை
வேண்டும் பிறன்கைப் பொருள்.', 'Aqkaamai Selvaththirku Yaadhenin Veqkaamai', 'The mark of lasting wealth is shown  By not coveting others\' own', 'If it is weighed, "what is the indestructibility of wealth," it is freedom from covetousness'),
  (179, 18, 'வெஃகாமை', 'அறனறிந்து வெஃகா அறிவுடையார்ச் சேரும்
திறன்அறிந் தாங்கே திரு.', 'Aranarindhu Veqkaa Arivutaiyaarch Cherum', 'Fortune seeks the just and wise  Who are free from coveting vice', 'Lakshmi, knowing the manner (in which she may approach) will immediately come to those wise men who, knowing that it is virtue, covet not the property of others'),
  (180, 18, 'வெஃகாமை', 'இறலீனும் எண்ணாது வெஃகின் விறல்ஈனும்
வேண்டாமை என்னுஞ் செருக்கு.', 'Iraleenum Ennaadhu Veqkin Viraleenum', 'Desireless, greatness conquers all;  Coveting misers ruined fall', 'To covet (the wealth of another) regardless of consequences will bring destruction That greatness (of mind) which covets not will give victory'),
  (181, 19, 'புறங்கூறாமை', 'அறங்கூறான் அல்ல செயினும் ஒருவன்
புறங்கூறான் என்றல் இனிது.', 'Arangooraan Alla Seyinum Oruvan', 'Though a man from virtue strays,  To keep from slander brings him praise', 'Though one do not even speak of virtue and live in sin, it will be well if it be said of him "he does not backbite."'),
  (182, 19, 'புறங்கூறாமை', 'அறனழீஇ அல்லவை செய்தலின் தீதே
புறனழீஇப் பொய்த்து நகை.', 'Aranazheei Allavai Seydhalin Theedhe', 'Who bite behind, and before smile  Are worse than open traitors vile', 'To smile deceitfully (in another\'s presence) after having reviled him to his destruction (behind his back) is a greater evil than the commission of (every other) sin and the destruction of (every) virtue'),
  (183, 19, 'புறங்கூறாமை', 'புறங்கூறிப் பொய்த்துயிர் வாழ்தலின் சாதல்
அறங்கூற்றும் ஆக்கத் தரும்.', 'Purangoorip Poiththuyir Vaazhdhalin Saadhal', 'Virtue thinks it better to die,  Than live to backbite and to lie', 'Death rather than life will confer upon the deceitful backbiter the profit which (the treatises on) virtue point out'),
  (184, 19, 'புறங்கூறாமை', 'கண்ணின்று கண்ணறச் சொல்லினும் சொல்லற்க
முன்னின்று பின்நோக்காச் சொல்.', 'Kannindru Kannarach Chollinum Sollarka', 'Though harsh you speak in one\'s presence  Abuse is worse in his absence', 'Though you speak without kindness before another\'s face speak not in his absence words which regard not the evil subsequently resulting from it'),
  (185, 19, 'புறங்கூறாமை', 'அறஞ்சொல்லும் நெஞ்சத்தான் அன்மை புறஞ்சொல்லும்
புன்மையாற் காணப் படும்.', 'Aranjollum Nenjaththaan Anmai Puranjollum', 'Who turns to slander makes it plain  His praise of virtue is in vain', 'The emptiness of that man\'s mind who (merely) praises virtue will be seen from the meanness of reviling another behind his back'),
  (186, 19, 'புறங்கூறாமை', 'பிறன்பழி கூறுவான் தன்பழி யுள்ளும்
திறன்தெரிந்து கூறப் படும்.', 'Piranpazhi Kooruvaan Thanpazhi Yullum', 'His failings will be found and shown,  Who makes another\'s failings known', 'The character of the faults of that man who publishes abroad the faults of others will be sought out and published'),
  (187, 19, 'புறங்கூறாமை', 'பகச்சொல்லிக் கேளிர்ப் பிரிப்பர் நகச்சொல்லி
நட்பாடல் தேற்றா தவர்.', 'Pakachchollik Kelirp Pirippar Nakachcholli', 'By pleasing words who make not friends  Sever their hearts by hostile trends', 'Those who know not to live in friendship with amusing conversation will by back-biting estrange even their relatives'),
  (188, 19, 'புறங்கூறாமை', 'துன்னியார் குற்றமும் தூற்றும் மரபினார்
என்னைகொல் ஏதிலார் மாட்டு.', 'Thunniyaar Kutramum Thootrum Marapinaar', 'What will they not to strangers do  Who bring their friends\' defects to view?', 'What will those not do to strangers whose nature leads them to publish abroad the faults of their intimate friends ?'),
  (189, 19, 'புறங்கூறாமை', 'அறன்நோக்கி ஆற்றுங்கொல் வையம் புறன்நோக்கிப்
புன்சொல் உரைப்பான் பொறை.', 'Arannokki Aatrungol Vaiyam Purannokkip', 'The world in mercy bears his load  Who rants behind words untoward', 'The world through charity supports the weight of those who reproach others observing their absence'),
  (190, 19, 'புறங்கூறாமை', 'ஏதிலார் குற்றம்போல் தங்குற்றங் காண்கிற்பின்
தீதுண்டோ மன்னும் உயிர்க்கு.', 'Edhilaar Kutrampol Thangutrang Kaankirpin', 'No harm would fall to any man  If each his own defect could scan', 'If they observed their own faults as they observe the faults of others, would any evil happen to men ?'),
  (191, 20, 'பயனில சொல்லாமை', 'பல்லார் முனியப் பயனில சொல்லுவான்
எல்லாரும் எள்ளப் படும்.', 'Pallaar Muniyap Payanila Solluvaan', 'With silly words who insults all  Is held in contempt as banal', 'He who to the disgust of many speaks useless things will be despised by all'),
  (192, 20, 'பயனில சொல்லாமை', 'பயனில பல்லார்முன் சொல்லல் நயனில
நட்டார்கண் செய்தலிற் றீது.', 'Payanila Pallaarmun Sollal Nayanila', 'Vain talk before many is worse  Than doing to friends deeds adverse', 'To speak useless things in the presence of many is a greater evil than to do unkind things towards friends'),
  (193, 20, 'பயனில சொல்லாமை', 'நயனிலன் என்பது சொல்லும் பயனில
பாரித் துரைக்கும் உரை.', 'Nayanilan Enpadhu Sollum Payanila', 'The babbler\'s hasty lips proclaim  That \\"good-for-nothing\\" is his name', 'That conversation in which a man utters forth useless things will say of him "he is without virtue."'),
  (194, 20, 'பயனில சொல்லாமை', 'நயன்சாரா நன்மையின் நீக்கும் பயன்சாராப்
பண்பில்சொல் பல்லா ரகத்து.', 'Nayansaaraa Nanmaiyin Neekkum Payansaaraap', 'Vain words before an assembly  Will make all gains and goodness flee', 'The words devoid of profit or pleasure which a man speaks will, being inconsistent with virtue,'),
  (195, 20, 'பயனில சொல்லாமை', 'சீர்மை சிறப்பொடு நீங்கும் பயனில
நீர்மை யுடையார் சொலின்.', 'Seermai Sirappotu Neengum Payanila', 'Glory and grace will go away  When savants silly nonsense say', 'If the good speak vain words their eminence and excellence will leave them'),
  (196, 20, 'பயனில சொல்லாமை', 'பயனில்சொல் பாராட்டு வானை மகன்எனல்
மக்கட் பதடி யெனல்.', 'Payanil Sol Paaraattu Vaanai', 'Call him a human chaff who prides  Himself in weightless idle words', 'Call not him a man who parades forth his empty words Call him the chaff of men'),
  (197, 20, 'பயனில சொல்லாமை', 'நயனில சொல்லினுஞ் சொல்லுக சான்றோர்
பயனில சொல்லாமை நன்று.', 'Nayanila Sollinunj Cholluka Saandror', 'Let not men of worth vainly quack  Even if they would roughly speak', 'Let the wise if they will, speak things without excellence; it will be well for them not to speak useless things'),
  (198, 20, 'பயனில சொல்லாமை', 'அரும்பயன் ஆயும் அறிவினார் சொல்லார்
பெரும்பயன் இல்லாத சொல்.', 'Arumpayan Aayum Arivinaar Sollaar', 'The wise who weigh the worth refrain  From words that have no grain and brain', 'The wise who seek after rare pleasures will not speak words that have not much weight in them'),
  (199, 20, 'பயனில சொல்லாமை', 'பொருள்தீர்ந்த பொச்சாந்துஞ் சொல்லார் மருள்தீர்ந்த
மாசறு காட்சி யவர்.', 'Poruldheerndha Pochchaandhunj Chollaar Maruldheerndha', 'The wise of spotless self-vision  Slip not to silly words-mention', 'Those wise men who are without faults and are freed from ignorance will not even forgetfully speak things that profit not'),
  (200, 20, 'பயனில சொல்லாமை', 'சொல்லுக சொல்லிற் பயனுடைய சொல்லற்க
சொல்லிற் பயனிலாச் சொல்.', 'Solluka Sollir Payanutaiya Sollarka', 'To purpose speak the fruitful word  And never indulge in useless load', 'Speak what is useful, and speak not useless words'),
  (201, 21, 'தீவினையச்சம்', 'தீவினையார் அஞ்சார் விழுமியார் அஞ்சுவர்
தீவினை என்னும் செருக்கு.', 'Theevinaiyaar Anjaar Vizhumiyaar Anjuvar', 'Sinners fear not the pride of sin  The worthy dread the ill within', 'Those who have experience of evil deeds will not fear, but the excellent will fear the pride of sin'),
  (202, 21, 'தீவினையச்சம்', 'தீயவை தீய பயத்தலால் தீயவை
தீயினும் அஞ்சப் படும்.', 'Theeyavai Theeya Payaththalaal Theeyavai', 'Since evil begets evil dire  Fear ye evil more than fire', 'Because evil produces evil, therefore should evil be feared more than fire'),
  (203, 21, 'தீவினையச்சம்', 'அறிவினுள் எல்லாந் தலையென்ப தீய
செறுவார்க்கும் செய்யா விடல்.', 'Arivinul Ellaan Thalaiyenpa Theeya', 'The wisest of the wise are those  Who injure not even their foes', 'So shalt thou wisdom\'s highest law, \'tis said, fulfil'),
  (204, 21, 'தீவினையச்சம்', 'மறந்தும் பிறன்கேடு சூழற்க சூழின்
அறஞ்சூழம் சூழ்ந்தவன் கேடு.', 'Marandhum Piranketu Soozharka Soozhin', 'His ruin virtue plots who plans  The ruin of another man\'s', 'Even though forgetfulness meditate not the ruin of another Virtue will meditate the ruin of him who thus meditates'),
  (205, 21, 'தீவினையச்சம்', 'இலன்என்று தீயவை செய்யற்க செய்யின்
இலனாகும் மற்றும் பெயர்த்து.', 'Ilan Endru Theeyavai Seyyarka', 'Who makes poverty plea for ill  Shall reduce himself poorer still', 'Commit not evil, saying, "I am poor": if you do, you will become poorer still'),
  (206, 21, 'தீவினையச்சம்', 'தீப்பால தான்பிறர்கண் செய்யற்க நோய்ப்பால
தன்னை அடல்வேண்டா தான்.', 'Theeppaala Thaanpirarkan Seyyarka Noippaala', 'From wounding others let him refrain  Who would from harm himself remain', 'Let him not do evil to others who desires not that sorrows should pursue him'),
  (207, 21, 'தீவினையச்சம்', 'எனைப்பகை யுற்றாரும் உய்வர் வினைப்பகை
வீயாது பின்சென்று அடும்.', 'Enaippakai Yutraarum Uyvar Vinaippakai', 'Men may escape other foes and live  But sin its deadly blow will give', 'However great be the enmity men have incurred they may still live The enmity of sin will incessantly pursue and kill'),
  (208, 21, 'தீவினையச்சம்', 'தீயவை செய்தார் கெடுதல் நிழல்தன்னை
வீயாது அஇஉறைந் தற்று.', 'Theeyavai Seydhaar Ketudhal Nizhaldhannai', 'Ruin follows who evil do  As shadow follows as they go', 'Destruction will dwell at the heels of those who commit evil even as their shadow that leaves them not'),
  (209, 21, 'தீவினையச்சம்', 'தன்னைத்தான் காதல னாயின் எனைத்தொன்றும்
துன்னற்க தீவினைப் பால்.', 'Thannaiththaan Kaadhala Naayin Enaiththondrum', 'Let none who loves himself at all  Think of evil however small', 'If a man love himself, let him not commit any sin however small'),
  (210, 21, 'தீவினையச்சம்', 'அருங்கேடன் என்பது அறிக மருங்கோடித்
தீவினை செய்யான் எனின்.', 'Arungetan Enpadhu Arika Marungotith', 'He is secure, know ye, from ills  Who slips not right path to do evils', 'Know ye that he is freed from destruction who commits no evil, going to neither side of the right path'),
  (211, 22, 'ஒப்புரவறிதல்', 'கைம்மாறு வேண்டா கடப்பாடு மாரிமாட்டு
என் ஆற்றுங் கொல்லோ உலகு.', 'Kaimmaaru Ventaa Katappaatu Maarimaattu', 'Duty demands nothing in turn;  How can the world recompense rain?', 'Benevolence seeks not a return. What does the world give back to the clouds ?'),
  (212, 22, 'ஒப்புரவறிதல்', 'தாளாற்றித் தந்த பொருளெல்லாம் தக்கார்க்கு
வேளாண்மை செய்தற் பொருட்டு.', 'Thaalaatrith Thandha Porulellaam Thakkaarkku', 'All the wealth that toils give  Is meant to serve those who deserve', 'All the wealth acquired with perseverance by the worthy is for the exercise of benevolence'),
  (213, 22, 'ஒப்புரவறிதல்', 'புத்தே ளுலகத்தும் ஈண்டும் பெறலரிதே
ஒப்புரவின் நல்ல பிற.', 'Puththe Lulakaththum Eentum Peralaridhe', 'In heav\'n and earth \'tis hard to find  A greater good than being kind', 'It is difficult to obtain another good equal to benevolence either in this world or in that of the gods'),
  (214, 22, 'ஒப்புரவறிதல்', 'ஒத்த தறவோன் உயிர்வாழ்வான் மற்றையான்
செத்தாருள் வைக்கப் படும்.', 'Oththa Tharavon Uyirvaazhvaan Matraiyaan', 'He lives who knows befitting act  Others are deemed as dead in fact', 'He truly lives who knows (and discharges) the proper duties (of benevolence) He who knows them not will be reckoned among the dead'),
  (215, 22, 'ஒப்புரவறிதல்', 'ஊருணி நீர்நிறைந் தற்றே உலகவாம்
பேரறி வாளன் திரு.', 'Ooruni Neernirain Thatre Ulakavaam', 'The wealth that wise and kind do make  Is like water that fills a lake', 'The wealth of that man of eminent knowledge who desires to exercise the benevolence approved of by the world, is like the full waters of a city-tank'),
  (216, 22, 'ஒப்புரவறிதல்', 'பயன்மரம் உள்ளூர்ப் பழுத்தற்றால் செல்வம்
நயனுடை யான்கண் படின்.', 'Payanmaram Ulloorp Pazhuththatraal Selvam', 'Who plenty gets and plenty gives  Is like town-tree teeming with fruits', 'The wealth of a man (possessed of the virtue) of benevolence is like the ripening of a fruitful tree in the midst of a town'),
  (217, 22, 'ஒப்புரவறிதல்', 'மருந்தாகித் தப்பா மரத்தற்றால் செல்வம்
பெருந்தகை யான்கண் படின்.', 'Marundhaakith Thappaa Maraththatraal Selvam', 'The wealth of a wide-hearted soul  Is a herbal tree that healeth all', 'If wealth be in the possession of a man who has the great excellence (of benevolence), it is like a tree which as a medicine is an infallible cure for disease'),
  (218, 22, 'ஒப்புரவறிதல்', 'இடனில் பருவத்தும் ஒப்புரவிற்கு ஒல்கார்
கடனறி காட்சி யவர்.', 'Itanil Paruvaththum Oppuravirku Olkaar', 'Though seers may fall on evil days  Their sense of duty never strays', 'The wise who know what is duty will not scant their benevolence even when they are without wealth'),
  (219, 22, 'ஒப்புரவறிதல்', 'நயனுடையான் நல்கூர்ந்தா னாதல் செயும்நீர
செய்யாது அமைகலா வாறு.', 'Nayanutaiyaan Nalkoorndhaa Naadhal Seyumneera', 'The good man\'s poverty and grief  Is want of means to give relief', 'The poverty of a benevolent man, is nothing but his inability to exercise the same'),
  (220, 22, 'ஒப்புரவறிதல்', 'ஒப்புரவி னால்வரும் கேடெனின் அஃதொருவன்
விற்றுக்கோள் தக்க துடைத்து.', 'Oppuravi Naalvarum Ketenin Aqdhoruvan', 'By good if ruin comes across  Sell yourself to save that loss', 'If it be said that loss will result from benevolence, such loss is worth being procured even by the sale of one\'s self'),
  (221, 23, 'ஈகை', 'வறியார்க்கொன்று ஈவதே ஈகைமற் றெல்லாம்
குறியெதிர்ப்பை நீர துடைத்து.', 'Variyaarkkondru Eevadhe Eekaimar Rellaam', 'To give the poor is charity  The rest is loan and vanity', 'To give to the destitute is true charity All other gifts have the nature of (what is done for) a measured return'),
  (222, 23, 'ஈகை', 'நல்லாறு எனினும் கொளல்தீது மேலுலகம்
இல்லெனினும் ஈதலே நன்று.', 'Nallaaru Eninum Kolaldheedhu Melulakam', 'To beg is bad e\'en from the good  To give is good, were heaven forbid', 'To beg is evil, even though it were said that it is a good path (to heaven) To give is good, even though it were said that those who do so cannot obtain heaven'),
  (223, 23, 'ஈகை', 'இலனென்னும் எவ்வம் உரையாமை ஈதல்
குலனுடையான் கண்ணே யுள.', 'Ilanennum Evvam Uraiyaamai Eedhal', 'No pleading, \\"I am nothing worth,\\"  But giving marks a noble birth', '(Even in a low state) not to adopt the mean expedient of saying "I have nothing," but to give, is the characteristic of the mad of noble birth'),
  (224, 23, 'ஈகை', 'இன்னாது இரக்கப் படுதல் இரந்தவர்
இன்முகங் காணும் அளவு.', 'Innaadhu Irakkap Patudhal Irandhavar', 'The cry for alms is painful sight  Until the giver sees him bright', 'To see men begging from us in disagreeable, until we see their pleasant countenance'),
  (225, 23, 'ஈகை', 'ஆற்றுவார் ஆற்றல் பசிஆற்றல் அப்பசியை
மாற்றுவார் ஆற்றலின் பின்.', 'Aatruvaar Aatral Pasiaatral Appasiyai', 'Higher\'s power which hunger cures  Than that of penance which endures', 'The power of those who perform penance is the power of enduring hunger It is inferior to the power of those who remove the hunger (of others)'),
  (226, 23, 'ஈகை', 'அற்றார் அழிபசி தீர்த்தல் அஃதொருவன்
பெற்றான் பொருள்வைப் புழி.', 'Atraar Azhipasi Theerththal Aqdhoruvan', 'Drive from the poor their gnawing pains  If room you seek to store your gains', 'The removal of the killing hunger of the poor is the place for one to lay up his wealth'),
  (227, 23, 'ஈகை', 'பாத்தூண் மரீஇ யவனைப் பசியென்னும்
தீப்பிணி தீண்டல் அரிது.', 'Paaththoon Mareei Yavanaip Pasiyennum', 'Who shares his food with those who need  Hunger shall not harm his creed', 'The fiery disease of hunger shall never touch him who habitually distributes his food to others'),
  (228, 23, 'ஈகை', 'ஈத்துவக்கும் இன்பம் அறியார்கொல் தாமுடைமை
வைத்திழக்கும் வன்க ணவர்.', 'Eeththuvakkum Inpam Ariyaarkol Thaamutaimai', 'The joy of give and take they lose  Hard-hearted rich whose hoarding fails', 'Do the hard-eyed who lay up and lose their possessions not know the happiness which springs from the pleasure of giving ?'),
  (229, 23, 'ஈகை', 'இரத்தலின் இன்னாது மன்ற நிரப்பிய
தாமே தமியர் உணல்.', 'Iraththalin Innaadhu Mandra Nirappiya', 'Worse than begging is that boarding  Alone what one\'s greed is hoarding', 'Solitary and unshared eating for the sake of filling up one\'s own riches is certainly much more'),
  (230, 23, 'ஈகை', 'சாதலின் இன்னாத தில்லை இனிததூஉம்
ஈதல் இயையாக் கடை.', 'Saadhalin Innaadha Thillai Inidhadhooum', 'Nothing is more painful than death  Yet more is pain of giftless dearth', 'Nothing is more unpleasant than death: yet even that is pleasant where charity cannot be exercised'),
  (231, 24, 'புகழ்', 'ஈதல் இசைபட வாழ்தல் அதுவல்லது
ஊதியம் இல்லை உயிர்க்கு.', 'Eedhal Isaipata Vaazhdhal Adhuvalladhu', 'They gather fame who freely give  The greatest gain for all that live', 'Give to the poor and live with praise There is no greater profit to man than that'),
  (232, 24, 'புகழ்', 'உரைப்பார் உரைப்பவை எல்லாம் இரப்பார்க்கொன்று
ஈவார்மேல் நிற்கும் புகழ்.', 'Uraippaar Uraippavai Ellaam Irappaarkkondru', 'The glory of the alms-giver  Is praised aloud as popular', 'Whatsoever is spoken in the world will abide as praise upon that man who gives alms to the poor'),
  (233, 24, 'புகழ்', 'ஒன்றா உலகத்து உயர்ந்த புகழல்லால்
பொன்றாது நிற்பதொன் றில்.', 'Ondraa Ulakaththu Uyarndha Pukazhallaal', 'Nothing else lasts on earth for e\'er  Saving high fame of the giver!', 'There is nothing that stands forth in the world imperishable, except fame, exalted in solitary greatness'),
  (234, 24, 'புகழ்', 'நிலவரை நீள்புகழ் ஆற்றின் புலவரைப்
போற்றாது புத்தேள் உலகு.', 'Nilavarai Neelpukazh Aatrin Pulavaraip', 'From hailing gods heavens will cease  To hail the men of lasting praise', 'If one has acquired extensive fame within the limits of this earth, the world of the Gods will no longer praise those sages who have attained that world'),
  (235, 24, 'புகழ்', 'நத்தம்போல் கேடும் உளதாகும் சாக்காடும்
வித்தகர்க் கல்லால் அரிது.', 'Naththampol Ketum Uladhaakum Saakkaatum', 'Fame in fall and life in death  Are rare but for the soulful worth', 'Prosperity to the body of fame, resulting in poverty to the body of flesh and the stability to the former arising from the death of the latter, are achievable only by the wise'),
  (236, 24, 'புகழ்', 'தோன்றின் புகழொடு தோன்றுக அஃதிலார்
தோன்றலின் தோன்றாமை நன்று.', 'Thondrin Pukazhotu Thondruka Aqdhilaar', 'Be born with fame if birth you want  If not of birth you must not vaunt', 'If you are born (in this world), be born with qualities conductive to fame From those who are destitute of them it will be better not to be born'),
  (237, 24, 'புகழ்', 'புகழ்பட வாழாதார் தந்நோவார் தம்மை
இகழ்வாரை நோவது எவன்?', 'Pukazhpata Vaazhaadhaar Thannovaar Thammai', 'Why grieve at those who blame the shame  Of those who cannot live in fame?', 'Why do those who cannot live with praise, grieve those who despise them, instead of grieving themselves for their own inability'),
  (238, 24, 'புகழ்', 'வசையென்ப வையத்தார்க் கெல்லாம் இசையென்னும்
எச்சம் பெறாஅ விடின்.', 'Vasaiyenpa Vaiyaththaark Kellaam Isaiyennum', 'To men on earth it is a shame  Not to beget the child of fame', 'Not to beget fame will be esteemed a disgrace by the wise in this world'),
  (239, 24, 'புகழ்', 'வசையிலா வண்பயன் குன்றும் இசையிலா
யாக்கை பொறுத்த நிலம்.', 'Vasaiyilaa Vanpayan Kundrum Isaiyilaa', 'The land will shrink in yield if men  O\'erburden it without renown', 'The ground which supports a body without fame will diminish in its rich produce'),
  (240, 24, 'புகழ்', 'வசையொழிய வாழ்வாரே வாழ்வார் இசையொழிய
வாழ்வாரே வாழா தவர்.', 'Vasaiyozhiya Vaazhvaare Vaazhvaar Isaiyozhiya', 'They live who live without blemish  The blameful ones do not flurish', 'Those live who live without disgrace Those who live without fame live not'),
  (241, 25, 'அருளுடைமை', 'அருட்செல்வம் செல்வத்துள் செல்வம் பொருட்செல்வம்
பூரியார் கண்ணும் உள.', 'Arutchelvam Selvaththul Selvam Porutchelvam', 'The wealth of wealth is wealth of grace  Earthly wealth e\'en the basest has', 'The wealth of kindness is wealth of wealth, in as much as the wealth of property is possessed by the basest of men'),
  (242, 25, 'அருளுடைமை', 'நல்லாற்றாள் நாடி அருளாள்க பல்லாற்றால்
தேரினும் அஃதே துணை.', 'Nallaatraal Naati Arulaalka Pallaatraal', 'Seek by sound ways good compassion;  All faiths mark that for-salvation', '(Stand) in the good path, consider, and be kind. Even considering according to the conflicting tenets of the different sects, kindness will be your best aid, (in the acquisition of heavenly bliss.)'),
  (243, 25, 'அருளுடைமை', 'அருள்சேர்ந்த நெஞ்சினார்க் கில்லை இருள்சேர்ந்த
இன்னா உலகம் புகல்.', 'Arulserndha Nenjinaark Killai Irulserndha', 'The hearts of mercy shall not go  Into dark worlds of gruesome woe', 'They will never enter the world of darkness and wretchedness whose minds are the abode of kindness'),
  (244, 25, 'அருளுடைமை', 'மன்னுயிர் ஓம்பி அருளாள்வார்க்கு இல்லென்ப
தன்னுயிர் அஞ்சும் வினை.', 'Mannuyir Ompi Arulaalvaarkku Illenpa', 'His soul is free from dread of sins  Whose mercy serveth all beings', '(The wise) say that the evils, which his soul would dread, will never come upon the man who exercises kindness and protects the life (of other creatures)'),
  (245, 25, 'அருளுடைமை', 'அல்லல் அருளாள்வார்க்கு இல்லை வளிவழங்கும்
மல்லன்மா ஞாலங் கரி.', 'Allal Arulaalvaarkku Illai Valivazhangum', 'The wide wind-fed world witness bears:  Men of mercy meet not sorrows', 'This great rich earth over which the wind blows, is a witness that sorrow never comes upon the kindhearted'),
  (246, 25, 'அருளுடைமை', 'பொருள்நீங்கிப் பொச்சாந்தார் என்பர் அருள்நீங்கி
அல்லவை செய்தொழுகு வார்.', 'Porulneengip Pochchaandhaar Enpar Arulneengi', 'Who grace forsake and graceless act  The former loss and woes forget', '(The wise) say that those who neglect kindness and practise cruelties, neglected virtue (in their former birth), and forgot (the sorrows which they must suffer.)'),
  (247, 25, 'அருளுடைமை', 'அருளில்லார்க்கு அவ்வுலகம் இல்லை பொருளில்லார்க்கு
இவ்வுலகம் இல்லாகி யாங்கு.', 'Arulillaarkku Avvulakam Illai Porulillaarkku', 'This world is not for weathless ones  That world is not for graceless swines', 'As this world is not for those who are without wealth, so that world is not for those who are without kindness'),
  (248, 25, 'அருளுடைமை', 'பொருளற்றார் பூப்பர் ஒருகால் அருளற்றார்
அற்றார்மற் றாதல் அரிது.', 'Porulatraar Pooppar Orukaal Arulatraar', 'The wealthless may prosper one day;  The graceless never bloom agay', 'Those who are without wealth may, at some future time, become prosperous; those who are destitute of kindness are utterly destitute; for them there is no change'),
  (249, 25, 'அருளுடைமை', 'தெருளாதான் மெய்ப்பொருள் கண்டற்றால் தேரின்
அருளாதான் செய்யும் அறம்.', 'Therulaadhaan Meypporul Kantatraal Therin', 'Like Truth twisted by confused mind  Wisdom is vain in hearts unkind', 'If you consider, the virtue of him who is without kindness is like the perception of the true being by him who is without wisdom'),
  (250, 25, 'அருளுடைமை', 'வலியார்முன் தன்னை நினைக்கதான் தன்னின்
மெலியார்மேல் செல்லு மிடத்து.', 'Valiyaarmun Thannai Ninaikka Thaan', 'Think how you feel before the strong  When to the feeble you do wrong', 'When a man is about to rush upon those who are weaker than himself, let him remember how he has stood (trembling) before those who are stronger than himself'),
  (251, 26, 'புலான்மறுத்தல்', 'தன்னூன் பெருக்கற்குத் தான்பிறிது ஊனுண்பான்
எங்ஙனம் ஆளும் அருள்?', 'Thannoon Perukkarkuth Thaanpiridhu Oonunpaan', 'What graciousness can one command  who feeds his flesh by flesh gourmand', 'How can he be possessed of kindness, who to increase his own flesh, eats the flesh of other creatures'),
  (252, 26, 'புலான்மறுத்தல்', 'பொருளாட்சி போற்றாதார்க்கு இல்லை அருளாட்சி
ஆங்கில்லை ஊன்தின் பவர்க்கு.', 'Porulaatchi Potraadhaarkku Illai Arulaatchi', 'The thriftless have no property  And flesh-eaters have no pity', 'As those possess no property who do not take care of it, so those possess no kindness who feed on flesh'),
  (253, 26, 'புலான்மறுத்தல்', 'படைகொண்டார் நெஞ்சம்போல் நன்னூக்காது ஒன்றன்
உடல்சுவை உண்டார் மனம்.', 'Pataikontaar Nenjampol Nannookkaadhu Ondran', 'Who wields a steel is steel-hearted  Who tastes body is hard-hearted', 'Like the (murderous) mind of him who carries a weapon (in his hand), the mind of him who feasts with pleasure on the body of another (creature), has no regard for goodness'),
  (254, 26, 'புலான்மறுத்தல்', 'அருளல்ல தியாதெனிற் கொல்லாமை கோறல்
பொருளல்லது அவ்வூன் தினல்.', 'Arulalladhu Yaadhenin Kollaamai Koral', 'If merciless it is to kill,  To kill and eat is disgraceful', 'If it be asked what is kindness and what its opposite, the answer would be preservation and destruction of life; and therefore it is not right to feed on the flesh (obtained by taking away life)'),
  (255, 26, 'புலான்மறுத்தல்', 'உண்ணாமை உள்ளது உயிர்நிலை ஊனுண்ண
அண்ணாத்தல் செய்யாது அளறு.', 'Unnaamai Ulladhu Uyirnilai Oonunna', 'Off with flesh; a life you save  The eater hell\'s mouth shall not waive!', 'Not to eat flesh contributes to the continuance of life; therefore if a man eat flesh, hell will not open its mouth (to let him escape out, after he has once fallen in)'),
  (256, 26, 'புலான்மறுத்தல்', 'தினற்பொருட்டால் கொல்லாது உலகெனின் யாரும்
விலைப்பொருட்டால் ஊன்றருவா ரில்.', 'Thinarporuttaal Kollaadhu Ulakenin Yaarum', 'None would kill and sell the flesh  For eating it if they don\'t wish', 'If the world does not destroy life for the purpose of eating, then no one would sell flesh for the sake of money'),
  (257, 26, 'புலான்மறுத்தல்', 'உண்ணாமை வேண்டும் புலாஅல் பிறிதொன்றன்
புண்ணது உணர்வார்ப் பெறின்.', 'Unnaamai Ventum Pulaaal Piridhondran', 'From eating flesh men must abstain  If they but feel the being\'s pain', 'If men should come to know that flesh is nothing but the unclean ulcer of a body, let them abstain from eating it'),
  (258, 26, 'புலான்மறுத்தல்', 'செயிரின் தலைப்பிரிந்த காட்சியார் உண்ணார்
உயிரின் தலைப்பிரிந்த ஊன்.', 'Seyirin Thalaippirindha Kaatchiyaar Unnaar', 'Whose mind from illusion is freed  Refuse on lifeless flesh to feed', 'The wise, who have freed themselves from mental delusion, will not eat the flesh which has been severed from an animal'),
  (259, 26, 'புலான்மறுத்தல்', 'அவிசொரிந் தாயிரம் வேட்டலின் ஒன்றன்
உயிர்செகுத் துண்ணாமை நன்று.', 'Avisorin Thaayiram Vettalin Ondran', 'Not to-kill-and-eat, truly  Excels thousand pourings of ghee!', 'Not to kill and eat (the flesh of) an animal, is better than the pouring forth of ghee etc, in a thousand sacrifices'),
  (260, 26, 'புலான்மறுத்தல்', 'கொல்லான் புலாலை மறுத்தானைக் கைகூப்பி
எல்லா உயிருந் தொழும்.', 'Kollaan Pulaalai Maruththaanaik Kaikooppi', 'All lives shall lift their palms to him  Who eats not flesh nor kills with whim', 'All creatures will join their hands together, and worship him who has never taken away life, nor eaten flesh'),
  (261, 27, 'தவம்', 'உற்றநோய் நோன்றல் உயிர்க்குறுகண் செய்யாமை
அற்றே தவத்திற் குரு.', 'Utranoi Nondral Uyirkkurukan Seyyaamai', 'Pains endure; pain not beings  This is the type of true penance', 'The nature of religious discipline consists, in the endurance (by the ascetic) of the sufferings which it brings on himself, and in abstaining from giving pain to others'),
  (262, 27, 'தவம்', 'தவமும் தவமுடையார்க்கு ஆகும் அதனை
அஃதிலார் மேற்கொள் வது.', 'Thavamum Thavamutaiyaarkku Aakum Adhanai', 'Penance is fit for penitents  Not for him who in vain pretends', 'Austerities can only be borne, and their benefits enjoyed, by those who have practised them (in a former birth); it will be useless for those who have not done so, to attempt to practise them (now)'),
  (263, 27, 'தவம்', 'துறந்தார்க்குத் துப்புரவு வேண்டி மறந்தார்கொல்
மற்றை யவர்கள் தவம்.', 'Thurandhaarkkuth Thuppuravu Venti Marandhaarkol', 'Is it to true penitent\'s aid,  That others austere path avoid?', 'It is to provide food etc, for the ascetics who have abandoned (the desire of earthly possessions) that other persons have forgotten (to practise) austerity ?'),
  (264, 27, 'தவம்', 'ஒன்னார்த் தெறலும் உவந்தாரை ஆக்கலும்
எண்ணின் தவத்தான் வரும்.', 'Onnaarth Theralum Uvandhaarai Aakkalum', 'In penance lies the power to save  The friends and foil the foe and knave', 'If (the ascetic) desire the destruction of his enemies, or the aggrandizement of his friends, it will be effected by (the power of) his austerities'),
  (265, 27, 'தவம்', 'வேண்டிய வேண்டியாங் கெய்தலால் செய்தவம்
ஈண்டு முயலப் படும்.', 'Ventiya Ventiyaang Keydhalaal Seydhavam', 'What they wish as they wish is won  Here hence by men penance is done', 'Religious dislipline is practised in this world, because it secures the attainment of whatever one may wish to enjoy (in the world to come)'),
  (266, 27, 'தவம்', 'தவஞ்செய்வார் தங்கருமஞ் செய்வார்மற் றல்லார்
அவஞ்செய்வார் ஆசையுட் பட்டு.', 'Thavanj Cheyvaar Thangarumanj Cheyvaarmar', 'Who do penance achieve their aim  Others desire-rid themselves harm', 'Those discharge their duty who perform austerities; all others accomplish their own destruction, through the entanglement of the desire (of riches and sensual pleasure)'),
  (267, 27, 'தவம்', 'சுடச்சுடரும் பொன்போல் ஒளிவிடும் துன்பஞ்
சுடச்சுட நோற்கிற் பவர்க்கு.', 'Sutachchutarum Ponpol Olivitum Thunpanjjch', 'Pure and bright gets the gold in fire;  and so the life by pain austere', 'Just as gold is purified as heated in the fire, will those shine, who have endured the burning of pain (in frequent austerities)'),
  (268, 27, 'தவம்', 'தன்னுயிர் தான்அறப் பெற்றானை ஏனைய
மன்னுயி ரெல்லாந் தொழும்.', 'Thannuyir Thaanarap Petraanai Enaiya', 'He worship wins from every soul  Who Master is by soul control', 'All other creatures will worship him who has attained the control of his own soul'),
  (269, 27, 'தவம்', 'கூற்றம் குதித்தலும் கைகூடும் நோற்றலின்
ஆற்றல் தலைப்பட் டவர்க்குல்.', 'Kootram Kudhiththalum Kaikootum Notralin', 'They can even defy death  Who get by penance godly strenth', 'Those who have attained the power which religious discipline confers, will be able also to pass the limit of Yama, (the God of death)'),
  (270, 27, 'தவம்', 'இலர்பல ராகிய காரணம் நோற்பார்
சிலர்பலர் நோலா தவர்.', 'Ilarpala Raakiya Kaaranam Norpaar', 'Many are poor and few are rich  For they care not for penance much', 'Because there are few who practise austerity and many who do not, there are many destitute and few rich in this world'),
  (271, 28, 'கூடாவொழுக்கம்', 'வஞ்ச மனத்தான் படிற்றொழுக்கம் பூதங்கள்
ஐந்தும் அகத்தே நகும்.', 'Vanja Manaththaan Patitrozhukkam Poodhangal', 'Elements five of feigned life  Of a sly hypocrite within laugh', 'The five elements (of his body) will laugh within him at the feigned conduct of the deceitful minded man'),
  (272, 28, 'கூடாவொழுக்கம்', 'வானுயர் தோற்றம் எவன்செய்யும் தன்னெஞ்சம்
தான்அறி குற்றப் படின்.', 'Vaanuyar Thotram Evanseyyum Thannenjam', 'Of what avail are sky-high shows  When guild the conscience gnaws and knows', 'What avails an appearance (of sanctity) high as heaven, if his mind suffers (the indulgence) of conscious sin'),
  (273, 28, 'கூடாவொழுக்கம்', 'வலியில் நிலைமையான் வல்லுருவம் பெற்றம்
புலியின்தோல் போர்த்துமேய்ந் தற்று.', 'Valiyil Nilaimaiyaan Valluruvam Petram', 'Vaunting sainthood while week within  Seems a grazer with tiger skin', 'The assumed appearance of power, by a man who has no power (to restrain his senses and perform austerity), is like a cow feeding on grass covered with a tiger\'s skin'),
  (274, 28, 'கூடாவொழுக்கம்', 'தவமறைந்து அல்லவை செய்தல் புதல்மறைந்து
வேட்டுவன் புள்சிமிழ்த் தற்று.', 'Thavamaraindhu Allavai Seydhal Pudhalmaraindhu', 'Sinning in saintly show is like  Fowlers in ambush birds to strike', 'He who hides himself under the mask of an ascetic and commits sins, like a sportsman who conceals himself in the thicket to catch birds'),
  (275, 28, 'கூடாவொழுக்கம்', 'பற்றற்றேம் என்பார் படிற்றொழுக்கம் எற்றெற்றென்று
ஏதம் பலவுந் தரும்.', 'Patratrem Enpaar Patitrozhukkam Etretrendru', 'Who false within but freedom feign  Shall moan \\"What have we done\\" with pain', 'The false conduct of those who say they have renounced all desire will one day bring them sorrows that will make them cry out, "Oh! what have we done, what have we done."'),
  (276, 28, 'கூடாவொழுக்கம்', 'நெஞ்சின் துறவார் துறந்தார்போல் வஞ்சித்து
வாழ்வாரின் வன்கணார் இல்.', 'Nenjin Thuravaar Thurandhaarpol Vanjiththu', 'Vilest is he who seems a saint  Cheating the world without restraint', 'Amongst living men there are none so hard-hearted as those who without to saking (desire) in their heart, falsely take the appearance of those who have forsaken (it)'),
  (277, 28, 'கூடாவொழுக்கம்', 'புறங்குன்றி கண்டனைய ரேனும் அகங்குன்றி
முக்கிற் கரியார் உடைத்து.', 'Purangundri Kantanaiya Renum Akangundri', 'Berry-red is his outward view,  Black like its nose his inward hue', '(The world) contains persons whose outside appears (as fair) as the (red) berry of the Abrus, but whose inside is as black as the nose of that berry'),
  (278, 28, 'கூடாவொழுக்கம்', 'மனத்தது மாசாக மாண்டார் நீராடி
மறைந்தொழுகு மாந்தர் பலர்.', 'Manaththadhu Maasaaka Maantaar Neeraati', 'Filthy in mind some bathe in streams  Hiding sins in showy extremes', 'There are many men of masked conduct, who perform their ablutions, and (make a show) of'),
  (279, 28, 'கூடாவொழுக்கம்', 'கணைகொடிது யாழ்கோடு செவ்விதுஆங் கன்ன
வினைபடு பாலால் கொளல்.', 'Kanaikotidhu Yaazhkotu Sevvidhuaang Kanna', 'Know men by acts and not by forms  Strait arrow kills, bent lute but charms', 'As, in its use, the arrow is crooked, and the curved lute is straight, so by their deeds, (and not by their appearance) let (the uprightness or crookedness of) men be estimated'),
  (280, 28, 'கூடாவொழுக்கம்', 'மழித்தலும் நீட்டலும் வேண்டா உலகம்
பழித்தது ஒழித்து விடின்.', 'Mazhiththalum Neettalum Ventaa Ulakam', 'No balding nor tangling the hair!  Abstain from condemned acts with care', 'There is no need of a shaven crown, nor of tangled hair, if a man abstain from those deeds which the wise have condemned'),
  (281, 29, 'கள்ளாமை', 'எள்ளாமை வேண்டுவான் என்பான் எனைத்தொன்றும்
கள்ளாமை காக்கதன் நெஞ்சு.', 'Ellaamai Ventuvaan Enpaan Enaiththondrum', 'Let him who would reproachless be  From all frauds guard his conscience free', 'Let him, who desires not to be despised, keep his mind from (the desire of) defrauding another of the smallest thing'),
  (282, 29, 'கள்ளாமை', 'உள்ளத்தால் உள்ளலும் தீதே பிறன்பொருளைக்
கள்ளத்தால் கள்வேம் எனல்.', 'Ullaththaal Ullalum Theedhe Piranporulaik', '\\"We will by fraud win other\'s wealth\\"  Even this thought is sin and stealth', 'Even the thought (of sin) is sin; think not then of crafiily stealing the property of another'),
  (283, 29, 'கள்ளாமை', 'களவினால் ஆகிய ஆக்கம் அளவிறந்து
ஆவது போலக் கெடும்.', 'Kalavinaal Aakiya Aakkam Alavirandhu', 'The gain by fraud may overflow  But swift to ruin it shall go', 'The property, which is acquired by fraud, will entirely perish, even while it seems to increase'),
  (284, 29, 'கள்ளாமை', 'களவின்கண் கன்றிய காதல் விளைவின்கண்
வீயா விழுமம் தரும்.', 'Kalavinkan Kandriya Kaadhal Vilaivinkan', 'The fruit that fraud and greed obtain  Shall end in endless grief and pain', 'The eager desire of defrauding others will, when it brings forth its fruit, produce undying sorrow'),
  (285, 29, 'கள்ளாமை', 'அருள்கருதி அன்புடைய ராதல் பொருள்கருதிப்
பொச்சாப்புப் பார்ப்பார்கண் இல்.', 'Arulkarudhi Anputaiya Raadhal Porulkarudhip', 'Love and Grace are not their worth  Who watch to waylay dozer\'s wealth', 'The study of kindness and the exercise of benevolence is not with those who watch for another\'s forgetfulness, though desire of his property'),
  (286, 29, 'கள்ளாமை', 'அளவின்கண் நின்றொழுகல் ஆற்றார் களவின்கண்
கன்றிய காத லவர்.', 'Alavinkan Nindrozhukal Aatraar Kalavinkan', 'They cannot walk in measured bounds  who crave and have covetous ends', 'They cannot walk steadfastly, according to rule, who eagerly desire to defraud others'),
  (287, 29, 'கள்ளாமை', 'களவென்னும் காரறி வாண்மை அளவென்னும்
ஆற்றல் புரிந்தார்கண்ட இல்.', 'Kalavennum Kaarari Vaanmai Alavennum', 'Men of measured wisdom shun  Black art of fraud and what it won', 'That black-knowledge which is called fraud, is not in those who desire that greatness which is called rectitude'),
  (288, 29, 'கள்ளாமை', 'அளவறிந்தார் நெஞ்சத் தறம்போல நிற்கும்
களவறிந்தார் நெஞ்சில் கரவு.', 'Alavarindhaar Nenjath Tharampola Nirkum', 'Virtue abides in righteous hearts  Into minds of frauds deceit darts', 'Deceit dwells in the mind of those who are conversant with fraud, even as virtue in the minds of those who are conversant with rectitude'),
  (289, 29, 'கள்ளாமை', 'அளவல்ல செய்தாங்கே வீவர் களவல்ல
மற்றைய தேற்றா தவர்.', 'Alavalla Seydhaange Veevar Kalavalla', 'They perish in their perfidy  Who know nothing but pilfery', 'Those, who are acquainted with nothing but fraud, will perish in the very commission of transgression'),
  (290, 29, 'கள்ளாமை', 'கள்வார்க்குத் தள்ளும் உயிர்நிலை கள்வார்க்குத்
தள்ளாது புத்தே ளுளகு.', 'Kalvaarkkuth Thallum Uyirnilai Kalvaarkkuth', 'Even the body rejects thieves;  The honest men, heaven receives', 'Even their body will fail the fraudulent; but even the world of the gods will not fail those who are free from fraud'),
  (291, 30, 'வாய்மை', 'வாய்மை எனப்படுவது யாதெனின் யாதொன்றும்
தீமை இலாத சொலல்.', 'Vaaimai Enappatuvadhu Yaadhenin Yaadhondrum', 'If \\"What is truth\\"? the question be,  It is to speak out evil-free', 'Truth is the speaking of such words as are free from the least degree of evil (to others)'),
  (292, 30, 'வாய்மை', 'பொய்மையும் வாய்மை யிடத்த புரைதீர்ந்த
நன்மை பயக்கும் எனின்.', 'Poimaiyum Vaaimai Yitaththa Puraidheerndha', 'E\'en falsehood may for truth suffice,  When good it brings removing vice', 'Even falsehood has the nature of truth, if it confer a benefit that is free from fault'),
  (293, 30, 'வாய்மை', 'தன்நெஞ் சறிவது பொய்யற்க பொய்த்தபின்
தன்நெஞ்சே தன்னைச் சுடும்.', 'Thannenj Charivadhu Poiyarka Poiththapin', 'Let not a man knowingly lie;  Conscience will scorch and make him sigh', 'Let not a man knowingly tell a lie; for after he has told the lie, his mind will burn him (with the memory of his guilt)'),
  (294, 30, 'வாய்மை', 'உள்ளத்தாற் பொய்யா தொழுகின் உலகத்தார்
உள்ளத்து ளெல்லாம் உளன்.', 'Ullaththaar Poiyaa Thozhukin Ulakaththaar', 'He lives in loving hearts of all  Who serves the Truth serene in soul', 'He who, in his conduct, preserves a mind free from deceit, will dwell in the minds of all men'),
  (295, 30, 'வாய்மை', 'மனத்தொடு வாய்மை மொழியின் தவத்தொடு
தானஞ்செய் வாரின் தலை.', 'Manaththotu Vaaimai Mozhiyin Thavaththotu', 'To speak the truth from heart sincere  Is more than giving and living austere', 'He, who speaks truth with all his heart, is superior to those who make gifts and practise austerities'),
  (296, 30, 'வாய்மை', 'பொய்யாமை அன்ன புகழில்லை எய்யாமை
எல்லா அறமுந் தரும்.', 'Poiyaamai Anna Pukazhillai Eyyaamai', 'Not to lie brings all the praise  All virtues from Truth arise', 'There is no praise like the praise of never uttering a falsehood: without causing any suffering, it will lead to every virtue'),
  (297, 30, 'வாய்மை', 'பொய்யாமை பொய்யாமை ஆற்றின் அறம்பிற
செய்யாமை செய்யாமை நன்று.', 'Poiyaamai Poiyaamai Aatrin Arampira', 'Lie not lie not Naught else you need  All virtues are in Truth indeed', 'If a man has the power to abstain from falsehood, it will be well with him, even though he practise no other virtue'),
  (298, 30, 'வாய்மை', 'புறள்தூய்மை நீரான் அமையும் அகந்தூய்மை
வாய்மையால் காணப் படும்.', 'Puraldhooimai Neeraan Amaiyum Akandhooimai', 'Water makes you pure outward  Truth renders you pure inward', 'Purity of body is produced by water and purity of mind by truthfulness'),
  (299, 30, 'வாய்மை', 'எல்லா விளக்கும் விளக்கல்ல சான்றோர்க்குப்
பொய்யா விளக்கே விளக்கு.', 'Ellaa Vilakkum Vilakkalla Saandrorkkup', 'All lights are not lights for the wise;  Truth light is light bright like Sun-light', 'All lamps of nature are not lamps; the lamp of truth is the lamp of the wise'),
  (300, 30, 'வாய்மை', 'யாமெய்யாக் கண்டவற்றுள் இல்லை எனைத்தொன்றும்
வாய்மையின் நல்ல பிற.', 'Yaameyyaak Kantavatrul Illai Enaiththondrum', 'Of all the things we here have seen  Nothing surpasses Truth serene!', 'Amidst all that we have seen (described) as real (excellence), there is nothing so good as truthfulness'),
  (301, 31, 'வெகுளாமை', 'செல்லிடத்துக் காப்பான் சினங்காப்பான் அல்லிடத்துக்
காக்கின்என் காவாக்கால் என்?', 'Sellitaththuk Kaappaan Sinangaappaan Allitaththuk', 'Anger against the weak is wrong  It is futile against the strong', 'He restrains his anger who restrains it when it can injure; when it cannot injure, what does it matter whether he restrain it, or not ?'),
  (302, 31, 'வெகுளாமை', 'செல்லா இடத்துச் சினந்தீது செல்லிடத்தும்
இல்அதனின் தீய பிற.', 'Sellaa Itaththuch Chinandheedhu Sellitaththum', 'Vain is wrath against men of force  Against the meek it is still worse', 'Anger is bad, even when it cannot injure; when it can injure; there is no greater evil'),
  (303, 31, 'வெகுளாமை', 'மறத்தல் வெகுளியை யார்மாட்டும் தீய
பிறத்தல் அதனான் வரும்.', 'Maraththal Vekuliyai Yaarmaattum Theeya', 'Off with wrath with any one  It is the source of sin and pain', 'Forget anger towards every one, as fountains of evil spring from it'),
  (304, 31, 'வெகுளாமை', 'நகையும் உவகையும் கொல்லும் சினத்தின்
பகையும் உளவோ பிற.', 'Nakaiyum Uvakaiyum Kollum Sinaththin', 'Is there a foe like harmful ire  Which kills the smile and joyful cheer?', 'What other foe to man works such annoy?'),
  (305, 31, 'வெகுளாமை', 'தன்னைத்தான் காக்கின் சினங்காக்க காவாக்கால்
தன்னையே கொல்லுஞ் சினம்.', 'Thannaiththaan Kaakkin Sinangaakka Kaavaakkaal', 'Thyself to save, from wrath away!  If not thyself the wrath will slay', 'If a man would guard himself, let him guard against anger; if he do not guard it, anger will kill him'),
  (306, 31, 'வெகுளாமை', 'சினமென்னும் சேர்ந்தாரைக் கொல்லி இனமென்னும்
ஏமப் புணையைச் சுடும்.', 'Sinamennum Serndhaaraik Kolli Inamennum', 'Friend-killer is the fatal rage  It burns the helpful kinship-barge', 'The fire of anger will burn up even the pleasant raft of friendship'),
  (307, 31, 'வெகுளாமை', 'சினத்தைப் பொருளென்று கொண்டவன் கேடு
நிலத்தறைந்தான் கைபிழையா தற்று.', 'Sinaththaip Porulendru Kontavan Ketu', 'The wrath-lover to doom is bound  Like failless-hand that strikes the ground', 'Destruction will come upon him who ragards anger as a good thing, as surely as the hand of him who strikes the ground will not fail'),
  (308, 31, 'வெகுளாமை', 'இணர்எரி தோய்வன்ன இன்னா செயினும்
புணரின் வெகுளாமை நன்று.', 'Inareri Thoivanna Innaa Seyinum', 'Save thy soul from burning ire  Though tortured like the touch of fire', 'Though one commit things against you as painful (to bear) as if a bundle of fire had been thrust upon you, it will be well, to refrain, if possible, from anger'),
  (309, 31, 'வெகுளாமை', 'உள்ளிய தெல்லாம் உடனெய்தும் உள்ளத்தால்
உள்ளான் வெகுளி எனின்.', 'Ulliya Thellaam Utaneydhum Ullaththaal', 'Wishes he gains as he wishes  If man refrains from rage vicious!', 'If a man never indulges anger in his heart, he will at once obtain whatever he has thought of'),
  (310, 31, 'வெகுளாமை', 'இறந்தார் இறந்தார் அனையர் சினத்தைத்
துறந்தார் துறந்தார் துணை.', 'Irandhaar Irandhaar Anaiyar Sinaththaith', 'Dead are they who are anger-fed  Saints are they from whom wrath has fled', 'Those, who give way to excessive anger, are no better than dead men; but those, who are freed from it, are equal to those who are freed (from death)'),
  (311, 32, 'இன்னாசெய்யாமை', 'சிறப்பீனும் செல்வம் பெறினும் பிறர்க்குஇன்னா
செய்யாமை மாசற்றார் கோள்.', 'Sirappeenum Selvam Perinum Pirarkku', 'The pure by faith mean pain to none  Though princely wealth by that is won', 'It is the determination of the spotless not to cause sorrow to others, although they could (by so causing) obtain the wealth which confers greatness'),
  (312, 32, 'இன்னாசெய்யாமை', 'கறுத்துஇன்னா செய்தவக் கண்ணும் மறுத்தின்னா
செய்யாமை மாசற்றார் கோள்.', 'Karuththuinnaa Seydhavak Kannum Maruththinnaa', 'The spotless hearts seek not revenge  Though Malice does the worst in rage', 'It is the determination of the spotless not to do evil, even in return, to those who have cherished enmity and done them evil'),
  (313, 32, 'இன்னாசெய்யாமை', 'செய்யாமல் செற்றார்க்கும் இன்னாத செய்தபின்
உய்யா விழுமந் தரும்.', 'Seyyaamal Setraarkkum Innaadha Seydhapin', 'Revenging even causeless hate  Bad-blood breeds and baneful heat', 'In an ascetic inflict suffering even on those who hate him, when he has not done them any evil, it will afterwards give him irretrievable sorrow'),
  (314, 32, 'இன்னாசெய்யாமை', 'இன்னாசெய் தாரை ஒறுத்தல் அவர்நாண
நன்னயஞ் செய்து விடல்.', 'Innaasey Thaarai Oruththal Avarnaana', 'Doing good-turns, put them to shame  Thus chide the evil who do harm', 'The (proper) punishment to those who have done evil (to you), is to put them to shame by showing them kindness, in return and to forget both the evil and the good done on both sides'),
  (315, 32, 'இன்னாசெய்யாமை', 'அறிவினான் ஆகுவ துண்டோ பிறிதின்நோய்
தந்நோய்போல் போற்றாக் கடை.', 'Arivinaan Aakuva Thunto Piridhinnoi', 'What does a man from wisdom gain  If he pines not at other\'s pain?', 'What benefit has he derived from his knowledge, who does not endeavour to keep off pain from another as much as from himself ?'),
  (316, 32, 'இன்னாசெய்யாமை', 'இன்னா எனத்தான் உணர்ந்தவை துன்னாமை
வேண்டும் பிறன்கண் செயல்.', 'Innaa Enaththaan Unarndhavai Thunnaamai', 'What you feel as pain to yourself  Do it not to the other-self', 'Let not a man consent to do those things to another which, he knows, will cause sorrow'),
  (317, 32, 'இன்னாசெய்யாமை', 'எனைத்தானும் எஞ்ஞான்றும் யார்க்கும் மனத்தானாம்
மாணாசெய் யாமை தலை.', 'Enaiththaanum Egngnaandrum Yaarkkum Manaththaanaam', 'Any, anywhere injure not  At any time even in thought', 'It is the chief of all virtues not knowingly to do any person evil, even in the lowest degree, and at any time'),
  (318, 32, 'இன்னாசெய்யாமை', 'தன்னுயிர்ககு ஏன்னாமை தானறிவான் என்கொலோ
மன்னுயிர்க்கு இன்னா செயல்.', 'Thannuyirkaku Ennaamai Thaanarivaan Enkolo', 'How can he injure other souls  Who in his life injury feels', 'Why does a man inflict upon other creatures those sufferings, which he has found by experience are sufferings to himself ?'),
  (319, 32, 'இன்னாசெய்யாமை', 'பிறர்க்கின்னா முற்பகல் செய்யின் தமக்குஇன்னா
பிற்பகல் தாமே வரும்.', 'Pirarkkinnaa Murpakal Seyyin Thamakku', 'Harm others in the forenoon  Harm seeks thee in afternoon', 'If a man inflict sorrow upon others in the morning, it will come upon him unsought in the very evening'),
  (320, 32, 'இன்னாசெய்யாமை', 'நோயெல்லாம் நோய்செய்தார் மேலவாம் நோய்செய்யார்
நோயின்மை வேண்டு பவர்.', 'Noyellaam Noiseydhaar Melavaam Noiseyyaar', 'No harm is done by peace-lovers  For pains rebound on pain-givers', 'Sorrow will come upon those who cause pain to others; therfore those, who desire to be free from sorrow, give no pain to others'),
  (321, 33, 'கொல்லாமை', 'அறவினை யாதெனின் கொல்லாமை கோறல்
பிறவினை எல்லாந் தரும்.', 'Aravinai Yaadhenin Kollaamai Koral', 'What is Virtue? \'Tis not to kill  For killing causes every ill', 'Never to destroy life is the sum of all virtuous conduct The destruction of life leads to every evil'),
  (322, 33, 'கொல்லாமை', 'பகுத்துண்டு பல்லுயிர் ஓம்புதல் நூலோர்
தொகுத்தவற்றுள் எல்லாந் தலை.', 'Pakuththuntu Palluyir Ompudhal Noolor', 'Share the food and serve all lives  This is the law of all the laws', 'The chief of all (the virtues) which authors have summed up, is the partaking of food that has been shared with others, and the preservation of the mainfold life of other creatures'),
  (323, 33, 'கொல்லாமை', 'ஒன்றாக நல்லது கொல்லாமை மற்றதன்
பின்சாரப் பொய்யாமை நன்று.', 'Ondraaka Nalladhu Kollaamai Matradhan', 'Not to kill is unique good  The next, not to utter falsehood', 'Not to destroy life is an incomparably (great) good next to it in goodness ranks freedom from falsehood'),
  (324, 33, 'கொல்லாமை', 'நல்லாறு எனப்படுவது யாதெனின் யாதொன்றும்
கொல்லாமை சூழும் நெறி.', 'Nallaaru Enappatuvadhu Yaadhenin Yaadhondrum', 'What way is good? That we can say  The way away from heat to slay', 'Good path is that which considers how it may avoid killing any creature'),
  (325, 33, 'கொல்லாமை', 'நிலைஅஞ்சி நீத்தாருள் எல்லாம் கொலைஅஞ்சிக்
கொல்லாமை சூழ்வான் தலை.', 'Nilaianji Neeththaarul Ellaam Kolaianjik', 'Of saints who renounce birth-fearing  The head is he who dreads killing', 'Of all those who, fearing the permanence of earthly births, have abandoned desire, he is the chief who, fearing (the guilt of) murder, considers how he may avoid the destruction of life'),
  (326, 33, 'கொல்லாமை', 'கொல்லாமை மேற்கொண் டொழுகுவான் வாழ்நாள்மேல்
செல்லாது உயிருண்ணுங் கூற்று.', 'Kollaamai Merkon Tozhukuvaan Vaazhnaalmel', 'Life-eating-Death shall spare the breath  Of him who no life puts to death', 'Yama, the destroyer of life, will not attack the life of him, who acts under the determination of never destroying life'),
  (327, 33, 'கொல்லாமை', 'தன்னுயிர் நீப்பினும் செய்யற்க தான்பிறிது
இன்னுயிர் நீக்கும் வினை.', 'Thannuyir Neeppinum Seyyarka Thaanpiridhu', 'Kill not life that others cherish  Even when your life must perish', 'Let no one do that which would destroy the life of another, although he should by so doing, lose his own life'),
  (328, 33, 'கொல்லாமை', 'நன்றாகும் ஆக்கம் பெரிதெனினும் சான்றோர்க்குக்
கொன்றாகும் ஆக்கங் கடை.', 'Nandraakum Aakkam Peridheninum Saandrorkkuk', 'The gain of slaughter is a vice  Though deemed good in sacrifice', 'The advantage which might flow from destroying life in sacrifice, is dishonourable to the wise (who renounced the world), even although it should be said to be productive of great good'),
  (329, 33, 'கொல்லாமை', 'கொலைவினைய ராகிய மாக்கள் புலைவினையர்
புன்மை தெரிவா ரகத்து.', 'Kolaivinaiya Raakiya Maakkal Pulaivinaiyar', 'Those who live by slaying are  Eaters of carrion bizarre!', 'To minds of them who what is vileness know'),
  (330, 33, 'கொல்லாமை', 'உயிருடம்பின் நீக்கியா ரென்ப செயிருடம்பின்
செல்லாத்தீ வாழ்க்கை யவர்.', 'Uyir Utampin Neekkiyaar Enpa', 'The loathsome poor sickly and sore  Are killers stained by blood before', '(The wise) will say that men of diseased bodies, who live in degradation and in poverty, are those who separated the life from the body of animals (in a former birth)'),
  (331, 34, 'நிலையாமை', 'நில்லாத வற்றை நிலையின என்றுணரும்
புல்லறி வாண்மை கடை.', 'Nillaadha Vatrai Nilaiyina Endrunarum', 'The worst of follies it is told  The fleeting as lasting to hold', 'That ignorance which considers those things to be stable which are not so, is dishonourable (to the wise)'),
  (332, 34, 'நிலையாமை', 'கூத்தாட்டு அவைக்குழாத் தற்றே பெருஞ்செல்வம்
போக்கும் அதுவிளிந் தற்று.', 'Kooththaattu Avaik Kuzhaath Thatre', 'Like a drama-crowd wealth gathers  Like passing show its pride too goes', 'The acquisition of wealth is like the gathering together of an assembly for a theatre; its expenditure is like the breaking up of that assembly'),
  (333, 34, 'நிலையாமை', 'அற்கா இயல்பிற்றுச் செல்வம் அதுபெற்றால்
அற்குப ஆங்கே செயல்.', 'Arkaa Iyalpitruch Chelvam Adhupetraal', 'Wealth wanes away; but when it comes  Take care to do enduring things', 'Wealth is perishable; let those who obtain it immediately practise those (virtues) which are imperishable'),
  (334, 34, 'நிலையாமை', 'நாளென ஒன்றுபோற் காட்டி உயிர்ஈரும்
வாளது உணர்வார்ப் பெறின்.', 'Naalena Ondrupor Kaatti Uyir', 'The showy day is but a saw  Your life, know that, to file and gnaw', 'Time, which shows itself (to the ignorant) as if it were something (real) is in the estimation of the wise (only) a saw which cuts down life'),
  (335, 34, 'நிலையாமை', 'நாச்செற்று விக்குள்மேல் வாராமுன் நல்வினை
மேற்சென்று செய்யப் படும்', 'Naachchetru Vikkulmel Vaaraamun Nalvinai', 'Ere tongue benumbs and hiccough comes  Rise up to do good deeds betimes', 'Let virtuous deeds be done quickly, before the hiccup comes making the tongue silent'),
  (336, 34, 'நிலையாமை', 'நெருநல் உளனொருவன் இன்றில்லை என்னும்
பெருமை உடைத்துஇவ் வுலகு.', 'Nerunal Ulanoruvan Indrillai Ennum', 'One was yesterday; not today!', 'This world possesses the greatness that one who yesterday was is not today'),
  (337, 34, 'நிலையாமை', 'ஒருபொழுதும் வாழ்வது அறியார் கருதுப
கோடியும் அல்ல பல.', 'Orupozhudhum Vaazhvadhu Ariyaar Karudhupa', 'Man knows not his next moment  On crores of things he is intent', 'Innumerable are the thoughts which occupy the mind of (the unwise), who know not that they shall live another moment'),
  (338, 34, 'நிலையாமை', 'குடம்பை தனித்துஒழியப் புள்பறந் தற்றே
உடம்பொடு உயிரிடை நட்பு.', 'Kutampai Thaniththu Ozhiyap Pulparan', 'The soul from body any day  Like bird from egg-shell flies away', 'The love of the soul to the body is like (the love of) a bird to its egg which it flies away from and leaves empty'),
  (339, 34, 'நிலையாமை', 'உறங்கு வதுபோலுஞ் சாக்காடு உறங்கி
விழிப்பது போலும் பிறப்பு.', 'Urangu Vadhupolunj Chaakkaatu Urangi', 'Death is like a slumber deep  And birth like waking from that sleep', 'Death is like sleep; birth is like awaking from it'),
  (340, 34, 'நிலையாமை', 'புக்கில் அமைந்தின்று கொல்லோ உடம்பினுள்
துச்சில் இருந்த உயிர்க்கு.', 'Pukkil Amaindhindru Kollo Utampinul', 'The life berthed in this body shows  A fixed home it never knows', 'It seems as if the soul, which takes a temporary shelter in a body, had not attained a home'),
  (341, 35, 'துறவு', 'யாதனின் யாதனின் நீங்கியான் நோதல்
அதனின் அதனின் இலன்.', 'Yaadhanin Yaadhanin Neengiyaan Nodhal', 'From what from what a man is free  From that, from that his torments flee', 'Whatever thing, a man has renounced, by that thing; he cannot suffer pain'),
  (342, 35, 'துறவு', 'வேண்டின்உண் டாகத் துறக்க துறந்தபின்
ஈண்டுஇயற் பால பல.', 'Ventin Un Taakath Thurakka', 'Give up all to gain the True  And endless joys shall hence seek you', 'After a man has renounced (all things), there will still be many things in this world (which he may enjoy); if he should desire them, let him, while it is time abandon (the world)'),
  (343, 35, 'துறவு', 'அடல்வேண்டும் ஐந்தன் புலத்தை விடல்வேண்டும்
வேண்டிய வெல்லாம் ஒருங்கு.', 'Atalventum Aindhan Pulaththai Vitalventum', 'Curb the senses five and renounce  The carving desires all at once', 'Let the five senses be destroyed; and at the same time, let everything be abandoned that (the ascetic) has (formerly) desired'),
  (344, 35, 'துறவு', 'இயல்பாகும் நோன்பிற்கொன்று இன்மை உடைமை
மயலாகும் மற்றும் பெயர்த்து.', 'Iyalpaakum Nonpirkondru Inmai Utaimai', 'To have nothing is law of vows  Having the least deludes and snares', 'To be altogether destitute is the proper condition of those who perform austerities; if they possess anything, it will change (their resolution) and bring them back to their confused state'),
  (345, 35, 'துறவு', 'மற்றும் தொடர்ப்பாடு எவன்கொல் பிறப்பறுக்கல்
உற்றார்க்கு உடம்பும் மிகை.', 'Matrum Thotarppaatu Evankol Pirapparukkal', 'Why add to bonds while this body  Is too much for saints to be birth-free', 'What means the addition of other things those who are attempting to cut off (future) births, when even their body is too much (for them)'),
  (346, 35, 'துறவு', 'யான்எனது என்னும் செருக்குஅறுப்பான் வானோர்க்கு
உயர்ந்த உலகம் புகும்.', 'Yaan Enadhu Ennum Serukku', 'Who curbs the pride of I and mine  Gets a world rare for gods to gain', 'Shall enter realms above the powers divine'),
  (347, 35, 'துறவு', 'பற்றி விடாஅ இடும்பைகள் பற்றினைப்
பற்றி விடாஅ தவர் க்கு.', 'Patri Vitaaa Itumpaikal Patrinaip', 'Grief clings on and on to those  Who cling to bonds without release', 'Sorrows will never let go their hold of those who give not up their hold of desire'),
  (348, 35, 'துறவு', 'தலைப்பட்டார் தீரத் துறந்தார் மயங்கி
வலைப்பட்டார் மற்றை யவர்.', 'Thalaippattaar Theerath Thurandhaar Mayangi', 'Who renounce all are free from care  Others suffer delusive snare', 'Those who have entirely renounced (all things and all desire) have obtained (absorption into God); all others wander in confusion, entangled in the net of (many) births'),
  (349, 35, 'துறவு', 'பற்றற்ற கண்ணே பிறப்பறுக்கும் மற்று
நிலையாமை காணப் படும்.', 'Patratra Kanne Pirapparukkum Matru', 'Bondage cut off, rebirth is off  The world then seems instable stuff', 'At the moment in which desire has been abandoned, (other) births will be cut off; when that has not been done, instability will be seen'),
  (350, 35, 'துறவு', 'பற்றுக பற்றற்றான் பற்றினை அப்பற்றைப்
பற்றுக பற்று விடற்கு.', 'Patruka Patratraan Patrinai Appatraip', 'Bind Thyself to the unbound one  That binding breaks all bonds anon', 'Desire the desire of Him who is without desire; in order to renounce desire, desire that desire'),
  (351, 36, 'மெய்யுணர்தல்', 'பொருளல்ல வற்றைப் பொருளென்று உணரும்
மருளானாம் மாணாப் பிறப்பு.', 'Porulalla Vatraip Porulendru Unarum', 'That error entails ignoble birth  Which deems vain things as things of worth', 'Inglorious births are produced by the confusion (of mind) which considers those things to be real which are not real'),
  (352, 36, 'மெய்யுணர்தல்', 'இருள்நீங்கி இன்பம் பயக்கும் மருள்நீங்கி
மாசறு காட்சி யவர்க்கு.', 'Irulneengi Inpam Payakkum Marulneengi', 'Men of spotless pure insight  Enjoy delight devoid of night', 'A clear, undimmed vision of things will deliver its possessors from the darkness of future births, and confer the felicity (of heaven)'),
  (353, 36, 'மெய்யுணர்தல்', 'ஐயத்தின் நீங்கித் தெளிந்தார்க்கு வையத்தின்
வானம் நணிய துடைத்து.', 'Aiyaththin Neengith Thelindhaarkku Vaiyaththin', 'To doubtless minds whose heart is clear  More than earth heaven is near', 'Heaven is nearer than earth to those men of purified minds who are freed from from doubt'),
  (354, 36, 'மெய்யுணர்தல்', 'ஐயுணர்வு எய்தியக் கண்ணும் பயமின்றே
மெய்யுணர்வு இல்லா தவர்க்கு.', 'Aiyunarvu Eydhiyak Kannum Payamindre', 'Knowledge of five senses is vain  Without knowing the Truth within', 'Even those who have all the knowledge which can be attained by the five senses, will derive no benefit from it, if they are without a knowledge of the true nature of things'),
  (355, 36, 'மெய்யுணர்தல்', 'எப்பொருள் எத்தன்மைத் தாயினும் அப்பொருள்
மெய்ப்பொருள் காண்பது அறிவு.', 'Epporul Eththanmaith Thaayinum Apporul', 'Knowledge is truth of things to find  In every case of every kind', '(True) knowledge is the perception concerning every thing of whatever kind, that that thing is the true thing'),
  (356, 36, 'மெய்யுணர்தல்', 'கற்றீண்டு மெய்ப்பொருள் கண்டார் தலைப்படுவர்
மற்றீண்டு வாரா நெறி.', 'Katreentu Meypporul Kantaar Thalaippatuvar', 'Who learn and here the Truth discern  Enter the path of non-return', 'They, who in this birth have learned to know the True Being, enter the road which returns not into this world'),
  (357, 36, 'மெய்யுணர்தல்', 'ஓர்த்துள்ளம் உள்ளது உணரின் ஒருதலையாப்
பேர்த்துள்ள வேண்டா பிறப்பு.', 'Orththullam Ulladhu Unarin Orudhalaiyaap', 'One-minded sage sees inner-truth  He is free from thoughts of rebirth', 'Let it not be thought that there is another birth for him whose mind having thoroughly considered (all it has been taught) has known the True Being'),
  (358, 36, 'மெய்யுணர்தல்', 'பிறப்பென்னும் பேதைமை நீங்கச் சிறப்பென்னும்
செம்பொருள் காண்பது அறிவு.', 'Pirappennum Pedhaimai Neengach Chirappennum', 'It is knowledge to know Self-Truth  And remove the folly of birth', 'True knowledge consists in the removal of ignorance; which is (the cause of) births, and the perception of the True Being who is (the bestower of) heaven'),
  (359, 36, 'மெய்யுணர்தல்', 'சார்புணர்ந்து சார்பு கெடஒழுகின் மற்றழித்துச்
சார்தரா சார்தரு நோய்.', 'Saarpunarndhu Saarpu Ketaozhukin Matrazhiththuch', 'Know the Refuge; off with bondage  Be free from ills of thraldom, O sage', 'He who so lives as to know Him who is the support of all things and abandon all desire, will be freed from the evils which would otherwise cleave to him and destroy (his efforts after absorption)'),
  (360, 36, 'மெய்யுணர்தல்', 'காமம் வெகுளி மயக்கம் இவ்மூன்றன்
நாமம் கெடக்கெடும் நோய்.', 'Kaamam Vekuli Mayakkam Ivaimundran', 'Woes expire when lust, wrath, folly  Expire even to name, fully', 'If the very names of these three things, desire, anger, and confusion of mind, be destroyed, then will also perish evils (which flow from them)'),
  (361, 37, 'அவாவறுத்தல்', 'அவாஎன்ப எல்லா உயிர்க்கும் எஞ்ஞான்றும்
தவாஅப் பிறப்பீனும் வித்து.', 'Avaaenpa Ellaa Uyirkkum Enj', 'Desire to all, always is seed  From which ceaseless births proceed', '(The wise) say that the seed, which produces unceasing births, at all times, to all creatures, is desire'),
  (362, 37, 'அவாவறுத்தல்', 'வேண்டுங்கால் வேண்டும் பிறவாமை மற்றது
வேண்டாமை வேண்ட வரும்.', 'Ventungaal Ventum Piravaamai Matradhu', 'If long thou must, long for non-birth  It comes by longing no more for earth', 'If anything be desired, freedom from births should be desired; that (freedom from births) will be attained by desiring to be without desire'),
  (363, 37, 'அவாவறுத்தல்', 'வேண்டாமை அன்ன விழுச்செல்வம் ஈண்டில்லை
ஆண்டும் அஃதொப்பது இல்.', 'Ventaamai Anna Vizhuchchelvam Eentillai', 'No such wealth is here and there  As peerless wealth of non-desire', 'There is in this world no excellence equal to freedom from desire; and even in that world, there is nothing like it'),
  (364, 37, 'அவாவறுத்தல்', 'தூஉய்மை என்பது அவாவின்மை மற்றது
வாஅய்மை வேண்ட வரும்.', 'Thoouymai Enpadhu Avaavinmai Matradhu', 'To nothing crave is purity  That is the fruit of verity', 'Purity (of mind) consists in freedom from desire; and that (freedom from desire) is the fruit of the love of truth'),
  (365, 37, 'அவாவறுத்தல்', 'அற்றவர் என்பார் அவாஅற்றார் மற்றையார்
அற்றாக அற்றது இலர்.', 'Atravar Enpaar Avaaatraar Matraiyaar', 'The free are those who desire not  The rest not free in bonds are caught', 'They are said to be free (from future birth) who are freed from desire; all others (who, whatever else they may be free from, are not freed from desire) are not thus free'),
  (366, 37, 'அவாவறுத்தல்', 'அஞ்சுவ தோரும் அறனே ஒருவனை
வஞ்சிப்ப தோரும் அவா.', 'Anjuva Thorum Arane Oruvanai', 'Dread desire; Virtue is there  To every soul desire is snare!', 'It is the chief duty of (an ascetic) to watch against desire with (jealous) fear; for it has power to deceive (and destroy) him'),
  (367, 37, 'அவாவறுத்தல்', 'அவாவினை ஆற்ற அறுப்பின் தவாவினை
தான்வேண்டு மாற்றான் வரும்.', 'Avaavinai Aatra Aruppin Thavaavinai', 'Destroy desire; deliverance  Comes as much as you aspire hence', 'If a man thoroughly cut off all desire, the deeds, which confer immortality, will come to him, in the path in which he seeks them'),
  (368, 37, 'அவாவறுத்தல்', 'அவாஇல்லார்க் கில்லாகுந் துன்பம் அஃதுண்டேல்
தவாஅது மேன்மேல் வரும்.', 'Avaaillaark Killaakun Thunpam Aqdhuntel', 'Desire extinct no sorrow-taints  Grief comes on grief where it pretends', 'There is no sorrow to those who are without desire; but where that is, (sorrow) will incessantly come, more and more'),
  (369, 37, 'அவாவறுத்தல்', 'இன்பம் இடையறா தீண்டும் அவாவென்னும்
துன்பத்துள் துன்பங் கெடின்.', 'Inpam Itaiyaraa Theentum Avaavennum', 'Desire, the woe of woes destroy  Joy of joys here you enjoy', 'Even while in this body, joy will never depart (from the mind, in which) desire, that sorrow of sorrows, has been destroyed'),
  (370, 37, 'அவாவறுத்தல்', 'ஆரா இயற்கை அவாநீப்பின் அந்நிலையே
பேரா இயற்கை தரும்.', 'Aaraa Iyarkai Avaaneeppin Annilaiye', 'Off with desire insatiate  You gain the native blissful state', 'The removal of desire, whose nature it is never to be satisfied, will immediately confer a nature that can never be changed'),
  (371, 38, 'ஊழ்', 'ஆகூழால் தோன்றும் அசைவின்மை கைப்பொருள்
போகூழால் தோன்றும் மடி.', 'Aakoozhaal Thondrum Asaivinmai Kaipporul', 'Efforts succeed by waxing star  Wealth-losing brings waning star', 'Perseverance comes from a prosperous fate, and idleness from an adverse fate'),
  (372, 38, 'ஊழ்', 'பேதைப் படுக்கும் இழவூழ் அறிவகற்றும்
ஆகலூழ் உற்றக் கடை.', 'Pedhaip Patukkum Izhavoozh Arivakatrum', 'Loss-fate makes a dull fool of us  Gain-fate makes us prosperous, wise!', 'An adverse fate produces folly, and a prosperous fate produces enlarged knowledge'),
  (373, 38, 'ஊழ்', 'நுண்ணிய நூல்பல கற்பினும் மற்றுந்தன்
உண்மை யறிவே மிகும்.', 'Nunniya Noolpala Karpinum Matrundhan', 'What matters subtle study deep?  Levels of innate wisdom-keep', 'Although (a man) may study the most polished treatises, the knowledge which fate has decreed to him will still prevail'),
  (374, 38, 'ஊழ்', 'இருவேறு உலகத்து இயற்கை திருவேறு
தெள்ளிய ராதலும் வேறு.', 'Iruveru Ulakaththu Iyarkai Thiruveru', 'Two natures in the world obtain  Some wealth and others wisdom gain', 'There are (through fate) two different natures in the world, hence the difference (observable in men) in (their acquisition of) wealth, and in their attainment of knowledge'),
  (375, 38, 'ஊழ்', 'நல்லவை எல்லாஅந் தீயவாம் தீயவும்
நல்லவாம் செல்வம் செயற்கு.', 'Nallavai Ellaaan Theeyavaam Theeyavum', 'In making wealth fate changes mood;  The good as bad and bad as good', 'In the acquisition of property, every thing favourable becomes unfavourable, and (on the other hand) everything unfavourable becomes favourable, (through the power of fate)'),
  (376, 38, 'ஊழ்', 'பரியினும் ஆகாவாம் பாலல்ல உய்த்துச்
சொரியினும் போகா தம.', 'Pariyinum Aakaavaam Paalalla Uyththuch', 'Things not thine never remain  Things destined are surely thine', 'Whatever is not conferred by fate cannot be preserved although it be guarded with most painful care; and that, which fate has made his, cannot be lost, although one should even take it and throw it away'),
  (377, 38, 'ஊழ்', 'வகுத்தான் வகுத்த வகையல்லால் கோடி
தொகுத்தார்க்கு துய்த்தல் அரிது.', 'Vakuththaan Vakuththa Vakaiyallaal Koti', 'Who crores amass enjoy but what  The Dispenser\'s decrees allot', 'Even those who gather together millions will only enjoy them, as it has been determined by the disposer (of all things)'),
  (378, 38, 'ஊழ்', 'துறப்பார்மன் துப்புர வில்லார் உறற்பால
ஊட்டா கழியு மெனின்.', 'Thurappaarman Thuppura Villaar Urarpaala', 'The destitute desire will quit  If fate with ills visit them not', 'The destitute will renounce desire (and become ascetics), if (fate) do not make them suffer the hindrances to which they are liable, and they pass away'),
  (379, 38, 'ஊழ்', 'நன்றாங்கால் நல்லவாக் காண்பவர் அன்றாங்கால்
அல்லற் படுவ தெவன்?', 'Nandraangaal Nallavaak Kaanpavar Andraangaal', 'Who good in time of good perceive  In evil time why should they grieve?', 'How is it that those, who are pleased with good fortune, trouble themselves when evil comes, (since both are equally the decree of fate) ?'),
  (380, 38, 'ஊழ்', 'ஊழிற் பெருவலி யாவுள மற்றொன்று
சூழினுந் தான்முந் துறும்.', 'Oozhir Peruvali Yaavula Matrondru', 'What power surpasses fate? Its will  Persists against the human skill', 'What is stronger than fate ? If we think of an expedient (to avert it), it will itself be with us before (the thought)'),
  (381, 39, 'இறைமாட்சி', 'படைகுடி கூழ்அமைச்சு நட்பரண் ஆறும்
உடையான் அரசருள் ஏறு.', 'Pataikuti Koozhamaichchu Natparan Aarum', 'People, troops, wealth, forts, council, friends  Who owns these six is lion of kings', 'He who possesses these six things, an army, a people, wealth, ministers, friends and a fortress, is a lion among kings'),
  (382, 39, 'இறைமாட்சி', 'அஞ்சாமை ஈகை அறிவூக்கம் இந்நான்கும்
எஞ்சாமை வேந்தர்க் கியல்பு.', 'Anjaamai Eekai Arivookkam Innaankum', 'Courage, giving, knowledge and zeal  Are four failless features royal', 'Never to fail in these four things, fearlessness, liberality, wisdom, and energy, is the kingly character'),
  (383, 39, 'இறைமாட்சி', 'தூங்காமை கல்வி துணிவுடைமை இம்மூன்றும்
நீங்கா நிலனான் பவர்க்கு.', 'Thoongaamai Kalvi Thunivutaimai Immoondrum', 'Alertness, learning bravery  Are adjuncts three of monarchy', 'These three things, viz, vigilance, learning, and bravery, should never be wanting in the ruler of a country'),
  (384, 39, 'இறைமாட்சி', 'அறனிழுக்கா தல்லவை நீக்கி மறனிழுக்கா
மானம் உடைய தரசு.', 'Aranizhukkaa Thallavai Neekki Maranizhukkaa', 'A brave noble king refrains from vice  Full of virtue and enterprise', 'He is a king who, with manly modesty, swerves not from virtue, and refrains from vice'),
  (385, 39, 'இறைமாட்சி', 'இயற்றலும் ஈட்டலுங் காத்தலும் காத்த
வகுத்தலும் வல்ல தரசு.', 'Iyatralum Eettalung Kaaththalum Kaaththa', 'The able king gets, stores and guards  And spends them for people\'s safeguards', 'He is a king who is able to acquire (wealth), to lay it up, to guard, and to distribute it'),
  (386, 39, 'இறைமாட்சி', 'காட்சிக் கெளியன் கடுஞ்சொல்லன் அல்லனேல்
மீக்கூறும் மன்னன் நிலம்', 'Kaatchik Keliyan Katunjollan Allanel', 'That land prospers where the king is  Easy to see, not harsh of words', 'The whole world will exalt the country of the king who is easy of access, and who is free from harsh language'),
  (387, 39, 'இறைமாட்சி', 'இன்சொலால் ஈத்தளிக்க வல்லார்க்குத் தன்சொலால்
தான்கண் டனைத்திவ் வுலகு.', 'Insolaal Eeththalikka Vallaarkkuth Thansolaal', 'The world commends and acts his phrase  Who sweetly speaks and gives with grace', 'The world will praise and submit itself to the mind of the king who is able to give with affability, and to protect all who come to him'),
  (388, 39, 'இறைமாட்சி', 'முறைசெய்து காப்பாற்றும் மன்னவன் மக்கட்கு
இறையென்று வைக்கப் படும்.', 'Muraiseydhu Kaappaatrum Mannavan Makkatku', 'He is the Lord of men who does  Sound justice and saves his race', 'That king, will be esteemed a God among men, who performs his own duties, and protects (his subjects).'),
  (389, 39, 'இறைமாட்சி', 'செவிகைப்பச் சொற்பொறுக்கும் பண்புடை வேந்தன்
கவிகைக்கீழ்த் தங்கும் உலகு.', 'Sevikaippach Chorporukkum Panputai Vendhan', 'Under his shelter thrives the world  Who bears remarks bitter and bold', 'The whole world will dwell under the umbrella of the king, who can bear words that embitter the ear'),
  (390, 39, 'இறைமாட்சி', 'கொடையளி செங்கோல் குடியோம்பல் நான்கும்
உடையானாம் வேந்தர்க் கொளி.', 'Kotaiyali Sengol Kutiyompal Naankum', 'He is the Light of Kings who has  Bounty, justice, care and grace', 'He is the light of kings who has there four things, beneficence, benevolence, rectitude, and care for his people'),
  (391, 40, 'கல்வி', 'கற்க கசடறக் கற்பவை கற்றபின்
நிற்க அதற்குத் தக.', 'Karka Kasatarak Karpavai Katrapin', 'Lore worth learning, learn flawlessly  Live by that learning thoroughly', 'Let a man learn thoroughly whatever he may learn, and let his conduct be worthy of his learning'),
  (392, 40, 'கல்வி', 'எண்ணென்ப ஏனை எழுத்தென்ப இவ்விரண்டும்
கண்ணென்ப வாழும் உயிர்க்கு.', 'Ennenpa Enai Ezhuththenpa Ivvirantum', 'Letter, number, art and science  Of living kind both are the eyes', 'Letters and numbers are the two eyes of man'),
  (393, 40, 'கல்வி', 'கண்ணுடையர் என்பவர் கற்றோர் முகத்திரண்டு
புண்ணுடையர் கல்லா தவர்.', 'Kannutaiyar Enpavar Katror Mukaththirantu', 'The learned alone have eyes on face  The ignorant two sores of disgrace', 'The learned are said to have eyes, but the unlearned have (merely) two sores in their face'),
  (394, 40, 'கல்வி', 'உவப்பத் தலைக்கூடி உள்ளப் பிரிதல்
அனைத்தே புலவர் தொழில்.', 'Uvappath Thalaikkooti Ullap Piridhal', 'To meet with joy and part with thought  Of learned men this is the art', 'It is the part of the learned to give joy to those whom they meet, and on leaving, to make them think (Oh! when shall we meet them again.)'),
  (395, 40, 'கல்வி', 'உடையார்முன் இல்லார்போல் ஏக்கற்றுங் கற்றார்
கடையரே கல்லா தவர்.', 'Utaiyaarmun Illaarpol Ekkatrung Katraar', 'Like poor before rich they yearn:  For knowledge: the low never learn', 'The unlearned are inferior to the learned, before whom they stand begging, as the destitute before the wealthy'),
  (396, 40, 'கல்வி', 'தொட்டனைத் தூறும் மணற்கேணி மாந்தர்க்குக்
கற்றனைத் தூறும் அறிவு.', 'Thottanaith Thoorum Manarkeni Maandharkkuk', 'As deep you dig the sand spring flows  As deep you learn the knowledge grows', 'Water will flow from a well in the sand in proportion to the depth to which it is dug, and knowledge will flow from a man in proportion to his learning'),
  (397, 40, 'கல்வி', 'யாதானும் நாடாமால் ஊராமால் என்னொருவன்
சாந்துணையுங் கல்லாத வாறு.', 'Yaadhaanum Naataamaal Ooraamaal Ennoruvan', 'All lands and towns are learner\'s own  Why not till death learning go on!', 'How is it that any one can remain without learning, even to his death, when (to the learned man) every country is his own (country), and every town his own (town) ?'),
  (398, 40, 'கல்வி', 'ஒருமைக்கண் தான்கற்ற கல்வி ஒருவற்கு
எழுமையும் ஏமாப் புடைத்து.', 'Orumaikkan Thaan Katra Kalvi', 'The joy of learning in one birth  Exalts man upto his seventh', 'The learning, which a man has acquired in one birth, will yield him pleasure during seven births'),
  (399, 40, 'கல்வி', 'தாமின் புறுவது உலகின் புறக்கண்டு
காமுறுவர் கற்றறிந் தார்.', 'Thaamin Puruvadhu Ulakin Purak', 'The learned foster learning more  On seeing the world enjoy their lore', 'The learned will long (for more learning), when they see that while it gives pleasure to themselves, the world also derives pleasure from it'),
  (400, 40, 'கல்வி', 'கேடில் விழுச்செல்வம் கல்வி யொருவற்கு
மாடல்ல மற்றை யவை.', 'Ketil Vizhuchchelvam Kalvi Yoruvarku', 'Learning is wealth none could destroy  Nothing else gives genuine joy', 'Learning is the true imperishable riches; all other things are not riches'),
  (401, 41, 'கல்லாமை', 'அரங்கின்றி வட்டாடி யற்றே நிரம்பிய
நூலின்றிக் கோட்டி கொளல்.', 'Arangindri Vattaati Yatre Nirampiya', 'Like play of chess on squareless board  Vain is imperfect loreless word', 'To speak in an assembly (of the learned) without fullness of knowledge, is like playing at chess (on a board) without squares'),
  (402, 41, 'கல்லாமை', 'கல்லாதான் சொற்கா முறுதல் முலையிரண்டும்
இல்லாதாள் பெண்காமுற் றற்று.', 'Kallaadhaan Sorkaa Murudhal Mulaiyirantum', 'Unlearned man aspiring speech  Is breastless lady\'s love-approach', 'The desire of the unlearned to speak (in an assembly), is like a woman without breasts desiring (the enjoyment of ) woman-hood'),
  (403, 41, 'கல்லாமை', 'கல்லா தவரும் நனிநல்லர் கற்றார்முன்
சொல்லா திருக்கப் பெறின்.', 'Kallaa Thavarum Naninallar Katraarmun', 'Ev\'n unread men are good and wise  If before the wise, they hold their peace', 'The unlearned also are very excellent men, if they know how to keep silence before the learned'),
  (404, 41, 'கல்லாமை', 'கல்லாதான் ஒட்பம் கழியநன் றாயினும்
கொள்ளார் அறிவுடை யார்.', 'Kallaadhaan Otpam Kazhiyanan Raayinum', 'The unread\'s wit though excellent  Is not valued by the savant', 'Although the natural knowledge of an unlearned man may be very good, the wise will not accept for true knowledge'),
  (405, 41, 'கல்லாமை', 'கல்லா ஒருவன் தகைமை தலைப்பெய்து
சொல்லாடச் சோர்வு படும்.', 'Kallaa Oruvan Thakaimai Thalaippeydhu', 'A man untaught when speech he vaunts  Sadly fails before savants', 'The self-conceit of an unlearned man will fade away, as soon as he speaks in an assembly (of'),
  (406, 41, 'கல்லாமை', 'உளரென்னும் மாத்திரையர் அல்லால் பயவாக்
களரனையர் கல்லா தவர்.', 'Ularennum Maaththiraiyar Allaal Payavaak', 'People speak of untaught minds  \\"They just exist like barren lands\\"', 'The unlearned are like worthless barren land: all that can be said of them is, that they exist'),
  (407, 41, 'கல்லாமை', 'நுண்மாண் நுழைபுலம் இல்லான் எழில்நலம்
மண்மாண் புனைபாவை யற்று.', 'Nunmaan Nuzhaipulam Illaan Ezhilnalam', 'Like painted clay-doll is his show  Grand subtle lore who fails to know', 'The beauty and goodness of one who is destitute of knowledge by the study of great and exquisite works, is like (the beauty and goodness) of a painted earthen doll'),
  (408, 41, 'கல்லாமை', 'நல்லார்கண் பட்ட வறுமையின் இன்னாதே
கல்லார்கண் பட் ட திரு.', 'Nallaarkan Patta Varumaiyin Innaadhe', 'Wealth in the hand of fools is worse  Than a learned man\'s empty purse', 'Wealth, gained by the unlearned, will give more sorrow than the poverty which may come upon the learned'),
  (409, 41, 'கல்லாமை', 'மேற்பிறந்தா ராயினும் கல்லாதார் கீழ்ப்பிறந்தும்
கற்றார் அனைத்திலர் பாடு.', 'Merpirandhaa Raayinum Kallaadhaar Keezhppirandhum', 'Lower are fools of higher birth  Than low-born men of learning\'s worth', 'The unlearned, though born in a high caste, are not equal in dignity to the learned; though they may have been born in a low caste'),
  (410, 41, 'கல்லாமை', 'விலங்கொடு மக்கள் அனையர் இலங்குநூல்
கற்றாரோடு ஏனை யவர்.', 'Vilangotu Makkal Anaiyar Ilangunool', 'Like beasts before men, dunces are  Before scholars of shining lore', 'As beasts by the side of men, so are other men by the side of those who are learned in celebrated works'),
  (411, 42, 'கேள்வி', 'செல்வத்துட் செல்வஞ் செவிச்செல்வம் அச்செல்வம்
செல்வத்து ளெல்லாந் தலை.', 'Selvaththut Selvanj Chevichchelvam Achchelvam', 'Wealth of wealths is listening\'s wealth  It is the best of wealths on earth', 'Wealth (gained) by the ear is wealth of wealth; that wealth is the chief of all wealth'),
  (412, 42, 'கேள்வி', 'செவுக்குண வில்லாத போழ்து சிறிது
வயிற்றுக்கும் ஈயப் படும்.', 'Sevikkuna Villaadha Pozhdhu Siridhu', 'Some food for the stomach is brought  When the ear gets no food for thought', 'When there is no food for the ear, give a little also to the stomach'),
  (413, 42, 'கேள்வி', 'செவியுணவிற் கேள்வி யுடையார் அவியுணவின்
ஆன்றாரோ டொப்பர் நிலத்து.', 'Seviyunavir Kelvi Yutaiyaar Aviyunavin', 'Whose ears get lots of wisdom-food  Equal gods on oblations fed', 'Those who in this world enjoy instruction which is the food of the ear, are equal to the Gods, who enjoy the food of the sacrifices'),
  (414, 42, 'கேள்வி', 'கற்றில னாயினுங் கேட்க அஃதொருவற்கு
ஒற்கத்தின் ஊற்றாந் துணை.', 'Katrila Naayinung Ketka Aqdhoruvarku', 'Though not learned, hear and heed  That serves a staff and stay in need', 'Although a man be without learning, let him listen (to the teaching of the learned); that will be to him a staff in adversity'),
  (415, 42, 'கேள்வி', 'இழுக்கல் உடையுழி ஊற்றுக்கோல் அற்றே
ஒழுக்க முடையார்வாய்ச் சொல்.', 'Izhukkal Utaiyuzhi Ootrukkol Atre', 'Virtuous men\'s wisdom is found  A strong staff on slippery ground', 'The words of the good are like a staff in a slippery place'),
  (416, 42, 'கேள்வி', 'எனைத்தானும் நல்லவை கேட்க அனைத்தானும்
ஆன்ற பெருமை தரும்.', 'Enaiththaanum Nallavai Ketka Anaiththaanum', 'Lend ear to good words however few  That much will highly exalt you', 'Let a man listen, never so little, to good (instruction), even that will bring him great dignity'),
  (417, 42, 'கேள்வி', 'பிழைத்துணர்ந்தும் பேதைமை சொல்லா ரிழைத்துணர்ந்
தீண்டிய கேள்வி யவர்.', 'Pizhaith Thunarndhum Pedhaimai Sollaa', 'Who listen well and learn sharply  Not ev\'n by slip speak foolishly', 'Not even when they have imperfectly understood (a matter), will those men speak foolishly, who have profoundly studied and diligently listened (to instruction)'),
  (418, 42, 'கேள்வி', 'கேட்பினுங் கேளாத் தகையவே கேள்வியால்
தோட்கப் படாத செவி.', 'Ketpinung Kelaath Thakaiyave Kelviyaal', 'That ear though hearing is dulled  Which is not by wisdom drilled', 'The ear which has not been bored by instruction, although it hears, is deaf'),
  (419, 42, 'கேள்வி', 'நுணங்கிய கேள்விய ரல்லார் வணங்கிய
வாயின ராதல் அரிது.', 'Nunangiya Kelviya Rallaar Vanangiya', 'A modest mouth is hard for those  Who care little to counsels wise', 'It is a rare thing to find modesty, a reverend mouth- with those who have not received choice instruction'),
  (420, 42, 'கேள்வி', 'செவியிற் சுவையுணரா வாயுணர்வின் மாக்கள்
அவியினும் வாழினும் என்?', 'Seviyir Suvaiyunaraa Vaayunarvin Maakkal', 'Who taste by mouth and not by ear  What if they fare ill or well here?', 'What does it matter whether those men live or die, who can judge of tastes by the mouth, and not by the ear ?'),
  (421, 43, 'அறிவுடைமை', 'அறிவற்றங் காக்குங் கருவி செறுவார்க்கும்
உள்ளழிக்க லாகா அரண்.', 'Arivatrang Kaakkung Karuvi Seruvaarkkum', 'Wisdom\'s weapon wards off all woes  It is a fort defying foes', 'Wisdom is a weapon to ward off destruction; it is an inner fortress which enemies cannot destroy'),
  (422, 43, 'அறிவுடைமை', 'சென்ற இடத்தால் செலவிடா தீதொரீஇ
நன்றின்பால் உய்ப்ப தறிவு.', 'Sendra Itaththaal Selavitaa Theedhoreei', 'Wisdom checks the straying senses  Expels evils, impels goodness', 'Not to permit the mind to go where it lists, to keep it from evil, and to employ it in good, this is wisdom'),
  (423, 43, 'அறிவுடைமை', 'எப்பொருள் யார்யார்வாய்க் கேட்பினும் அப்பொருள்
மெய்ப்பொருள் காண்ப தறிவு.', 'Epporul Yaaryaarvaaik Ketpinum Apporul', 'To grasp the Truth from everywhere  From everyone is wisdom fair', 'To discern the truth in every thing, by whomsoever spoken, is wisdom'),
  (424, 43, 'அறிவுடைமை', 'எண்பொருள வாகச் செலச்சொல்லித் தான்பிறர்வாய்
நுண்பொருள் காண்ப தறிவு.', 'Enporula Vaakach Chelachchollith Thaanpirarvaai', 'Speaking out thoughts in clear trends  Wisdom subtle sense comprehends', 'To speak so as that the meaning may easily enter the mind of the hearer, and to discern the subtlest thought which may lie hidden in the words of others, this is wisdom'),
  (425, 43, 'அறிவுடைமை', 'உலகம் தழீஇய தொட்பம் மலர்தலும்
கூம்பலும் இல்ல தறிவு.', 'Ulakam Thazheeiya Thotpam Malardhalum', 'The wise-world the wise befriend  They bloom nor gloom, equal in mind', 'To secure the friendship of the great is true wisdom; it is (also) wisdom to keep (that friendship unchanged, and) not opening and closing (like the lotus flower)'),
  (426, 43, 'அறிவுடைமை', 'எவ்வ துறைவது உலகம் உலகத்தோடு
அவ்வ துறைவ தறிவு.', 'Evva Thuraivadhu Ulakam Ulakaththotu', 'As moves the world so move the wise  In tune with changing times and ways', 'To live as the world lives, is wisdom'),
  (427, 43, 'அறிவுடைமை', 'அறிவுடையார் ஆவ தறிவார் அறிவிலார்
அஃதறி கல்லா தவர்.', 'Arivutaiyaar Aava Tharivaar Arivilaar', 'The wise foresee what is to come  The unwise lack in that wisdom', 'The wise are those who know beforehand what will happen; those who do not know this are the unwise'),
  (428, 43, 'அறிவுடைமை', 'அஞ்சுவ தஞ்சாமை பேதைமை அஞ்சுவது
அஞ்சல் அறிவார் தொழில்.', 'Anjuva Thanjaamai Pedhaimai Anjuvadhu', 'Fear the frightful and act wisely  Not to fear the frightful\'s folly', 'Not to fear what ought to be feared, is folly; it is the work of the wise to fear what should be feared'),
  (429, 43, 'அறிவுடைமை', 'எதிரதாக் காக்கும் அறிவினார்க் கில்லை
அதிர வருவதோர் நோய்.', 'Edhiradhaak Kaakkum Arivinaark Killai', 'No frightful evil shocks the wise  Who guard themselves against surprise', 'No terrifying calamity will happen to the wise, who (foresee) and guard against coming evils'),
  (430, 43, 'அறிவுடைமை', 'அறிவுடையார் எல்லா முடையார் அறிவிலார்
என்னுடைய ரேனும் இலர்.', 'Arivutaiyaar Ellaa Mutaiyaar Arivilaar', 'Who have wisdom they are all full  Whatev\'r they own, misfits are nil', 'Those who possess wisdom, possess every thing; those who have not wisdom, whatever they may possess, have nothing'),
  (431, 44, 'குற்றங்கடிதல்', 'செருக்குஞ் சினமும் சிறுமையும் இல்லார்
பெருக்கம் பெருமித நீர்த்து.', 'Serukkunj Chinamum Sirumaiyum Illaar', 'Plenty is their prosperity  Who\'re free from wrath pride lust petty', 'Truly great is the excellence of those (kings) who are free from pride, anger, and lust'),
  (432, 44, 'குற்றங்கடிதல்', 'இவறலும் மாண்பிறந்த மானமும் மாணா
உவகையும் ஏதம் இறைக்கு.', 'Ivaralum Maanpirandha Maanamum Maanaa', 'Mean pride, low pleasure, avarice  These add blemishes to a prince', 'Avarice, undignified pride, and low pleasures are faults in a king'),
  (433, 44, 'குற்றங்கடிதல்', 'தினைத்துணையாங் குற்றம் வரினும் பனைத்துணையாக்
கொள்வர் பழிநாணு வார்.', 'Thinaiththunaiyaang Kutram Varinum Panaiththunaiyaak', 'Though millet-small their faults might seem  Men fearing disgrace, Palm-tall deem', 'Those who fear guilt, if they commit a fault small as a millet seed, will consider it to be as large as a palmyra tree'),
  (434, 44, 'குற்றங்கடிதல்', 'குற்றமே காக்க பொருளாகக் குற்றமே
அற்றந் த்ரூஉம் பகை.', 'Kutrame Kaakka Porulaakak Kutrame', 'Watch like treasure freedom from fault  Our fatal foe is that default', 'Guard against faults as a matter (of great consequence; for) faults are a deadly enemy'),
  (435, 44, 'குற்றங்கடிதல்', 'வருமுன்னர்க் காவாதான் வாழ்க்கை எரிமுன்னர்
வைத்தூறு போலக் கெடும்.', 'Varumunnark Kaavaadhaan Vaazhkkai Erimunnar', 'Who fails to guard himself from flaw  Loses his life like flame-lit straw', 'The prosperity of him who does not timely guard against faults, will perish like straw before fire'),
  (436, 44, 'குற்றங்கடிதல்', 'தன்குற்றம் நீக்கிப் பிறர்குற்றங் காண்கிற்பின்
என்குற்ற மாகும் இறைக்கு?', 'Thankutram Neekkip Pirarkutrang Kaankirpin', 'What fault can be the king\'s who cures  First his faults, then scans others', 'What fault will remain in the king who has put away his own evils, and looks after the evils of others'),
  (437, 44, 'குற்றங்கடிதல்', 'செயற்பால செய்யா திவறியான் செல்வம்
உயற்பால தன்றிக் கெடும்.', 'Seyarpaala Seyyaa Thivariyaan Selvam', 'That miser\'s wealth shall waste and end  Who would not for a good cause spend', 'The wealth of the avaricious man, who does not expend it for the purposes for which he ought to expend it will waste away and not continue'),
  (438, 44, 'குற்றங்கடிதல்', 'பற்றுள்ளம் என்னும் இவறன்மை எற்றுள்ளும்
எண்ணப் படுவதொன் றன்று.', 'Patrullam Ennum Ivaranmai Etrullum', 'The gripping greed of miser\'s heart  Is more than fault the worst apart', 'Griping avarice is not to be reckoned as one among other faults; (it stands alone - greater than all)'),
  (439, 44, 'குற்றங்கடிதல்', 'வியவற்க எஞ்ஞான்றும் தன்னை நயவற்க
நன்றி பயவா வினை.', 'Viyavarka Egngnaandrum Thannai Nayavarka', 'Never boast yourself in any mood  Nor do a deed that does no good', 'Let no (one) praise himself, at any time; let him not desire to do useless things'),
  (440, 44, 'குற்றங்கடிதல்', 'காதல காதல் அறியாமை உய்க்கிற்பின்
ஏதில ஏதிலார் நூல்.', 'Kaadhala Kaadhal Ariyaamai Uykkirpin', 'All designs of the foes shall fail  If one his wishes guards in veil', 'If (a king) enjoys, privately the things which he desires, the designs of his enemies will be useless'),
  (441, 45, 'பெரியாரைத் துணைக்கோடல்', 'அறனறிந்து மூத்த அறிவுடையார் கேண்மை
திறனறிந்து தேர்ந்து கொளல்.', 'Aranarindhu Mooththa Arivutaiyaar Kenmai', 'Weigh their worth and friendship gain  Of men of virtue and mature brain', 'Let (a king) ponder well its value, and secure the friendship of men of virtue and of mature knowledge'),
  (442, 45, 'பெரியாரைத் துணைக்கோடல்', 'உற்றநோய் நீக்கி உறாஅமை முற்காக்கும்
பெற்றியார்ப் பேணிக் கொளல்.', 'Utranoi Neekki Uraaamai Murkaakkum', 'Cherish the help of men of skill  Who ward and safe-guard you from ill', 'Let (a king) procure and kindly care for men who can overcome difficulties when they occur, and guard against them before they happen'),
  (443, 45, 'பெரியாரைத் துணைக்கோடல்', 'அரியவற்று ளெல்லாம் அரிதே பெரியாரைப்
பேணித் தமராக் கொளல்.', 'Ariyavatru Lellaam Aridhe Periyaaraip', 'Honour and have the great your own  Is rarest of the rare things known', 'To cherish great men and make them his own, is the most difficult of all difficult things'),
  (444, 45, 'பெரியாரைத் துணைக்கோடல்', 'தம்மிற் பெரியார் தமரா ஒழுகுதல்
வன்மையு ளெல்லாந் தலை.', 'Thammir Periyaar Thamaraa Ozhukudhal', 'To have betters as intimates  Power of all powers promotes', 'So to act as to make those men, his own, who are greater than himself is of all powers the highest'),
  (445, 45, 'பெரியாரைத் துணைக்கோடல்', 'சூழ்வார்கண் ணாக ஒழுகலான் மன்னவன்
சூழ்வாரைக் சூழ்ந்து கொளல்.', 'Soozhvaarkan Naaka Ozhukalaan Mannavan', 'Ministers are the monarch\'s eyes  Round him should be the right and wise', 'As a king must use his ministers as eyes (in managing his kingdom), let him well examine their character and qualifications before he engages them'),
  (446, 45, 'பெரியாரைத் துணைக்கோடல்', 'தக்கா ரினத்தனாய்த் தானொழுக வல்லானைச்
செற்றார் செயக்கிடந்த தில்.', 'Thakkaa Rinaththanaaith Thaanozhuka Vallaanaich', 'To move with worthy friends who knows  Has none to fear from frightful foes', 'There will be nothing left for enemies to do, against him who has the power of acting (so as to secure) the fellowship of worthy men'),
  (447, 45, 'பெரியாரைத் துணைக்கோடல்', 'இடிக்குந் துணையாரை யாள்வரை யாரே
கெடுக்குந் தகைமை யவர்.', 'Itikkun Thunaiyaarai Yaalvarai Yaare', 'No foe can foil his powers  whose friends reprove him when he errs', 'Who are great enough to destroy him who has servants that have power to rebuke him ?'),
  (448, 45, 'பெரியாரைத் துணைக்கோடல்', 'இடிப்பாரை இல்லாத ஏமரா மன்னன்
கெடுப்பா ரிலானுங் கெடும்.', 'Itippaarai Illaadha Emaraa Mannan', 'The careless king whom none reproves  Ruins himself sans harmful foes', 'The king, who is without the guard of men who can rebuke him, will perish, even though there be no one to destroy him'),
  (449, 45, 'பெரியாரைத் துணைக்கோடல்', 'முதலிலார்க ஊதிய மில்லை மதலையாஞ்
சார்பிலார்க் கில்லை நிலை.', 'Mudhalilaarkku Oodhiya Millai Madhalaiyaanjjch', 'No capital, no gain in trade  No prop secure sans good comrade', 'There can be no gain to those who have no capital; and in like manner there can be no permanence to'),
  (450, 45, 'பெரியாரைத் துணைக்கோடல்', 'பல்லார் பகைகொளலிற் பத்தடுத்த தீமைத்தே
நல்லார் தொடர்கை விடல்.', 'Pallaar Pakai Kolalir Paththatuththa', 'To give up good friends is ten times worse  Than being hated by countless foes', 'It is tenfold more injurious to abandon the friendship of the good, than to incur the hatred of the many'),
  (451, 46, 'சிற்றினஞ்சேராமை', 'சிற்றினம் அஞ்சும் பெருமை சிறுமைதான்
சுற்றமாச் சூழ்ந்து விடும்.', 'Sitrinam Anjum Perumai Sirumaidhaan', 'The ignoble the noble fear  The mean hold them as kinsmen dear', '(True) greatness fears the society of the base; it is only the low - minded who will regard them as friends'),
  (452, 46, 'சிற்றினஞ்சேராமை', 'நிலத்தியல்பால் நீர்திரிந் தற்றாகும் மாந்தர்க்கு
இனத்தியல்ப தாகும் அறிவு.', 'Nilaththiyalpaal Neerdhirin Thatraakum Maandharkku', 'With soil changes water\'s taste  With mates changes the mental state', 'As water changes (its nature), from the nature of the soil (in which it flows), so will the character of men resemble that of their associates'),
  (453, 46, 'சிற்றினஞ்சேராமை', 'மனத்தானாம் மாந்தர்க் குணர்ச்சி இனத்தானாம்
இன்னான் எனப்படுஞ் சொல்.', 'Manaththaanaam Maandhark Kunarchchi Inaththaanaam', 'Wisdom depends upon the mind  The worth of man upon his friend', 'The power of knowing is from the mind; (but) his character is from that of his associates'),
  (454, 46, 'சிற்றினஞ்சேராமை', 'மனத்து ளதுபோலக் காட்டி ஒருவற்கு
இனத்துள தாகும் அறிவு.', 'Manaththu Ladhupolak Kaatti Oruvarku', 'Wisdom seems to come from mind  But it truly flows from the kind', 'Wisdom appears to rest in the mind, but it really exists to a man in his companions'),
  (455, 46, 'சிற்றினஞ்சேராமை', 'மனந்தூய்மை செய்வினை தூய்மை இரண்டும்
இனந்தூய்மை தூவா வரும்.', 'Manandhooimai Seyvinai Thooimai Irantum', 'Purity of the thought and deed  Comes from good company indeed', 'Chaste company is the staff on which come, these two things, viz, purity of mind and purity of conduct'),
  (456, 46, 'சிற்றினஞ்சேராமை', 'மனந்தூயார்க் கெச்சம்நன் றாகும் இனந்தூயார்க்கு
இல்லைநன் றாகா வினை.', 'Manandhooyaark Kechchamnan Raakum Inandhooyaarkku', 'Pure-hearted get good progeny  Pure friendship acts with victory', 'To the pure-minded there will be a good posterity By those whose associates are pure, no deeds will be done that are not good'),
  (457, 46, 'சிற்றினஞ்சேராமை', 'மனநலம் மன்னுயிர்க் காக்கம் இனநலம்
எல்லாப் புகழும் தரும்.', 'Mananalam Mannuyirk Kaakkam Inanalam', 'Goodness of mind increases gain  Good friendship fosters fame again', 'Goodness of mind will give wealth, and good society will bring with it all praise, to men'),
  (458, 46, 'சிற்றினஞ்சேராமை', 'மனநலம் நன்குடைய ராயினும் சான்றோர்க்கு
இனநலம் ஏமாப் புடைத்து.', 'Mananalam Nankutaiya Raayinum Saandrorkku', 'Men of wisdom, though good in mind  In friends of worth a new strength find', 'Yet good companionship is confirmation strong'),
  (459, 46, 'சிற்றினஞ்சேராமை', 'மனநலத்தின் ஆகும் மறுமைமற் றஃதும்
இனநலத்தின் ஏமாப் புடைத்து.', 'Mananalaththin Aakum Marumaimar Raqdhum', 'Good mind decides the future bliss  Good company gains strength to this', 'Future bliss is (the result) of goodness of mind; and even this acquires strength from the society of the good'),
  (460, 46, 'சிற்றினஞ்சேராமை', 'நல்லினத்தி னூங்குந் துணையில்லை தீயினத்தின்
அல்லற் படுப்பதூஉம் இல்.', 'Nallinaththi Noongun Thunaiyillai Theeyinaththin', 'No help good company exeeds;  The bad to untold anguish leads', 'There is no greater help than the company of the good; there is no greater source of sorrow than the company of the wicked'),
  (461, 47, 'தெரிந்துசெயல்வகை', 'அழிவதூஉம் ஆவதூஉம் ஆகி வழிபயக்கும்
ஊதியமும் சூழ்ந்து செயல்.', 'Azhivadhooum Aavadhooum Aaki Vazhipayakkum', 'Weigh well output the loss and gain  And proper action ascertain', 'Let a man reflect on what will be lost, what will be acquired and (from these) what will be his ultimate gain, and (then, let him) act'),
  (462, 47, 'தெரிந்துசெயல்வகை', 'தெரிந்த இனத்தொடு தேர்ந்தெண்ணிச் செய்வார்க்கு
அரும்பொருள் யாதொன்றும் இல்', 'Therindha Inaththotu Therndhennich Cheyvaarkku', 'Nothing is hard for him who acts  With worthy counsels weighing facts', 'There is nothing too difficult to (be attained by) those who, before they act, reflect well themselves, and thoroughly consider (the matter) with chosen friends'),
  (463, 47, 'தெரிந்துசெயல்வகை', 'ஆக்கம் கருதி முதலிழக்கும் செய்வினை
ஊக்கார் அறிவுடை யார்.', 'Aakkam Karudhi Mudhalizhakkum Seyvinai', 'The wise risk not their capital  In doubtful gains and lose their all', 'Wise men will not, in the hopes of profit, undertake works that will consume their principal'),
  (464, 47, 'தெரிந்துசெயல்வகை', 'தெளிவி லதனைத் தொடங்கார் இளிவென்னும்
ஏதப்பாடு அஞ்சு பவர்.', 'Thelivi Ladhanaith Thotangaar Ilivennum', 'They who scornful reproach fear  Commence no work not made clear', 'Those who fear reproach will not commence anything which has not been (thoroughly considered) and made clear to them'),
  (465, 47, 'தெரிந்துசெயல்வகை', 'வகையறச் சூழா தெழுதல் பகைவரைப்
பாத்திப் படுப்பதோ ராறு.', 'Vakaiyarach Choozhaa Thezhudhal Pakaivaraip', 'Who marches without plans and ways  His field is sure to foster foes', 'One way to promote the prosperity of an enemy, is (for a king) to set out (to war) without having thoroughly weighed his ability (to cope with its chances)'),
  (466, 47, 'தெரிந்துசெயல்வகை', 'செய்தக்க அல்ல செயக்கெடும் செய்தக்க
செய்யாமை யானுங் கெடும்.', 'Seydhakka Alla Seyak Ketum', 'Doing unfit action ruins Failing fit-act also ruins', 'He will perish who does not what is not fit to do; and he also will perish who does not do what it is fit to'),
  (467, 47, 'தெரிந்துசெயல்வகை', 'எண்ணித் துணிக கருமம் துணிந்தபின்
எண்ணுவம் என்பது இழுக்கு.', 'Ennith Thunika Karumam Thunindhapin', 'Think and dare a proper deed  Dare and think is bad in need', 'Consider, and then undertake a matter; after having undertaken it, to say "We will consider," is folly'),
  (468, 47, 'தெரிந்துசெயல்வகை', 'ஆற்றின் வருந்தா வருத்தம் பலர்நின்று
போற்றினும் பொத்துப் படும்.', 'Aatrin Varundhaa Varuththam Palarnindru', 'Toil without a plan ahead Is doomed to fall though supported', 'The work, which is not done by suitable methods, will fail though many stand to uphold it'),
  (469, 47, 'தெரிந்துசெயல்வகை', 'நன்றாற்ற லுள்ளுந் தவுறுண்டு அவரவர்
பண்பறிந் தாற்றாக் கடை.', 'Nandraatra Lullun Thavuruntu Avaravar', 'Attune the deeds to habitude Or ev\'n good leads to evil feud', 'There are failures even in acting well, when it is done without knowing the various dispositions of men'),
  (470, 47, 'தெரிந்துசெயல்வகை', 'எள்ளாத எண்ணிச் செயல்வேண்டும் தம்மோடு
கொள்ளாத கொள்ளாது உலகு.', 'Ellaadha Ennich Cheyalventum Thammotu', 'Do deeds above reproachfulness The world refutes uncomely mess', 'Let a man reflect, and do things which bring no reproach; the world will not approve, with him, of things which do not become of his position to adopt'),
  (471, 48, 'வலியறிதல்', 'வினைவலியும் தன்வலியும் மாற்றான் வலியும்
துணைவலியும் தூக்கிச் செயல்.', 'Vinaivaliyum Thanvaliyum Maatraan Valiyum', 'Judge act and might and foeman\'s strength The allies\' strength and go at length', 'Let (one) weigh well the strength of the deed (he purposes to do), his own strength, the strength of his enemy, and the strength of the allies (of both), and then let him act'),
  (472, 48, 'வலியறிதல்', 'ஒல்வ தறிவது அறிந்ததன் கண்தங்கிச்
செல்வார்க்குச் செல்லாதது இல்.', 'Olva Tharivadhu Arindhadhan Kandhangich', 'Nothing hampers the firm who know What they can and how to go', 'There is nothing which may not be accomplished by those who, before they attack (an enemy), make themselves acquainted with their own ability, and with whatever else is (needful) to be known, and'),
  (473, 48, 'வலியறிதல்', 'உடைத்தம் வலியறியார் ஊக்கத்தின் ஊக்கி
இடைக்கண் முரிந்தார் பலர்.', 'Utaiththam Valiyariyaar Ookkaththin Ookki', 'Many know not their meagre might Their pride breaks up in boastful fight', 'There are many who, ignorant of their (want of) power (to meet it), have haughtily set out to war, and broken down in the midst of it'),
  (474, 48, 'வலியறிதல்', 'அமைந்தாங் கொழுகான் அளவறியான் தன்னை
வியந்தான் விரைந்து கெடும்.', 'Amaindhaang Kozhukaan Alavariyaan Thannai', 'Who adapts not, outsteps measure And brags himself-his fall is sure', 'He will quickly perish who, ignorant of his own resources flatters himself of his greatness, and does'),
  (475, 48, 'வலியறிதல்', 'பீலிபெய் சாகாடும் அச்சிறும் அப்பண்டஞ்
சால மிகுத்துப் பெயின்.', 'Peelipey Saakaatum Achchirum Appantanjjch', 'Even the gentle peacock\'s plume Cart\'s axle breaks by gross volume', 'The axle tree of a bandy, loaded only with peacocks\' feathers will break, if it be greatly overloaded'),
  (476, 48, 'வலியறிதல்', 'நுனிக்கொம்பர் ஏறினார் அஃதிறந் தூக்கின்
உயிர்க்கிறுதி ஆகி விடும்.', 'Nunikkompar Erinaar Aqdhiran Thookkin', 'Beyond the branches\' tip who skips Ends the life as his body rips', 'There will be an end to the life of him who, having climbed out to the end of a branch, ventures to go further'),
  (477, 48, 'வலியறிதல்', 'ஆற்றின் அறவறிந்து ஈக அதுபொருள்
போற்றி வழங்கு நெறி.', 'Aatrin Aravarindhu Eeka Adhuporul', 'Know the limit; grant with measure This way give and guard your treasure', 'Let a man know the measure of his ability (to give), and let him give accordingly; such giving is the way to preserve his property'),
  (478, 48, 'வலியறிதல்', 'ஆகாறு அளவிட்டி தாயினுங் கேடில்லை
போகாறு அகலாக் கடை.', 'Aakaaru Alavitti Thaayinung Ketillai', 'The outflow must not be excess No matter how small income is', 'Even though the income (of a king) be small, it will not cause his (ruin), if his outgoings be not larger than his income'),
  (479, 48, 'வலியறிதல்', 'அளவறிந்து வாழாதான் வாழ்க்கை உளபோல
இல்லாகித் தோன்றாக் கெடும்.', 'Alavara�ndhu Vaazhaadhaan Vaazhkkai Ulapola', 'Who does not know to live in bounds His life seems rich but thins and ends', 'The prosperity of him who lives without knowing the measure (of his property), will perish, even while it seems to continue'),
  (480, 48, 'வலியறிதல்', 'உளவரை தூக்காத ஒப்புர வாண்மை
வளவரை வல்லைக் கெடும்.', 'Ulavarai Thookkaadha Oppura Vaanmai', 'Wealth amassed quickly vanishes Sans level if one lavishes', 'The measure of his wealth will quickly perish, whose liberality weighs not the measure of his property'),
  (481, 49, 'காலமறிதல்', 'பகல்வெல்லும் கூகையைக் காக்கை இகல்வெல்லும்
வேந்தர்க்கு வேண்டும் பொழுது.', 'Pakalvellum Kookaiyaik Kaakkai Ikalvellum', 'By day the crow defeats the owl Kings need right time their foes to quell', 'A crow will overcome an owl in the day time; so the king who would conquer his enemy must have (a suitable) time'),
  (482, 49, 'காலமறிதல்', 'பருவத்தோடு ஒட்ட ஒழுகல் திருவினைத்
தீராமை ஆர்க்குங் கயிறு.', 'Paruvaththotu Otta Ozhukal Thiruvinaith', 'Well-ordered seasoned act is cord That fortune binds in bon accord', 'Acting at the right season, is a cord that will immoveably bind success (to a king)'),
  (483, 49, 'காலமறிதல்', 'அருவினை யென்ப உளவோ கருவியான்
காலம் அற஧ந்து செயின்.', 'Aruvinai Yenpa Ulavo Karuviyaan', 'What is hard for him who acts With proper means and time and tacts?', 'Is there anything difficult for him to do, who acts, with (the right) instruments at the right time ?'),
  (484, 49, 'காலமறிதல்', 'ஞாலம் கருதினுங் கைகூடுங் காலம்
கருதி இடத்தாற் செயின்.', 'Gnaalam Karudhinung Kaikootung Kaalam', 'Choose proper time and act and place Even the world you win with ease', 'Though (a man) should meditate (the conquest of) the world, he may accomplish it if he acts in the right time, and at the right place'),
  (485, 49, 'காலமறிதல்', 'காலம் கருதி இருப்பர் கலங்காது
ஞாலம் கருது பவர்.', 'Kaalam Karudhi Iruppar Kalangaadhu', 'Who want to win the world sublime Wait unruffled biding their time', 'They who thoughtfully consider and wait for the (right) time (for action), may successfully meditate (the conquest of) the world'),
  (486, 49, 'காலமறிதல்', 'ஊக்க முடையான் ஒடுக்கம் பொருதகர்
தாக்கற்குப் பேருந் தகைத்து.', 'Ookka Mutaiyaan Otukkam Porudhakar', 'By self-restraint stalwarts keep fit Like rams retreating but to butt', 'The self-restraint of the energetic (while waiting for a suitable opportunity), is like the drawing back of a fighting-ram in order to butt'),
  (487, 49, 'காலமறிதல்', 'பொள்ளென ஆங்கே புறம்வேரார் காலம்பார்த்து
உள்வேர்ப்பர் ஒள்ளி யவர்.', 'Pollena Aange Puramveraar Kaalampaarththu', 'The wise jut not their vital fire They watch their time with hidden ire', 'The wise will not immediately and hastily shew out their anger; they will watch their time, and restrain it within'),
  (488, 49, 'காலமறிதல்', 'செறுநரைக் காணின் சுமக்க இறுவரை
காணின் கிழக்காம் தலை.', 'Serunaraik Kaanin Sumakka Iruvarai', 'Bear with hostiles when you meet them Fell down their head in fateful time', 'If one meets his enemy, let him show him all respect, until the time for his destruction is come; when that is come, his head will be easily brought low'),
  (489, 49, 'காலமறிதல்', 'எய்தற் கரியது இயைந்தக்கால் அந்நிலையே
செய்தற் கரிய செயல்.', 'Eydhar Kariyadhu Iyaindhakkaal Annilaiye', 'When comes the season ripe and rare Dare and do hard things then and there', 'If a rare opportunity occurs, while it lasts, let a man do that which is rarely to be accomplished (but for such an opportunity)'),
  (490, 49, 'காலமறிதல்', 'கொக்கொக்க கூம்பும் பருவத்து மற்றதன்
குத்தொக்க சீர்த்த இடத்து.', 'Kokkokka Koompum Paruvaththu Matradhan', 'In waiting time feign peace like stork In fighting time strike like its peck', 'At the time when one should use self-control, let him restrain himself like a heron; and, let him like it, strike, when there is a favourable opportunity'),
  (491, 50, 'இடனறிதல்', 'தொடங்கற்க எவ்வினையும் எள்ளற்க முற்றும்
இடங்கண்ட பின்அல் லது.', 'Thotangarka Evvinaiyum Ellarka Mutrum', 'No action take, no foe despise Until you have surveyed the place', 'Let not (a king) despise (an enemy), nor undertake any thing (against him), until he has obtained (a suitable) place for besieging him'),
  (492, 50, 'இடனறிதல்', 'முரண்சேர்ந்த மொய்ம்பி னவர்க்கும் அரண்சேர்ந்தாம்
ஆக்கம் பலவுந் தரும்.', 'Muranserndha Moimpi Navarkkum Aranserndhaam', 'Many are gains of fortresses Ev\'n to kings of power and prowess', 'Even to those who are men of power and expedients, an attack in connection with a fortification will yield many advantages'),
  (493, 50, 'இடனறிதல்', 'ஆற்றாரும் ஆற்றி அடுப இடனறிந்து
போற்றார்கண் போற்றிச் செயின்.', 'Aatraarum Aatri Atupa Itanarindhu', 'Weaklings too withstand foe\'s offence In proper fields of strong defence', 'Even the powerless will become powerful and conquer, if they select a proper field (of action), and guard themselves, while they make war on their enemies'),
  (494, 50, 'இடனறிதல்', 'எண்ணியார் எண்ணம் இழப்பர் இடனறிந்து
துன்னியார் துன்னிச் செயின்.', 'Enniyaar Ennam Izhappar Itanarindhu', 'If fighters fight in vantage field The plans of foes shall be baffled', 'If they who draw near (to fight) choose a suitable place to approach (their enemy), the latter, will have to relinquish the thought which they once entertained, of conquering them'),
  (495, 50, 'இடனறிதல்', 'நெடும்புனலுள் வெல்லும் முதலை அடும்புனலின்
நீங்கின் அதனைப் பிற.', 'Netumpunalul Vellum Mudhalai Atumpunalin', 'In water crocodile prevails In land before others it fails', 'In deep water, a crocodile will conquer (all other animals); but if it leave the water, other animals will conquer it'),
  (496, 50, 'இடனறிதல்', 'கடலோடா கால்வல் நெடுந்தேர் கடலோடும்
நாவாயும் ஓடா நிலத்து.', 'Katalotaa Kaalval Netundher Katalotum', 'Sea-going ship goes not on shore Nor on sea the strong-wheeled car', 'Wide chariots, with mighty wheels, will not run on the ocean; neither will ships that the traverse ocean, move on the earth'),
  (497, 50, 'இடனறிதல்', 'அஞ்சாமை அல்லால் துணைவேண்டா எஞ்சாமை
எண்ணி இடத்தால் செயின்.', 'Anjaamai Allaal Thunaiventaa Enjaamai', 'No aid but daring dash they need When field is chosen right for deed', 'You will need no other aid than fearlessness, if you thoroughly reflect (on what you are to do), and select (a suitable) place for your operations'),
  (498, 50, 'இடனறிதல்', 'சிறுபடையான் செல்லிடம் சேரின் உறுபடையான்
ஊக்கம் அழிந்து விடும்.', 'Sirupataiyaan Sellitam Serin Urupataiyaan', 'Though force is small, if place is right One quells a foe of well-armed might', 'The power of one who has a large army will perish, if he goes into ground where only a small army can act'),
  (499, 50, 'இடனறிதல்', 'சிறைநலனும் சீரும் இலரெனினும் மாந்தர்
உறைநிலத்தோடு ஒட்டல் அரிது.', 'Sirainalanum Seerum Ilareninum Maandhar', 'To face a foe at home is vain Though fort and status are not fine', 'It is a hazardous thing to attack men in their own country, although they may neither have power nor a good fortress'),
  (500, 50, 'இடனறிதல்', 'காலாழ் களரில் நரியடும் கண்ணஞ்சா
வேலாள் முகத்த களிறு.', 'Kaalaazh Kalaril Nariyatum Kannanjaa', 'A fox can kill a war tusker Fearless with feet in deep quagmire', 'A fox can kill a fearless, warrior-faced elephant, if it go into mud in which its legs sink down'),
  (501, 51, 'தெரிந்துதெளிதல்', 'அறம்பொருள் இன்பம் உயிரச்சம் நான்கின்
திறந்தெரிந்து தேறப் படும்.', 'Aramporul Inpam Uyirachcham Naankin', 'Pleasure, gold, fear of life Virtue- Test by these four and trust the true', 'Let (a minister) be chosen, after he has been tried by means of these four things, viz,-his virtue, (love of) money, (love of) sexual pleasure, and tear of (losing) life'),
  (502, 51, 'தெரிந்துதெளிதல்', 'குடிப்பிறந்து குற்றத்தின் நீங்கி வடுப்பரியும்
நாணுடையான் சுட்டே தெளிவு.', 'Kutippirandhu Kutraththin Neengi Vatuppariyum', 'Spotless name of noble birth Shamed of stain-that choice is worth', '(The king\'s) choice should (fall) on him, who is of good family, who is free from faults, and who has the modesty which fears the wounds (of sin)'),
  (503, 51, 'தெரிந்துதெளிதல்', 'அரியகற்று ஆசற்றார் கண்ணும் தெரியுங்கால்
இன்மை அரிதே வெளிறு.', 'Ariyakatru Aasatraar Kannum Theriyungaal', 'Though deep scholars of stainless sense Rare is freedom from ignorance', 'When even men, who have studied the most difficult works, and who are free from faults, are (carefully) examined, it is a rare thing to find them without ignorance'),
  (504, 51, 'தெரிந்துதெளிதல்', 'குணம்நாடிக் குற்றமும் நாடி அவற்றுள்
மிகைநாடி மிக்க கொளல்.', 'Kunamnaatik Kutramum Naati Avatrul', 'Good and evil in man weigh well Judge him by virtues which prevail', 'Let (a king) consider (a man\'s) good qualities, as well as his faults, and then judge (of his character) by that which prevails'),
  (505, 51, 'தெரிந்துதெளிதல்', 'பெருமைக்கும் ஏனைச் சிறுமைக்கும் தத்தம்
கருமமே கட்டளைக் கல்.', 'Perumaikkum Enaich Chirumaikkum Thaththam', 'By the touchstone of deeds is seen If any one is great or mean', 'A man\'s deeds are the touchstone of his greatness and littleness'),
  (506, 51, 'தெரிந்துதெளிதல்', 'அற்றாரைத் தேறுதல் ஓம்புக மற்றவர்
பற்றிலர் நாணார் பழி.', 'Atraaraith Therudhal Ompuka Matravar', 'Choose not those men without kinsmen Without affine or shame of sin', 'Let (a king) avoid choosing men who have no relations; such men have no attachment, and thereforehave no fear of crime'),
  (507, 51, 'தெரிந்துதெளிதல்', 'காதன்மை கந்தா அறிவறியார்த் தேறுதல்
பேதைமை எல்லாந் தரும்.', 'Kaadhanmai Kandhaa Arivariyaarth Therudhal', 'On favour leaning fools you choose; Folly in all its forms ensues', 'Yields all his being up to folly\'s blind control'),
  (508, 51, 'தெரிந்துதெளிதல்', 'தேரான் பிறனைத் தெளிந்தான் வழிமுறை
தீரா இடும்பை தரும்.', 'Theraan Piranaith Thelindhaan Vazhimurai', 'To trust an untried stranger brings Endless troubles on all our kins', 'Sorrow that will not leave even his posterity will come upon him chooses a stranger whose character he has not known'),
  (509, 51, 'தெரிந்துதெளிதல்', 'தேறற்க யாரையும் தேராது தேர்ந்தபின்
தேறுக தேறும் பொருள்.', 'Therarka Yaaraiyum Theraadhu Therndhapin', 'Trust not without testing and then Find proper work for trusted men', 'Let (a king) choose no one without previous consideration; after he has made his choice, let him unhesitatingly select for each such duties as are appropriate'),
  (510, 51, 'தெரிந்துதெளிதல்', 'தேரான் தெளிவும் தெளிந்தான்கண் ஐயுறவும்
தீரா இடும்பை தரும்.', 'Theraan Thelivum Thelindhaankan Aiyuravum', 'Trust without test; The trusted doubt; Both entail troubles in and out', 'To make choice of one who has not been examined, and to entertain doubts respecting one who has been chosen, will produce irremediable sorrow'),
  (511, 52, 'தெரிந்துவினையாடல்', 'நன்மையும் தீமையும் நாடி நலம்புரிந்த
தன்மையான் ஆளப் படும்.', 'Nanmaiyum Theemaiyum Naati Nalampurindha', 'Employ the wise who will discern The good and bad and do good turn', 'He should be employed (by a king), whose nature leads him to choose the good, after having weighed both the evil and the good in any undertaking'),
  (512, 52, 'தெரிந்துவினையாடல்', 'வாரி பெருக்கி வளம்படுத்து உற்றவை
ஆராய்வான் செய்க வினை.', 'Vaari Perukki Valampatuththu Utravai', 'Let him act who resource swells; Fosters wealth and prevents ills', 'Let him do (the king\'s) work who can enlarge the sources (of revenue), increase wealth and considerately prevent the accidents (which would destroy it)'),
  (513, 52, 'தெரிந்துவினையாடல்', 'அன்பறிவு தேற்றம் அவாவின்மை இந்நான்கும்
நன்குடையான் கட்டே தெளிவு.', 'Anparivu Thetram Avaavinmai Innaankum', 'Trust him in whom these four you see: Love, wit, non-craving, clarity', 'Let the choice (of a king) fall upon him who largely possesses these four things, love, knowledge, a clear mind and freedom from covetousness'),
  (514, 52, 'தெரிந்துவினையாடல்', 'எனைவகையான் தேறியக் கண்ணும் வினைவகையான்
வேறாகும் மாந்தர் பலர்.', 'Enaivakaiyaan Theriyak Kannum Vinaivakaiyaan', 'Though tried and found fit, yet we see Many differ before duty', 'Even when (a king) has tried them in every possible way, there are many men who change, from the nature of the works (in which they may be employed)'),
  (515, 52, 'தெரிந்துவினையாடல்', 'அறிந்தாற்றிச் செய்கிற்பாற்கு அல்லால் வினைதான்
சிறந்தானென்று ஏவற்பாற் றன்று.', 'Arindhaatrich Cheykirpaarku Allaal Vinaidhaan', 'Wise able men with power invest Not by fondness but by hard test', '(A king\'s) work can only be accomplished by a man of wisdom and patient endurance; it is not of a nature to be given to one from mere personal attachment'),
  (516, 52, 'தெரிந்துவினையாடல்', 'செய்வானை நாடி வினைநாடிக் காலத்தோடு
எய்த உணர்ந்து செயல்.', 'Seyvaanai Naati Vinainaatik Kaalaththotu', 'Discern the agent and the deed And just in proper time proceed', 'Let (a king) act, after having considered the agent (whom he is to employ), the deed (he desires to do), and the time which is suitable to it'),
  (517, 52, 'தெரிந்துவினையாடல்', 'இதனை இதனால் இவன்முடிக்கும் என்றாய்ந்து
அதனை அவன்கண் விடல்.', 'Ithanai Ithanaal Ivanmutikkum Endraaindhu', 'This work, by this, this man can do Like this entrust the duty due', 'After having considered, "this man can accomplish this, by these means", let (the king) leave with him the discharge of that duty'),
  (518, 52, 'தெரிந்துவினையாடல்', 'வினைக்குரிமை நாடிய பின்றை அவனை
அதற்குரிய னாகச் செயல்.', 'Vinaik Kurimai Naatiya Pindrai', 'His fitness for the duty scan Leave him to do the best he can', 'Having considered what work a man is fit for, let (the king) employ him in that work'),
  (519, 52, 'தெரிந்துவினையாடல்', 'வினைக்கண் வினையுடையான் கேண்மைவே றாக
நினைப்பானை நீங்கும் திரு.', 'Vinaikkan Vinaiyutaiyaan Kenmaive Raaka', 'Who do duty for duty\'s sake Doubt them; and fortune departs quick', 'Prosperity will leave (the king) who doubts the friendship of the man who steadily labours in the discharge of his duties'),
  (520, 52, 'தெரிந்துவினையாடல்', 'நாடோறும் நாடுக மன்னன் வினைசெய்வான்
கோடாமை கோடா துலகு.', 'Naatorum Naatuka Mannan Vinaiseyvaan', 'Worker straight the world is straight The king must look to this aright', 'Let a king daily examine the conduct of his servants; if they do not act crookedly, the world will not act crookedly'),
  (521, 53, 'சுற்றந்தழால்', 'பற்றற்ற கண்ணும் பழைமைபா ராட்டுதல்
சுற்றத்தார் கண்ணே உள.', 'Patratra Kannum Pazhaimaipaa Raattudhal', 'Let fortunes go; yet kinsmen know The old accustomed love to show', 'Even when (a man\'s) property is all gone, relatives will act towards him with their accustomed (kindness)'),
  (522, 53, 'சுற்றந்தழால்', 'விருப்பறாச் சுற்றம் இயையின் அருப்பறா
ஆக்கம் பலவும் தரும்.', 'Virupparaach Chutram Iyaiyin Arupparaa', 'The gift of loving Kins bestows  Fadeless fortune\'s fresh flowers', 'If (a man\'s) relatives remain attached to him with unchanging love, it will be a source of everincreasing wealth'),
  (523, 53, 'சுற்றந்தழால்', 'அளவளா வில்லாதான் வாழ்க்கை குளவளாக்
கோடின்றி நீர்நிறைந் தற்று.', 'Alavalaa Villaadhaan Vaazhkkai Kulavalaak', 'A kinless wealth is like a tank Which overflows without a bank', 'The wealth of one who does not mingle freely with his relatives, will be like the filling of water in a'),
  (524, 53, 'சுற்றந்தழால்', 'சுற்றத்தால் சுற்றப் படஒழுகல் செல்வந்தான்
பெற்றத்தால் பெற்ற பயன்.', 'Sutraththaal Sutrap Pataozhukal Selvandhaan', 'The fruit of growing wealth is gained When kith and kin are happy found', 'To live surrounded by relatives, is the advantage to be derived from the acquisition of wealth'),
  (525, 53, 'சுற்றந்தழால்', 'கொடுத்தலும் இன்சொலும் ஆற்றின் அடுக்கிய
சுற்றத்தால் சுற்றப் படும்.', 'Kotuththalum Insolum Aatrin Atukkiya', 'Loving words and liberal hand Encircle kith and kin around', 'He will be surrounded by numerous relatives who manifests generosity and affability'),
  (526, 53, 'சுற்றந்தழால்', 'பெருங்கொடையான் பேணான் வெகுளி அவனின்
மருங்குடையார் மாநிலத்து இல்.', 'Perungotaiyaan Penaan Vekuli Avanin', 'Large giver and wrathless man Commands on earth countless kinsmen', 'No one, in all the world, will have so many relatives (about him), as he who makes large gift, and does not give way to anger'),
  (527, 53, 'சுற்றந்தழால்', 'காக்கை கரவா கரைந்துண்ணும் ஆக்கமும்
அன்னநீ ரார்க்கே உள.', 'Kaakkai Karavaa Karaindhunnum Aakkamum', 'The crows hide not; thy call and eat Welfare abides a man of heart', 'The crows do not conceal (their prey), but will call out for others (to share with them) while they eat it; wealth will be with those who show a similar disposition (towards their relatives)'),
  (528, 53, 'சுற்றந்தழால்', 'பொதுநோக்கான் வேந்தன் வரிசையா நோக்கின்
அதுநோக்கி வாழ்வார் பலர்.', 'Podhunokkaan Vendhan Varisaiyaa Nokkin', 'From public gaze when kings perceive Each one\'s merits so many thrive', 'Many relatives will live near a king, when they observe that he does not look on all alike, but that he looks on each man according to his merit'),
  (529, 53, 'சுற்றந்தழால்', 'தமராகிக் தற்றுறந்தார் சுற்றம் அமராமைக்
காரணம் இன்றி வரும்.', 'Thamaraakik Thatrurandhaar Sutram Amaraamaik', 'Forsaken friends will come and stay When cause for discord goes away', 'Those who have been friends and have afterwards forsaken him, will return and join themselves (to him), when the cause of disagreement is not to be found in him'),
  (530, 53, 'சுற்றந்தழால்', 'உழைப்பிரிந்து காரணத்தின் வந்தானை வேந்தன்
இழைத் திருந்து எண்ணிக் கொளல்.', 'Uzhaippirindhu Kaaranaththin Vandhaanai Vendhan', 'Who leaves and returns with motive The king should test him and receive', 'When one may have left him, and for some cause has returned to him, let the king fulfil the object (for which he has come back) and thoughtfully receive him again'),
  (531, 54, 'பொச்சாவாமை', 'இறந்த வெகுளியின் தீதே சிறந்த
உவகை மகிழ்ச்சியிற் சோர்வு.', 'Irandha Vekuliyin Theedhe Sirandha', 'Worse than wrath in excess is Forgetfulness in joy-excess', 'More evil than excessive anger, is forgetfulness which springs from the intoxication of great joy'),
  (532, 54, 'பொச்சாவாமை', 'பொச்சாப்புக் கொல்லும் புகழை அறிவினை
நிச்ச நிரப்புக் கொன் றாங்கு.', 'Pochchaappuk Kollum Pukazhai Arivinai', 'Negligence kills renown just as Ceaseless want wisdom destroys', 'Forgetfulness will destroy fame, even as constant poverty destroys knowledge'),
  (533, 54, 'பொச்சாவாமை', 'பொச்சாப்பார்க் கில்லை புகழ்மை அதுஉலகத்து
எப்பால்நூ லோர்க்கும் துணிவு.', 'Pochchaappaark Killai Pukazhmai Adhuulakaththu', 'Forgetful nature fails of fame All schools of thinkers say the same', 'Thoughtlessness will never acquire fame; and this tenet is upheld by all treatises in the world'),
  (534, 54, 'பொச்சாவாமை', 'அச்ச முடையார்க்கு அரணில்லை ஆங்கில்லை
பொச்சாப் புடையார்க்கு நன்கு.', 'Achcha Mutaiyaarkku Aranillai Aangillai', 'The fearful find no fortress here The forgetful find good never', 'Just as the coward has no defence (by whatever fortifications ha may be surrounded), so the thoughtless has no good (whatever advantages he may possess)'),
  (535, 54, 'பொச்சாவாமை', 'முன்னுறக் காவாது இழுக்கியான் தன்பிழை
பின்னூறு இரங்கி விடும்.', 'Munnurak Kaavaadhu Izhukkiyaan Thanpizhai', 'Failing foresight the guardless man Shall rue his folly later on', 'The thoughtless man, who provides not against the calamities that may happen, will afterwards repent for his fault'),
  (536, 54, 'பொச்சாவாமை', 'இழுக்காமை யார்மாட்டும் என்றும் வழுக்காமை
வாயின் அதுவொப்பது இல்.', 'Izhukkaamai Yaarmaattum Endrum Vazhukkaamai', 'Forget none; watch with wakeful care Miss none; the gain is sans compare', 'There is nothing comparable with the possession of unfailing thoughtfulness at all times; and towards all persons'),
  (537, 54, 'பொச்சாவாமை', 'அரியஎன்று ஆகாத இல்லைபொச் சாவாக்
கருவியால் போற்றிச் செயின்.', 'Ariyaendru Aakaadha Illaipoch Chaavaak', 'With cautious care pursue a thing Impossible there is nothing', 'There is nothing too difficult to be accomplished, if a man set about it carefully, with unflinching endeavour'),
  (538, 54, 'பொச்சாவாமை', 'புகழ்ந்தவை போற்றிச் செயல்வேண்டும் செய்யாது
இகழ்ந்தார்க்கு எழுமையும் இல்.', 'Pukazhndhavai Potrich Cheyalventum Seyyaadhu', 'Do what the wise commend as worth If not, for seven births no mirth', 'Let (a man) observe and do these things which have been praised (by the wise); if he neglects and fails to perform them, for him there will be no (happiness) throughout the seven births'),
  (539, 54, 'பொச்சாவாமை', 'இகழ்ச்சியின் கெட்டாரை உள்ளுக தாந்தம்
மகிழ்ச்சியின் மைந்துறும் போழ்து.', 'Ikazhchchiyin Kettaarai Ulluka Thaandham', 'When joy deludes, their fate recall Whom negligence has made to fall', 'Let (a king) think of those who have been ruined by neglect, when his mind is elated with joy'),
  (540, 54, 'பொச்சாவாமை', 'உள்ளியது எய்தல் எளிதுமன் மற்றுந்தான்
உள்ளியது உள்ளப் பெறின்.', 'Ulliyadhu Eydhal Elidhuman Matrundhaan', 'Easy it is a thing to get When the mind on it is set', 'It is easy for (one) to obtain whatever he may think of, if he can again think of it'),
  (541, 55, 'செங்கோன்மை', 'ஓர்ந்துகண் ணோடாது இறைபுரிந்து யார்மாட்டும்
தேர்ந்துசெய் வஃதே முறை.', 'Orndhukan Notaadhu Iraipurindhu Yaarmaattum', 'Test and attest impartially Consult and act the laws justly', 'To examine into (the crimes which may be committed), to show no favour (to any one), to desire to act with impartiality towards all, and to inflict (such punishments) as may be wisely resolved on,'),
  (542, 55, 'செங்கோன்மை', 'வானோக்கி வாழும் உலகெல்லாம் மன்னவன்
கோல் நோக்கி வாழுங் குடி.', 'Vaanokki Vaazhum Ulakellaam Mannavan', 'The earth looks up to sky and thrives And mankind to king\'s rod of justice', 'When there is rain, the living creation thrives; and so when the king rules justly, his subjects thrive'),
  (543, 55, 'செங்கோன்மை', 'அந்தணர் நூற்கும் அறத்திற்கும் ஆதியாய்
நின்றது மன்னவன் கோல்.', 'Andhanar Noorkum Araththirkum Aadhiyaai', 'The Sage\'s scripture and virtue spring From the sceptre of a stately king', 'The sceptre of the king is the firm support of the Vedas of the Brahmin, and of all virtues therein described'),
  (544, 55, 'செங்கோன்மை', 'குடிதழீஇக் கோலோச்சும் மாநில மன்னன்
அடிதழீஇ நிற்கும் உலகு.', 'Kutidhazheeik Kolochchum Maanila Mannan', 'The world clings to the ruler\'s feet Whose sceptre clasps the people\'s heart', 'The world will constantly embrace the feet of the great king who rules over his subjects with love'),
  (545, 55, 'செங்கோன்மை', 'இயல்புளிக் கோலோச்சும் மன்னவன் நாட்ட
பெயலும் விளையுளும் தொக்கு.', 'Iyalpulik Kolochchum Mannavan Naatta', 'Full rains and yields enrich the land Which is ruled by a righteous hand', 'Rain and plentiful crops will ever dwell together in the country of the king who sways his sceptre with justice'),
  (546, 55, 'செங்கோன்மை', 'வேலன்று வென்றி தருவது மன்னவன்
கோலதூஉங் கோடா தெனின்.', 'Velandru Vendri Tharuvadhu Mannavan', 'Not the spear but the sceptre straight That brings success to monarch\'s might', 'It is not the javelin that gives victory, but the king\'s sceptre, if it do no injustice'),
  (547, 55, 'செங்கோன்மை', 'இறைகாக்கும் வையகம் எல்லாம் அவனை
முறைகாக்கும் முட்டாச் செயின்.', 'Iraikaakkum Vaiyakam Ellaam Avanai', 'The king protects the entire earth And justice protects his royal worth', 'The king defends the whole world; and justice, when administered without defect, defends the king'),
  (548, 55, 'செங்கோன்மை', 'எண்பதத்தான் ஓரா முறைசெய்யா மன்னவன்
தண்பதத்தான் தானே கெடும்.', 'Enpadhaththaan Oraa Muraiseyyaa Mannavan', 'Hard of access, the unjust king He shall himself his ruin bring', 'The king who gives not facile audience (to those who approach him), and who does not examine and pass judgment (on their complaints), will perish in disgrace'),
  (549, 55, 'செங்கோன்மை', 'குடிபுறங் காத்தோம்பிக் குற்றம் கடிதல்
வடுவன்று வேந்தன் தொழில்.', 'Kutipurang Kaaththompik Kutram Katidhal', 'Save his subjects and chide the wrong Is flawless duty of a king', 'In guarding his subjects (against injury from others), and in preserving them himself; to punish crime'),
  (550, 55, 'செங்கோன்மை', 'கொலையிற் கொடியாரை வேந்தொறுத்தல் பைங்கூழ்
களைகட் டதனொடு நேர்.', 'Kolaiyir Kotiyaarai Vendhoruththal Paingoozh', 'Killing killers, the king, behold Weeds removes from cropful field', 'For a king to punish criminals with death, is like pulling up the weeds in the green corn'),
  (551, 56, 'கொடுங்கோன்மை', 'கொலைமேற்கொண் டாரிற் கொடிதே அலைமேற்கொண்டு
அல்லவை செய்தொழுகும் வேந்து.', 'Kolaimerkon Taarir Kotidhe Alaimerkontu', 'The unjust tyrant oppressor  Is worse than cruel murderer', 'The king who gives himself up to oppression and acts unjustly (towards his subjects) is more cruel than the man who leads the life of a murderer'),
  (552, 56, 'கொடுங்கோன்மை', 'வேலொடு நின்றான் இடுவென் றதுபோலும்
கோலொடு நின்றான் இரவு.', 'Velotu Nindraan Ituven Radhupolum', 'Sceptered tyrant exacting gold Is \\"give\\" of lanced robber bold', 'The request (for money) of him who holds the sceptre is like the word of a highway robber who stands with a weapon in hand and says "give up your wealth"'),
  (553, 56, 'கொடுங்கோன்மை', 'நாடொறும் நாடி முறைசெய்யா மன்னவன்
நாடொறும் நாடு கெடும்.', 'Naatorum Naati Muraiseyyaa Mannavan', 'Spy wrongs daily and do justice Or day by day the realm decays', 'The country of the king who does not daily examine into the wrongs done and distribute justice, will daily fall to ruin'),
  (554, 56, 'கொடுங்கோன்மை', 'கூழுங் குடியும் ஒருங்கிழக்கும் கோல்கோடிச்
சூழாது செய்யும் அரசு.', 'Koozhung Kutiyum Orungizhakkum Kolkotich', 'The king shall wealth and subjects lose If his sceptre he dares abuse', 'The king, who, without reflecting (on its evil consequences), perverts justice, will lose at once both his wealth and his subjects'),
  (555, 56, 'கொடுங்கோன்மை', 'அல்லற்பட்டு ஆற்றாது அழுதகண் ணீரன்றே
செல்வத்தைத் தேய்க்கும் படை', 'Allarpattu Aatraadhu Azhudhakan Neerandre', 'Groaning tears caused by tyrant\'s sway  File the royal wealth away', 'Will not the tears, shed by a people who cannot endure the oppression which they suffer (from their king), become a saw to waste away his wealth ?'),
  (556, 56, 'கொடுங்கோன்மை', 'மன்னர்க்கு மன்னுதல் செங்கோன்மை அஃதின்றேல்
மன்னாவாம் மன்னர்க் கொளி.', 'Mannarkku Mannudhal Sengonmai Aqdhindrel', 'Glory endures by sceptre right Without it wanes the royal light', 'Righteous government gives permanence to (the fame of) kings; without that their fame will have no endurance'),
  (557, 56, 'கொடுங்கோன்மை', 'துளியின்மை ஞாலத்திற்கு எற்றற்றே வேந்தன்
அளியின்மை வாழும் உயிர்க்கு.', 'Thuliyinmai Gnaalaththirku Etratre Vendhan', 'Dry like the earth without rainfall Is graceless king to creatures all', 'As is the world without rain, so live a people whose king is without kindness'),
  (558, 56, 'கொடுங்கோன்மை', 'இன்மையின் இன்னாது உடைமை முறைசெய்யா
மன்னவன் கோற்கீழ்ப் படின்.', 'Inmaiyin Innaadhu Utaimai Muraiseyyaa', 'To have is worse than having not If ruler is unjust despot', 'Property gives more sorrow than poverty, to those who live under the sceptre of a king without justice'),
  (559, 56, 'கொடுங்கோன்மை', 'முறைகோடி மன்னவன் செய்யின் உறைகோடி
ஒல்லாது வானம் பெயல்.', 'Muraikoti Mannavan Seyyin Uraikoti', 'The sky withdraws season\'s shower If the king misuses his power', 'If the king acts contrary to justice, rain will become unseasonable, and the heavens will withhold their showers'),
  (560, 56, 'கொடுங்கோன்மை', 'ஆபயன் குன்றும் அறுதொழிலோர் நூல்மறப்பர்
காவலன் காவான் எனின்.', 'Aapayan Kundrum Arudhozhilor Noolmarappar', 'The *six-functioned forget their lore Cows give less if kings guard no more * the six functions are: learning, teaching,  giving,  getting, sacrificing, kindling sacrifice These are duties of Vedic savants', 'If the guardian (of the country) neglects to guard it, the produce of the cows will fail, and the men of six duties viz, the Brahmins will forget the vedas'),
  (561, 57, 'வெருவந்தசெய்யாமை', 'தக்காங்கு நாடித் தலைச்செல்லா வண்ணத்தால்
ஒத்தாங்கு ஒறுப்பது வேந்து.', 'Thakkaangu Naatith Thalaichchellaa Vannaththaal', 'A king enquires and gives sentence  Just to prevent future offence', 'He is a king who having equitably examined (any injustice which has been brought to his notice), suitably punishes it, so that it may not be again committed'),
  (562, 57, 'வெருவந்தசெய்யாமை', 'கடிதோச்சி மெல்ல எறிக நெடிதாக்கம்
நீங்காமை வேண்டு பவர்.', 'Katidhochchi Mella Erika Netidhaakkam', 'Wield fast the rod but gently lay This strict mildness prolongs the sway', 'Let the king, who desires that his prosperity may long remain, commence his preliminary enquires with strictness, and then punish with mildness'),
  (563, 57, 'வெருவந்தசெய்யாமை', 'வெருவந்த செய்தொழுகும் வெங்கோல னாயின்
ஒருவந்தம் ஒல்லைக் கெடும்.', 'Veruvandha Seydhozhukum Vengola Naayin', 'His cruel rod of dreadful deed Brings king\'s ruin quick indeed', 'The cruel-sceptred king, who acts so as to put his subjects in fear, will certainly and quickly come to ruin'),
  (564, 57, 'வெருவந்தசெய்யாமை', 'இறைகடியன் என்றுரைக்கும் இன்னாச்சொல் வேந்தன்
உறைகடுகி ஒல்லைக் கெடும்.', 'Iraikatiyan Endruraikkum Innaachchol Vendhan', 'As men the king a tyrant call  His days dwindled, hasten his fall', 'The king who is spoken of as cruel will quickly perish; his life becoming shortened'),
  (565, 57, 'வெருவந்தசெய்யாமை', 'அருஞ்செவ்வி இன்னா முகத்தான் பெருஞ்செல்வம்
பேஎய்கண் டன்னது உடைத்து.', 'Arunjevvi Innaa Mukaththaan Perunjelvam', 'Whose sight is scarce, whose face is foul His wealth seems watched by a ghoul', 'The great wealth of him who is difficult of access and possesses a sternness of countenance, is like that which has been obtained by a devil'),
  (566, 57, 'வெருவந்தசெய்யாமை', 'கடுஞ்சொல்லன் கண்ணிலன் ஆயின் நெடுஞ்செல்வம்
நீடின்றி ஆங்கே கெடும்.', 'Katunjollan Kannilan Aayin Netunjelvam', 'Whose word is harsh, whose sight is rude His wealth and power quickly fade', 'The abundant wealth of the king whose words are harsh and whose looks are void of kindness, will instantly perish instead of abiding long, with him'),
  (567, 57, 'வெருவந்தசெய்யாமை', 'கடுமொழியும் கையிகந்த தண்டமும் வேந்தன்
அடுமுரண் தேய்க்கும் அரம்.', 'Katumozhiyum Kaiyikandha Thantamum Vendhan', 'Reproofs rough and punishments rude Like files conquering power corrode', 'Severe words and excessive punishments will be a file to waste away a king\'s power for destroying (his enemies)'),
  (568, 57, 'வெருவந்தசெய்யாமை', 'இனத்தாற்றி எண்ணாத வேந்தன் சினத்தாற்றிச்
சீறிற் சிறுகும் திரு.', 'Inaththaatri Ennaadha Vendhan Sinaththaatrich', 'The king who would not take counsels Rages with wrath-his fortune fails', 'The prosperity of that king will waste away, who without reflecting (on his affairs himself), commits them to his ministers, and (when a failure occurs) gives way to anger, and rages against them'),
  (569, 57, 'வெருவந்தசெய்யாமை', 'செருவந்த போழ்திற் சிறைசெய்யா வேந்தன்
வெருவந்து வெய்து கெடும்.', 'Seruvandha Pozhdhir Siraiseyyaa Vendhan', 'The king who builds not fort betimes Fears his foes in wars and dies', 'The king who has not provided himself with a place of defence, will in times of war be seized with fear and quickly perish'),
  (570, 57, 'வெருவந்தசெய்யாமை', 'கல்லார்ப் பிணிக்கும் கடுங்கோல் அதுவல்லது
இல்லை நிலக்குப் பொறை.', 'Kallaarp Pinikkum Katungol Adhuvalladhu', 'The crushing burden borne by earth Is tyrants bound to fools uncouth', 'The earth bears up no greater burden than ignorant men whom a cruel sceptre attaches to itself (as the ministers of its evil deeds)'),
  (571, 58, 'கண்ணோட்டம்', 'கண்ணோட்டம் என்னும் கழிபெருங் காரிகை
உண்மையான் உண்டிவ் வுலகு.', 'Kannottam Ennum Kazhiperung Kaarikai', 'Living in the world implies The bounteous dame of benign eyes', 'The world exists through that greatest ornament (of princes), a gracious demeanour'),
  (572, 58, 'கண்ணோட்டம்', 'கண்ணோட்டத் துள்ளது உலகியல் அஃதிலார்
உண்மை நிலக்குப் பொறை.', 'Kannottath Thulladhu Ulakiyal Aqdhilaar', 'World lives by looks of lovely worth Who lack them are burdens of earth', 'The prosperity of the world springs from the kindliness, the existence of those who have no (kindliness) is a burden to the earth'),
  (573, 58, 'கண்ணோட்டம்', 'பண்என்னாம் பாடற்கு இயைபின்றேல் கண்என்னாம்
கண்ணோட்டம் இல்லாத கண்.', 'Panennaam Paatarku Iyaipindrel Kanennaam', 'Of tuneless song what is the use? Without gracious looks what are eyes?', 'Of what avail is a song if it be inconsistent with harmony ? what is the use of eyes which possess no kindliness'),
  (574, 58, 'கண்ணோட்டம்', 'உளபோல் முகத்தெவன் செய்யும் அளவினால்
கண்ணோட்டம் இல்லாத கண்.', 'Ulapol Mukaththevan Seyyum Alavinaal', 'Except that they are on the face  What for are eyes sans measured grace', 'Beyond appearing to be in the face, what good do they do, those eyes in which is no well-regulated kindness ?'),
  (575, 58, 'கண்ணோட்டம்', 'கண்ணிற்கு அணிகலம் கண்ணோட்டம் அஃதின்றேல்
புண்ணென்று உணரப் படும்', 'Kannirku Anikalam Kannottam Aqdhindrel', 'Kind looks are jewels for eyes to wear Without them they are felt as sore', 'Kind looks are the ornaments of the eyes; without these they will be considered (by the wise) to be merely two sores'),
  (576, 58, 'கண்ணோட்டம்', 'மண்ணோ டியைந்த மரத்தனையர் கண்ணோ
டியைந்துகண் ணோடா தவர்.', 'Manno Tiyaindha Maraththanaiyar Kanno', 'Like trees on inert earth they grow Who don\'t eye to eye kindness show', 'They resemble the trees of the earth, who although they have eyes, never look kindly (on others)'),
  (577, 58, 'கண்ணோட்டம்', 'கண்ணோட்டம் இல்லவர் கண்ணிலர் கண்ணுடையார்
கண்ணோட்டம் இன்மையும் இல்.', 'Kannottam Illavar Kannilar Kannutaiyaar', 'Ungracious men lack real eyes Men of real eyes show benign grace', 'Men without kind looks are men without eyes; those who (really) have eyes are also not devoid of kind looks'),
  (578, 58, 'கண்ணோட்டம்', 'கருமம் சிதையாமல் கண்ணோட வல்லார்க்கு
உரிமை உடைத்திவ் வுலகு.', 'Karumam Sidhaiyaamal Kannota Vallaarkku', 'Who gracious are but dutiful Have right for this earth beautiful', 'The world is theirs (kings) who are able to show kindness, without injury to their affairs, (administration of justice)'),
  (579, 58, 'கண்ணோட்டம்', 'ஒறுத்தாற்றும் பண்பினார் கண்ணும்கண் ணோடிப்
பொறுத்தாற்றும் பண்பே தலை.', 'Oruththaatrum Panpinaar Kannumkan Notip', 'To be benign and bear with foes Who vex us is true virtue\'s phase', 'Patiently to bear with, and show kindness to those who grieve us, is the most excellent of all dispositions'),
  (580, 58, 'கண்ணோட்டம்', 'பெயக்கண்டும் நஞ்சுண் டமைவர் நயத்தக்க
நாகரிகம் வேண்டு பவர்.', 'Peyakkantum Nanjun Tamaivar Nayaththakka', 'Men of graceful courtesy Take hemlock and look cheerfully', 'Those who desire (to cultivate that degree of) urbanity which all shall love, even after swallowing the poison served to them by their friends, will be friendly with them'),
  (581, 59, 'ஒற்றாடல்', 'ஒற்றும் உரைசான்ற நூலும் இவையிரண்டும்
தெற்றென்க மன்னவன் கண்.', 'Otrum Uraisaandra Noolum Ivaiyirantum', 'A king should treat these two as eyes  The code of laws and careful spies', 'Let a king consider as his eyes these two things, a spy and a book (of laws) universally esteemed'),
  (582, 59, 'ஒற்றாடல்', 'எல்லார்க்கும் எல்லாம் நிகழ்பவை எஞ்ஞான்றும்
வல்லறிதல் வேந்தன் தொழில்.', 'Ellaarkkum Ellaam Nikazhpavai Egngnaandrum', 'All that happens, always, to all  The king should know in full detail', '\'Tis duty of the king to learn with speed'),
  (583, 59, 'ஒற்றாடல்', 'ஒற்றினான் ஒற்றிப் பொருள்தெரியா மன்னவன்
கொற்றங் கொளக்கிடந்தது இல்.', 'Otrinaan Otrip Poruldheriyaa Mannavan', 'Conquests are not for the monarch Who cares not for the Spy\'s remark', 'There is no way for a king to obtain conquests, who knows not the advantage of discoveries made by a spy'),
  (584, 59, 'ஒற்றாடல்', 'வினைசெய்வார் தம்சுற்றம் வேண்டாதார் என்றாங்கு
அனைவரையும் ஆராய்வது ஒற்று.', 'Vinaiseyvaar Thamsutram Ventaadhaar Endraangu', 'His officers, kinsmen and foes  Who watch keenly are worthy spies', 'He is a spy who watches all men, to wit, those who are in the king\'s employment, his relatives, and his enemies'),
  (585, 59, 'ஒற்றாடல்', 'கடாஅ உருவொடு கண்ணஞ்சாது யாண்டும்
உகாஅமை வல்லதே ஒற்று.', 'Kataaa Uruvotu Kannanjaadhu Yaantum', 'Fearless gaze, suspectless guise  Guarding secrets mark the spies', 'A spy is one who is able to assume an appearance which may create no suspicion (in the minds of others), who fears no man\'s face, and who never reveals (his purpose)'),
  (586, 59, 'ஒற்றாடல்', 'துறந்தார் படிவத்த ராகி இறந்தாராய்ந்து
என்செயினும் சோர்விலது ஒற்று.', 'Thurandhaar Pativaththa Raaki Irandhaaraaindhu', 'Guised as monks they gather secrets They betray them not under threats', 'He is a spy who, assuming the appearance of an ascetic, goes into (whatever place he wishes), examines into (all, that is needful), and never discovers himself, whatever may be done to him'),
  (587, 59, 'ஒற்றாடல்', 'மறைந்தவை கேட்கவற் றாகி அறிந்தவை
ஐயப்பாடு இல்லதே ஒற்று.', 'Maraindhavai Ketkavar Raaki Arindhavai', 'A spy draws out other\'s secrets Beyond a doubt he clears his facts', 'A spy is one who is able to discover what is hidden and who retains no doubt concerning what he has known'),
  (588, 59, 'ஒற்றாடல்', 'ஒற்றொற்றித் தந்த பொருளையும் மற்றுமோர்
ஒற்றினால் ஒற்றிக் கொளல்.', 'Otrotrith Thandha Porulaiyum Matrumor', 'The reports given by one spy By another spy verify', 'Let not a king receive the information which a spy has discovered and made known to him, until he has examined it by another spy'),
  (589, 59, 'ஒற்றாடல்', 'ஒற்றெற் றுணராமை ஆள்க உடன்மூவர்
சொற்றொக்க தேறப் படும்.', 'Otrer Runaraamai Aalka Utanmoovar', 'Engage the spies alone, apart When three agree confirm report', 'Let a king employ spies so that one may have no knowledge of the other; and when the information of three agrees together, let him receive it'),
  (590, 59, 'ஒற்றாடல்', 'சிறப்பறிய ஒற்றின்கண் செய்யற்க செய்யின்
புறப்படுத்தான் ஆகும் மறை.', 'Sirappariya Otrinkan Seyyarka Seyyin', 'Give not the spy open reward It would divulge the secret heard!', 'Let not a king publicly confer on a spy any marks of his favour; if he does, he will divulge his own secret'),
  (591, 60, 'ஊக்கமுடைமை', 'உடையர் எனப்படுவது ஊக்கம் அஃதில்லார்
உடையது உடையரோ மற்று.', 'Utaiyar Enappatuvadhu Ookkam Aqdhillaar', 'To own is to own energy All others own but lethargy', 'Energy makes out the man of property; as for those who are destitute of it, do they (really) possess what they possess ?'),
  (592, 60, 'ஊக்கமுடைமை', 'உள்ளம் உடைமை உடைமை பொருளுடைமை
நில்லாது நீங்கி விடும்.', 'Ullam Utaimai Utaimai Porulutaimai', 'Psychic heart is wealth indeed Worldly wealth departs in speed', 'The possession of (energy of) mind is true property; the possession of wealth passes away and abides not'),
  (593, 60, 'ஊக்கமுடைமை', 'ஆக்கம் இழந்தேமென்று அல்லாவார் ஊக்கம்
ஒருவந்தம் கைத்துடை யார்.', 'Aakkam Izhandhemendru Allaavaar Ookkam', 'The strong in will do not complain  The loss of worldly wealth and gain', 'They who are possessed of enduring energy will not trouble themselves, saying, "we have lost our property."'),
  (594, 60, 'ஊக்கமுடைமை', 'ஆக்கம் அதர்வினாய்ச் செல்லும் அசைவிலா
ஊக்க முடையா னுழை.', 'Aakkam Adharvinaaich Chellum Asaivilaa', 'Fortune enquires, enters with boom Where tireless strivers have their home', 'Wealth will find its own way to the man of unfailing energy'),
  (595, 60, 'ஊக்கமுடைமை', 'வெள்ளத் தனைய மலர்நீட்டம் மாந்தர்தம்
உள்ளத் தனையது உயர்வு.', 'Vellath Thanaiya Malarneettam Maandhardham', 'Water depth is lotus height  Mental strength is men\'s merit', 'The stalks of water-flowers are proportionate to the depth of water; so is men\'s greatness proportionate to their minds'),
  (596, 60, 'ஊக்கமுடைமை', 'உள்ளுவ தெல்லாம் உயர்வுள்ளல் மற்றது
தள்ளினுந் தள்ளாமை நீர்த்து.', 'Ulluva Thellaam Uyarvullal Matradhu', 'Let thoughts be always great and grand  Though they fail their virtues stand', 'In all that a king thinks of, let him think of his greatness; and if it should be thrust from him (by fate), it will have the nature of not being thrust from him'),
  (597, 60, 'ஊக்கமுடைமை', 'சிதைவிடத்து ஒல்கார் உரவோர் புதையம்பிற்
பட்டுப்பா டூன்றுங் களிறு.', 'Sidhaivitaththu Olkaar Uravor Pudhaiyampir', 'Elephants are firm when arrows hit Great minds keep fit ev\'n in defeat', 'The strong minded will not faint, even when all is lost; the elephant stands firm, even when wounded by a shower of arrows'),
  (598, 60, 'ஊக்கமுடைமை', 'உள்ளம் இலாதவர் எய்தார் உலகத்து
வள்ளியம் என்னுஞ் செருக்கு.', 'Ullam Ilaadhavar Eydhaar Ulakaththu', 'Heartless persons cannot boast \\"We are liberal to our best\\"', 'Those who have no (greatness of) mind, will not acquire the joy of saying in the world, "we have excercised liaberality"'),
  (599, 60, 'ஊக்கமுடைமை', 'பரியது கூர்ங்கோட்டது ஆயினும் யானை
஦வ்ருஉம் புலிதாக் குறின்.', 'Pariyadhu Koorngottadhu Aayinum Yaanai', 'Huge elephant sharp in tusk quails  When tiger, less in form, assails', 'Although the elephant has a large body, and a sharp tusk, yet it fears the attack of the tiger'),
  (600, 60, 'ஊக்கமுடைமை', 'உரமொருவற்கு உள்ள வெறுக்கைஅஃ தில்லார்
மரம்மக்க ளாதலே வேறு.', 'Uramoruvarku Ulla Verukkaiaq Thillaar', 'Mental courage is true manhood Lacking that man is like a wood', 'Energy is mental wealth; those men who are destitute of it are only trees in the form of men'),
  (601, 61, 'மடியின்மை', 'குடியென்னும் குன்றா விளக்கம் மடியென்னும்
மாசூர மாய்ந்து கெடும்.', 'Kutiyennum Kundraa Vilakkam Matiyennum', 'Quenchless lamp of ancestry goes When foul idleness encloses', 'By the darkness, of idleness, the indestructible lamp of family (rank) will be extinguished'),
  (602, 61, 'மடியின்மை', 'மடியை மடியா ஒழுகல் குடியைக்
குடியாக வேண்டு பவர்.', 'Matiyai Matiyaa Ozhukal Kutiyaik', 'To make your home an ideal home Loath sloth as sloth; refuse it room', 'Let those, who desire that their family may be illustrious, put away all idleness from their conduct'),
  (603, 61, 'மடியின்மை', 'மடிமடிக் கொண்டொழுகும் பேதை பிறந்த
குடிமடியும் தன்னினும் முந்து.', 'Matimatik Kontozhukum Pedhai Pirandha', 'The fool who fosters sluggishness Before he dies ruins his house', 'The (lustre of the) family of the ignorant man, who acts under the influence of destructive laziness will perish, even before he is dead'),
  (604, 61, 'மடியின்மை', 'குடிமடிந்து குற்றம் பெருகும் மடிமடிந்து
மாண்ட உஞற்றி லவர்க்கு.', 'Kutimatindhu Kutram Perukum Matimatindhu', 'Who strive not high, sunk deep in sloth Ruin their house by evil growth', 'Family (greatness) will be destroyed, and faults will increase, in those men who give way to laziness, and put forth no dignified exertions'),
  (605, 61, 'மடியின்மை', 'நெடுநீர் மறவி மடிதுயில் நான்கும்
கெடுநீரார் காமக் கலன்.', 'Netuneer Maravi Matidhuyil Naankum', 'To lag, forget, idle and doze These four are pleasure boats of loss', 'Procrastination, forgetfulness, idleness, and sleep, these four things, form the vessel which is desired by those destined to destruction'),
  (606, 61, 'மடியின்மை', 'படியுடையார் பற்றமைந்தக் கண்ணும் மடியுடையார்
மாண்பயன் எய்தல் அரிது.', 'Patiyutaiyaar Patramaindhak Kannum Matiyutaiyaar', 'With all the wealth of lords of earth The slothful gain nothing of worth', 'It is a rare thing for the idle, even when possessed of the riches of kings who ruled over the whole earth, to derive any great benefit from it'),
  (607, 61, 'மடியின்மை', 'இடிபுரிந்து எள்ளுஞ்சொல் கேட்பர் மடிபுரிந்து
மாண்ட உஞற்றி லவர்.', 'Itipurindhu Ellunj Chol Ketpar', 'The slothful lacking noble deeds Subject themselves to scornful words', 'Those who through idleness, and do not engage themselves in dignified exertion, will subject'),
  (608, 61, 'மடியின்மை', 'மடிமை குடிமைக்கண் தங்கின்தன் ஒன்னார்க்கு
அடிமை புகுத்தி விடும்.', 'Matimai Kutimaikkan Thangindhan Onnaarkku', 'If sloth invades a noble house It will become a slave of foes', 'If idleness take up its abode in a king of high birth, it will make him a slave of his enemies'),
  (609, 61, 'மடியின்மை', 'குடியாண்மை யுள்வந்த குற்றம் ஒருவன்
மடியாண்மை மாற்றக் கெடும்.', 'Kutiyaanmai Yulvandha Kutram Oruvan', 'The blots on race and rule shall cease When one from sloth gets his release', 'When a man puts away idleness, the reproach which has come upon himself and his family will disappear'),
  (610, 61, 'மடியின்மை', 'மடியிலா மன்னவன் எய்தும் அடியளந்தான்
தாஅய தெல்லாம் ஒருங்கு.', 'Matiyilaa Mannavan Eydhum Atiyalandhaan', 'The slothless king shall gain en masse *All regions trod by Lord apace * Hindu mythology holds that Lord Vishnu measured with his feet the three worlds', 'The king who never gives way to idleness will obtain entire possession of (the whole earth) passed over by him who measured (the worlds) with His foot'),
  (611, 62, 'ஆள்வினையுடைமை', 'அருமை உடைத்தென்று அசாவாமை வேண்டும்
பெருமை முயற்சி தரும்.', 'Arumai Utaiththendru Asaavaamai Ventum', 'Feel not frustrate saying This hard Who tries attains striving\'s reward', 'Yield not to the feebleness which says, "this is too difficult to be done"; labour will give the greatness (of mind) which is necessary (to do it)'),
  (612, 62, 'ஆள்வினையுடைமை', 'வினைக்கண் வினைகெடல் ஓம்பல் வினைக்குறை
தீர்ந்தாரின் தீர்ந்தன்று உலகு.', 'Vinaikkan Vinaiketal Ompal Vinaikkurai', 'In doing work don\'t break and shirk The world will quit who quits his work', 'Take care not to give up exertion in the midst of a work; the world will abandon those who abandon their unfinished work'),
  (613, 62, 'ஆள்வினையுடைமை', 'தாளாண்மை என்னும் தகைமைக்கண் தங்கிற்றே
வேளாண்மை என்னுஞ் செருக்கு.', 'Thaalaanmai Ennum Thakaimaikkan Thangitre', 'On excellence of industry Depends magnanimous bounty', 'The lustre of munificence will dwell only with the dignity of laboriousness or efforts'),
  (614, 62, 'ஆள்வினையுடைமை', 'தாளாண்மை இல்லாதான் வேளாண்மை பேடிகை
வாளாண்மை போலக் கெடும்.', 'Thaalaanmai Illaadhaan Velaanmai Petikai', 'Bounty of man who never strives Like sword in eunuch\'s hand it fails', 'The liberality of him, who does not labour, will fail, like the manliness of a hermaphrodite, who has a sword in its hand'),
  (615, 62, 'ஆள்வினையுடைமை', 'இன்பம் விழையான் வினைவிழைவான் தன்கேளிர்
துன்பம் துடைத்தூன்றும் தூண்.', 'Inpam Vizhaiyaan Vinaivizhaivaan Thankelir', 'Work who likes and not pleasure  Wipes grief of friends, pillar secure', 'He who desires not pleasure, but desires labour, will be a pillar to sustain his relations, wiping away their sorrows'),
  (616, 62, 'ஆள்வினையுடைமை', 'முயற்சி திருவினை ஆக்கும் முயற்றின்மை
இன்மை புகுத்தி விடும்.', 'Muyarsi Thiruvinai Aakkum Muyatrinmai', 'Industry adds prosperity Indolence brings but poverty', 'Labour will produce wealth; idleness will bring poverty'),
  (617, 62, 'ஆள்வினையுடைமை', 'மடியுளாள் மாமுகடி என்ப மடியிலான்
தாளுளான் தாமரையி னாள்.', 'Matiyulaal Maamukati Enpa Matiyilaan', 'Illuck abides with sloth they say *Laxmi\'s gifts with labourers stay *Laxmi the Goddes of wealth and prosperity', 'They say that the black Mudevi (the goddess of adversity) dwells with laziness, and the Latchmi (the goddess of prosperity) dwells with the labour of the industrious'),
  (618, 62, 'ஆள்வினையுடைமை', 'பொறியின்மை யார்க்கும் பழியன்று அறிவறிந்து
ஆள்வினை இன்மை பழி.', 'Poriyinmai Yaarkkum Pazhiyandru Arivarindhu', 'Misfortune is disgrace to none The shame is nothing learnt or done', 'Adverse fate is no disgrace to any one; to be without exertion and without knowing what should be known, is disgrace'),
  (619, 62, 'ஆள்வினையுடைமை', 'தெய்வத்தான் ஆகா தெனினும் முயற்சிதன்
மெய்வருத்தக் கூலி தரும்.', 'Theyvaththaan Aakaa Theninum Muyarsidhan', 'Though fate is against fulfilment Hard labour has ready payment', 'Although it be said that, through fate, it cannot be attained, yet labour, with bodily exertion, will yield its reward'),
  (620, 62, 'ஆள்வினையுடைமை', 'ஊழையும் உப்பக்கம் காண்பர் உலைவின்றித்
தாழாது உஞற்று பவர்.', 'Oozhaiyum Uppakkam Kaanpar Ulaivindrith', 'Tireless Toiler\'s striving hand Shall leave even the fate behind', 'They who labour on, without fear and without fainting will see even fate (put) behind their back'),
  (621, 63, 'இடுக்கணழியாமை', 'இடுக்கண் வருங்கால் நகுக அதனை
அடுத்தூர்வது அஃதொப்ப தில்.', 'Itukkan Varungaal Nakuka Adhanai', 'Laugh away troubles; there is No other way to conquer woes', 'If troubles come, laugh; there is nothing like that, to press upon and drive away sorrow'),
  (622, 63, 'இடுக்கணழியாமை', 'வெள்ளத் தனைய இடும்பை அறிவுடையான்
உள்ளத்தின் உள்ளக் கெடும்.', 'Vellath Thanaiya Itumpai Arivutaiyaan', 'Deluging sorrows come to nought When wise men face them with firm thought', 'A flood of troubles will be overcome by the (courageous) thought which the minds of the wise will entertain, even in sorrow'),
  (623, 63, 'இடுக்கணழியாமை', 'இடும்பைக்கு இடும்பை படுப்பர் இடும்பைக்கு
இடும்பை படாஅ தவர்.', 'Itumpaikku Itumpai Patuppar Itumpaikku', 'Grief they face and put to grief Who grieve not grief by mind\'s relief', 'They give sorrow to sorrow, who in sorrow do not suffer sorrow'),
  (624, 63, 'இடுக்கணழியாமை', 'மடுத்தவா யெல்லாம் பகடன்னான் உற்ற
இடுக்கண் இடர்ப்பாடு உடைத்து.', 'Matuththavaa Yellaam Pakatannaan Utra', 'Who pulls like bulls patiently on Causes grief to grieve anon', 'Troubles will vanish (i.e., will be troubled) before the man who (struggles against difficulties) as a'),
  (625, 63, 'இடுக்கணழியாமை', 'அடுக்கி வரினும் அழிவிலான் உற்ற
இடுக்கண் இடுக்கட் படும்.', 'Atukki Varinum Azhivilaan Utra', 'Before the brave grief grieves and goes Who dare a host of pressing woes', 'The troubles of that man will be troubled (and disappear) who, however thickly they may come upon him, does not abandon (his purpose)'),
  (626, 63, 'இடுக்கணழியாமை', 'அற்றேமென்று அல்லற் படுபவோ பெற்றேமென்று
ஓம்புதல் தேற்றா தவர்.', 'Atremendru Allar Patupavo Petremendru', 'The wise that never gloat in gain Do not fret in fateful ruin', 'Will those men ever cry out in sorrow, "we are destitute" who, (in their prosperity), give not way to (undue desire) to keep their wealth'),
  (627, 63, 'இடுக்கணழியாமை', 'இலக்கம் உடம்பிடும்பைக் கென்று கலக்கத்தைக்
கையாறாக் கொள்ளாதாம் மேல்.', 'Ilakkam Utampitumpaik Kendru Kalakkaththaik', 'The wise worry no more of woes Knowing body\'s butt of sorrows', 'The great will not regard trouble as trouble, knowing that the body is the butt of trouble'),
  (628, 63, 'இடுக்கணழியாமை', 'இன்பம் விழையான் இடும்பை இயல்பென்பான்
துன்பம் உறுதல் இலன்.', 'Inpam Vizhaiyaan Itumpai Iyalpenpaan', 'Who seek not joy, deem grief norm By sorrows do not come to harm', 'That man never experiences sorrow, who does not seek for pleasure, and who considers distress to be natural (to man)'),
  (629, 63, 'இடுக்கணழியாமை', 'இன்பத்துள் இன்பம் விழையாதான் துன்பத்துள்
துன்பம் உறுதல் இலன்.', 'Inpaththul Inpam Vizhaiyaadhaan Thunpaththul', 'In joy to joy who is not bound In grief he grieves not dual round!', 'He does not suffer sorrow, in sorrow who does not look for pleasure in pleasure'),
  (630, 63, 'இடுக்கணழியாமை', 'இன்னாமை இன்பம் எனக்கொளின் ஆகுந்தன்
ஒன்னார் விழையுஞ் சிறப்பு.', 'Innaamai Inpam Enakkolin Aakundhan', 'His glory is esteemed by foes Who sees weal in wanton woes!', 'The elevation, which even his enemies will esteem, will be gained by him, who regards pain as pleasure'),
  (631, 64, 'அமைச்சு', 'கருவியும் காலமும் செய்கையும் செய்யும்
அருவினையும் மாண்டது அமைச்சு.', 'Karuviyum Kaalamum Seykaiyum Seyyum', 'He is minister who chooses Right means, time, mode and rare ventures', 'The minister is one who can make an excellent choice of means, time, manner of execution, and the difficult undertaking (itself)'),
  (632, 64, 'அமைச்சு', 'வன்கண் குடிகாத்தல் கற்றறிதல் ஆள்வினையோடு
ஐந்துடன் மாண்டது அமைச்சு.', 'Vankan Kutikaaththal Katraridhal Aalvinaiyotu', 'With these he guards people, -by his Knowledge, firmness and manliness', 'The minister is one who in addition to the aforesaid five things excels in the possession of firmness,'),
  (633, 64, 'அமைச்சு', 'பிரித்தலும் பேணிக் கொளலும் பிரிந்தார்ப்
பொருத்தலும் வல்ல தமைச்சு.', 'Piriththalum Penik Kolalum Pirindhaarp', 'A minister cherishes friends Divides foes and the parted blends', 'The minister is one who can effect discord (among foes), maintain the good-will of his friends and restore to friendship those who have seceded (from him)'),
  (634, 64, 'அமைச்சு', 'தெரிதலும் தேர்ந்து செயலும் ஒருதலையாச்
சொல்லலும் வல்லது அமைச்சு.', 'Theridhalum Therndhu Seyalum Orudhalaiyaach', 'A minister must sift reflect Select and say surely one fact', 'The minister is one who is able to comprehend (the whole nature of an undertaking), execute it in the best manner possible, and offer assuring advice (in time of necessity)'),
  (635, 64, 'அமைச்சு', 'அறனறிந்து ஆன்றமைந்த சொல்லான்எஞ் ஞான்றுந்
திறனறிந்தான் தேர்ச்சித் துணை.', 'Aranarindhu Aandramaindha Sollaanenj Gnaandrun', 'Have him for help who virtue knows Right wisdom speaks, ever apt in acts', 'He is the best helper (of the king) who understanding the duties, of the latter, is by his special learning, able to tender the fullest advice, and at all times conversant with the best method (of'),
  (636, 64, 'அமைச்சு', 'மதிநுட்பம் நூலோடு உடையார்க்கு அதிநுட்பம்
யாவுள முன்நிற் பவை.', 'Madhinutpam Noolotu Utaiyaarkku Adhinutpam', 'Which subtler brain can stand before The keen in brain with learned love?', 'What (contrivances) are there so acute as to resist those who possess natural acuteness in addition to learning ?'),
  (637, 64, 'அமைச்சு', 'செயற்கை அறிந்தக் கடைத்தும் உலகத்து
இயற்கை அறிந்து செயல்.', 'Seyarkai Arindhak Kataiththum Ulakaththu', 'Albeit you know to act from books Act after knowing world\'s outlooks', 'Though you are acquainted with the (theoretical) methods (of performing an act), understand the ways of the world and act accordingly'),
  (638, 64, 'அமைச்சு', 'அறிகொன்று அறியான் எனினும் உறுதி
உழையிருந்தான் கூறல் கடன்.', 'Arikondru Ariyaan Eninum Urudhi', 'The man in place must tell the facts Though the ignorant king refutes', 'Although the king be utterly ignorant, it is the duty of the minister to give (him) sound advice'),
  (639, 64, 'அமைச்சு', 'பழுதெண்ணும் மந்திரியின் பக்கததுள் தெவ்வோர்
எழுபது கோடி உறும்.', 'Pazhudhennum Mandhiriyin Pakkadhadhul Thevvor', 'Seventy crores of foes are better Than a minister with mind bitter', 'Far better are seventy crores of enemies (for a king) than a minister at his side who intends (his) ruin'),
  (640, 64, 'அமைச்சு', 'முறைப்படச் சூழ்ந்தும் முடிவிலவே செய்வர்
திறப்பாடு இலாஅ தவர்.', 'Muraippatach Choozhndhum Mutivilave Seyvar', 'The unresolved, though well designed To fulfil an act they have no mind', 'Those ministers who are destitute of (executive) ability will fail to carry out their projects, although they may have contrived aright'),
  (641, 65, 'சொல்வன்மை', 'நாநலம் என்னும் நலனுடைமை அந்நலம்
யாநலத்து உள்ளதூஉம் அன்று.', 'Naanalam Ennum Nalanutaimai Annalam', 'The goodness called goodness of speech Is goodness which nothing can reach', 'The possession of that goodness which is called the goodness of speech is (even to others) better than any other goodness'),
  (642, 65, 'சொல்வன்மை', 'ஆக்கமுங் கேடும் அதனால் வருதலால்
காத்தோம்பல் சொல்லின்கட் சோர்வு.', 'Aakkamung Ketum Adhanaal Varudhalaal', 'Since gain or ruin speeches bring Guard against the slips of tongue', 'Since (both) wealth and evil result from (their) speech, ministers should most carefully guard themselves against faultiness therein'),
  (643, 65, 'சொல்வன்மை', 'கேட்டார்ப் பிணிக்கும் தகையவாய்க் கேளாரும்
வேட்ப மொழிவதாம் சொல்.', 'Kettaarp Pinikkum Thakaiyavaaik Kelaarum', 'A speech is speech that holds ears And attracts ev\'n those that are averse', 'The (minister\'s) speech is that which seeks (to express) elements as bind his friends (to himself) and is so delivered as to make even his enemies desire (his friendship)'),
  (644, 65, 'சொல்வன்மை', 'திறனறிந்து சொல்லுக சொல்லை அறனும்
பொருளும் அதனினூஉங்கு இல்.', 'Thiranarindhu Solluka Sollai Aranum', 'Weigh thy words and speak; because  No wealth or virtue words surpass', 'Understand the qualities (of your hearers) and (then) make your speech; for superior to it, there is neither virtue nor wealth'),
  (645, 65, 'சொல்வன்மை', 'சொல்லுக சொல்லைப் பிறிதோர்சொல் அச்சொல்லை
வெல்லுஞ்சொல் இன்மை அறிந்து.', 'Solluka Sollaip Piridhorsol Achchollai', 'Speak out thy world so that no word Can win it and say untoward', 'Deliver your speech, after assuring yourself that no counter speech can defeat your own'),
  (646, 65, 'சொல்வன்மை', 'வேட்பத்தாஞ் சொல்லிப் பிறர்சொல் பயன்கோடல்
மாட்சியின் மாசற்றார் கோள்.', 'Vetpaththaanj Chollip Pirarsol Payankotal', 'Spotless men speak what is sweet And grasp in others what is meet', 'It is the opinion of those who are free from defects in diplomacy that the minister should speak so as to make his hearers desire (to hear more) and grasp the meaning of what he hears himself'),
  (647, 65, 'சொல்வன்மை', 'சொலல்வல்லன் சோர்விலன் அஞ்சான் அவனை
இகல்வெல்லல் யார்க்கும் அரிது.', 'Solalvallan Sorvilan Anjaan Avanai', 'No foe defies the speaker clear Flawless, puissant, and free from fear', 'It is impossible for any one to conquer him by intrique who possesses power of speech, and is neither faulty nor timid'),
  (648, 65, 'சொல்வன்மை', 'விரைந்து தொழில்கேட்கும் ஞாலம் நிரந்தினிது
சொல்லுதல் வல்லார்ப் பெறின்.', 'Viraindhu Thozhilketkum Gnaalam Nirandhinidhu', 'The world will quickly carry out The words of counsellors astute', 'If there be those who can speak on various subjects in their proper order and in a pleasing manner, the world would readily accept them'),
  (649, 65, 'சொல்வன்மை', 'பலசொல்லக் காமுறுவர் மன்றமா சற்ற
சிலசொல்லல் தேற்றா தவர்.', 'Palasollak Kaamuruvar Mandramaa Satra', 'They overspeak who do not seek A few and flawless words to speak', 'They will desire to utter many words, who do not know how to speak a few faultless ones'),
  (650, 65, 'சொல்வன்மை', 'இணருழ்த்தும் நாறா மலரனையர் கற்றது
உணர விரித்துரையா தார்.', 'Inaruzhththum Naaraa Malaranaiyar Katradhu', 'Who can\'t express what they have learnt Are bunch of flowers not fragrant', 'Those who are unable to set forth their acquirements (before others) are like flowers blossoming in a cluster and yet without fragrance'),
  (651, 66, 'வினைத்தூய்மை', 'துணைநலம் ஆக்கம் த்ருஉம் வினைநலம்
வேண்டிய எல்லாந் தரும்.', 'Thunainalam Aakkam Tharuum Vinainalam', 'Friendship brings gain; but action pure Does every good thing we desire', 'The efficacy of support will yield (only) wealth; (but) the efficacy of action will yield all that is desired'),
  (652, 66, 'வினைத்தூய்மை', 'என்றும் ஒருவுதல் வேண்டும் புகழொடு
நன்றி பயவா வினை.', 'Endrum Oruvudhal Ventum Pukazhotu', 'Eschew always acts that do not  Bring good nor glory on their part', 'Ministers should at all times avoid acts which, in addition to fame, yield no benefit (for the future)'),
  (653, 66, 'வினைத்தூய்மை', 'ஒஓதல் வேண்டும் ஒளிமாழ்கும் செய்வினை
ஆஅதும் என்னு மவர்.', 'Oodhal Ventum Olimaazhkum Seyvinai', 'Those in the world desire for fame Should shun the deed that dims their name', 'Those who say, "we will become (better)" should avoid the performance of acts that would destroy (their fame)'),
  (654, 66, 'வினைத்தூய்மை', 'இடுக்கண் படினும் இளிவந்த செய்யார்
நடுக்கற்ற காட்சி யவர்.', 'Itukkan Patinum Ilivandha Seyyaar', 'Though perils press the faultless wise Shun deeds of mean, shameful device', 'Those who have infallible judgement though threatened with peril will not do acts which have brought disgrace (on former ministers)'),
  (655, 66, 'வினைத்தூய்மை', 'எற்றென்று இரங்குவ செய்யற்க செய்வானேல்
மற்றன்ன செய்யாமை நன்று.', 'Etrendru Iranguva Seyyarka Seyvaanel', 'Do not wrong act and grieve, \\"Alas\\"  If done, do not repeat it twice', 'Let a minister never do acts of which he would have to grieve saying, "what is this I have done"; (but) should he do (them), it were good that he grieved not'),
  (656, 66, 'வினைத்தூய்மை', 'ஈன்றாள் பசிகாண்பான் ஆயினுஞ் செய்யற்க
சான்றோர் பழிக்கும் வினை.', 'Eendraal Pasikaanpaan Aayinunj Cheyyarka', 'Though she who begot thee hungers Shun acts denounced by ancient seers', 'Though a minister may see his mother starve; let him do not act which the wise would (treat with contempt)'),
  (657, 66, 'வினைத்தூய்மை', 'பழிமலைந்து எய்திய ஆக்கத்தின் சான்றோர்
கழிநல் குரவே தலை.', 'Pazhimalaindhu Eydhiya Aakkaththin Saandror', 'Pinching poverty of the wise Is more than wealth hoarded by Vice', 'Far more excellent is the extreme poverty of the wise than wealth obtained by heaping up of sinful'),
  (658, 66, 'வினைத்தூய்மை', 'கடிந்த கடிந்தொரார் செய்தார்க்கு அவைதாம்
முடிந்தாலும் பீழை தரும்.', 'Katindha Katindhoraar Seydhaarkku Avaidhaam', 'Those who dare a forbidden deed Suffer troubles though they succeed', 'The actions of those, who have not desisted from doing deeds forbidden (by the great), will, even if they succeed, cause them sorrow'),
  (659, 66, 'வினைத்தூய்மை', 'அழக்கொண்ட எல்லாம் அழப்போம் இழப்பினும்
பிற்பயக்கும் நற்பா லவை.', 'Azhak Konta Ellaam Azhappom', 'Gains from weeping, weeping go Though lost, from good deeds blessings flow', 'All that has been obtained with tears (to the victim) will depart with tears (to himself); but what has been by fair means; though with loss at first, will afterwards yield fruit'),
  (660, 66, 'வினைத்தூய்மை', 'சலத்தால் பொருள்செய்தே மார்த்தல் பசுமண்
கலத்துள்நீர் பெய்திரீஇ யற்று.', 'Salaththaal Porulseydhe Maarththal Pasuman', 'The wealth gathered in guilty ways Is water poured in wet clay vase', '(For a minister) to protect (his king) with wealth obtained by foul means is like preserving a vessel of wet clay by filling it with water'),
  (661, 67, 'வினைத்திட்பம்', 'வினைத்திட்பம் என்பது ஒருவன் மனத்திட்பம்
மற்றைய எல்லாம் பிற.', 'Vinaiththitpam Enpadhu Oruvan Manaththitpam', 'A powerful mind does powerful act And all the rest are imperfect', 'Firmness in action is (simply) one\'s firmness of mind; all other (abilities) are not of this nature'),
  (662, 67, 'வினைத்திட்பம்', 'ஊறொரால் உற்றபின் ஒல்காமை இவ்விரண்டின்
ஆறென்பர் ஆய்ந்தவர் கோள்.', 'Oororaal Utrapin Olkaamai Ivvirantin', 'Shun failing fuss; fail not purpose These two are maxims of the wise', 'Not to perform a ruinous act, and not to be discouraged by the ruinous termination of an act, are the two maxims which, the wise say, from the principles of those who have investigated the subject'),
  (663, 67, 'வினைத்திட்பம்', 'கடைக்கொட்கச் செய்தக்க தாண்மை இடைக்கொட்கின்
எற்றா விழுமந் தரும்.', 'Kataikkotkach Cheydhakka Thaanmai Itaikkotkin', 'The strong achieve and then display Woe unto work displayed midway', 'So to perform an act as to publish it (only) at its termination is (true) manliness; for to announce it beforehand, will cause irremediable sorrow'),
  (664, 67, 'வினைத்திட்பம்', 'சொல்லுதல் யார்க்கும் எளிய அரியவாம்
சொல்லிய வண்ணம் செயல்.', 'Solludhal Yaarkkum Eliya Ariyavaam', 'Easy it is to tell a fact But hard it is to know and act', 'To say (how an act is to be performed) is (indeed) easy for any one; but far difficult it is to do according to what has been said'),
  (665, 67, 'வினைத்திட்பம்', 'வீறெய்தி மாண்டார் வினைத்திட்பம் வேந்தன்கண்
ஊறெய்தி உள்ளப் படும்.', 'Veereydhi Maantaar Vinaiththitpam Vendhankan', 'Dynamic deeds of a doughty soul Shall win the praise of king and all', 'The firmness in action of those who have become great by the excellence (of their counsel) will, by attaining its fulfilment in the person of the king, be esteemed (by all).'),
  (666, 67, 'வினைத்திட்பம்', 'எண்ணிய எண்ணியாங்கு எய்துவர் எண்ணியார்
திண்ணியர் ஆகப் பெறின்.', 'Enniya Enniyaangu Eydhu Enniyaar', 'The will-to-do achieves the deed When mind that wills is strong indeed', 'If those who have planned (an undertaking) possess firmness (in executing it) they will obtain what they have desired even as they have desired it'),
  (667, 67, 'வினைத்திட்பம்', 'உருவுகண்டு எள்ளாமை வேண்டும் உருள்பெருந்தேர்க்கு
அச்சாணி அன்னார் உடைத்து.', 'Uruvukantu Ellaamai Ventum Urulperundherkku', 'Scorn not the form: for men there are Like linchpin of big rolling car', 'Let none be despised for (their) size; (for) the world has those who resemble the linch-pin of the big rolling car'),
  (668, 67, 'வினைத்திட்பம்', 'கலங்காது கண்ட வினைக்கண் துளங்காது
தூக்கங் கடிந்து செயல்.', 'Kalangaadhu Kanta Vinaikkan Thulangaadhu', 'Waver not; do wakefully  The deed resolved purposefully', 'An act that has been firmly resolved on must be as firmly carried out without delay'),
  (669, 67, 'வினைத்திட்பம்', 'துன்பம் உறவரினும் செய்க துணிவாற்றி
இன்பம் பயக்கும் வினை.', 'Thunpam Uravarinum Seyka Thunivaatri', 'Do with firm will though pains beset  The deed that brings delight at last', 'Though it should cause increasing sorrow (at the outset), do with firmness the act that yield bliss (in the end)'),
  (670, 67, 'வினைத்திட்பம்', 'எனைத்திட்பம் எய்தியக் கண்ணும் வினைத்திட்பம்
வேண்டாரை வேண்டாது உலகு.', 'Enaiththitpam Ey Thiyak Kannum', 'The world merits no other strength But strength of will-to-do at length', 'The great will not esteem those who esteem not firmness of action, whatever other abilities the latter may possess'),
  (671, 68, 'வினைசெயல்வகை', 'சூழ்ச்சி முடிவு துணிவெய்தல் அத்துணிவு
தாழ்ச்சியுள் தங்குதல் தீது.', 'Soozhchchi Mutivu Thuniveydhal Aththunivu', 'When counsel takes a resolve strong Weak delay of action is wrong', 'Consultation ends in forming a resolution (to act); (but) delay in the execution of that resolve is an evil'),
  (672, 68, 'வினைசெயல்வகை', 'தூங்குக தூங்கிச் செயற்பால தூங்கற்க
தூங்காது செய்யும் வினை.', 'Thoonguka Thoongich Cheyarpaala Thoongarka', 'Delay such acts as need delay Delay not acts that need display', 'Sleep over such (actions) as may be slept over; (but) never over such as may not be slept over'),
  (673, 68, 'வினைசெயல்வகை', 'ஒல்லும்வா யெல்லாம் வினைநன்றே ஒல்லாக்கால்
செல்லும்வாய் நோக்கிச் செயல்.', 'Ollumvaa Yellaam Vinainandre Ollaakkaal', 'It\'s best to act when feasible If not see what is possible', 'Whenever it is possible (to overcome your enemy) the act (of fighting) is certainly good; if not, endeavour to employ some more successful method'),
  (674, 68, 'வினைசெயல்வகை', 'வினைபகை என்றிரண்டின் எச்சம் நினையுங்கால்
தீயெச்சம் போலத் தெறும்.', 'Vinaipakai Endrirantin Echcham Ninaiyungaal', 'Work or foe left unfinished Flare up like fire unextinguished', 'When duly considered, the incomplete execution of an undertaking and hostility will grow and destroy one like the (unextinguished) remnant of a fire'),
  (675, 68, 'வினைசெயல்வகை', 'பொருள்கருவி காலம் வினையிடனொடு ஐந்தும்
இருள்தீர எண்ணிச் செயல்.', 'Porulkaruvi Kaalam Vinaiyitanotu Aindhum', 'Money and means, time, place and deed Decide these five and then proceed', 'Do an act after a due consideration of the (following) five, viz money, means, time, execution and place'),
  (676, 68, 'வினைசெயல்வகை', 'முடிவும் இடையூறும் முற்றியாங்கு எய்தும்
படுபயனும் பார்த்துச் செயல்.', 'Mutivum Itaiyoorum Mutriyaangu Eydhum', 'Weigh well the end, hindrance, profit  And then pursue a fitting act', 'An act is to be performed after considering the exertion required, the obstacles to be encountered, and the great profit to be gained (on its completion)'),
  (677, 68, 'வினைசெயல்வகை', 'செய்வினை செய்வான் செயன்முறை அவ்வினை
உள்ளறிவான் உள்ளம் கொளல்.', 'Seyvinai Seyvaan Seyanmurai Avvinai', 'Know first the secret from experts That is the way of fruitful acts', 'The method of performance for one who has begun an act is to ascertain the mind of him who knows the secret thereof'),
  (678, 68, 'வினைசெயல்வகை', 'வினையான் வினையாக்கிக் கோடல் நனைகவுள்
யானையால் யானையாத் தற்று.', 'Vinaiyaan Vinaiyaakkik Kotal Nanaikavul', 'Lure a tusker by a tusker Achieve a deed by deed better', 'To make one undertaking the means of accomplishing another (similar to it) is like making one rutting elephant the means of capturing another'),
  (679, 68, 'வினைசெயல்வகை', 'நட்டார்க்கு நல்ல செயலின் விரைந்ததே
ஒட்டாரை ஒட்டிக் கொளல்.', 'Nattaarkku Nalla Seyalin Viraindhadhe', 'Than doing good to friends it is More urgent to befriend the foes', 'One should rather hasten to secure the alliance of the foes (of one\'s foes) than perform good offices to one\'s friends'),
  (680, 68, 'வினைசெயல்வகை', 'உறைசிறியார் உள்நடுங்கல் அஞ்சிக் குறைபெறின்
கொள்வர் பெரியார்ப் பணிந்து.', 'Uraisiriyaar Ulnatungal Anjik Kuraiperin', 'Small statesmen fearing people\'s fear Submit to foes superior', 'Ministers of small states, afraid of their people being frightened, will yield to and acknowledge their superior foes, if the latter offer them a chance of reconciliation'),
  (681, 69, 'தூது', 'அன்புடைமை ஆன்ற குடிப்பிறத்தல் வேந்தவாம்
பண்புடைமை தூதுரைப்பான் பண்பு.', 'Anputaimai Aandra Kutippiraththal Vendhavaam', 'Love, noble birth, good courtesy Pleasing kings mark true embassy', 'The qualification of an ambassador are affection (for his relations) a fitting birth, and the possession of attributes pleasing to royalty'),
  (682, 69, 'தூது', 'அன்பறிவு ஆராய்ந்த சொல்வன்மை தூதுரைப்பார்க்கு
இன்றி யமையாத மூன்று.', 'Anparivu Aaraaindha Solvanmai Thoodhuraippaarkku', 'Envoys must bear love for their prince Knowledge and learned eloquence', 'Love (to his sovereign), knowledge (of his affairs), and a discriminating power of speech (before other sovereigns) are the three sine qua non qualifications of an ambassador'),
  (683, 69, 'தூது', 'நூலாருள் நூல்வல்லன் ஆகுதல் வேலாருள்
வென்றி வினையுரைப்பான் பண்பு.', 'Noolaarul Noolvallan Aakudhal Velaarul', 'Savant among savants, he pleads  Before lanced king, triumphant words', 'To be powerful in politics among those who are learned (in ethics) is the character of him who speaks'),
  (684, 69, 'தூது', 'அறிவுரு வாராய்ந்த கல்விஇம் மூன்றன்
செறிவுடையான் செல்க வினைக்கு.', 'Arivuru Vaaraaindha Kalviim Moondran', 'Who has these three: good form, sense, lore Can act as bold ambassador', 'He may go on a mission (to foreign rulers) who has combined in him all these three viz, (natural) sense, an attractive bearing and well-tried learning'),
  (685, 69, 'தூது', 'தொகச்சொல்லித் தூவாத நீக்கி நகச்சொல்லி
நன்றி பயப்பதாந் தூது.', 'Thokach Chollith Thoovaadha Neekki', 'Not harsh, the envoy\'s winsome ways Does good by pleasant words concise', 'He is an ambassador who (in the presence of foreign rulers) speaks briefly, avoids harshness, talks so as to make them smile, and thus brings good (to his own sovereign)'),
  (686, 69, 'தூது', 'கற்றுக்கண் அஞ்சான் செலச்சொல்லிக் காலத்தால்
தக்கது அறிவதாம் தூது.', 'Katrukkan Anjaan Selachchollik Kaalaththaal', 'Learned; fearless, the envoy tends Convincing words which time demands', 'He is an ambassador who having studied (politics) talks impressively, is not afraid of angry looks, and knows (to employ) the art suited to the time'),
  (687, 69, 'தூது', 'கடனறிந்து காலங் கருதி இடனறிந்து
எண்ணி உரைப்பான் தலை.', 'Katanarindhu Kaalang Karudhi Itanarindhu', 'Knowing duty time and place The envoy employs mature phrase', 'He is chief (among ambassadors) who understands the proper decorum (before foreign princes), seeks the (proper) occasion, knows the (most suitable) place, and delivers his message after (due)'),
  (688, 69, 'தூது', 'தூய்மை துணைமை துணிவுடைமை இம்மூன்றின்
வாய்மை வழியுரைப்பான் பண்பு.', 'Thooimai Thunaimai Thunivutaimai Immoondrin', 'The true envoy of three virtues Is pure helpful and bold in views', 'The qualifications of him who faithfully delivers his (sovereign\'s) message are purity, the support (of foreign ministers), and boldness, with truthfulness in addition to the (aforesaid) three'),
  (689, 69, 'தூது', 'விடுமாற்றம் வேந்தர்க்கு உரைப்பான் வடுமாற்றம்
வாய்சேரா வன்கணவன்.', 'Vitumaatram Vendharkku Uraippaan Vatumaatram', 'The envoy who ports the king\'s message Has flawless words and heart\'s courage', 'He alone is fit to communicate (his sovereign\'s) reply, who possesses the firmness not to utter even inadvertently what may reflect discredit (on the latter)'),
  (690, 69, 'தூது', 'இறுதி பயப்பினும் எஞ்சாது இறைவற்கு
உறுதி பயப்பதாம் தூது.', 'Irudhi Payappinum Enjaadhu Iraivarku', 'Braving death the bold envoy Assures his king\'s safety and joy', 'He is the ambassador who fearlessly seeks his sovereign\'s good though it should cost him his life (to deliver his message)'),
  (691, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'அகலாது அணுகாது தீக்காய்வார் போல்க
இகல்வேந்தர்ச் சேர்ந்தொழுகு வார்.', 'Akalaadhu Anukaadhu Theekkaaivaar Polka', 'Move with hostile kings as with fire  Not coming close nor going far', 'Thus let them act who dwell beneath of warlike kings the palace-roof'),
  (692, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'மன்னர் விழைப விழையாமை மன்னரால்
மன்னிய ஆக்கந் தரும்.', 'Mannar Vizhaipa Vizhaiyaamai Mannaraal', 'Crave not for things which kings desire  This brings thee their fruitful favour', 'For ministers not to cover the things desired by their kings will through the kings themselves yield them everlasting wealth'),
  (693, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'போற்றின் அரியவை போற்றல் கடுத்தபின்
தேற்றுதல் யார்க்கும் அரிது.', 'Potrin Ariyavai Potral Katuththapin', 'Guard thyself from petty excess Suspected least, there\'s no redress', 'Ministers who would save themselves should avoid (the commission of) serious errors for if the king\'s suspicion is once roused, no one can remove it'),
  (694, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'செவிச்சொல்லும் சேர்ந்த நகையும் அவித்தொழுகல்
ஆன்ற பெரியா ரகத்து.', 'Sevichchollum Serndha Nakaiyum Aviththozhukal', 'Whisper not; nor smile exchange Amidst august men\'s assemblage', 'While in the presence of the sovereign, ministers should neither whisper to nor smile at others'),
  (695, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'எப்பொருளும் ஓரார் தொடரார்மற் றப்பொருளை
விட்டக்கால் கேட்க மறை.', 'Epporulum Oraar Thotaraarmar Rapporulai', 'Hear not, ask not the king\'s secret Hear only when he lets it out', '(When the king is engaged) in secret counsel (with others), ministers should neither over-hear anything whatever nor pry into it with inquisitive questions, but (wait to) listen when it is divulged (by'),
  (696, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'குறிப்பறிந்து காலங் கருதி வெறுப்பில
வேண்டுப வேட்பச் சொலல்.', 'Kuripparindhu Kaalang Karudhi Veruppila', 'Discern his mood and time and tell No dislikes but what king likes well', 'Knowing the (king\'s disposition and seeking the right time, (the minister) should in a pleasing manner suggest things such as are desirable and not disagreeable'),
  (697, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'வேட்பன சொல்லி வினையில எஞ்ஞான்றும்
கேட்பினும் சொல்லா விடல்.', 'Vetpana Solli Vinaiyila Egngnaandrum', 'Tell pleasing things; and never tell Even if pressed what is futile', 'Ministers should (always) give agreeable advice but on no occasion recommend useless actions, though requested (to do so)'),
  (698, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'இளையர் இனமுறையர் என்றிகழார் நின்ற
ஒளியோடு ஒழுகப் படும்.', 'Ilaiyar Inamuraiyar Endrikazhaar Nindra', 'As young and kinsman do not slight; Look with awe king\'s light and might', 'Ministers should behave in accordance with the (Divine) light in the person of kings and not despise them saying, "He is our junior (in age) and connected with our family!"'),
  (699, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'கொளப்பட்டேம் என்றெண்ணிக் கொள்ளாத செய்யார்
துளக்கற்ற காட்சி யவர்.', 'Kolappattem Endrennik Kollaadha Seyyaar', 'The clear-visioned do nothing base Deeming they have the monarch\'s grace', 'Those whose judgement is firm will not do what is disagreeable (to the sovereign) saying (within'),
  (700, 70, 'மன்னரைச் சேர்ந்தொழுதல்', 'பழையம் எனக்கருதிப் பண்பல்ல செய்யும்
கெழுதகைமை கேடு தரும்.', 'Pazhaiyam Enakkarudhip Panpalla Seyyum', 'Worthless acts based on friendship old  Shall spell ruin and woe untold', 'The (foolish) claim with which a minister does unbecoming acts because of his (long) familiarity (with the king) will ensure his ruin'),
  (701, 71, 'குறிப்பறிதல்', 'கூறாமை நோக்கக் குறிப்பறிவான் எஞ்ஞான்றும்
மாறாநீர் வையக் கணி.', 'Kooraamai Nokkake Kuripparivaan Egngnaandrum', 'Who reads the mind by look, untold Adorns the changeless sea-girt world', 'The minister who by looking (at the king) understands his mind without being told (of it), will be a perpetual ornament to the world which is surrounded by a never-drying sea'),
  (702, 71, 'குறிப்பறிதல்', 'ஐயப் படாஅது அகத்தது உணர்வானைத்
தெய்வத்தோ டொப்பக் கொளல்.', 'Aiyap Pataaadhu Akaththadhu Unarvaanaith', 'Take him as God who reads the thought Of another man with without a doubt', 'He is to be esteemed a god who is able to ascertain without a doubt what is within (one\'s mind)'),
  (703, 71, 'குறிப்பறிதல்', 'குறிப்பிற் குறிப்புணர் வாரை உறுப்பினுள்
யாது கொடுத்தும் கொளல்.', 'Kurippir Kurippunar Vaarai Uruppinul', 'By sign who scans the sign admit At any cost in cabinet', 'The king should ever give whatever (is asked) of his belongings and secure him who, by the indications (of his own mind) is able to read those of another'),
  (704, 71, 'குறிப்பறிதல்', 'குறித்தது கூறாமைக் கொள்வாரோ டேனை
உறுப்போ ரனையரால் வேறு.', 'Kuriththadhu Kooraamaik Kolvaaro Tenai', 'Untold, he who divines the thought Though same in form is quite apart', 'Those who understand one\'s thoughts without being informed (thereof) and those who do not, may (indeed) resemble one another bodily; still are they different (mentally)'),
  (705, 71, 'குறிப்பறிதல்', 'குறிப்பிற் குறிப்புணரா வாயின் உறுப்பினுள்
என்ன பயத்தவோ கண்?', 'Kurippir Kurippunaraa Vaayin Uruppinul', 'Among senses what for is eye If thought by thought one can\'t descry?', 'Of what use are the eyes amongst one\'s members, if they cannot by their own indications dive those of another ?'),
  (706, 71, 'குறிப்பறிதல்', 'அடுத்தது காட்டும் பளிங்குபோல் நெஞ்சம்
கடுத்தது காட்டும் முகம்.', 'Atuththadhu Kaattum Palingupol Nenjam', 'What throbs in mind the face reflects Just as mirror nearby objects', 'As the mirror reflects what is near so does the face show what is uppermost in the mind'),
  (707, 71, 'குறிப்பறிதல்', 'முகத்தின் முதுக்குறைந்தது உண்டோ உவப்பினும்
காயினும் தான்முந் துறும்.', 'Mukaththin Mudhukkuraindhadhu Unto Uvappinum', 'Than face what is subtler to tell First if the mind feels well or ill', 'Is there anything so full of knowledge as the face ? (No) it precedes the mind, whether (the latter is) pleased or vexed'),
  (708, 71, 'குறிப்பறிதல்', 'முகம்நோக்கி நிற்க அமையும் அகம்நோக்கி
உற்ற துணர்வார்ப் பெறின்.', 'Mukamnokki Nirka Amaiyum Akamnokki', 'Just standing in front would suffice For those who read the mind on face', 'If the king gets those who by looking into his mind can understand (and remove) what has occurred (to him) it is enough that he stand looking at their face'),
  (709, 71, 'குறிப்பறிதல்', 'பகைமையும் கேண்மையும் கண்ணுரைக்கும் கண்ணின்
வகைமை உணர்வார்ப் பெறின்.', 'Pakaimaiyum Kenmaiyum Kannuraikkum Kannin', 'Friend or foe the eyes will show To those who changing outlooks know', 'If a king gets ministers who can read the movements of the eye, the eyes (of foreign kings) will (themselves) reveal (to him) their hatred or friendship'),
  (710, 71, 'குறிப்பறிதல்', 'நுண்ணியம் என்பார் அளக்குங்கோல் காணுங்கால்
கண்ணல்லது இல்லை பிற.', 'Nunniyam Enpaar Alakkungol Kaanungaal', 'The scale of keen discerning minds  Is eye and eye that secrets finds', 'The measuring-rod of those (ministers) who say "we are acute" will on inquiry be found to be their (own) eyes and nothing else'),
  (711, 72, 'அவையறிதல்', 'அவையறிநது ஆராய்ந்து சொல்லுக சொல்லின்
தொகையறிந்த தூய்மை யவர்.', 'Avaiyarinadhu Aaraaindhu Solluka Sollin', 'The pure in thought and eloquence  Adapt their words to audience', 'Let the pure who know the arrangement of words speak with deliberation after ascertaining (the nature of) the court (then assembled)'),
  (712, 72, 'அவையறிதல்', 'இடைதெரிந்து நன்குணர்ந்து சொல்லுக சொல்லின்
நடைதெரிந்த நன்மை யவர்.', 'Itaidherindhu Nankunarndhu Solluka Sollin', 'Who know the art of speech shall suit Their chosen words to time in fact', 'Let the good who know the uses of words speak with a clear knowledge after ascertaining the time (suited to the court)'),
  (713, 72, 'அவையறிதல்', 'அவையறியார் சொல்லல்மேற் கொள்பவர் சொல்லின்
வகையறியார் வல்லதூஉம் இல்.', 'Avaiyariyaar Sollalmer Kolpavar Sollin', 'They speak in vain at length who talk Words unversed which ears don\'t take', 'Those who undertake to speak without knowing the (nature of the) court are ignorant of the quality of words as well as devoid of the power (of learning)'),
  (714, 72, 'அவையறிதல்', 'ஒளியார்முன் ஒள்ளிய ராதல் வெளியார்முன்
வான்சுதை வண்ணம் கொளல்.', 'Oliyaarmun Olliya Raadhal Veliyaarmun', 'Before the bright be brilliant light Before the muff be mortar white', 'Ministers should be lights in the assembly of the enlightned, but assume the pure whiteness of mortar (ignorance) in that of fools'),
  (715, 72, 'அவையறிதல்', 'நன்றென்ற வற்றுள்ளும் நன்றே முதுவருள்
முந்து கிளவாச் செறிவு.', 'Nandrendra Vatrullum Nandre Mudhuvarul', 'Modest restraint all good excels Which argues not before elders', 'The modesty by which one does not rush forward and speak in (an assembly of) superiors is the best among all (one\'s) good qualities'),
  (716, 72, 'அவையறிதல்', 'ஆற்றின் நிலைதளர்ந் தற்றே வியன்புலம்
ஏற்றுணர்வார் முன்னர் இழுக்கு.', 'Aatrin Nilaidhalarn Thatre Viyanpulam', 'Tongue-slip before the talented wise is like slipping from righteous ways', '(For a minister) to blunder in the presence of those who have acquired a vast store of learning and know (the value thereof) is like a good man stumbling (and falling away) from the path (of virtue)'),
  (717, 72, 'அவையறிதல்', 'கற்றறிந்தார் கல்வி விளங்கும் கசடறச்
சொல்தெரிதல் வல்லார் அகத்து.', 'Katrarindhaar Kalvi Vilangum Kasatarach', 'The learning of the learned shines Valued by flawless scholar-minds', 'The learning of those who have read and understood (much) will shine in the assembly of those who faultlessly examine (the nature of) words'),
  (718, 72, 'அவையறிதல்', 'உணர்வ துடையார்முன் சொல்லல் வளர்வதன்
பாத்தியுள் நீர்சொரிந் தற்று.', 'Unarva Thutaiyaarmun Sollal Valarvadhan', 'To address understanding ones Is to water beds of growing grains', 'Lecturing to those who have the ability to understand (for themselves) is like watering a bed of plants that are growing (of themselves)'),
  (719, 72, 'அவையறிதல்', 'புல்லவையுள் பொச்சாந்தும் சொல்லற்க நல்லவையுள்
நன்குசலச் சொல்லு வார்.', 'Pullavaiyul Pochchaandhum Sollarka Nallavaiyul', 'O ye who speak before the keen Forgetful, address not the mean', 'Those who are able to speak good things impressively in an assembly of the good should not even forgetfully speak them in that of the low'),
  (720, 72, 'அவையறிதல்', 'அங்கணத்துள் உக்க அமிழ்தற்றால் தங்கணத்தார்
அல்லார்முன் கோட்டி கொளல்.', 'Anganaththul Ukka Amizhdhatraal Thanganaththaar', 'To hostiles who wise words utters Pours ambrosia into gutters', 'To utter (a good word) in the assembly of those who are of inferior rank is like dropping nectar on the ground'),
  (721, 73, 'அவையஞ்சாமை', 'வகையறிந்து வல்லவை வாய்சோரார் சொல்லின்
தொகையறிந்த தூய்மை யவர்.', 'Vakaiyarindhu Vallavai Vaaisoraar Sollin', 'The pure fail not in power of words Knowing grand council\'s moods and modes', 'The pure who know the classification of words having first ascertained the nature (of the court) will not (through fear) falter in their speech before the powerful body'),
  (722, 73, 'அவையஞ்சாமை', 'கற்றாருள் கற்றார் எனப்படுவர் கற்றார்முன்
கற்ற செலச்சொல்லு வார்.', 'Katraarul Katraar Enappatuvar Katraarmun', 'Among scholars he is scholar Who holds scholars with learned lore', 'Those who can agreeably set forth their acquirements before the learned will be regarded as the most learned among the learned'),
  (723, 73, 'அவையஞ்சாமை', 'பகையகத்துச் சாவார் எளியர் அரியர்
அவையகத்து அஞ்சா தவர்.', 'Pakaiyakaththuch Chaavaar Eliyar Ariyar', 'Many brave foes and die in fields The fearless few face wise councils', 'Many indeed may (fearlessly) die in the presence of (their) foes; (but) few are those who are fearless in the assembly (of the learned)'),
  (724, 73, 'அவையஞ்சாமை', 'கற்றார்முன் கற்ற செலச்சொல்லித் தாம்கற்ற
மிக்காருள் மிக்க கொளல்.', 'Katraarmun Katra Selachchollith Thaamkatra', 'Impress the learned with your lore From greater savants learn still more', '(Ministers) should agreeably set forth their acquirements before the learned and acquire more (knowledge) from their superiors (in learning)'),
  (725, 73, 'அவையஞ்சாமை', 'ஆற்றின் அளவறிந்து கற்க அவையஞ்சா
மாற்றங் கொடுத்தற் பொருட்டு.', 'Aatrin Alavarindhu Karka Avaiyanjaa', 'Grammar and logic learn so that Foes you can boldly retort', 'In order to reply fearlessly before a foreign court, (ministers) should learn logic according to the rules (of grammar)'),
  (726, 73, 'அவையஞ்சாமை', 'வாளொடென் வன்கண்ணர் அல்லார்க்கு நூலொடென்
நுண்ணவை அஞ்சு பவர்க்கு.', 'Vaaloten Vankannar Allaarkku Nooloten', 'To cowards what can sword avail And books to those who councils fail?', 'What have they to do with a sword who are not valiant, or they with learning who are afraid of an intelligent assembly ?'),
  (727, 73, 'அவையஞ்சாமை', 'பகையகத்துப் பேடிகை ஒள்வாள் அவையகத்து
அஞ்சு மவன்கற்ற நூல்.', 'Pakaiyakaththup Petikai Olvaal Avaiyakaththu', 'Like eunuch\'s sword in field, is vain His lore who fears men of brain', 'The learning of him who is diffident before an assembly is like the shining sword of an hermaphrodite in the presence of his foes'),
  (728, 73, 'அவையஞ்சாமை', 'பல்லவை கற்றும் பயமிலரே நல்லவையுள்
நன்கு செலச்சொல்லா தார்.', 'Pallavai Katrum Payamilare Nallavaiyul', 'Though learned much his lore is dead Who says no good before the good', 'Those who cannot agreeably speak good things before a good assembly are indeed unprofitable persons inspite of all their various acquirements'),
  (729, 73, 'அவையஞ்சாமை', 'கல்லா தவரின் கடையென்ப கற்றறிந்தும்
நல்லா ரவையஞ்சு வார்.', 'Kallaa Thavarin Kataiyenpa Katrarindhum', 'Who fear to face good assembly Are learned idiots, certainly', 'They who, though they have learned and understood, are yet afraid of the assembly of the good, are said to be inferior (even) to the illiterate'),
  (730, 73, 'அவையஞ்சாமை', 'உளரெனினும் இல்லாரொடு ஒப்பர் களன்அஞ்சிக்
கற்ற செலச்சொல்லா தார்.', 'Ulareninum Illaarotu Oppar Kalananjik', 'They are breathing dead who dare not Empress before the wise their art', 'Those who through fear of the assembly are unable to set forth their learning in an interesting manner, though alive, are yet like the dead'),
  (731, 74, 'நாடு', 'தள்ளா விளையுளும் தக்காரும் தாழ்விலாச்
செல்வரும் சேர்வது நாடு.', 'Thallaa Vilaiyulum Thakkaarum Thaazhvilaach', 'It\'s country which has souls of worth Unfailing yields and ample wealth', 'A kingdom is that in which (those who carry on) a complete cultivation, virtuous persons, and'),
  (732, 74, 'நாடு', 'பெரும்பொருளால் பெட்டக்க தாகி அருங்கேட்டால்
ஆற்ற விளைவது நாடு.', 'Perumporulaal Pettakka Thaaki Arungettaal', 'The Land has large luring treasure Where pests are nil and yields are sure', 'A kingdom is that which is desire for its immense wealth, and which grows greatly in prosperity, being free from destructive causes'),
  (733, 74, 'நாடு', 'பொறையொருங்கு மேல்வருங்கால் தாங்கி இறைவற்கு
இறையொருங்கு நேர்வது நாடு.', 'Poraiyorungu Melvarungaal Thaangi Iraivarku', 'It\'s land that bears pressing burdens And pays its tax which king demands', 'A kingdom is that which can bear any burden that may be pressed on it (from adjoining kingdoms) and (yet) pay the full tribute to its sovereign'),
  (734, 74, 'நாடு', 'உறுபசியும் ஓவாப் பிணியும் செறுபகையும்
சேரா தியல்வது நாடு.', 'Urupasiyum Ovaap Piniyum Serupakaiyum', 'It is country which is free from Fierce famine, plague and foemen\'s harm', 'A kingdom is that which continues to be free from excessive starvation, irremediable epidemics, and destructive foes'),
  (735, 74, 'நாடு', 'பல்குழுவும் பாழ்செய்யும் உட்பகையும் வேந்தலைக்கும்
கொல்குறும்பும் இல்லது நாடு.', 'Palkuzhuvum Paazhseyyum Utpakaiyum Vendhalaikkum', 'Sects and ruinous foes are nil No traitors in a land tranquil', 'A kingdom is that which is without various (irregular) associations, destructive internal enemies, and murderous savages who (sometimes) harass the sovereign'),
  (736, 74, 'நாடு', 'கேடறியாக் கெட்ட இடத்தும் வளங்குன்றா
நாடென்ப நாட்டின் தலை.', 'Ketariyaak Ketta Itaththum Valangundraa', 'The land of lands no ruin knows Even in grief its wealth yet grows', 'The learned say that the best kingdom is that which knows no evil (from its foes), and, if injured (at all), suffers no diminution in its fruitfulness'),
  (737, 74, 'நாடு', 'இருபுனலும் வாய்ந்த மலையும் வருபுனலும்
வல்லரணும் நாட்டிற்கு உறுப்பு.', 'Irupunalum Vaaindha Malaiyum Varupunalum', 'Waters up and down, hills and streams With strong forts as limbs country beams', 'The constituents of a kingdom are the two waters (from above and below), well situated hills and an undestructible fort'),
  (738, 74, 'நாடு', 'பிணியின்மை செல்வம் விளைவின்பம் ஏமம்
அணியென்ப நாட்டிவ் வைந்து.', 'Piniyinmai Selvam Vilaivinpam Emam', 'Rich yield, delight, defence and wealth Are jewels of lands with blooming health', 'Freedom from epidemics, wealth, produce, happiness and protection (to subjects); these five, the learned, say, are the ornaments of a kingdom'),
  (739, 74, 'நாடு', 'நாடென்ப நாடா வளத்தன நாடல்ல
நாட வளந்தரு நாடு.', 'Naatenpa Naataa Valaththana Naatalla', 'A land is land which yields unsought Needing hard work the land is nought', 'The learned say that those are kingdom whose wealth is not laboured for, and those not, whose wealth is only obtained through labour'),
  (740, 74, 'நாடு', 'ஆங்கமை வெய்தியக் கண்ணும் பயமின்றே
வேந்தமை வில்லாத நாடு.', 'Aangamai Veydhiyak Kannum Payamindre', 'Though a land has thus every thing It is worthless without a king', 'Although in possession of all the above mentioned excellences, these are indeed of no use to a country, in the absence of harmony between the sovereign and the sujects'),
  (741, 75, 'அரண்', 'ஆற்று பவர்க்கும் அரண்பொருள் அஞ்சித்தற்
போற்று பவர்க்கும் பொருள்.', 'Aatru Pavarkkum Aranporul Anjiththar', 'The fort is vital for offence Who fear the foes has its defence', 'A fort is an object of importance to those who march (against their foes) as well as to those who through fear (of pursuers) would seek it for shelter'),
  (742, 75, 'அரண்', 'மணிநீரும் மண்ணும் மலையும் அணிநிழற்
காடும் உடைய தரண்.', 'Manineerum Mannum Malaiyum Aninizhar', 'A crystal fount, a space a mount Thick woods form a fort paramount', 'A fort is that which has everlasting water, plains, mountains and cool shady forests'),
  (743, 75, 'அரண்', 'உயர்வகலம் திண்மை அருமைஇந் நான்கின்
அமைவரண் என்றுரைக்கும் நூல்.', 'Uyarvakalam Thinmai Arumaiin Naankin', 'An ideal fort\'s so says science: High, broad, strong and hard for access', 'The learned say that a fortress is an enclosure having these four (qualities) viz, height, breadth, strength and inaccessibility'),
  (744, 75, 'அரண்', 'சிறுகாப்பிற் பேரிடத்த தாகி உறுபகை
ஊக்கம் அழிப்ப தரண்.', 'Sirukaappir Peritaththa Thaaki Urupakai', 'Ample in space, easy to hold The fort foils enemies bold', 'A fort is that which has an extensive space within, but only small places to be guarded, and such as can destroy the courage of besieging foes'),
  (745, 75, 'அரண்', 'கொளற்கரிதாய்க் கொண்டகூழ்த் தாகி அகத்தார்
நிலைக்கெளிதாம் நீரது அரண்.', 'Kolarkaridhaaik Kontakoozhth Thaaki Akaththaar', 'Impregnable with stores of food Cosy to live-That fort is good', 'A fort is that which cannot be captured, which abounds in suitable provisions, and affords a position of easy defence to its inmates'),
  (746, 75, 'அரண்', 'எல்லாப் பொருளும் உடைத்தாய் இடத்துதவும்
நல்லாள் உடையது அரண்.', 'Ellaap Porulum Utaiththaai Itaththudhavum', 'A fort is full of stores and arms And brave heroes to meet alarms', 'A fort is that which has all (needful) things, and excellent heroes that can help it against destruction (by foes)'),
  (747, 75, 'அரண்', 'முற்றியும் முற்றா தெறிந்தும் அறைப்படுத்தும்
பற்றற் கரியது அரண்.', 'Mutriyum Mutraa Therindhum Araippatuththum', 'Besieging foes a fort withstands Darts and mines of treacherous hands', 'A fort is that which cannot be captured by blockading, assaulting, or undermining it'),
  (748, 75, 'அரண்', 'முற்றாற்றி முற்றி யவரையும் பற்றாற்றிப்
பற்றியார் வெல்வது அரண்.', 'Mutraatri Mutri Yavaraiyum Patraatrip', 'A fort holds itself and defies The attacks of encircling foes', 'That is a fort whose inmates are able to overcome without losing their ground, even abler men who have besieged it'),
  (749, 75, 'அரண்', 'முனைமுகத்து மாற்றலர் சாய வினைமுகத்து
வீறெய்தி மாண்ட தரண்.', 'Munaimukaththu Maatralar Saaya Vinaimukaththu', 'A fort it is that fells the foes And gains by deeds a name glorious', 'A fort is that which derives excellence from the stratagems made (by its inmates) to defeat their enemies in the battlefield'),
  (750, 75, 'அரண்', 'எனைமாட்சித் தாகியக் கண்ணும் வினைமாட்சி
இல்லார்கண் இல்லது அரண்.', 'Enaimaatchith Thaakiyak Kannum Vinaimaatchi', 'But a fort however grand Is nil if heroes do not stand', 'Although a fort may possess all (the above-said) excellence, it is, as it were without these, if its inmates possess not the excellence of action'),
  (751, 76, 'பொருள்செயல்வகை', 'பொருளல் லவரைப் பொருளாகச் செய்யும்
பொருளல்லது இல்லை பொருள்.', 'Porulal Lavaraip Porulaakach Cheyyum', 'Naught exists that can, save wealth Make the worthless as men of worth', 'Besides wealth there is nothing that can change people of no importance into those of (some) importance'),
  (752, 76, 'பொருள்செயல்வகை', 'இல்லாரை எல்லாரும் எள்ளுவர் செல்வரை
எல்லாரும் செய்வர் சிறப்பு.', 'Illaarai Ellaarum Elluvar Selvarai', 'The have-nothing poor all despise The men of wealth all raise and praise', 'All despise the poor; (but) all praise the rich'),
  (753, 76, 'பொருள்செயல்வகை', 'பொருளென்னும் பொய்யா விளக்கம் இருளறுக்கும்
எண்ணிய தேயத்துச் சென்று.', 'Porulennum Poiyaa Vilakkam Irularukkum', 'Waneless wealth is light that goes To every land and gloom removes', 'The imperishable light of wealth goes into regions desired (by its owner) and destroys the darkness (of enmity therein)'),
  (754, 76, 'பொருள்செயல்வகை', 'அறன்ஈனும் இன்பமும் ஈனும் திறனறிந்து
தீதின்றி வந்த பொருள்.', 'Araneenum Inpamum Eenum Thiranarindhu', 'The blameless wealth from fairest means Brings good virtue and also bliss', 'The wealth acquired with a knowledge of the proper means and without foul practices will yield virtue and happiness'),
  (755, 76, 'பொருள்செயல்வகை', 'அருளொடும் அன்பொடும் வாராப் பொருளாக்கம்
புல்லார் புரள விடல்.', 'Arulotum Anpotum Vaaraap Porulaakkam', 'Riches devoid of love and grace Off with it; it is disgrace!', '(Kings) should rather avoid than seek the accumulation of wealth which does not flow in with mercy and love'),
  (756, 76, 'பொருள்செயல்வகை', 'உறுபொருளும் உல்கு பொருளும்தன் ஒன்னார்த்
தெறுபொருளும் வேந்தன் பொருள்.', 'Uruporulum Ulku Porulumdhan Onnaarth', 'Escheats, derelicts; spoils of war Taxes duties are king\'s treasure', 'The spoils of slaughtered foes; these are the royal revenues'),
  (757, 76, 'பொருள்செயல்வகை', 'அருளென்னும் அன்பீன் குழவி பொருளென்னும்
செல்வச் செவிலியால் உண்டு.', 'Arulennum Anpeen Kuzhavi Porulennum', 'Grace the child of love is nourished By the wet-nurse of wealth cherished', 'The child mercy which is borne by love grows under the care of the rich nurse of wealth'),
  (758, 76, 'பொருள்செயல்வகை', 'குன்றேறி யானைப்போர் கண்டற்றால் தன்கைத்தொன்று
உண்டாகச் செய்வான் வினை.', 'Kundreri Yaanaip Por Kantatraal', 'Treasures in hand fulfil all things Like hill-tuskers the wars of kings', 'An undertaking of one who has wealth in one\'s hands is like viewing an elephant-fight from a hill-top'),
  (759, 76, 'பொருள்செயல்வகை', 'செய்க பொருளைச் செறுநர் செருக்கறுக்கும்
எஃகதனிற் கூரிய தில்.', 'Seyka Porulaich Cherunar Serukkarukkum', 'Make wealth; there is no sharper steel The insolence of foes to quell', 'Accumulate wealth; it will destroy the arrogance of (your) foes; there is no weapon sharper than it'),
  (760, 76, 'பொருள்செயல்வகை', 'ஒண்பொருள் காழ்ப்ப இயற்றியார்க்கு எண்பொருள்
ஏனை இரண்டும் ஒருங்கு.', 'Onporul Kaazhppa Iyatriyaarkku Enporul', 'They have joy and virtue at hand Who acquire treasures abundant', 'To those who have honestly acquired an abundance of riches, the other two, (virtue and pleasure) are things easy (of acquisition)'),
  (761, 77, 'படைமாட்சி', 'உறுப்பமைந்து ஊறஞ்சா வெல்படை வேந்தன்
வெறுக்கையுள் எல்லாம் தலை.', 'Uruppamaindhu Ooranjaa Velpatai Vendhan', 'The daring well-armed winning force Is king\'s treasure and main resource', 'The army which is complete in (its) parts and conquers without fear of wounds is the chief wealth of the king'),
  (762, 77, 'படைமாட்சி', 'உலைவிடத்து ஊறஞ்சா வன்கண் தொலைவிடத்துத்
தொல்படைக் கல்லால் அரிது.', 'Ulaivitaththu Ooranjaa Vankan Tholaivitaththuth', 'Through shots and wounds brave heroes hold Quailing not in fall, the field', 'Ancient army can alone have the valour which makes it stand by its king at the time of defeat, fearless of wounds and unmindful of its reduced strength'),
  (763, 77, 'படைமாட்சி', 'ஒலித்தக்கால் என்னாம் உவரி எலிப்பகை
நாகம் உயிர்ப்பக் கெடும்.', 'Oliththakkaal Ennaam Uvari Ela�ppakai', 'Sea-like ratfoes roar What if? They perish at a cobra\'s whiff', 'What if (a host of) hostile rats roar like the sea ? They will perish at the mere breath of the cobra'),
  (764, 77, 'படைமாட்சி', 'அழிவின்றி அறைபோகா தாகி வழிவந்த
வன்க ணதுவே படை.', 'Azhivindri Araipokaa Thaaki Vazhivandha', 'The army guards its genial flame Not crushed, routed nor marred in name', 'That indeed is an army which has stood firm of old without suffering destruction or deserting (to the enemy)'),
  (765, 77, 'படைமாட்சி', 'கூற்றுடன்று மேல்வரினும் கூடி எதிர்நிற்கும்
ஆற்ற லதுவே படை.', 'Kootrutandru Melvarinum Kooti Edhirnirkum', 'The real army with rallied force Resists even Death-God fierce', 'That indeed is an army which is capable of offering a united resistance, even if Yama advances against it with fury'),
  (766, 77, 'படைமாட்சி', 'மறமானம் மாண்ட வழிச்செலவு தேற்றம்
எனநான்கே ஏமம் படைக்கு.', 'Maramaanam Maanta Vazhichchelavu Thetram', 'Manly army has merits four:- Stately-march, faith, honour, valour', 'Valour, honour, following in the excellent-footsteps (of its predecessors) and trust-worthiness; these four alone constitute the safeguard of an army'),
  (767, 77, 'படைமாட்சி', 'தார்தாங்கிச் செல்வது தானை தலைவந்த
போர்தாங்கும் தன்மை அறிந்து.', 'Thaardhaangich Chelvadhu Thaanai Thalaivandha', 'Army sets on to face to foes Knowing how the trend of war goes', 'That is an army which knowing the art of warding off an impending struggle, can bear against the dust-van (of a hostile force)'),
  (768, 77, 'படைமாட்சி', 'அடல்தகையும் ஆற்றலும் இல்லெனினும் தானை
படைத்தகையால் பாடு பெறும்.', 'Ataldhakaiyum Aatralum Illeninum Thaanai', 'Army gains force by grand array Lacking in stay or dash in fray', 'Though destitute of courage to fight and strength (to endure), an army may yet gain renown by the splendour of its appearance'),
  (769, 77, 'படைமாட்சி', 'சிறுமையும் செல்லாத் துனியும் வறுமையும்
இல்லாயின் வெல்லும் படை.', 'Sirumaiyum Sellaath Thuniyum Varumaiyum', 'Army shall win if it is free From weakness, aversion, poverty', 'An army can triumph (over its foes) if it is free from diminution; irremediable aversion and poverty'),
  (770, 77, 'படைமாட்சி', 'நிலைமக்கள் சால உடைத்தெனினும் தானை
தலைமக்கள் இல்வழி இல்.', 'Nilaimakkal Saala Utaiththeninum Thaanai', 'With troops in large numbers on rolls Army can\'t march missing gen\'rals', 'Though an army may contain a large number of permanent soldiers, it cannot last if it has no generals'),
  (771, 78, 'படைச்செருக்கு', 'என்னைமுன் நில்லன்மின் தெவ்விர் பலரென்னை
முன்நின்று கல்நின் றவர்.', 'Ennaimun Nillanmin Thevvir Palarennai', 'Stand not before my chief, O foes! Many who stood, in stones repose', 'O my foes, stand not before my leader; (for) many are those who did so but afterwards stood (in the shape of) statues'),
  (772, 78, 'படைச்செருக்கு', 'கான முயலெய்த அம்பினில் யானை
பிழைத்தவேல் ஏந்தல் இனிது.', 'Kaana Muyaleydha Ampinil Yaanai', 'To lift a lance that missed a tusker Is prouder than shaft that hit a hare', 'It is more pleasant to hold the dart that has missed an elephant than that which has hit hare in the forest'),
  (773, 78, 'படைச்செருக்கு', 'பேராண்மை என்ப தறுகண்ஒன் றுற்றக்கால்
ஊராண்மை மற்றதன் எஃகு.', 'Peraanmai Enpa Tharukanon Rutrakkaal', 'Valour is fight with fierce courage Mercy to the fallen is its edge', 'The learned say that fierceness (incontest with a foe) is indeed great valour; but to become a benefactor in case of accident (to a foe) is the extreme (limit) of that valour'),
  (774, 78, 'படைச்செருக்கு', 'கைவேல் களிற்றொடு போக்கி வருபவன்
மெய்வேல் பறியா நகும்.', 'Kaivel Kalitrotu Pokki Varupavan', 'At the tusker he flings his lance One in body smiles another chance', 'The hero who after casting the lance in his hand on an elephant, comes (in search of another) will pluck the one (that sticks) in his body and laugh (exultingly)'),
  (775, 78, 'படைச்செருக்கு', 'விழித்தகண் வேல்கொண டெறிய அழித்திமைப்பின்
ஒட்டன்றோ வன்க ணவர்க்கு.', 'Vizhiththakan Velkona Teriya Azhiththimaippin', 'When lances dart if heroes wink \\"It is a rout\\" the world will think', 'Is it not a defeat to the valiant to wink and destroy their ferocious look when a lance in cast at them (by their foe) ?'),
  (776, 78, 'படைச்செருக்கு', 'விழுப்புண் படாதநாள் எல்லாம் வழுக்கினுள்
வைக்கும்தன் நாளை எடுத்து.', 'Vizhuppun Pataadhanaal Ellaam Vazhukkinul', 'The brave shall deem the days as vain Which did not battle-wounds sustain', 'The hero will reckon among wasted days all those on which he had not received severe wounds'),
  (777, 78, 'படைச்செருக்கு', 'சுழலும் இசைவேண்டி வேண்டா உயிரார்
கழல்யாப்புக் காரிகை நீர்த்து.', 'Suzhalum Isaiventi Ventaa Uyiraar', 'Their anklets aloud jingle their name Who sacrifice their life for fame', 'The fastening of ankle-ring by those who disire a world-wide renown and not (the safety of) their lives is like adorning (themselves)'),
  (778, 78, 'படைச்செருக்கு', 'உறின்உயிர் அஞ்சா மறவர் இறைவன்
செறினும் சீர்குன்றல் இலர்.', 'Urinuyir Anjaa Maravar Iraivan', 'The king may chide, they pursue strife; They fear loss of glory; not life', 'The heroes who are not afraid of losing their life in a contest will not cool their ardour, even if the king prohibits (their fighting)'),
  (779, 78, 'படைச்செருக்கு', 'இழைத்தது இகவாமைச் சாவாரை யாரே
பிழைத்தது ஒறுக்கிற் பவர்.', 'Izhaiththadhu Ikavaamaich Chaavaarai Yaare', 'Who will blame the heroes that lose Their lives in war to keep their vows?', 'Who would reproach with failure those who seal their oath with their death ?'),
  (780, 78, 'படைச்செருக்கு', 'புரந்தார்கண் நீர்மல்கச் சாகிற்பின் சாக்காடு
இரந்துகோள் தக்கது உடைத்து.', 'Purandhaarkan Neermalkach Chaakirpin Saakkaatu', 'Such a death shall be prayed for Which draws the the tears of the ruler', 'If (heroes) can so die as to fill with tears the eyes of their rulers, such a death deserves to be obtained even by begging'),
  (781, 79, 'நட்பு', 'செயற்கரிய யாவுள நட்பின் அதுபோல்
வினைக்கரிய யாவுள காப்பு.', 'Seyarkariya Yaavula Natpin Adhupol', 'Like friendship what\'s so hard to gain? That guards one against acts villain?', 'What so sure defence \'gainst all that foe can do?'),
  (782, 79, 'நட்பு', 'நிறைநீர நீரவர் கேண்மை பிறைமதிப்
பின்னீர பேதையார் நட்பு.', 'Niraineera Neeravar Kenmai Piraimadhip', 'Good friendship shines like waxing moon, The bad withers like waning moon', 'The friendship of the wise waxes like the new moon; (but) that of fools wanes like the full moon'),
  (783, 79, 'நட்பு', 'நவில்தொறும் நூல்நயம் போலும் பயில்தொறும்
பண்புடை யாளர் தொடர்பு.', 'Navildhorum Noolnayam Polum Payildhorum', 'Like taste in books good friendship grows The more one moves the more he knows', 'Like learning, the friendship of the noble, the more it is cultivated, the more delightful does it become'),
  (784, 79, 'நட்பு', 'நகுதற் பொருட்டன்று நட்டல் மிகுதிக்கண்
மேற்செனறு இடித்தற் பொருட்டு.', 'Nakudhar Poruttandru Nattal Mikudhikkan', 'Not to laugh is friendship made But to hit when faults exceed', 'Friendship is to be practised not for the purpose of laughing but for that of being beforehand in giving one another sharp rebukes in case of transgression'),
  (785, 79, 'நட்பு', 'புணர்ச்சி பழகுதல் வேண்டா உணர்ச்சிதான்
நட்பாங் கிழமை தரும்.', 'Punarchchi Pazhakudhal Ventaa Unarchchidhaan', 'No close living nor clasping grip Friendship\'s feeling heart\'s fellowship', 'Living together and holding frequent intercourse are not necessary (for friendship); (mutual) understanding can alone create a claim for it'),
  (786, 79, 'நட்பு', 'முகநக நட்பது நட்பன்று நெஞ்சத்து
அகநக நட்பது நட்பு.', 'Mukanaka Natpadhu Natpandru Nenjaththu', 'Friendship is not more smile on face It is the smiling heart\'s embrace', 'The love that dwells (merely in the smiles of the face is not friendship; (but) that which dwells deep in the smiles of the heart is true friendship'),
  (787, 79, 'நட்பு', 'அழிவி னவைநீக்கி ஆறுய்த்து அழிவின்கண்
அல்லல் உழப்பதாம் நட்பு.', 'Azhivi Navaineekki Aaruyththu Azhivinkan', 'From ruin friendship saves and shares The load of pain and right path shows', '(True) friendship turns aside from evil (ways) makes (him) walk in the (good) way, and, in case of loss if shares his sorrow (with him)'),
  (788, 79, 'நட்பு', 'உடுக்கை இழந்தவன் கைபோல ஆங்கே
இடுக்கண் களைவதாம் நட்பு.', 'Utukkai Izhandhavan Kaipola Aange', 'Friendship hastens help in mishaps Like hands picking up dress that slips', '(True) friendship hastens to the rescue of the afflicted (as readily) as the hand of one whose garment is loosened (before an assembly)'),
  (789, 79, 'நட்பு', 'நட்பிற்கு வீற்றிருக்கை யாதெனின் கொட்பின்றி
ஒல்லும்வாய் ஊன்றும் நிலை.', 'Natpirku Veetrirukkai Yaadhenin Kotpindri', 'Friendship is enthroned on the strength That always helps with utmost warmth', 'Friendship may be said to be on its throne when it possesses the power of supporting one at all times and under all circumstances, (in the practice or virtue and wealth)'),
  (790, 79, 'நட்பு', 'இனையர் இவரெமக்கு இன்னம்யாம் என்று
புனையினும் புல்லென்னும் நட்பு.', 'Inaiyar Ivaremakku Innamyaam Endru', '\\"Such we are and such they are!\\" Ev\'n this boast will friendship mar', 'Though friends may praise one another saying, "He is so intimate with us, and we so much (with him)"; (still) such friendship will appear mean'),
  (791, 80, 'நட்பாராய்தல்', 'நாடாது நட்டலிற் கேடில்லை நட்டபின்
வீடில்லை நட்பாள் பவர்க்கு.', 'Naataadhu Nattalir Ketillai Nattapin', 'Than testless friendship nought is worse For contacts formed will scarcely cease', 'As those who are of a friendly nature will not forsake (a friend) after once loving (him), there is no evil so great as contracting a friendship without due inquiry'),
  (792, 80, 'நட்பாராய்தல்', 'ஆய்ந்தாய்ந்து கொள்ளாதான் கேண்மை கடைமுறை
தான்சாம் துயரம் தரும்.', 'Aaindhaaindhu Kollaadhaan Kenmai Kataimurai', 'Friendship made without frequent test Shall end in grief and death at last', 'The friendship contracted by him who has not made repeated inquiry will in the end grieve (him) to death'),
  (793, 80, 'நட்பாராய்தல்', 'குணமும் குடிமையும் குற்றமும் குன்றா
இனனும் அறிந்தியாக்க நட்பு.', 'Kunamum Kutimaiyum Kutramum Kundraa', 'Temper, descent, defects and kins Trace well and take companions', 'Make friendship (with one) after ascertaining (his) character, birth, defects and the whole of one\'s relations'),
  (794, 80, 'நட்பாராய்தல்', 'குடிப்பிறந்து தன்கண் பழிநாணு வானைக்
கொடுத்தும் கொளல்வேண்டும் நட்பு.', 'Kutippirandhu Thankan Pazhinaanu Vaanaik', 'Take as good friend at any price The nobly born who shun disgrace', 'The friendship of one who belongs to a (good) family and is afraid of (being charged with) guilt, is worth even purchasing'),
  (795, 80, 'நட்பாராய்தல்', 'அழச்சொல்லி அல்லது இடித்து வழக்கறிய
வல்லார்நடபு ஆய்ந்து கொளல்.', 'Azhachcholli Alladhu Itiththu Vazhakkariya', 'Who make you weep and chide wrong trends And lead you right are worthy friends', 'You should examine and secure the friendship of those who can speak so as to make you weep over a crime (before its commission) or rebuke you severely (after you have done it) and are able to teach'),
  (796, 80, 'நட்பாராய்தல்', 'கேட்டினும் உண்டோர் உறுதி கிளைஞரை
நீட்டி அளப்பதோர் கோல்.', 'Kettinum Untor Urudhi Kilaignarai', 'Is there a test like misfortune A rod to measure out kinsmen?', 'Even in ruin there is some good; (for) it is a rod by which one may measure fully (the affection of one\'s) relations'),
  (797, 80, 'நட்பாராய்தல்', 'ஊதியம் என்பது ஒருவற்குப் பேதையார்
கேண்மை ஒரீஇ விடல்.', 'Oodhiyam Enpadhu Oruvarkup Pedhaiyaar', 'Keep off contacts with fools; that is The greatest gain so say the wise', 'It is indead a gain for one to renounce the friendship of fools'),
  (798, 80, 'நட்பாராய்தல்', 'உள்ளற்க உள்ளம் சிறுகுவ கொள்ளற்க
அல்லற்கண் ஆற்றறுப்பார் நட்பு.', 'Ullarka Ullam Sirukuva Kollarka', 'Off with thoughts that depress the heart Off with friends that in woe depart', 'Do not think of things that discourage your mind, nor contract friendship with those who would forsake you in adversity'),
  (799, 80, 'நட்பாராய்தல்', 'கெடுங்காலைக் கைவிடுவார் கேண்மை அடுங்காலை
உள்ளினும் உள்ளஞ் சுடும்.', 'Ketungaalaik Kaivituvaar Kenmai Atungaalai', 'Friends who betray at ruin\'s brink Burn our mind ev\'n at death to think', 'The very thought of the friendship of those who have deserted one at the approach of adversity will burn one\'s mind at the time of death'),
  (800, 80, 'நட்பாராய்தல்', 'மருவுக மாசற்றார் கேண்மைஒன் றீத்தும்
ஒருவுக ஒப்பிலார் நட்பு.', 'Maruvuka Maasatraar Kenmaion Reeththum', 'The blameless ones as friends embarace; Give something and give up the base', 'Continue to enjoy the friendship of the pure; (but) renounce even with a gift, the friendship of those who do not agree (with the world)'),
  (801, 81, 'பழைமை', 'பழைமை எனப்படுவது யாதெனின் யாதும்
கிழமையைக் கீழ்ந்திடா நட்பு.', 'Pazhaimai Enappatuvadhu Yaadhenin Yaadhum', 'That friendship is good amity Which restrains not one\'s liberty', 'Imtimate friendship is that which cannot in the least be injured by (things done through the) right (of longstanding intimacy)'),
  (802, 81, 'பழைமை', 'நட்பிற் குறுப்புக் கெழுதகைமை மற்றதற்கு
உப்பாதல் சான்றோர் கடன்.', 'Natpir Kuruppuk Kezhudhakaimai Matradharku', 'Friendship\'s heart is freedom close; Wise men\'s duty is such to please', 'The constituents of friendship are (things done through) the right of intimacy; to be pleased with such a right is the duty of the wise'),
  (803, 81, 'பழைமை', 'பழகிய நட்பெவன் செய்யுங் கெழுதகைமை
செய்தாங்கு அமையாக் கடை.', 'Pazhakiya Natpevan Seyyung Kezhudhakaimai', 'Of long friendship what is the use Righteous freedom if men refuse?', 'Of what avail is long-standing friendship, if friends do not admit as their own actions done through the right of intimacy ?'),
  (804, 81, 'பழைமை', 'விழைதகையான் வேண்டி இருப்பர் கெழுதகையாற்
கேளாது நட்டார் செயின்.', 'Vizhaidhakaiyaan Venti Iruppar Kezhudhakaiyaar', 'Things done unasked by loving friends Please the wise as familiar trends!', 'If friends, through the right of friendship, do (anything) without being asked, the wise will be pleased with them on account of its desirability'),
  (805, 81, 'பழைமை', 'பேதைமை ஒன்றோ பெருங்கிழமை என்றுணர்க
நோதக்க நட்டார் செயின்.', 'Pedhaimai Ondro Perungizhamai Endrunarka', 'Offence of friends feel it easy As folloy or close intimacy', 'If friends should perform what is painful, understand that it is owing not only to ignorance, but also to the strong claims of intimacy'),
  (806, 81, 'பழைமை', 'எல்லைக்கண் நின்றார் துறவார் தொலைவிடத்தும்
தொல்லைக்கண் நின்றார் தொடர்பு.', 'Ellaikkan Nindraar Thuravaar Tholaivitaththum', 'They forsake not but continue In friendship\'s bounds though loss ensue', 'Those who stand within the limits (of true friendship) will not even in adversity give up the intimacy of long-standing friends'),
  (807, 81, 'பழைமை', 'அழிவந்த செய்யினும் அன்பறார் அன்பின்
வழிவந்த கேண்மை யவர்.', 'Azhivandha Seyyinum Anparaar Anpin', 'Comrades established in firm love Though ruin comes waive not their vow', 'Those who have (long) stood in the path of affection will not give it up even if their friends cause (them) their ruin'),
  (808, 81, 'பழைமை', 'கேளிழுக்கம் கேளாக் கெழுதகைமை வல்லார்க்கு
நாளிழுக்கம் நட்டார் செயின்.', 'Kelizhukkam Kelaak Kezhudhakaimai Vallaarkku', 'Fast friends who list not tales of ill Though wronged they say \\"that day is well\\"', 'To those who understand that by which they should not listen to (tales about) the faults of their friends, that is a (profitable) day on which the latter may commit a fault'),
  (809, 81, 'பழைமை', 'கெடாஅ வழிவந்த கேண்மையார் கேண்மை
விடாஅர் விழையும் உலகு.', 'Ketaaa Vazhivandha Kenmaiyaar Kenmai', 'To love such friends the world desires Whose friendship has unbroken ties', 'They will be loved by the world, who have not forsaken the friendship of those with whom they have kept up an unbroken long-standing intimacy'),
  (810, 81, 'பழைமை', 'விழையார் விழையப் படுப பழையார்கண்
பண்பின் தலைப்பிரியா தார்.', 'Vizhaiyaar Vizhaiyap Patupa Pazhaiyaarkan', 'Even foes love for better ends Those who leave not long-standing friends', 'Even enemies will love those who have never changed in their affection to their long-standingfriends'),
  (811, 82, 'தீ நட்பு', 'பருகுவார் போலினும் பண்பிலார் கேண்மை
பெருகலிற் குன்றல் இனிது.', 'Parukuvaar Polinum Panpilaar Kenmai', 'Swallowing love of soulless men Had better wane than wax anon', 'The decrease of friendship with those who look as if they would eat you up (through excess of love) while they are really destitute of goodness is far better than its increase'),
  (812, 82, 'தீ நட்பு', 'உறின்நட்டு அறினொருஉம் ஒப்பிலார் கேண்மை
பெறினும் இழப்பினும் என்?', 'Urinnattu Arinoruum Oppilaar Kenmai', 'Who fawn in wealth and fail in dearth Gain or lose; such friends have no worth', 'Of what avail is it to get or lose the friendship of those who love when there is gain and leave when there is none ?'),
  (813, 82, 'தீ நட்பு', 'உறுவது சீர்தூக்கும் நட்பும் பெறுவது
கொள்வாரும் கள்வரும் நேர்.', 'Uruvadhu Seerdhookkum Natpum Peruvadhu', 'Cunning friends who calculate  Are like thieves and whores wicked', 'Friendship who calculate the profits (of their friendship), prostitutes who are bent on obtaining their gains, and thieves are (all) of the same character'),
  (814, 82, 'தீ நட்பு', 'அமரகத்து ஆற்றறுக்கும் கல்லாமா அன்னார்
தமரின் தனிமை தலை.', 'Amarakaththu Aatrarukkum Kallaamaa Annaar', 'Better be alone than trust in those That throw in field like faithless horse', 'Solitude is more to be desired than the society of those who resemble the untrained horses which throw down (their riders) in the fields of battle'),
  (815, 82, 'தீ நட்பு', 'செய்தேமஞ் சாராச் சிறியவர் புன்கேண்மை
எய்தலின் எய்தாமை நன்று.', 'Seydhemanj Chaaraach Chiriyavar Punkenmai', 'Friends low and mean that give no help- Leave them is better than to keep', 'It is far better to avoid that to contract the evil friendship of the base who cannot protect (their friends) even when appointed to do so'),
  (816, 82, 'தீ நட்பு', 'பேதை பெருங்கெழீஇ நட்பின் அறிவுடையார்
ஏதின்மை கோடி உறும்.', 'Pedhai Perungezheei Natpin Arivutaiyaar', 'Million times the wise man\'s hate Is better than a fool intimate', 'The hatred of the wise is ten-million times more profitable than the excessive intimacy of the fool'),
  (817, 82, 'தீ நட்பு', 'நகைவகைய ராகிய நட்பின் பகைவரால்
பத்தடுத்த கோடி உறும்.', 'Nakaivakaiya Raakiya Natpin Pakaivaraal', 'Ten-fold crore you gain from foes Than from friends who are vain laughers', 'What comes from enemies is a hundred million times more profitable than what comes from the friendship of those who cause only laughter'),
  (818, 82, 'தீ நட்பு', 'ஒல்லும் கருமம் உடற்று பவர்கேண்மை
சொல்லாடார் சோர விடல்.', 'Ollum Karumam Utatru Pavarkenmai', 'Without a word those friends eschew Who spoil deeds which they can do', 'Gradually abandon without revealing (beforehand) the friendship of those who pretend inability to carry out what they (really) could do'),
  (819, 82, 'தீ நட்பு', 'கனவினும் இன்னாது மன்னோ வினைவேறு
சொல்வேறு பட்டார் தொடர்பு.', 'Kanavinum Innaadhu Manno Vinaiveru', 'Even in dreams the tie is bad With those whose deed is far from word', 'The friendship of those whose actions do not agree with their words will distress (one) even in (one\'s) dreams'),
  (820, 82, 'தீ நட்பு', 'எனைத்தும் குறுகுதல் ஓம்பல் மனைக்கெழீஇ
மன்றில் பழிப்பார் தொடர்பு.', 'Enaiththum Kurukudhal Ompal Manaikkezheei', 'Keep aloof from those that smile At home and in public revile', 'Avoid even the least approach to a contraction of friendship with those who would love you in private but ridicule you in public'),
  (821, 83, 'கூடாநட்பு', 'சீரிடம் காணின் எறிதற்குப் பட்டடை
நேரா நிரந்தவர் நட்பு.', 'Seeritam Kaanin Eridharkup Pattatai', 'The friendship by an enemy shown Is anvil in time, to strike you down', 'The friendship of those who behave like friends without inward affection is a weapon that may be thrown when a favourable opportunity presents itself'),
  (822, 83, 'கூடாநட்பு', 'இனம்போன்று இனமல்லார் கேண்மை மகளிர்
மனம்போல வேறு படும்.', 'Inampondru Inamallaar Kenmai Makalir', 'Who pretend kinship but are not Their friendship\'s fickle like woman\'s heart', 'The friendship of those who seem to be friends while they are not, will change like the love of women'),
  (823, 83, 'கூடாநட்பு', 'பலநல்ல கற்றக் கடைத்து மனநல்லர்
ஆகுதல் மாணார்க் கரிது.', 'Palanalla Katrak Kataiththu Mananallar', 'They may be vast in good studies But heartfelt-love is hard for foes', 'Though (one\'s) enemies may have mastered many good books, it will be impossible for them to become truly loving at heart'),
  (824, 83, 'கூடாநட்பு', 'முகத்தின் இனிய நகாஅ அகத்தின்னா
வஞ்சரை அஞ்சப் படும்.', 'Mukaththin Iniya Nakaaa Akaththinnaa', 'Fear foes whose face has winning smiles Whose heart is full of cunning guiles', 'One should fear the deceitful who smile sweetly with their face but never love with their heart'),
  (825, 83, 'கூடாநட்பு', 'மனத்தின் அமையா தவரை எனைத்தொன்றும்
சொல்லினால் தேறற்பாற்று அன்று.', 'Manaththin Amaiyaa Thavarai Enaiththondrum', 'Do not trust in what they tell Whose mind with your mind goes ill', 'In nothing whatever is it proper to rely on the words of those who do not love with their heart'),
  (826, 83, 'கூடாநட்பு', 'நட்டார்போல் நல்லவை சொல்லினும் ஒட்டார்சொல்
ஒல்லை உணரப் படும்.', 'Nattaarpol Nallavai Sollinum Ottaarsol', 'The words of foes is quickly seen Though they speak like friends in fine', 'Though (one\'s) foes may utter good things as though they were friends, once will at once understand (their evil, import)'),
  (827, 83, 'கூடாநட்பு', 'சொல்வணக்கம் ஒன்னார்கண் கொள்ளற்க வில்வணக்கம்
தீங்கு குறித்தமை யான்.', 'Solvanakkam Onnaarkan Kollarka Vilvanakkam', 'Trust not the humble words of foes Danger darts from bending bows', 'Since the bending of the bow bespeaks evil, one should not accept (as good) the humiliating speeches of one\'s foes'),
  (828, 83, 'கூடாநட்பு', 'தொழுதகை யுள்ளும் படையொடுங்கும் ஒன்னார்
அழுதகண் ணீரும் அனைத்து.', 'Thozhudhakai Yullum Pataiyotungum Onnaar', 'Adoring hands of foes hide arms Their sobbing tears have lurking harms', 'A weapon may be hid in the very hands with which (one\'s) foes adore (him) (and) the tears they shed are of the same nature'),
  (829, 83, 'கூடாநட்பு', 'மிகச்செய்து தம்மெள்ளு வாரை நகச்செய்து
நட்பினுள் சாப்புல்லற் பாற்று.', 'Mikachcheydhu Thammellu Vaarai Nakachcheydhu', 'In open who praise, at heart despise Cajole and crush them in friendly guise', 'It is the duty of kings to affect great love but make it die (inwardly); as regard those foes who shew them great friendship but despise them (in their heart)'),
  (830, 83, 'கூடாநட்பு', 'பகைநட்பாம் காலம் வருங்கால் முகநட்டு
அகநட்பு ஒரீஇ விடல்.', 'Pakainatpaam Kaalam Varungaal Mukanattu', 'When foes, in time, play friendship\'s part Feign love on face but not in heart', 'When one\'s foes begin to affect friendship, one should love them with one\'s looks, and, cherishing no love in the heart, give up (even the former)'),
  (831, 84, 'பேதைமை', 'பேதைமை என்பதொன்று யாதெனின் ஏதங்கொண்டு
ஊதியம் போக விடல்.', 'Pedhaimai Enpadhondru Yaadhenin Edhangontu', 'This is folly\'s prominent vein To favour loss and forego gain', 'Folly is one (of the chief defects); it is that which (makes one) incur loss and forego gain'),
  (832, 84, 'பேதைமை', 'பேதைமையுள் எல்லாம் பேதைமை காதன்மை
கையல்ல தன்கட் செயல்.', 'Pedhaimaiyul Ellaam Pedhaimai Kaadhanmai', 'Folly of follies is to lead A lewd and lawless life so bad', 'The greatest folly is that which leads one to take delight in doing what is forbidden'),
  (833, 84, 'பேதைமை', 'நாணாமை நாடாமை நாரின்மை யாதொன்றும்
பேணாமை பேதை தொழில்', 'Naanaamai Naataamai Naarinmai Yaadhondrum', 'Shameless, aimless, callous, listless Such are the marks of foolishness', 'Shamelessness indifference (to what must be sought after), harshness, and aversion for everything (that ought to be desired) are the qualities of the fool'),
  (834, 84, 'பேதைமை', 'ஓதி உணர்ந்தும் பிறர்க்குரைத்தும் தானடங்காப்
பேதையின் பேதையார் இல்.', 'Odhi Unarndhum Pirarkkuraiththum Thaanatangaap', 'No fool equals the fool who learns Knows, teaches, but self-control spurns', 'There are no greater fools than he who, though he has read and understood (a great deal) and even taught it to others, does not walk according to his own teaching'),
  (835, 84, 'பேதைமை', 'ஒருமைச் செயலாற்றும் பேதை எழுமையும்
தான்புக் கழுந்தும் அளறு.', 'Orumaich Cheyalaatrum Pedhai Ezhumaiyum', 'The fool suffers seven fold hells In single birth of hellish ills', 'A fool can procure in a single birth a hell into which he may enter and suffer through all the seven births'),
  (836, 84, 'பேதைமை', 'பொய்படும் ஒன்றோ புனைபூணும் கையறியாப்
பேதை வினைமேற் கொளின்.', 'Poipatum Ondro Punaipoonum Kaiyariyaap', 'A know-nothing fool daring a deed Not only fails but feels fettered', 'If the fool, who knows not how to act undertakes a work, he will (certainly) fail (But) is it all ? He will even adorn himself with fetters'),
  (837, 84, 'பேதைமை', 'ஏதிலார் ஆரத் தமர்பசிப்பர் பேதை
பெருஞ்செல்வம் உற்றக் கடை.', 'Edhilaar Aarath Thamarpasippar Pedhai', 'Strangers feast and kinsmen fast  When fools mishandle fortunes vast', 'If a fool happens to get an immense fortune, his neighbours will enjoy it while his relations starve'),
  (838, 84, 'பேதைமை', 'மையல் ஒருவன் களித்தற்றால் பேதைதன்
கையொன்று உடைமை பெறின்.', 'Maiyal Oruvan Kaliththatraal Pedhaidhan', 'Fools possessing something on hand Like dazed and drunken stupids stand', 'A fool happening to possess something is like the intoxication of one who is (already) giddy'),
  (839, 84, 'பேதைமை', 'பெரிதினிது பேதையார் கேண்மை பிரிவின்கண்
பீழை தருவதொன் றில்.', 'Peridhinidhu Pedhaiyaar Kenmai Pirivinkan', 'Friendship with fools is highly sweet For without a groan we part', 'The friendship between fools is exceedingly delightful (to each other): for at parting there will be'),
  (840, 84, 'பேதைமை', 'கழாஅக்கால் பள்ளியுள் வைத்தற்றால் சான்றோர்
குழாஅத்துப் பேதை புகல்.', 'Kazhaaakkaal Palliyul Vaiththatraal Saandror', 'Entrance of fools where Savants meet Looks like couch trod by unclean feet', 'The appearance of a fool in an assembly of the learned is like placing (one\'s) unwashed feet on a bed'),
  (841, 85, 'புல்லறிவாண்மை', 'அறிவின்மை இன்மையுள் இன்மை பிறிதின்மை
இன்மையா வையா துலகு.', 'Arivinmai Inmaiyul Inmai Piridhinmai', 'Want of wisdom is want of wants Want of aught else the world nev\'r counts', 'The want of wisdom is the greatest of all wants; but that of wealth the world will not regard as such'),
  (842, 85, 'புல்லறிவாண்மை', 'அறிவிலான் நெஞ்சுவந்து ஈதல் பிறிதியாதும்
இல்லை பெறுவான் தவம்.', 'Arivilaan Nenjuvandhu Eedhal Piridhiyaadhum', 'When fool bestows with glee a gift It comes but by getter\'s merit', '(The cause of) a fool cheerfully giving (something) is nothing else but the receiver\'s merit (in a former birth)'),
  (843, 85, 'புல்லறிவாண்மை', 'அறிவிலார் தாந்தம்மைப் பீழிக்கும் பீழை
செறுவார்க்கும் செய்தல் அரிது.', 'Arivilaar Thaandhammaip Peezhikkum Peezhai', 'The self-torments of fools exceed Ev\'n tortures of their foes indeed', 'The suffering that fools inflict upon themselves is hardly possible even to foes'),
  (844, 85, 'புல்லறிவாண்மை', 'வெண்மை எனப்படுவ தியாதெனின் ஒண்மை
உடையம்யாம் என்னும் செருக்கு.', 'Venmai Enappatuva Thiyaadhenin Onmai', 'Stupidity is vanity That cries \\"We have sagacity\\"', 'What is called want of wisdom is the vanity which says, "We are wise"'),
  (845, 85, 'புல்லறிவாண்மை', 'கல்லாத மேற்கொண் டொழுகல் கசடற
வல்லதூஉம் ஐயம் தரும்.', 'Kallaadha Merkon Tozhukal Kasatara', 'Feigning knowledge that one has not Leads to doubt ev\'n that he has got', 'Fools pretending to know what has not been read (by them) will rouse suspicion even as to what they have thoroughly mastered'),
  (846, 85, 'புல்லறிவாண்மை', 'அற்றம் மறைத்தலோ புல்லறிவு தம்வயின்
குற்றம் மறையா வழி.', 'Atram Maraiththalo Pullarivu Thamvayin', 'Fools their nakedness conceal And yet their glaring faults reveal', 'Even to cover one\'s nakedness would be folly, if (one\'s) faults were not covered (by forsaking them)'),
  (847, 85, 'புல்லறிவாண்மை', 'அருமறை சோரும் அறிவிலான் செய்யும்
பெருமிறை தானே தனக்கு.', 'Arumarai Sorum Arivilaan Seyyum', 'The fool that slights sacred counsels Upon himself great harm entails', 'The fool who neglects precious counsel does, of his own accord, a great injury to himself'),
  (848, 85, 'புல்லறிவாண்மை', 'ஏவவும் செய்கலான் தான்தேறான் அவ்வுயிர்
போஒம் அளவுமோர் நோய்.', 'Evavum Seykalaan Thaandheraan Avvuyir', 'He listens not nor himself knows Plague is his life until it goes', 'The fool will not perform (his duties) even when advised nor ascertain them himself; such a soul is a'),
  (849, 85, 'புல்லறிவாண்மை', 'காணாதான் காட்டுவான் தான்காணான் காணாதான்
கண்டானாம் தான்கண்ட வாறு.', 'Kaanaadhaan Kaattuvaan Thaankaanaan Kaanaadhaan', 'Sans Self-sight in vain one opens Sight To the blind who bet their sight as right', 'One who would teach a fool will (simply) betray his folly; and the fool would (still) think himself "wise in his own conceit"'),
  (850, 85, 'புல்லறிவாண்மை', 'உலகத்தார் உண்டென்பது இல்லென்பான் வையத்து
அலகையா வைக்கப் படும்.', 'Ulakaththaar Untenpadhu Illenpaan Vaiyaththu', 'To people\'s \\"Yes\\" who proffer \\"No\\" Deemed as ghouls on earth they go', 'He who denies the existence of what the world believes in will be regarded as a demon on earth'),
  (851, 86, 'இகல்', 'இகலென்ப எல்லா உயிர்க்கும் பகலென்னும்
பண்பின்மை பார஧க்கும் நோய்.', 'Ikalenpa Ellaa Uyirkkum Pakalennum', 'Hatred is a plague that divides And rouses illwill on all sides', 'The disease which fosters the evil of disunion among all creatures is termed hatred by the wise'),
  (852, 86, 'இகல்', 'பகல்கருதிப் பற்றா செயினும் இகல்கருதி
இன்னாசெய் யாமை தலை.', 'Pakalkarudhip Patraa Seyinum Ikalkarudhi', 'Rouse not hatred and confusion Though foes provoke disunion', 'Though disagreeable things may be done from (a feeling of) disunion, it is far better that nothing painful be done from (that of) hatred'),
  (853, 86, 'இகல்', 'இகலென்னும் எவ்வநோய் நீக்கின் தவலில்லாத்
தாவில் விளக்கம் தரும்.', 'Ikalennum Evvanoi Neekkin Thavalillaath', 'Shun the plague of enmity And win everlasting glory', 'To rid one-self of the distressing dtsease of hatred will bestow (on one) a never-decreasing imperishable fame'),
  (854, 86, 'இகல்', 'இன்பத்துள் இன்பம் பயக்கும் இகலென்னும்
துன்பத்துள் துன்பங் கெடின்.', 'Inpaththul Inpam Payakkum Ikalennum', 'Hate-the woe of woes destroy; Then joy of joys you can enjoy', 'If hatred which is the greatest misery is destroyed, it will yield the greatest delight'),
  (855, 86, 'இகல்', 'இகலெதிர் சாய்ந்தொழுக வல்லாரை யாரே
மிக்லூக்கும் தன்மை யவர்.', 'Ikaledhir Saaindhozhuka Vallaarai Yaare', 'Who can overcome them in glory That are free from enmity?', 'Who indeed would think of conquering those who naturally shrink back from hatred ?'),
  (856, 86, 'இகல்', 'இகலின் மிகலினிது என்பவன் வாழ்க்கை
தவலும் கெடலும் நணித்து.', 'Ikalin Mikalinidhu Enpavan Vaazhkkai', 'His fall and ruin are quite near Who holds enmity sweet and dear', 'Failure and ruin are not far from him who says it is sweet to excel in hatred'),
  (857, 86, 'இகல்', 'மிகல்மேவல் மெய்ப்பொருள் காணார் இகல்மேவல்
இன்னா அறிவி னவர்.', 'Mikalmeval Meypporul Kaanaar Ikalmeval', 'They cannot see the supreme Truth Who hate and injure without ruth', 'Who only know to work men woe, fulfilled of enmity'),
  (858, 86, 'இகல்', 'இகலிற்கு எதிர்சாய்தல் ஆக்கம் அதனை
மிக்லூக்கின் ஊக்குமாம் கேடு.', 'Ikalirku Edhirsaaidhal Aakkam Adhanai', 'To turn from enmity is gain Fomenting it brings fast ruin', 'Shrinking back from hatred will yield wealth; indulging in its increase will hasten ruin'),
  (859, 86, 'இகல்', 'இகல்காணான் ஆக்கம் வருங்கால் அதனை
மிகல்காணும் கேடு தரற்கு.', 'Ikalkaanaan Aakkam Varungaal Adhanai', 'Fortune favours when hate recedes Hatred exceeding ruin breeds', 'At the approach of wealth one will not think of hatred (but) to secure one\'s ruin, one will look to its increase'),
  (860, 86, 'இகல்', 'இகலானாம் இன்னாத எல்லாம் நகலானாம்
நன்னயம் என்னும் செருக்கு.', 'Ikalaanaam Innaadha Ellaam Nakalaanaam', 'All evils come from enmity All goodness flow from amity', 'All calamities are caused by hatred; but by the delight (of friendship) is caused the great wealth of good virtues'),
  (861, 87, 'பகைமாட்சி', 'வலியார்க்கு மாறேற்றல் ஓம்புக ஓம்பா
மெலியார்மேல் மேக பகை.', 'Valiyaarkku Maaretral Ompuka Ompaa', 'Turn from strife with foes too strong With the feeble for battle long', 'Avoid offering resistance to the strong; (but) never fail to cherish enmity towards the weak'),
  (862, 87, 'பகைமாட்சி', 'அன்பிலன் ஆன்ற துணையிலன் தான்துவ்வான்
என்பரியும் ஏதிலான் துப்பு.', 'Anpilan Aandra Thunaiyilan Thaandhuvvaan', 'Loveless, aidless, powerless king Can he withstand an enemy strong?', 'How can he who is unloving, destitute of powerful aids, and himself without strength overcome the might of his foe ?'),
  (863, 87, 'பகைமாட்சி', 'அஞ்சும் அறியான் அமைவிலன் ஈகலான்
தஞ்சம் எளியன் பகைக்கு.', 'Anjum Ariyaan Amaivilan Eekalaan', 'Unskilled, timid, miser, misfit He is easy for foes to hit', 'In the estimation of foes miserably weak is he, who is timid, ignorant, unsociable and niggardly'),
  (864, 87, 'பகைமாட்சி', 'நீங்கான் வெகுளி நிறையிலன் எஞ்ஞான்றும்
யாங்கணும் யார்க்கும் எளிது.', 'Neengaan Vekuli Niraiyilan Egngnaandrum', 'The wrathful restive man is prey To any, anywhere any day', 'He who neither refrains from anger nor keeps his secrets will at all times and in all places be easily conquered by all'),
  (865, 87, 'பகைமாட்சி', 'வழிநோக்கான் வாய்ப்பன செய்யான் பழிநோக்கான்
பண்பிலன் பற்றார்க்கு இனிது.', 'Vazhinokkaan Vaaippana Seyyaan Pazhinokkaan', 'Crooked, cruel, tactless and base Any foe can fell him with ease', '(A) pleasing (object) to his foes is he who reads not moral works, does nothing that is enjoined by them cares not for reproach and is not possessed of good qualities'),
  (866, 87, 'பகைமாட்சி', 'காணாச் சினத்தான் கழிபெருங் காமத்தான்
பேணாமை பேணப் படும்.', 'Kaanaach Chinaththaan Kazhiperung Kaamaththaan', 'Blind in rage and mad in lust To have his hatred is but just', 'Highly to be desired is the hatred of him whose anger is blind, and whose lust increases beyond measure'),
  (867, 87, 'பகைமாட்சி', 'கொடுத்தும் கொளல்வேண்டும் மன்ற அடுத்திருந்து
மாணாத செய்வான் பகை.', 'Kotuththum Kolalventum Mandra Atuththirundhu', 'Pay and buy his enmity Who muddles chance with oddity', 'It is indeed necessary to obtain even by purchase the hatred of him who having begun (a work) does what is not conductive (to its accomplishment)'),
  (868, 87, 'பகைமாட்சி', 'குணனிலனாய்க் குற்றம் பலவாயின் மாற்றார்க்கு
இனனிலனாம் ஏமாப் புடைத்து.', 'Kunanilanaaik Kutram Palavaayin Maatraarkku', 'With no virtue but full of vice He loses friends and delights foes', 'He will become friendless who is without (any good) qualities and whose faults are many; (such a character) is a help to (his) foes'),
  (869, 87, 'பகைமாட்சி', 'செறுவார்க்குச் சேணிகவா இன்பம் அறிவிலா
அஞ்சும் பகைவர்ப் பெறின்.', 'Seruvaarkkuch Chenikavaa Inpam Arivilaa', 'The joy of heroes knows no bounds When timid fools are opponents', 'There will be no end of lofty delights to the victorious, if their foes are (both) ignorant and timid'),
  (870, 87, 'பகைமாட்சி', 'கல்லான் வெகுளும் சிறுபொருள் எஞ்ஞான்றும்
ஒல்லானை ஒல்லா தொளி.', 'Kallaan Vekulum Siruporul Egngnaandrum', 'Glory\'s light he will not gain Who fails to fight a fool and win', 'The light (of fame) will never be gained by him who gains not the trifling reputation of having fought an unlearned (foe)'),
  (871, 88, 'பகைத்திறந்தெரிதல்', 'பகைஎன்னும் பண்பி லதனை ஒருவன்
நகையேயும் வேண்டற்பாற்று அன்று.', 'Pakaiennum Panpi Ladhanai Oruvan', 'Let not one even as a sport The ill-natured enmity court', 'The evil of hatred is not of a nature to be desired by one even in sport'),
  (872, 88, 'பகைத்திறந்தெரிதல்', 'வில்லேர் உழவர் பகைகொளினும் கொள்ளற்க
சொல்லேர் உழவர் பகை.', 'Viller Uzhavar Pakaikolinum Kollarka', 'Incur the hate of bow-ploughers But not the hate of word-ploughers', 'Though you may incur the hatred of warriors whose ploughs are bows, incur not that of ministers whose ploughs are words'),
  (873, 88, 'பகைத்திறந்தெரிதல்', 'ஏமுற் றவரினும் ஏழை தமியனாய்ப்
பல்லார் பகைகொள் பவன்.', 'Emur Ravarinum Ezhai Thamiyanaaip', 'Forlorn, who rouses many foes The worst insanity betrays', 'He who being alone, incurs the hatred of many is more infatuated than even mad men'),
  (874, 88, 'பகைத்திறந்தெரிதல்', 'பகைநட்பாக் கொண்டொழுகும் பண்புடை யாளன்
தகைமைக்கண் தங்கிற்று உலகு.', 'Pakainatpaak Kontozhukum Panputai Yaalan', 'This world goes safely in his grace Whose heart makes friends even of foes', 'Whose worthy rule can change his foes to friends'),
  (875, 88, 'பகைத்திறந்தெரிதல்', 'தன்துணை இன்றால் பகையிரண்டால் தான்ஒருவன்
இன்துணையாக் கொள்கவற்றின் ஒன்று.', 'Thandhunai Indraal Pakaiyirantaal Thaanoruvan', 'Alone, if two foes you oppose Make one of them your ally close', 'He who is alone and helpless while his foes are two should secure one of them as an agreeable help (to himself)'),
  (876, 88, 'பகைத்திறந்தெரிதல்', 'தேறினும் தேறா விடினும் அழிவின்கண்
தேறான் பகாஅன் விடல்.', 'Thera�num Theraa Vitinum Azhivinkan', 'Trust or distrust; during distress Keep aloof; don\'t mix with foes', 'Though (one\'s foe is) aware or not of one\'s misfortune one should act so as neither to join nor separate (from him)'),
  (877, 88, 'பகைத்திறந்தெரிதல்', 'நோவற்க நொந்தது அறியார்க்கு மேவற்க
மென்மை பகைவர் அகத்து.', 'Novarka Nondhadhu Ariyaarkku Mevarka', 'To those who know not, tell not your pain Nor your weakness to foes explain', 'Relate not your suffering even to friends who are ignorant of it, nor refer to your weakness in the presence of your foes'),
  (878, 88, 'பகைத்திறந்தெரிதல்', 'வகையறிந்து தற்செய்து தற்காப்ப மாயும்
பகைவர்கண் பட்ட செருக்கு.', 'Vakaiyarindhu Tharseydhu Tharkaappa Maayum', 'Know how and act and defend well The pride of enemies shall fall', 'The joy of one\'s foes will be destroyed if one guards oneself by knowing the way (of acting) and securing assistance'),
  (879, 88, 'பகைத்திறந்தெரிதல்', 'இளைதாக முள்மரம் கொல்க களையுநர்
கைகொல்லும் காழ்த்த இடத்து.', 'Ilaidhaaka Mulmaram Kolka Kalaiyunar', 'Cut off thorn-trees when young they are; Grown hard, they cut your hands beware', 'A thorny tree should be felled while young, (for) when it is grown it will destroy the hand of the feller'),
  (880, 88, 'பகைத்திறந்தெரிதல்', 'உயிர்ப்ப உளரல்லர் மன்ற செயிர்ப்பவர்
செம்மல் சிதைக்கலா தார்.', 'Uyirppa Ularallar Mandra Seyirppavar', 'To breathe on earth they are not fit Defying foes who don\'t defeat', 'Those who do not destroy the pride of those who hate (them) will certainly not exist even to breathe'),
  (881, 89, 'உட்பகை', 'நிழல்நீரும் இன்னாத இன்னா தமர்நீரும்
இன்னாவாம் இன்னா செயின்.', 'Nizhalneerum Innaadha Innaa Thamarneerum', 'Traitorous kinsmen will make you sad As water and shade do harm when bad', 'Shade and water are not pleasant, (if) they cause disease; so are the qualities of (one\'s) relations not agreeable, (if) they cause pain'),
  (882, 89, 'உட்பகை', 'வாள்போல பகைவரை அஞ்சற்க அஞ்சுக
கேள்போல் பகைவர் தொடர்பு.', 'Vaalpola Pakaivarai Anjarka Anjuka', 'You need not sword-like kinsmen fear Fear foes who feign as kinsmen dear', 'Fear not foes (who say they would cut) like a sword; (but) fear the friendship of foes (who seemingly'),
  (883, 89, 'உட்பகை', 'உட்பகை அஞ்சித்தற் காக்க உலைவிடத்து
மட்பகையின் மாணத் தெறும்.', 'Utpakai Anjiththar Kaakka Ulaivitaththu', 'The secret foe in days evil Will cut you, beware, like potters\' steel', 'Fear internal enmity and guard yourself; (if not) it will destroy (you) in an evil hour, as surely as the tool which cuts the potter\'s clay'),
  (884, 89, 'உட்பகை', 'மனமாணா உட்பகை தோன்றின் இனமாணா
ஏதம் பலவும் தரும்.', 'Manamaanaa Utpakai Thondrin Inamaanaa', 'The evil-minded foe within Foments trouble, spoils kinsmen!', 'The secret enmity of a person whose mind in unreformed will lead to many evils causing disaffection among (one\'s) relations'),
  (885, 89, 'உட்பகை', 'உறல்முறையான் உட்பகை தோன்றின் இறல்முறையான்
ஏதம் பலவும் தரும்.', 'Uralmuraiyaan Utpakai Thondrin Iralmuraiyaan', 'A traitor among kinsmen will Bring life-endangering evil', 'If there appears internal hatred in a (king\'s) family; it will lead to many a fatal crime'),
  (886, 89, 'உட்பகை', 'ஒன்றாமை ஒன்றியார் கட்படின் எஞ்ஞான்றும்
பொன்றாமை ஒன்றல் அரிது.', 'Ondraamai Ondriyaar Katpatin Egngnaandrum', 'Discord in kings\' circle entails Life-destroying deadly evils', 'If hatred arises among (one\'s) own people, it will be hardly possible (for one) to escape death'),
  (887, 89, 'உட்பகை', 'செப்பின் புணர்ச்சிபோல் கூடினும் கூடாதே
உட்பகை உற்ற குடி.', 'Seppin Punarchchipol Kootinum Kootaadhe', 'A house hiding hostiles in core Just seems on like the lid in jar', 'Never indeed will a family subject to internal hatred unite (really) though it may present an apparent union like that of a casket and its lid'),
  (888, 89, 'உட்பகை', 'அரம்பொருத பொன்போலத் தேயும் உரம்பொருது
உட்பகை உற்ற குடி.', 'Aramporudha Ponpolath Theyum Uramporudhu', 'By secret spite the house wears out Like gold crumbling by file\'s contact', 'A family subject to internal hatred will wear out and lose its strength like iron that has been filed away'),
  (889, 89, 'உட்பகை', 'எட்பக வன்ன சிறுமைத்தே ஆயினும்
உட்பகை உள்ளதாங் கேடு.', 'Etpaka Vanna Sirumaiththe Aayinum', 'Ruin lurks in enmity As slit in sesame though it be', 'Although internal hatred be as small as the fragment of the sesamum (seed), still does destruction dwell in it'),
  (890, 89, 'உட்பகை', 'உடம்பாடு இலாதவர் வாழ்க்கை குடங்கருள்
பாம்போடு உடனுறைந் தற்று.', 'Utampaatu Ilaadhavar Vaazhkkai Kutangarul', 'Dwell with traitors that hate in heart Is dwelling with snake in selfsame hut', 'Living with those who do not agree (with one) is like dwelling with a cobra (in the same) hut'),
  (891, 90, 'பெரியாரைப் பிழையாமை', 'ஆற்றுவார் ஆற்றல் இகழாமை போற்றுவார்
போற்றலுள் எல்லாம் தலை.', 'Aatruvaar Aatral Ikazhaamai Potruvaar', 'Not to spite the mighty ones Safest safeguard to living brings', 'Not to disregard the power of those who can carry out (their wishes) is more important than all the watchfulness of those who guard (themselves against evil)'),
  (892, 90, 'பெரியாரைப் பிழையாமை', 'பெரியாரைப் பேணாது ஒழுகிற் பெரியாரால்
பேரா இடும்பை தரும்.', 'Periyaaraip Penaadhu Ozhukir Periyaaraal', 'To walk unmindful of the great Shall great troubles ceaseless create', 'To behave without respect for the great (rulers) will make them do (us) irremediable evils'),
  (893, 90, 'பெரியாரைப் பிழையாமை', 'கெடல்வேண்டின் கேளாது செய்க அடல்வேண்டின்
ஆற்று பவர்கண் இழுக்கு.', 'Ketalventin Kelaadhu Seyka Atalventin', 'Heed not and do, if ruin you want Offence against the mighty great', 'If a person desires ruin, let him not listen to the righteous dictates of law, but commit crimes against those who are able to slay (other sovereigns)'),
  (894, 90, 'பெரியாரைப் பிழையாமை', 'கூற்றத்தைக் கையால் விளித்தற்றால் ஆற்றுவார்க்கு
ஆற்றாதார் இன்னா செயல்.', 'Kootraththaik Kaiyaal Viliththatraal Aatruvaarkku', 'The weak who insult men of might Death with their own hands invite', 'The weak doing evil to the strong is like beckoning Yama to come (and destroy them)'),
  (895, 90, 'பெரியாரைப் பிழையாமை', 'யாண்டுச்சென்று யாண்டும் உளராகார் வெந்துப்பின்
வேந்து செறப்பட் டவர்.', 'Yaantuch Chendru Yaantum Ularaakaar', 'Where can they go and thrive where Pursued by powerful monarch\'s ire?', 'Those who have incurred the wrath of a cruel and mighty potentate will not prosper wherever they may go'),
  (896, 90, 'பெரியாரைப் பிழையாமை', 'எரியால் சுடப்படினும் உய்வுண்டாம் உய்யார்
பெரியார்ப் பிழைத்தொழுகு வார்.', 'Eriyaal Sutappatinum Uyvuntaam Uyyaar', 'One can escape in fire caught The great who offends escapes not', 'Though burnt by a fire (from a forest), one may perhaps live; (but) never will he live who has shown disrespect to the great (devotees)'),
  (897, 90, 'பெரியாரைப் பிழையாமை', 'வகைமாண்ட வாழ்க்கையும் வான்பொருளும் என்னாம்
தகைமாண்ட தக்கார் செறின்.', 'Vakaimaanta Vaazhkkaiyum Vaanporulum Ennaam', 'If holy mighty sages frown Stately gifts and stores who can own?', 'If a king incurs the wrath of the righteous great, what will become of his government with its splendid auxiliaries and (all) its untold wealth ?'),
  (898, 90, 'பெரியாரைப் பிழையாமை', 'குன்றன்னார் குன்ற மதிப்பின் குடியொடு
நின்றன்னார் மாய்வர் நிலத்து.', 'Kundrannaar Kundra Madhippin Kutiyotu', 'When hill-like sages are held small The firm on earth lose home and all', 'If (the) hill-like (devotees) resolve on destruction, those who seemed to be everlasting will be destroyed root and branch from the earth'),
  (899, 90, 'பெரியாரைப் பிழையாமை', 'ஏந்திய கொள்கையார் சீறின் இடைமுரிந்து
வேந்தனும் வேந்து கெடும்.', 'Endhiya Kolkaiyaar Seerin Itaimurindhu', 'Before the holy sage\'s rage Ev\'n Indra\'s empire meets damage', 'Kings even fall from high estate and perish in the flame'),
  (900, 90, 'பெரியாரைப் பிழையாமை', 'இறந்தமைந்த சார்புடையர் ஆயினும் உய்யார்
சிறந்தமைந்த சீரார் செறின்.', 'Irandhamaindha Saarputaiyar Aayinum Uyyaar', 'Even mighty aided men shall quail If the enraged holy seers will', 'Though in possession of numerous auxiliaries, they will perish who are-exposed to the wrath of the noble whose penance is boundless'),
  (901, 91, 'பெண்வழிச்சேறல்', 'மனைவிழைவார் மாண்பயன் எய்தார் வினைவிழையார்
வேண்டாப் பொருளும் அது.', 'Manaivizhaivaar Maanpayan Eydhaar Vinaivizhaiyaar', 'Who dote on wives lose mighty gain That lust, dynamic men disdain', 'Those who lust after their wives will not attain the excellence of virtue; and it is just this that is not desired by those who are bent on acquiring wealth'),
  (902, 91, 'பெண்வழிச்சேறல்', 'பேணாது பெண்விழைவான் ஆக்கம் பெரியதோர்
நாணாக நாணுத் தரும்.', 'Penaadhu Penvizhaivaan Aakkam Periyadhor', 'Who dotes, unmanly, on his dame His wealth to him and all is shame', 'The wealth of him who, regardless (of his manliness), devotes himself to his wife\'s feminine nature will cause great shame (to ali men) and to himself;'),
  (903, 91, 'பெண்வழிச்சேறல்', 'இல்லாள்கண் தாழ்ந்த இயல்பின்மை எஞ்ஞான்றும்
நல்லாருள் நாணுத் தரும்.', 'Illaalkan Thaazhndha Iyalpinmai Egngnaandrum', 'Who\'s servile to his wife always Shy he feels before the wise', 'The frailty that stoops to a wife will always make (her husband) feel ashamed among the good'),
  (904, 91, 'பெண்வழிச்சேறல்', 'மனையாளை அஞ்சும் மறுமையி லாளன்
வினையாண்மை வீறெய்த லின்று.', 'Manaiyaalai Anjum Marumaiyi Laalan', 'Fearing his wife salvationless The weaklings\' action has no grace', 'The undertaking of one, who fears his wife and is therefore destitute of (bliss), will never be applauded'),
  (905, 91, 'பெண்வழிச்சேறல்', 'இல்லாளை அஞ்சுவான் அஞ்சுமற் றெஞ்ஞான்றும்
நல்லார்க்கு நல்ல செயல்.', 'Illaalai Anjuvaan Anjumar Regngnaandrum', 'Who fears his wife fears always Good to do to the good and wise', 'He that fears his wife will always be afraid of doing good deeds (even) to the good'),
  (906, 91, 'பெண்வழிச்சேறல்', 'இமையாரின் வாழினும் பாடிலரே இல்லாள்
அமையார்தோள் அஞ்சு பவர்.', 'Imaiyaarin Vaazhinum Paatilare Illaal', 'Who fear douce arms of their wives Look petty even with god-like lives', 'They that fear the bamboo-like shoulders of their wives will be destitute of manliness though they may flourish like the Gods'),
  (907, 91, 'பெண்வழிச்சேறல்', 'பெண்ணேவல் செய்தொழுகும் ஆண்மையின் நாணுடைப்
பெண்ணே பெருமை உடைத்து.', 'Penneval Seydhozhukum Aanmaiyin Naanutaip', 'Esteemed more is women bashful Than man servile unto her will', 'Even shame faced womanhood is more to be esteemed than the shameless manhood that performs'),
  (908, 91, 'பெண்வழிச்சேறல்', 'நட்டார் குறைமுடியார் நன்றாற்றார் நன்னுதலாள்
பெட் டாங்கு ஒழுகு பவர்.', 'Nattaar Kuraimutiyaar Nandraatraar Nannudhalaal', 'By fair-browed wives who are governed Help no friends nor goodness tend', 'Those who yield to the wishes of their wives will neither relieve the wants of (their) friends nor perform virtuous deeds'),
  (909, 91, 'பெண்வழிச்சேறல்', 'அறவினையும் ஆன்ற பொருளும் பிறவினையும்
பெண்ஏவல் செய்வார்கண் இல்.', 'Aravinaiyum Aandra Porulum Piravinaiyum', 'No virtue riches nor joy is seen In those who submit to women', 'From those who obey the commands of their wives are to be expected neither deeds of virtue, nor those of wealth nor (even) those of pleasure'),
  (910, 91, 'பெண்வழிச்சேறல்', 'எண்சேர்ந்த நெஞ்சத் திடனுடையார்க்கு எஞ்ஞான்றும்
பெண்சேர்ந்தாம் பேதைமை இல்.', 'Enserndha Nenjath Thitanutaiyaarkku Egngnaandrum', 'Thinkers strong and broad of heart By folly on fair sex do not dote', 'The foolishness that results from devotion to a wife will never be found in those who possess a reflecting mind and a prosperity (flowing) therefrom'),
  (911, 92, 'வரைவின்மகளிர்', 'அன்பின் விழையார் பொருள்விழையும் ஆய்தொடியார்
இன்சொல் இழுக்குத் தரும்.', 'Anpin Vizhaiyaar Porulvizhaiyum Aaidhotiyaar', 'For gold, not love their tongue cajoles Men are ruined by bangled belles', 'The sweet words of elegant braceleted (prostitutes) who desire (a man) not from affection but from avarice, will cause sorrow'),
  (912, 92, 'வரைவின்மகளிர்', 'பயன்தூக்கிப் பண்புரைக்கும் பண்பின் மகளிர்
நயன்தூக்கி நள்ளா விடல்.', 'Payandhookkip Panpuraikkum Panpin Makalir', 'Avoid ill-natured whores who feign Love only for their selfish gain', 'One must ascertain the character of the ill-natured women who after ascertaining the wealth (of a man) speak (as if they were) good natured-ones, and avoid intercourse (with them)'),
  (913, 92, 'வரைவின்மகளிர்', 'பொருட்பெண்டிர் பொய்ம்மை முயக்கம் இருட்டறையில்
ஏத஧ல் பிணந்தழீஇ அற்று.', 'Porutpentir Poimmai Muyakkam Iruttaraiyil', 'The false embrace of whores is like That of a damned corpse in the dark', 'The false embraces of wealth-loving women are like (hired men) embracing a strange corpse in a dark room'),
  (914, 92, 'வரைவின்மகளிர்', 'பொருட்பொருளார் புன்னலந் தோயார் அருட்பொருள்
ஆயும் அறிவி னவர்.', 'Porutporulaar Punnalan Thoyaar Arutporul', 'The wise who seek the wealth of grace Look not for harlots\' low embrace', 'The wise who seek the wealth of grace will not desire the base favours of those who regard wealth (and not pleasure) as (their) riches'),
  (915, 92, 'வரைவின்மகளிர்', 'பொதுநலத்தார் புன்னலம் தோயார் மதிநலத்தின்
மாண்ட அறிவி னவர்.', 'Podhunalaththaar Punnalam Thoyaar Madhinalaththin', 'The lofty wise will never covet The open charms of a vile harlot', 'Those whose knowledge is made excellent by their (natural) sense will not covet the trffling delights'),
  (916, 92, 'வரைவின்மகளிர்', 'தந்நலம் பாரிப்பார் தோயார் தகைசெருக்கிப்
புன்னலம் பாரிப்பார் தோள்.', 'Thannalam Paarippaar Thoyaar Thakaiserukkip', 'Those who guard their worthy fame Shun the wanton\'s vaunting charm', 'Those who would spread (the fame of) their own goodness will not desire the shoulders of those,who rejoice in their accomplishments and bestow their despicable favours (on all who pay)'),
  (917, 92, 'வரைவின்மகளிர்', 'நிறைநெஞ்சம் இல்லவர் தோய்வார் பிறநெஞ்சிற்
பேணிப் புணர்பவர் தோள்.', 'Nirainenjam Illavar Thoivaar Piranenjir', 'Hollow hearts alone desire The arms of whores with hearts elsewere', 'Those who are destitute of a perfectly (reformed) mind will covet the shoulders of those who embrace (them) while their hearts covet other things'),
  (918, 92, 'வரைவின்மகளிர்', 'ஆயும் அறிவினர் அல்லார்க்கு அணங்கென்ப
மாய மகளிர் முயக்கு.', 'Aayum Arivinar Allaarkku Anangenpa', 'Senseless fools are lured away By arms of sirens who lead astray', 'The wise say that to such as are destitute of discerning sense the embraces of faithless women are (as ruinous as those of) the celestail female'),
  (919, 92, 'வரைவின்மகளிர்', 'வரைவிலா மாணிழையார் மென்தோள் புரையிலாப்
பூரியர்கள் ஆழும் அளறு.', 'Varaivilaa Maanizhaiyaar Mendhol Puraiyilaap', 'The soft jewelled arms of whores are hell Into which the degraded fall', 'The delicate shoulders of prostitutes with excellent jewels are a hell into which are plunged the ignorant base'),
  (920, 92, 'வரைவின்மகளிர்', 'இருமனப் பெண்டிரும் கள்ளும் கவறும்
திருநீக்கப் பட்டார் தொடர்பு.', 'Irumanap Pentirum Kallum Kavarum', 'Double-minded whores, wine and dice Are lures of those whom fortune flies', 'Treacherous women, liquor, and gambling are the associates of such as have forsaken by Fortune'),
  (921, 93, 'கள்ளுண்ணாமை', 'உட்கப் படாஅர் ஒளியிழப்பர் எஞ்ஞான்றும்
கட்காதல் கொண்டொழுகு வார்.', 'Utkap Pataaar Oliyizhappar Egngnaandrum', 'Foes fear not who for toddy craze The addicts daily their glory lose', 'Those who always thirst after drink will neither inspire fear (in others) nor retain the light (of their fame)'),
  (922, 93, 'கள்ளுண்ணாமை', 'உண்ணற்க கள்ளை உணில்உண்க சான்றோரான்
எண்ணப் படவேண்டா தார்.', 'Unnarka Kallai Unilunka Saandroraan', 'Drink not liquor; but let them drink Whom with esteem the wise won\'t think', 'Let no liquor be drunk; if it is desired, let it be drunk by those who care not for esteem of the great'),
  (923, 93, 'கள்ளுண்ணாமை', 'ஈன்றாள் முகத்தேயும் இன்னாதால் என்மற்றுச்
சான்றோர் முகத்துக் களி.', 'Eendraal Mukaththeyum Innaadhaal Enmatruch', 'The drunkard\'s joy pains ev\'n mother\'s face How vile must it look for the wise?', 'Intoxication is painful even in the presence of (one\'s) mother; what will it not then be in that of the wise ?'),
  (924, 93, 'கள்ளுண்ணாமை', 'நாண்என்னும் நல்லாள் புறங்கொடுக்கும் கள்ளென்னும்
பேணாப் பெருங்குற்றத் தார்க்கு.', 'Naanennum Nallaal Purangotukkum Kallennum', 'Good shame turns back from him ashamed Who is guilty of wine condemned', 'The fair maid of modesty will turn her back on those who are guilty of the great and abominable crime of drunkenness'),
  (925, 93, 'கள்ளுண்ணாமை', 'கையறி யாமை உடைத்தே பொருள்கொடுத்து
மெய்யறி யாமை கொளல்.', 'Kaiyari Yaamai Utaiththe Porulkotuththu', 'To pay and drink and lose the sense Is nothing but rank ignorance', 'To give money and purchase unconsciousness is the result of one\'s ignorance of (one\'s own actions)'),
  (926, 93, 'கள்ளுண்ணாமை', 'துஞ்சினார் செத்தாரின் வேறல்லர் எஞ்ஞான்றும்
நஞ்சுண்பார் கள்ளுண் பவர்.', 'Thunjinaar Seththaarin Verallar Egngnaandrum', 'They take poison who take toddy And doze ev\'n like a dead body', 'They that sleep resemble the deed; (likewise) they that drink are no other than poison-eaters'),
  (927, 93, 'கள்ளுண்ணாமை', 'உள்ளொற்றி உள்ளூர் நகப்படுவர் எஞ்ஞான்றும்
கள்ளொற்றிக் கண்சாய் பவர்', 'Ullotri Ulloor Nakappatuvar Egngnaandrum', 'The secret drunkards\' senses off Make the prying public laugh', 'Those who always intoxicate themselves by a private (indulgence in) drink; will have their secrets detected and laughed at by their fellow-townsmen'),
  (928, 93, 'கள்ளுண்ணாமை', 'களித்தறியேன் என்பது கைவிடுக நெஞ்சத்து
ஒளித்ததூஉம் ஆங்கே மிகும்.', 'Kaliththariyen Enpadhu Kaivituka Nenjaththu', 'Don\'t say I\'m not a drunkard hard The hidden fraud is known abroad', 'Let (the drunkard) give up saying "I have never drunk"; (for) the moment (he drinks) he will simply betray his former attempt to conceal'),
  (929, 93, 'கள்ளுண்ணாமை', 'களித்தானைக் காரணம் காட்டுதல் கீழ்நீர்க்
குளித்தானைத் தீத்துரீஇ அற்று.', 'Kaliththaanaik Kaaranam Kaattudhal Keezhneerk', 'Can torch search one in water sunk?  Can reason reach the raving drunk?', 'Reasoning with a drunkard is like going under water with a torch in search of a drowned man'),
  (930, 93, 'கள்ளுண்ணாமை', 'கள்ளுண்ணாப் போழ்திற் களித்தானைக் காணுங்கால்
உள்ளான்கொல் உண்டதன் சோர்வு.', 'Kallunnaap Pozhdhir Kaliththaanaik Kaanungaal', 'The sober seeing the drunkard\'s plight On selves can\'t they feel same effect?', 'When (a drunkard) who is sober sees one who is not, it looks as if he remembered not the evil effects of his (own) drink'),
  (931, 94, 'சூது', 'வேண்டற்க வென்றிடினும் சூதினை வென்றதூஉம்
தூண்டிற்பொன் மீன்விழுங்கி அற்று.', 'Ventarka Vendritinum Soodhinai Vendradhooum', 'Avoid gambling, albeit you win Gulping bait-hook what does fish gain?', 'Though able to win, let not one desire gambling; (for) even what is won is like a fish swallowing the iron in fish-hook'),
  (932, 94, 'சூது', 'ஒன்றெய்தி நூறிழக்கும் சூதர்க்கும் உண்டாங்கொல்
நன்றெய்தி வாழ்வதோர் ஆறு.', 'Ondreydhi Noorizhakkum Soodharkkum Untaangol', 'Can gamblers in life good obtain Who lose a hundred one to gain?', 'That they may good obtain, and see a prosperous day? Is there indeed a means of livelihood that can bestow happiness on gamblers who gain one and lose a hundred?'),
  (933, 94, 'சூது', 'உருளாயம் ஓவாது கூறின் பொருளாயம்
போஒய்ப் புறமே படும்.', 'Urulaayam Ovaadhu Koorin Porulaayam', 'If kings indulge in casting dice All their fortune will flow to foes', 'If the king is incessantly addicted to the rolling dice in the hope of gain, his wealth and the resources thereof will take their departure and fall into other\'s hands'),
  (934, 94, 'சூது', 'சிறுமை பலசெய்து சீரழக்கும் சூதின்
வறுமை தருவதொன்று இல்.', 'Sirumai Palaseydhu Seerazhikkum Soodhin', 'Nothing will make you poor like game Which adds to woes and ruins fame', 'There is nothing else that brings (us) poverty like gambling which causes many a misery and destroys (one\'s) reputation'),
  (935, 94, 'சூது', 'கவறும் கழகமும் கையும் தருக்கி
இவறியார் இல்லாகி யார்.', 'Kavarum Kazhakamum Kaiyum Tharukki', 'The game, game-hall and gambler\'s art Who sought with glee have come to nought', 'Penniless are those who by reason of their attachment would never forsake gambling, the gamblingplace and the handling (of dice)'),
  (936, 94, 'சூது', 'அகடாரார் அல்லல் உழப்பர்சூ தென்னும்
முகடியான் மூடப்பட் டார்.', 'Akataaraar Allal Uzhapparsoo Thennum', 'Men swallowed by the ogress, dice Suffer grief and want by that vice', 'Those who are swallowed by the goddess called "gambling" will never have their hunger satisfied, but suffer the pangs of hell in the next world'),
  (937, 94, 'சூது', 'பழகிய செல்வமும் பண்பும் கெடுக்கும்
கழகத்துக் காலை புகின்.', 'Pazhakiya Selvamum Panpum Ketukkum', 'If men their time in game-den spend Ancestral wealth and virtues end', 'To waste time at the place of gambling will destroy inherited wealth and goodness of character'),
  (938, 94, 'சூது', 'பொருள்கெடுத்துப் பொய்மேற் கொளீஇ அருள்கெடுத்து
அல்லல் உழப்பிக்கும் சூது.', 'Porul Ketuththup Poimer Koleei', 'Game ruins wealth and spoils grace Leads to lies and wretched woes', 'Gambling destroys property, teaches falsehood, puts an end to benevolence, and brings in misery (here and hereafter)'),
  (939, 94, 'சூது', 'உடைசெல்வம் ஊண்ஒளி கல்விஎன்று ஐந்தும்
அடையாவாம் ஆயங் கொளின்.', 'Utaiselvam Oonoli Kalviendru Aindhum', 'Dress, wealth, food, fame, learning-these five In gambler\'s hand will never thrive', 'The habit of gambling prevents the attainment of these five: clothing, wealth, food, fame and learning'),
  (940, 94, 'சூது', 'இழத்தொறூஉம் காதலிக்கும் சூதேபோல் துன்பம்
உழத்தொறூஉம் காதற்று உயிர்.', 'Izhaththoru�um Kaadhalikkum Soodhepol Thunpam', 'Love for game grows with every loss As love for life with sorrows grows', 'As the gambler loves (his vice) the more he loses by it, so does the soul love (the body) the more it suffers through it'),
  (941, 95, 'மருந்து', 'மிகினும் குறையினும் நோய்செய்யும் நூலோர்
வளிமுதலா எண்ணிய மூன்று.', 'Mikinum Kuraiyinum Noiseyyum Noolor', 'Wind, bile and phlegm three cause disease So doctors deem it more or less', 'If (food and work are either) excessive or deficient, the three things enumerated by (medical) writers, flatulence, biliousness, and phlegm, will cause (one) disease'),
  (942, 95, 'மருந்து', 'மருந்தென வேண்டாவாம் யாக்கைக்கு அருந்தியது
அற்றது போற்றி உணின்.', 'Marundhena Ventaavaam Yaakkaikku Arundhiyadhu', 'After digestion one who feeds His body no medicine needs', 'No medicine is necessary for him who eats after assuring (himself) that what he has (already) eaten has been digested'),
  (943, 95, 'மருந்து', 'அற்றால் அறவறிந்து உண்க அஃதுடம்பு
பெற்றான் நெடிதுய்க்கும் ஆறு.', 'Atraal Aravarindhu Unka Aqdhutampu', 'Eat food to digestive measure Life in body lasts with pleasure', 'If (one\'s food has been) digested let one eat with moderation; (for) that is the way to prolong the life of an embodied soul'),
  (944, 95, 'மருந்து', 'அற்றது அறிந்து கடைப்பிடித்து மாறல்ல
துய்க்க துவரப் பசித்து.', 'Atradhu Arindhu Kataippitiththu Maaralla', 'Know digestion; with keen appetite Eat what is suitable and right', '(First) assure yourself that your food has been digested and never fail to eat, when very hungry, whatever is not disagreeable (to you)'),
  (945, 95, 'மருந்து', 'மாறுபாடு இல்லாத உண்டி மறுத்துண்ணின்
ஊறுபாடு இல்லை உயிர்க்கு.', 'Maarupaatu Illaadha Unti Maruththunnin', 'With fasting adjusted food right Cures ills of life and makes you bright', 'There will be no disaster to one\'s life if one eats with moderation, food that is not disagreeable'),
  (946, 95, 'மருந்து', 'இழிவறிந்து உண்பான்கண் இன்பம்போல் நிற்கும்
கழிபேர் இரையான்கண் நோய்.', 'Izhivarindhu Unpaankan Inpampol Nirkum', 'Who eats with clean stomach gets health With greedy glutton abides ill-health', 'As pleasure dwells with him who eats moderately, so disease (dwells) with the glutton who eats voraciously'),
  (947, 95, 'மருந்து', 'தீயள வன்றித் தெரியான் பெரிதுண்ணின்
நோயள வின்றிப் படும்.', 'Theeyala Vandrith Theriyaan Peridhunnin', 'who glut beyond the hunger\'s fire Suffer from untold diseases here', 'He will be afflicted with numberless diseases, who eats immoderately, ignorant (of the rules of health)'),
  (948, 95, 'மருந்து', 'நோய்நாடி நோய்முதல் நாடி அதுதணிக்கும்
வாய்நாடி வாய்ப்பச் செயல்.', 'Noinaati Noimudhal Naati Adhudhanikkum', 'Test disease, its cause and cure And apply remedy that is sure', 'Let the physician enquire into the (nature of the) disease, its cause and its method of cure and treat it faithfully according to (medical rule)'),
  (949, 95, 'மருந்து', 'உற்றான் அளவும் பிணியளவும் காலமும்
கற்றான் கருதிச் செயல்.', 'Utraan Alavum Piniyalavum Kaalamum', 'Let the skilful doctor note The sickmen, sickness, season and treat', 'The learned (physician) should ascertain the condition of his patient; the nature of his disease, and the season (of the year) and (then) proceed (with his treatment)'),
  (950, 95, 'மருந்து', 'உற்றவன் தீர்ப்பான் மருந்துழைச் செல்வானென்று
அப்பால் நாற் கூற்றே மருந்து.', 'Utravan Theerppaan Marundhuzhaich Chelvaanendru', 'Patient, doctor, medicine and nurse Are four-fold codes of treating course', 'Medical science consists of four parts, viz, patient, physician, medicine and compounder; and each of these (again) contains four sub-divisions'),
  (951, 96, 'குடிமை', 'இற்பிறந்தார் கண்அல்லது இல்லை இயல்பாகச்
செப்பமும் நாணும் ஒருங்கு.', 'Irpirandhaar Kanalladhu Illai Iyalpaakach', 'Right-sense and bashfulness adorn By nature only the noble-born', 'Consistency (of thought, word and deed) and fear (of sin) are conjointly natural only to the high-born'),
  (952, 96, 'குடிமை', 'ஒழுக்கமும் வாய்மையும் நாணும்இம் மூன்றும்
இழுக்கார் குடிப்பிறந் தார்.', 'Ozhukkamum Vaaimaiyum Naanum Im', 'The noble-born lack not these three: Good conduct, truth and modesty', 'The high-born will never deviate from these three; good manners, truthfulness and modesty'),
  (953, 96, 'குடிமை', 'நகைஈகை இன்சொல் இகழாமை நான்கும்
வகையென்ப வாய்மைக் குடிக்கு.', 'Nakaieekai Insol Ikazhaamai Naankum', 'Smile, gift, sweet words and courtesy These four mark true nobility', 'A cheerful countenance, liberality, pleasant words, and an unreviling disposition, these four are said to be the proper qualities of the truly high-born'),
  (954, 96, 'குடிமை', 'அடுக்கிய கோடி பெறினும் குடிப்பிறந்தார்
குன்றுவ செய்தல் இலர்.', 'Atukkiya Koti Perinum Kutippirandhaar', 'Even for crores, the noble mood Cannot bend to degrading deed', 'Though blessed with immense wealth, the noble will never do anything unbecoming'),
  (955, 96, 'குடிமை', 'வழங்குவ துள்வீழ்ந்தக் கண்ணும் பழங்குடி
பண்பில் தலைப்பிரிதல் இன்று.', 'Vazhanguva Thulveezhndhak Kannum Pazhanguti', 'The means of gift may dwindle; yet Ancient homes guard their noble trait', 'Though their means fall off, those born in ancient families, will not lose their character (for liberality)'),
  (956, 96, 'குடிமை', 'சலம்பற்றிச் சால்பில செய்யார்மா சற்ற
குலம்பற்றி வாழ்தும் என் பார்.', 'Salampatrich Chaalpila Seyyaarmaa Satra', 'Who guard their family prestige pure Stoop not to acts of cunning lure', 'Those who seek to preserve the irreproachable honour of their families will not viciously do what is detrimental thereto'),
  (957, 96, 'குடிமை', 'குடிப்பிறந்தார் கண்விளங்கும் குற்றம் விசும்பின்
மத஧க்கண் மறுப்போல் உயர்ந்து.', 'Kutippirandhaar Kanvilangum Kutram Visumpin', 'The faults of nobly-born are seen Like on the sky the spots of moon', 'As spots on her bright orb that walks sublime the evening sky'),
  (958, 96, 'குடிமை', 'நலத்தின்கண் நாரின்மை தோன்றின் அவனைக்
குலத்தின்கண் ஐயப் படும்.', 'Nalaththinkan Naarinmai Thondrin Avanaik', 'If manners of the good are rude People deem their pedigree crude', 'If one of a good family betrays want of affection, his descent from it will be called in question'),
  (959, 96, 'குடிமை', 'நிலத்தில் கிடந்தமை கால்காட்டும் காட்டும்
குலத்தில் பிறந்தார்வாய்ச் சொல்.', 'Nilaththil Kitandhamai Kaalkaattum Kaattum', 'Soil\'s nature is seen in sprout The worth of birth from words flow out', 'As the sprout indicates the nature of the soil, (so) the speech of the noble indicates (that of one\'s birth)'),
  (960, 96, 'குடிமை', 'நலம்வேண்டின் நாணுடைமை வேண்டும் குலம்வேண்டின்
வேண்டுக யார்க்கும் பணிவு.', 'Nalamventin Naanutaimai Ventum Kulam', 'All gain good name by modesty Nobility by humility', 'He who desires a good name must desire modesty; and he who desires (the continuance of) a family greatness must be submissive to all'),
  (961, 97, 'மானம்', 'இன்றி அமையாச் சிறப்பின ஆயினும்
குன்ற வருப விடல்.', 'Indri Amaiyaach Chirappina Aayinum', 'Though needed for your life in main, From mean degrading acts refrain', 'Actions that would degrade (one\'s) family should not be done; though they may be so important that not doing them would end in death'),
  (962, 97, 'மானம்', 'சீரினும் சீரல்ல செய்யாரே சீரொடு
பேராண்மை வேண்டு பவர்.', 'Seerinum Seeralla Seyyaare Seerotu', 'Who seek honour and manly fame Don\'t do mean deeds even for name', 'Those who desire (to maintain their) honour, will surely do nothing dishonourable, even for the sake of fame'),
  (963, 97, 'மானம்', 'பெருக்கத்து வேண்டும் பணிதல் சிறிய
சுருக்கத்து வேண்டும் உயர்வு.', 'Perukkaththu Ventum Panidhal Siriya', 'Be humble in prosperity In decline uphold dignity', 'In great prosperity humility is becoming; dignity, in great adversity'),
  (964, 97, 'மானம்', 'தலையின் இழிந்த மயிரனையர் மாந்தர்
நிலையின் இழிந்தக் கடை.', 'Thalaiyin Izhindha Mayiranaiyar Maandhar', 'Like hair fallen from head are those Who fall down from their high status', 'They who have fallen from their (high) position are like the hair which has fallen from the head'),
  (965, 97, 'மானம்', 'குன்றின் அனையாரும் குன்றுவர் குன்றுவ
குன்றி அனைய செயின்.', 'Kundrin Anaiyaarum Kundruvar Kundruva', 'Even hill-like men will sink to nought With abrus-grain-like small default', 'Even those who are exalted like a hill will be thought low, if they commit deeds that are debasing'),
  (966, 97, 'மானம்', 'புகழ்இன்றால் புத்தேள்நாட்டு உய்யாதால் என்மற்று
இகழ்வார்பின் சென்று நிலை.', 'Pukazhindraal Puththelnaattu Uyyaadhaal Enmatru', 'Why fawn on men that scorn you here It yields no fame, heaven\'s bliss neither', 'Why follow men who scorn, and at their bidding wait?'),
  (967, 97, 'மானம்', 'ஒட்டார்பின் சென்றொருவன் வாழ்தலின் அந்நிலையே
கெட்டான் எனப்படுதல் நன்று.', 'Ottaarpin Sendroruvan Vaazhdhala�n Annilaiye', 'Better it is to die forlorn Than live as slaves of those who scorn', 'It is better for a man to be said of him that he died in his usual state than that he eked out his life by following those who disgraced him'),
  (968, 97, 'மானம்', 'மருந்தோமற்று ஊன்ஓம்பும் வாழ்க்கை பெருந்தகைமை
பீடழிய வந்த இடத்து.', 'Marundhomatru Oonompum Vaazhkkai Perundhakaimai', 'Is nursing body nectar sweet Even when one\'s honour is lost?', 'For the high-born to keep their body in life when their honour is gone will certainly not prove a remedy against death'),
  (969, 97, 'மானம்', 'மயிர்நீப்பின் வாழாக் கவரிமா அன்னார்
உயிர்நீப்பர் மானம் வரின்.', 'Mayirneeppin Vaazhaak Kavarimaa Annaar', 'Honour lost, the noble expire Like a yak that loses its hair', 'Those who give up (their) life when (their) honour is at stake are like the yark which kills itself at the loss of (even one of) its hairs'),
  (970, 97, 'மானம்', 'இளிவரின் வாழாத மானம் உடையார்
ஒளிதொழுது ஏத்தும் உலகு.', 'Ilivarin Vaazhaadha Maanam Utaiyaar', 'Their light the world adores and hails  Who will not live when honour fails', 'The world will (always) praise and adore the fame of the honourable who would rather die than suffer indignity'),
  (971, 98, 'பெருமை', 'ஒளிஒருவற்கு உள்ள வெறுக்கை இளிஒருவற்கு
அஃதிறந்து வாழ்தும் எனல்.', 'Olioruvarku Ulla Verukkai Ilioruvarku', 'A heart of courage lives in light  Devoid of that one\'s life is night', 'One\'s light is the abundance of one\'s courage; one\'s darkness is the desire to live destitute of such (a state of mind.)'),
  (972, 98, 'பெருமை', 'பிறப்பொக்கும் எல்லா உயிர்க்கும் சிறப்பொவ்வா
செய்தொழில் வேற்றுமை யான்.', 'Pirappokkum Ellaa Uyirkkum Sirappovvaa', 'All beings are the same in birth But work decides their varied worth', 'All human beings agree as regards their birth but differ as regards their characteristics, because of the different qualities of their actions'),
  (973, 98, 'பெருமை', 'மேலிருந்தும் மேலல்லார் மேலல்லர் கீழிருந்தும்
கீழல்லார் கீழல் லவர்.', 'Melirundhum Melallaar Melallar Keezhirundhum', 'Ignoble high not high they are The noble low not low they fare', 'Though (raised) above, the base cannot become great; though (brought) low, the great cannot become base'),
  (974, 98, 'பெருமை', 'ஒருமை மகளிரே போலப் பெருமையும்
தன்னைத்தான் கொண்டொழுகின் உண்டு.', 'Orumai Makalire Polap Perumaiyum', 'Greatness like woman\'s chastity Is guarded by self-varacity', 'Exists while to itself is true'),
  (975, 98, 'பெருமை', 'பெருமை யுடையவர் ஆற்றுவார் ஆற்றின்
அருமை உடைய செயல்.', 'Perumai Yutaiyavar Aatruvaar Aatrin', 'Great souls when their will is active Do mighty deeds rare to achieve', '(Though reduced) the great will be able to perform, in the proper way, deeds difficult (for others to do)'),
  (976, 98, 'பெருமை', 'சிறியார் உணர்ச்சியுள் இல்லை பெரியாரைப்
பேணிக் கொள் வேம் என்னும் நோக்கு.', 'Siriyaar Unarchchiyul Illai Periyaaraip', 'The petty-natured ones have not The mind to seek and befriend the great', 'It is never in the nature of the base to seek the society of the great and partake of their nature'),
  (977, 98, 'பெருமை', 'இறப்பே புரிந்த தொழிற்றாம் சிறப்புந்தான்
சீரல் லவர்கண் படின்.', 'Irappe Purindha Thozhitraam Sirappundhaan', 'The base with power and opulence Wax with deeds of insolence', 'Even nobility of birth, wealth and learning, if in (the possession of) the base, will (only) produce everincreasing pride'),
  (978, 98, 'பெருமை', 'பணியுமாம் என்றும் பெருமை சிறுமை
அணியுமாம் தன்னை வியந்து.', 'Paniyumaam Endrum Perumai Sirumai', 'Greatness bends with modesty Meanness vaunts with vanity', 'The great will always humble himself; but the mean will exalt himself in self-admiration'),
  (979, 98, 'பெருமை', 'பெருமை பெருமிதம் இன்மை சிறுமை
பெருமிதம் ஊர்ந்து விடல்.', 'Perumai Perumidham Inmai Sirumai', 'Greatness is free from insolence Littleness swells with that offence', 'Freedom from conceit is (the nature of true) greatness; (while) obstinacy therein is (that of) meanness'),
  (980, 98, 'பெருமை', 'அற்றம் மறைக்கும் பெருமை சிறுமைதான்
குற்றமே கூறி விடும்.', 'Atram Maraikkum Perumai Sirumaidhaan', 'Weakness of others greatness screens Smallness defects alone proclaims', 'The great hide the faults of others; the base only divulge them'),
  (981, 99, 'சான்றாண்மை', 'கடன்என்ப நல்லவை எல்லாம் கடன்அறிந்து
சான்றாண்மை மேற்கொள் பவர்க்கு.', 'Katanenpa Nallavai Ellaam Katanarindhu', 'All goodness is duty to them  Who are dutiful and sublime', 'It is said that those who are conscious of their duty and behave with a perfect goodness will regard as natural all that is good'),
  (982, 99, 'சான்றாண்மை', 'குணநலம் சான்றோர் நலனே பிறநலம்
எந்நலத்து உள்ளதூஉம் அன்று.', 'Kunanalam Saandror Nalane Piranalam', 'Good in the great is character Than that there is nothing better', 'The only delight of the perfect is that of their goodness; all other (sensual) delights are not to be included among any (true) delights'),
  (983, 99, 'சான்றாண்மை', 'அன்புநாண் ஒப்புரவு கண்ணோட்டம் வாய்மையொடு
ஐந்துசால் ஊன்றிய தூண்.', 'Anpunaan Oppuravu Kannottam Vaaimaiyotu', 'Love, truth, regard, modesty, grace These five are virtue\'s resting place', 'Affection, fear (of sin), benevolence, favour and truthfulness; these are the five pillars on which perfect goodness rests'),
  (984, 99, 'சான்றாண்மை', 'கொல்லா நலத்தது நோன்மை பிறர்தீமை
சொல்லா நலத்தது சால்பு.', 'Kollaa Nalaththadhu Nonmai Pirardheemai', 'Not to kill is penance pure Not to slander virtue sure', 'Penance consists in the goodness that kills not , and perfection in the goodness that tells not others\' faults'),
  (985, 99, 'சான்றாண்மை', 'ஆற்றுவார் ஆற்றல் பணிதல் அதுசான்றோர்
மாற்றாரை மாற்றும் படை.', 'Aatruvaar Aatral Panidhal Adhusaandror', 'Humility is valour\'s strength A force that averts foes at length', 'Stooping (to inferiors) is the strength of those who can accomplish (an undertaking); and that is the weapon with which the great avert their foes'),
  (986, 99, 'சான்றாண்மை', 'சால்பிற்குக் கட்டளை யாதெனின் தோல்வி
துலையல்லார் கண்ணும் கொளல்.', 'Saalpirkuk Kattalai Yaadhenin Tholvi', 'To bear repulse e\'en from the mean Is the touch-stone of worthy men', 'The touch-stone of perfection is to receive a defeat even at the hands of one\'s inferiors'),
  (987, 99, 'சான்றாண்மை', 'இன்னாசெய் தார்க்கும் இனியவே செய்யாக்கால்
என்ன பயத்ததோ சால்பு.', 'Innaasey Thaarkkum Iniyave Seyyaakkaal', 'Of perfection what is the gain If it returns not joy for pain?', 'Of what avail is perfect goodness if it cannot do pleasing things even to those who have pained (it) ?'),
  (988, 99, 'சான்றாண்மை', 'இன்மை ஒருவற்கு இளிவன்று சால்பென்னும்
திண்மை உண் டாகப் பெறின்.', 'Inmai Oruvarku Ilivandru Saalpennum', 'No shame there is in poverty To one strong in good quality', 'Poverty is no disgrace to one who abounds in good qualities'),
  (989, 99, 'சான்றாண்மை', 'ஊழி பெயரினும் தாம்பெயரார் சான்றாண்மைக்கு
ஆழி எனப்படு வார்.', 'Oozhi Peyarinum Thaampeyaraar Saandraanmaikku', 'Aeons may change but not the seer Who is a sea of virtue pure', 'Those who are said to be the shore of the sea of perfection will never change, though ages may change'),
  (990, 99, 'சான்றாண்மை', 'சான்றவர் சான்றாண்மை குன்றின் இருநிலந்தான்
தாங்காது மன்னோ பொறை.', 'Saandravar Saandraanmai Kundrin Irunilandhaan', 'The world will not more bear its weight If from high virtue fall the great', 'If there is a defect in the character of the perfect, (even) the great world cannot bear (its) burden'),
  (991, 100, 'பண்புடைமை', 'எண்பதத்தால் எய்தல் எளிதென்ப யார்மாட்டும்
பண்புடைமை என்னும் வழக்கு.', 'Enpadhaththaal Eydhal Elidhenpa Yaarmaattum', 'To the polite free of access Easily comes courteousness', 'If one is easy of access to all, it will be easy for one to obtain the virtue called goodness'),
  (992, 100, 'பண்புடைமை', 'அன்புடைமை ஆன்ற குடிப்பிறத்தல் இவ்விரண்டும்
பண்புடைமை என்னும் வழக்கு.', 'Anputaimai Aandra Kutippiraththal Ivvirantum', 'Humanity and noble birth Develop courtesy and moral worth', 'Affectionateness and birth in a good family, these two constitute what is called a proper behaviour to all'),
  (993, 100, 'பண்புடைமை', 'உறுப்பொத்தல் மக்களொப்பு அன்றால் வெறுத்தக்க
பண்பொத்தல் ஒப்பதாம் ஒப்பு.', 'Uruppoththal Makkaloppu Andraal Veruththakka', 'Likeness in limbs is not likeness It\'s likeness in kind courteousness', 'Resemblance of bodies is no resemblance of souls; true resemblance is the resemblance of qualities that attract'),
  (994, 100, 'பண்புடைமை', 'நயனொடு நன்றி புரிந்த பயனுடையார்
பண்புபா ராட்டும் உலகு.', 'Nayanotu Nandri Purindha Payanutaiyaar', 'The world applauds those helpful men Whose actions are just and benign', 'The world applauds the character of those whose usefulness results from their equity and charity'),
  (995, 100, 'பண்புடைமை', 'நகையுள்ளும் இன்னா திகழ்ச்சி பகையுள்ளும்
பண்புள பாடறிவார் மாட்டு.', 'Nakaiyullum Innaa Thikazhchchi Pakaiyullum', 'The courteous don\'t even foes detest For contempt offends even in jest', 'Reproach is painful to one even in sport; those (therefore) who know the nature of others exhibit (pleasing) qualities even when they are hated'),
  (996, 100, 'பண்புடைமை', 'பண்புடையார்ப் பட்டுண்டு உலகம் அதுஇன்றேல்
மண்புக்கு மாய்வது மன்.', 'Panputaiyaarp Pattuntu Ulakam Adhuindrel', 'The world rests with the mannered best Or it crumbles and falls to dust', 'The (way of the) world subsists by contact with the good; if not, it would bury itself in the earth and perish'),
  (997, 100, 'பண்புடைமை', 'அரம்போலும் கூர்மைய ரேனும் மரம்போல்வர்
மக்கட்பண்பு இல்லா தவர்.', 'Arampolum Koormaiya Renum Marampolvar', 'The mannerless though sharp like file Are like wooden blocks indocile', 'He who is destitute of (true) human qualities (only) resembles a tree, though he may possess the sharpness of a file'),
  (998, 100, 'பண்புடைமை', 'நண்பாற்றார் ஆகி நயமில செய்வார்க்கும்
பண்பாற்றார் ஆதல் கடை.', 'Nanpaatraar Aaki Nayamila Seyvaarkkum', 'Discourtesy is mean indeed E\'en to a base unfriendly breed', 'It is wrong (for the wise) not to exhibit (good) qualities even towards those who bearing no friendship (for them) do only what is hateful'),
  (999, 100, 'பண்புடைமை', 'நகல்வல்லர் அல்லார்க்கு மாயிரு ஞாலம்
பகலும்பாற் பட்டன்று இருள்.', 'Nakalvallar Allaarkku Maayiru Gnaalam', 'To those bereft of smiling light Even in day the earth is night', 'To those who cannot rejoice, the wide world is buried darkness even in (broad) day light'),
  (1000, 100, 'பண்புடைமை', 'பண்பிலான் பெற்ற பெருஞ்செல்வம் நன்பால்
கலந்தீமை யால்திரிந் தற்று.', 'Panpilaan Petra Perunjelvam Nanpaal', 'The wealth heaped by the churlish base Is pure milk soured by impure vase', 'The great wealth obtained by one who has no goodness will perish like pure milk spoilt by the'),
  (1001, 101, 'நன்றியில்செல்வம்', 'வைத்தான்வாய் சான்ற பெரும்பொருள் அஃதுண்ணான்
செத்தான் செயக்கிடந்தது இல்.', 'Vaiththaanvaai Saandra Perumporul Aqdhunnaan', 'Dead is he with wealth in pile Unenjoyed, it is futile', 'He who does not enjoy the immense riches he has heaped up in his house, is (to be reckoned as) dead, (for) there is nothing achieved (by him)'),
  (1002, 101, 'நன்றியில்செல்வம்', 'பொருளானாம் எல்லாமென்று ஈயாது இவறும்
மருளானாம் மாணாப் பிறப்பு', 'Porulaanaam Ellaamendru Eeyaadhu Ivarum', 'The niggard miser thinks wealth is all He hoards, gives not is born devil', 'He who knows that wealth yields every pleasure and yet is so blind as to lead miserly life will be born a demon'),
  (1003, 101, 'நன்றியில்செல்வம்', 'ஈட்டம் இவறி இசைவேண்டா ஆடவர்
தோற்றம் நிலக்குப் பொறை.', 'Eettam Ivari Isaiventaa Aatavar', 'A burden he is to earth indeed Who hoards without a worthy deed', 'A burden to the earth are men bent on the acquisition of riches and not (true) fame'),
  (1004, 101, 'நன்றியில்செல்வம்', 'எச்சமென்று என்எண்ணுங் கொல்லோ ஒருவரால்
நச்சப் படாஅ தவன்.', 'Echchamendru Enennung Kollo Oruvaraal', 'What legacy can he leave behind Who is for approach too unkind', 'What will the miser who is not liked (by any one) regard as his own (in the world to come) ?'),
  (1005, 101, 'நன்றியில்செல்வம்', 'கொடுப்பதூஉம் துய்ப்பதூஉம் இல்லார்க்கு அடுக்கிய
கோடியுண் டாயினும் இல்.', 'Kotuppadhooum Thuyppadhooum Illaarkku Atukkiya', 'What is the good of crores they hoard To give and enjoy whose heart is hard', 'Those who neither give (to others) nor enjoy (their property) are (truly) destitute, though possessing immense riches'),
  (1006, 101, 'நன்றியில்செல்வம்', 'ஏதம் பெருஞ்செல்வம் தான்துவ்வான் தக்கார்க்கொன்று
ஈதல் இயல்பிலா தான்.', 'Edham Perunjelvam Thaandhuvvaan Thakkaarkkondru', 'Great wealth unused for oneself nor To worthy men is but a slur', 'He who enjoys not (his riches) nor relieves the wants of the worthy is a disease to his wealth'),
  (1007, 101, 'நன்றியில்செல்வம்', 'அற்றார்க்கொன்று ஆற்றாதான் செல்வம் மிகநலம்
பெற்றாள் தமியள்மூத் தற்று.', 'Atraarkkondru Aatraadhaan Selvam Mikanalam', 'Who loaths to help have-nots, his gold Is like a spinster-belle grown old', 'The wealth of him who never bestows anything on the destitute is like a woman of beauty growing old without a husband'),
  (1008, 101, 'நன்றியில்செல்வம்', 'நச்சப் படாதவன் செல்வம் நடுவூருள்
நச்சு மரம்பழுத் தற்று.', 'Nachchap Pataadhavan Selvam Natuvoorul', 'The idle wealth of unsought men Is poison-fruit-tree amidst a town', 'The wealth of him who is disliked (by all) is like the fruit-bearing of the etty tree in the midst of a town'),
  (1009, 101, 'நன்றியில்செல்வம்', 'அன்பொரீஇத் தற்செற்று அறநோக்காது ஈட்டிய
ஒண்பொருள் கொள்வார் பிறர்.', 'Anporeeith Tharsetru Aranokkaadhu Eettiya', 'Others usurp the shining gold In loveless, stingy, vicious hold', 'To heap up glittering wealth, their hoards shall others take'),
  (1010, 101, 'நன்றியில்செல்வம்', 'சீருடைச் செல்வர் சிறுதுனி மாரி
வறங்கூர்ந் தனையது உடைத்து.', 'Seerutaich Chelvar Sirudhuni Maari', 'The brief want of the rich benign Is like rainclouds growing thin', 'The short-lived poverty of those who are noble and rich is like the clouds becoming poor (for a while)'),
  (1011, 102, 'நாணுடைமை', 'கருமத்தால் நாணுதல் நாணுந் திருநுதல்
நல்லவர் நாணுப் பிற.', 'Karumaththaal Naanudhal Naanun Thirunudhal', 'To shrink from evil deed is shame The rest is blush of fair-faced dame', 'True modesty is the fear of (evil) deeds; all other modesty is (simply) the bashfulness of virtuous maids'),
  (1012, 102, 'நாணுடைமை', 'ஊணுடை எச்சம் உயிர்க்கெல்லாம் வேறல்ல
நாணுடைமை மாந்தர் சிறப்பு.', 'Oonutai Echcham Uyirkkellaam Veralla', 'Food, dress and such are one for all Modesty marks the higher soul', 'Food, clothing and the like are common to all men but modesty is peculiar to the good'),
  (1013, 102, 'நாணுடைமை', 'ஊனைக் குறித்த உயிரெல்லாம் நாண்என்னும்
நன்மை குறித்தது சால்பு.', 'Oonaik Kuriththa Uyirellaam Naanennum', 'All lives have their lodge in flesh Perfection has its home in blush', 'As the body is the abode of the spirit, so the excellence of modesty is the abode of perfection'),
  (1014, 102, 'நாணுடைமை', 'அணிஅன்றோ நாணுடைமை சான்றோர்க்கு அஃதின்றேல்
பிணிஅன்றோ பீடு நடை.', 'Aniandro Naanutaimai Saandrorkku Aqdhindrel', 'Shame is the jewel of dignity Shameless swagger is vanity', 'Is not the modesty ornament of the noble ? Without it, their haughtiness would be a pain (to others)'),
  (1015, 102, 'நாணுடைமை', 'பிறர்பழியும் தம்பழியும் நாணுவார் நாணுக்கு
உறைபதி என்னும் உலகு.', 'Pirarpazhiyum Thampazhiyum Naanuvaar Naanukku', 'In them resides the sense of shame Who blush for their and other\'s blame', 'The world regards as the abode of modesty him who fear his own and other\'s guilt'),
  (1016, 102, 'நாணுடைமை', 'நாண்வேலி கொள்ளாது மன்னோ வியன்ஞாலம்
பேணலர் மேலா யவர்.', 'Naanveli Kollaadhu Manno Viyangnaalam', 'The great refuse the wonder-world Without modesty\'s hedge and shield', 'The great make modesty their barrier (of defence) and not the wide world'),
  (1017, 102, 'நாணுடைமை', 'நாணால் உயிரைத் துறப்பர் உயிர்ப்பொருட்டால்
நாண்துறவார் நாணாள் பவர்.', 'Naanaal Uyiraith Thurappar Uyirpporuttaal', 'For shame their life the shame-sensed give Loss of shame they won\'t outlive', 'The modest would rather lose their life for the sake of modesty than lose modesty for the sake of life'),
  (1018, 102, 'நாணுடைமை', 'பிறர்நாணத் தக்கது தான்நாணா னாயின்
அறம்நாணத் தக்கது உடைத்து.', 'Pirarnaanath Thakkadhu Thaannaanaa Naayin', 'Virtue is much ashamed of him Who shameless does what others shame', 'Virtue is likely to forsake him who shamelessly does what others are ashamed of'),
  (1019, 102, 'நாணுடைமை', 'குலஞ்சுடும் கொள்கை பிழைப்பின் நலஞ்சுடும்
நாணின்மை நின்றக் கடை.', 'Kulanjutum Kolkai Pizhaippin Nalanjutum', 'Lapse in manners injures the race Want of shame harms every good grace', 'Want of manners injures one\'s family; but want of modesty injures one\'s character'),
  (1020, 102, 'நாணுடைமை', 'நாண்அகத் தில்லார் இயக்கம் மரப்பாவை
நாணால் உயிர்மருட்டி அற்று.', 'Naanakath Thillaar Iyakkam Marappaavai', 'Movements of the shameless in heart Are string-led puppet show in fact', 'The actions of those who are without modesty at heart are like those of puppet moved by a string'),
  (1021, 103, 'குடிசெயல்வகை', 'கருமம் செயஒருவன் கைதூவேன் என்னும்
பெருமையின் பீடுடையது இல்.', 'Karumam Seyaoruvan Kaidhooven Ennum', 'No greatness is grander like Saying \\"I shall work without slack\\"', 'There is no higher greatness than that of one saying I will not cease in my effort (to raise my family)'),
  (1022, 103, 'குடிசெயல்வகை', 'ஆள்வினையும் ஆன்ற அறிவும் எனஇரண்டின்
நீள்வினையால் நீளும் குடி.', 'Aalvinaiyum Aandra Arivum Enairantin', 'These two exalt a noble home Ardent effort and ripe wisdom', 'One\'s family is raised by untiring perseverance in both effort and wise contrivances'),
  (1023, 103, 'குடிசெயல்வகை', 'குடிசெய்வல் என்னும் ஒருவற்குத் தெய்வம்
மடிதற்றுத் தான்முந் துறும்.', 'Kutiseyval Ennum Oruvarkuth Theyvam', 'When one resolves to raise his race Loin girt up God leads his ways', 'The Deity will clothe itself and appear before him who resolves on raising his family'),
  (1024, 103, 'குடிசெயல்வகை', 'சூழாமல் தானே முடிவெய்தும் தம்குடியைத்
தாழாது உஞற்று பவர்க்கு.', 'Soozhaamal Thaane Mutiveydhum Thamkutiyaith', 'Who raise their races with ceaseless pain No need for plan; their ends will gain', 'Those who are prompt in their efforts (to better their family) need no deliberation, such efforts will of themselves succeed'),
  (1025, 103, 'குடிசெயல்வகை', 'குற்றம் இலனாய்க் குடிசெய்து வாழ்வானைச்
சுற்றமாச் சுற்றும் உலகு.', 'Kutram Ilanaaik Kutiseydhu Vaazhvaanaich', 'Who keeps his house without a blame People around, his kinship claim', 'People will eagerly seek the friendship of the prosperous soul who has raised his family without foul means'),
  (1026, 103, 'குடிசெயல்வகை', 'நல்லாண்மை என்பது ஒருவற்குத் தான்பிறந்த
இல்லாண்மை ஆக்கிக் கொளல்.', 'Nallaanmai Enpadhu Oruvarkuth Thaanpirandha', 'Who raise their race which gave them birth Are deemed as men of manly worth', 'A man\'s true manliness consists in making himself the head and benefactor of his family'),
  (1027, 103, 'குடிசெயல்வகை', 'அமரகத்து வன்கண்ணர் போலத் தமரகத்தும்
ஆற்றுவார் மேற்றே பொறை.', 'Amarakaththu Vankannar Polath Thamarakaththum', 'Like dauntless heroes in battle field The home-burden rests on the bold', 'Amid his kindred so the burthen rests upon the strong'),
  (1028, 103, 'குடிசெயல்வகை', 'குடிசெய்வார்க் கில்லை பருவம் மடிசெய்து
மானங் கருதக் கெடும்.', 'Kutiseyvaark Killai Paruvam Matiseydhu', 'No season have they who raise their race Sloth and pride will honour efface', 'As a family suffers by (one\'s) indolence and false dignity there is to be so season (good or bad) to those who strive to raise their family'),
  (1029, 103, 'குடிசெயல்வகை', 'இடும்பைக்கே கொள்கலம் கொல்லோ குடும்பத்தைக்
குற்ற மறைப்பான் உடம்பு.', 'Itumpaikke Kolkalam Kollo Kutumpaththaik', 'Is not his frame a vase for woes Who from mishaps shields his house?', 'Is it only to suffering that his body is exposed who undertakes to preserve his family from evil ?'),
  (1030, 103, 'குடிசெயல்வகை', 'இடுக்கண்கால் கொன்றிட வீழும் அடுத்தூன்றும்
நல்லாள் இலாத குடி.', 'Itukkankaal Kondrita Veezhum Atuththoondrum', 'A house will fall by a mishap With no good man to prop it up', 'If there are none to prop up and maintain a family (in distress), it will fall at the stroke of the axe of misfortune'),
  (1031, 104, 'உழவு', 'சுழன்றும்ஏர்ப் பின்னது உலகம் அதனால்
உழந்தும் உழவே தலை.', 'Suzhandrumerp Pinnadhu Ulakam Adhanaal', 'Farming though hard is foremost trade Men ply at will but ploughmen lead', 'Agriculture, though laborious, is the most excellent (form of labour); for people, though they go about (in search of various employments), have at last to resort to the farmer'),
  (1032, 104, 'உழவு', 'உழுவார் உலகத்தார்க்கு ஆணிஅஃ தாற்றாது
எழுவாரை எல்லாம் பொறுத்து.', 'Uzhuvaar Ulakaththaarkku Aaniaq Thaatraadhu', 'Tillers are linch-pin of mankind Bearing the rest who cannot tend', 'Agriculturists are (as it were) the linch-pin of the world for they support all other workers who cannot till the soil'),
  (1033, 104, 'உழவு', 'உழுதுண்டு வாழ்வாரே வாழ்வார்மற் றெல்லாம்
தொழுதுண்டு பின்செல் பவர்.', 'Uzhudhuntu Vaazhvaare Vaazhvaarmar Rellaam', 'They live who live to plough and eat The rest behind them bow and eat', 'They alone live who live by agriculture; all others lead a cringing, dependent life'),
  (1034, 104, 'உழவு', 'பலகுடை நீழலும் தங்குடைக்கீழ்க் காண்பர்
அலகுடை நீழ லவர்.', 'Palakutai Neezhalum Thangutaikkeezhk Kaanpar', 'Who have the shade of cornful crest Under their umbra umbrellas rest', 'Patriotic farmers desire to bring all other states under the control of their own king'),
  (1035, 104, 'உழவு', 'இரவார் இரப்பார்க்கொன்று ஈவர் கரவாது
கைசெய்தூண் மாலை யவர்.', 'Iravaar Irappaarkkondru Eevar Karavaadhu', 'Who till and eat, beg not; nought hide But give to those who are in need', 'Those whose nature is to live by manual labour will never beg but give something to those who beg'),
  (1036, 104, 'உழவு', 'உழவினார் கைம்மடங்கின் இல்லை விழைவதூஉம்
விட்டேம்என் பார்க்கும் நிலை.', 'Uzhavinaar Kaimmatangin Illai Vizhaivadhooum', 'Should ploughmen sit folding their hands Desire-free monks too suffer wants', 'If the farmer\'s hands are slackened, even the ascetic state will fail'),
  (1037, 104, 'உழவு', 'தொடிப்புழுதி கஃசா உணக்கின் பிடித்தெருவும்
வேண்டாது சாலப் படும்.', 'Thotippuzhudhi Kaqsaa Unakkin Pitiththeruvum', 'Moulds dried to quarter-dust ensure Rich crops without handful manure', 'If the land is dried so as to reduce one ounce of earth to a quarter, it will grow plentifully even without a handful of manure'),
  (1038, 104, 'உழவு', 'ஏரினும் நன்றால் எருவிடுதல் கட்டபின்
நீரினும் நன்றதன் காப்பு.', 'Erinum Nandraal Eruvitudhal Kattapin', 'Better manure than plough; then weed; Than irrigating, better guard', 'Manuring is better than ploughing; after weeding, watching is better than watering (it)'),
  (1039, 104, 'உழவு', 'செல்லான் கிழவன் இருப்பின் நிலம்புலந்து
இல்லாளின் ஊடி விடும்.', 'Sellaan Kizhavan Iruppin Nilampulandhu', 'If landsmen sit sans moving about The field like wife will sulk and pout', 'If the owner does not (personally) attend to his cultivation, his land will behave like an angry wife and yield him no pleasure'),
  (1040, 104, 'உழவு', 'இலமென்று அசைஇ இருப்பாரைக் காணின்
நிலமென்னும் நல்லாள் நகும்.', 'Ilamendru Asaii Iruppaaraik Kaanin', 'Fair good earth will laugh to see Idlers pleading poverty', 'The maiden, Earth, will laugh at the sight of those who plead poverty and lead an idle life'),
  (1041, 105, 'நல்குரவு', 'இன்மையின் இன்னாதது யாதெனின் இன்மையின்
இன்மையே இன்னா தது.', 'Inmaiyin Innaadhadhu Yaadhenin Inmaiyin', 'What gives more pain than scarcity? No pain pinches like poverty', 'There is nothing that afflicts (one) like poverty'),
  (1042, 105, 'நல்குரவு', 'இன்மை எனவொரு பாவி மறுமையும்
இம்மையும் இன்றி வரும்.', 'Inmai Enavoru Paavi Marumaiyum', 'The sinner Want is enemy dire Of joys of earth and heaven there', 'When cruel poverty comes on, it deprives one of both the present and future (bliss)'),
  (1043, 105, 'நல்குரவு', 'தொல்வரவும் தோலும் கெடுக்கும் தொகையாக
நல்குரவு என்னும் நசை.', 'Tholvaravum Tholum Ketukkum Thokaiyaaka', 'The craving itch of poverty Kills graceful words and ancestry', 'Hankering poverty destroys at once the greatness of (one\'s) ancient descent and (the dignity of one\'s) speech'),
  (1044, 105, 'நல்குரவு', 'இற்பிறந்தார் கண்ணேயும் இன்மை இளிவந்த
சொற்பிறக்கும் சோர்வு தரும்.', 'Irpirandhaar Kanneyum Inmai Ilivandha', 'Want makes even good familymen Utter words that are low and mean', 'Even in those of high birth, poverty will produce the fault of uttering mean words'),
  (1045, 105, 'நல்குரவு', 'நல்குரவு என்னும் இடும்பையுள் பல்குரைத்
துன்பங்கள் சென்று படும்.', 'Nalkuravu Ennum Itumpaiyul Palkuraith', 'The pest of wanton poverty Brings a train of misery', 'The misery of poverty brings in its train many (more) miseries'),
  (1046, 105, 'நல்குரவு', 'நற்பொருள் நன்குணர்ந்து சொல்லினும் நல்கூர்ந்தார்
சொற்பொருள் சோர்வு படும்.', 'Narporul Nankunarndhu Sollinum Nalkoorndhaar', 'The poor men\'s words are thrown away Though from heart good things they say', 'The words of the poor are profitless, though they may be sound in thought and clear in expression'),
  (1047, 105, 'நல்குரவு', 'அறஞ்சாரா நல்குரவு ஈன்றதா யானும்
பிறன்போல நோக்கப் படும்.', 'Aranjaaraa Nalkuravu Eendradhaa Yaanum', 'Even the mother looks as stranger The poor devoid of character', 'He that is reduced to absolute poverty will be regarded as a stranger even by his own mother'),
  (1048, 105, 'நல்குரவு', 'இன்றும் வருவது கொல்லோ நெருநலும்
கொன்றது போலும் நிரப்பு.', 'Indrum Varuvadhu Kollo Nerunalum', 'The killing Want of yesterday Will it pester me even to-day?', 'Is the poverty that almost killed me yesterday, to meet me today too ?'),
  (1049, 105, 'நல்குரவு', 'நெருப்பினுள் துஞ்சலும் ஆகும் நிரப்பினுள்
யாதொன்றும் கண்பாடு அரிது.', 'Neruppinul Thunjalum Aakum Nirappinul', 'One may sleep in the midst of fire In want a wink of sleep is rare', 'One may sleep in the midst of fire; but by no means in the midst of poverty'),
  (1050, 105, 'நல்குரவு', 'துப்புர வில்லார் துவரத் துறவாமை
உப்பிற்கும் காடிக்கும் கூற்று.', 'Thuppura Villaar Thuvarath Thuravaamai', 'Renounce their lives the poor must Or salt and gruel go to waste', 'The destitute poor, who do not renounce their bodies, only consume their neighbour\'s salt and water'),
  (1051, 106, 'இரவு', 'இரக்க இரத்தக்கார்க் காணின் கரப்பின்
அவர்பழி தம்பழி அன்று.', 'Irakka Iraththakkaark Kaanin Karappin', 'Demand from those who can supply Default is theirs when they deny', 'If you meet with those that may be begged of, you may beg; (but) if they withhold (their gift) it is their blame and not yours'),
  (1052, 106, 'இரவு', 'இன்பம் ஒருவற்கு இரத்தல் இரந்தவை
துன்பம் உறாஅ வரின்.', 'Inpam Oruvarku Iraththal Irandhavai', 'Even demand becomes a joy When the things comes without annoy', 'Even begging may be pleasant, if what is begged for is obtained without grief (to him that begs)'),
  (1053, 106, 'இரவு', 'கரப்பிலா நெஞ்சின் கடனறிவார் முன்நின்று
இரப்புமோ ரேஎர் உடைத்து.', 'Karappilaa Nenjin Katanarivaar Munnindru', 'Request has charm form open hearts Who know the duty on their part', 'There is even a beauty in standing before and begging of those who are liberal in their gifts and understand their duty (to beggars)'),
  (1054, 106, 'இரவு', 'இரத்தலும் ஈதலே போலும் கரத்தல்
கனவிலும் தேற்றாதார் மாட்டு.', 'Iraththalum Eedhale Polum Karaththal', 'Like giving even asking seems From those who hide not even in dreams', 'To beg of such as never think of withholding (their charity) even in their dreams, is in fact the same as giving (it oneself);'),
  (1055, 106, 'இரவு', 'கரப்பிலார் வையகத்து உண்மையால் கண்ணின்று
இரப்பவர் மேற்கொள் வது.', 'Karappilaar Vaiyakaththu Unmaiyaal Kannindru', 'The needy demand for help because The world has men who don\'t refuse', 'As there are in the world those that give without refusing, there are (also) those that prefer to beg by simply standing before them'),
  (1056, 106, 'இரவு', 'கரப்பிடும்பை யில்லாரைக் காணின் நிரப்பிடும்பை
எல்லாம் ஒருங்கு கெடும்.', 'Karappitumpai Yillaaraik Kaanin Nirappitumpai', 'The pain of poverty shall die Before the free who don\'t deny', 'All the evil of begging will be removed at the sight of those who are far from the evil of refusing'),
  (1057, 106, 'இரவு', 'இகழ்ந்தெள்ளாது ஈவாரைக் காணின் மகிழ்ந்துள்ளம்
உள்ளுள் உவப்பது உடைத்து.', 'Ikazhndhellaadhu Eevaaraik Kaanin Makizhndhullam', 'When givers without scorn impart A thrill of delight fills the heart', 'Beggars rejoice exceedingly when they behold those who bestow (their alms) with kindness and courtesy'),
  (1058, 106, 'இரவு', 'இரப்பாரை இல்லாயின் ஈர்ங்கண்மா ஞாலம்
மரப்பாவை சென்றுவந் தற்று.', 'Irappaarai Illaayin Eernganmaa Gnaalam', 'This grand cool world shall move to and fro Sans Askers like a puppet show', 'If there were no beggars, (the actions done in) the cool wide world would only resemble the movement of a puppet'),
  (1059, 106, 'இரவு', 'ஈவார்கண் என்னுண்டாம் தோற்றம் இரந்துகோள்
மேவார் இலாஅக் கடை.', 'Eevaarkan Ennuntaam Thotram Irandhukol', 'Where stands the glory of givers Without obligation seekers?', 'What (praise) would there be to givers (of alms) if there were no beggars to ask for and reveive (them)'),
  (1060, 106, 'இரவு', 'இரப்பான் வெகுளாமை வேண்டும் நிரப்பிடும்பை
தானேயும் சாலும் கரி.', 'Irappaan Vekulaamai Ventum Nirappitumpai', 'The needy should not scowl at \\"No\\" His need another\'s need must show * Saint valluvar talks of two kinds of Asking:() Asking help for public causes or enterprises () Begging when one is able to work and this is condemned', 'He who begs ought not to be angry (at a refusal); for even the misery of (his own) poverty should be a sufficient reason (for so doing)'),
  (1061, 107, 'இரவச்சம்', 'கரவாது உவந்தீயும் கண்ணன்னார் கண்ணும்
இரவாமை கோடி உறும்.', 'Karavaadhu Uvandheeyum Kannannaar Kannum', 'Not to beg is billions worth E\'en from eye-like friends who give with mirth', 'Not to beg (at all) even from those excellent persons who cheerfully give without refusing, will do immense good'),
  (1062, 107, 'இரவச்சம்', 'இரந்தும் உயிர்வாழ்தல் வேண்டின் பரந்து
கெடுக உலகியற்றி யான்.', 'Irandhum Uyirvaazhdhal Ventin Parandhu', 'Let World-Maker loiter and rot If \\"beg and live\\" be human fate', 'If the Creator of the world has decreed even begging as a means of livelihood, may he too go abegging and perish'),
  (1063, 107, 'இரவச்சம்', 'இன்மை இடும்பை இரந்துதீர் வாமென்னும்
வன்மையின் வன்பாட்ட தில்.', 'Inmai Itumpai Irandhudheer Vaamennum', 'Nothing is hard like hard saying \\"We end poverty by begging\\"', 'There is no greater folly than the boldness with which one seeks to remedy the evils of poverty by begging (rather than by working)'),
  (1064, 107, 'இரவச்சம்', 'இடமெல்லாம் கொள்ளாத் தகைத்தே இடமில்லாக்
காலும் இரவொல்லாச் சால்பு.', 'Itamellaam Kollaath Thakaiththe Itamillaak', 'All space is small before the great Who beg not e\'en in want acute', 'Even the whole world cannot sufficiently praise the dignity that would not beg even in the midst of destitution'),
  (1065, 107, 'இரவச்சம்', 'தெண்ணீர் அடுபுற்கை ஆயினும் தாள்தந்தது
உண்ணலின் ஊங்கினிய தில்.', 'Thenneer Atupurkai Aayinum Thaaldhandhadhu', 'Though gruel thin, nothing is sweet Like the food earned by labour\'s sweat', 'Even thin gruel is ambrosia to him who has obtained it by labour'),
  (1066, 107, 'இரவச்சம்', 'ஆவிற்கு நீரென்று இரப்பினும் நாவிற்கு
இரவின் இளிவந்த தில்.', 'Aavirku Neerendru Irappinum Naavirku', 'It may be water for the cow Begging tongue is mean anyhow', 'There is nothing more disgraceful to one\'s tongue than to use it in begging water even for a cow'),
  (1067, 107, 'இரவச்சம்', 'இரப்பன் இரப்பாரை எல்லாம் இரப்பின்
கரப்பார் இரவன்மின் என்று.', 'Irappan Irappaarai Ellaam Irappin', 'If beg they must I beg beggers Not to beg from shrinking misers', 'I beseech all beggars and say, "If you need to beg, never beg of those who give unwillingly."'),
  (1068, 107, 'இரவச்சம்', 'இரவென்னும் ஏமாப்பில் தோணி கரவென்னும்
பார்தாக்கப் பக்கு விடும்.', 'Iravennum Emaappil Thoni Karavennum', 'The hapless bark of beggary splits On the rock of refusing hits', 'The unsafe raft of begging will split when it strikes on the rock of refusal'),
  (1069, 107, 'இரவச்சம்', 'இரவுள்ள உள்ளம் உருகும் கரவுள்ள
உள்ளதூஉம் இன்றிக் கெடும்.', 'Iravulla Ullam Urukum Karavulla', 'The heart at thought of beggars melts; It dies at repulsing insults', 'To think of (the evil of) begging is enough to melt one\'s heart; but to think of refusal is enough to break it'),
  (1070, 107, 'இரவச்சம்', 'கரப்பவர்க்கு யாங்கொளிக்கும் கொல்லோ இரப்பவர்
சொல்லாடப் போஒம் உயிர்.', 'Karappavarkku Yaangolikkum Kollo Irappavar', 'The word \\"No\\" kills the begger\'s life Where can the niggard\'s life be safe?', 'Saying "No" to a beggar takes away his life. (but as that very word will kill the refuser) where then would the latter\'s life hide itself ?'),
  (1071, 108, 'கயமை', 'மக்களே போல்வர் கயவர் அவரன்ன
ஒப்பாரி யாங்கண்ட தில்.', 'Makkale Polvar Kayavar Avaranna', 'The mean seem men only in form We have never seen such a sham', 'The base resemble men perfectly (as regards form); and we have not seen such (exact) resemblance (among any other species)'),
  (1072, 108, 'கயமை', 'நன்றறி வாரிற் கயவர் திருவுடையர்
நெஞ்சத்து அவலம் இலர்.', 'Nandrari Vaarir Kayavar Thiruvutaiyar', 'The base seem richer than the good For no care enters their heart or head', 'The low enjoy more felicity than those who know what is good; for the former are not troubled with anxiety (as to the good)'),
  (1073, 108, 'கயமை', 'தேவர் அனையர் கயவர் அவருந்தாம்
மேவன செய்தொழுக லான்.', 'Thevar Anaiyar Kayavar Avarundhaam', 'The base are like gods; for they too As prompted by their desire do', 'The base resemble the Gods; for the base act as they like'),
  (1074, 108, 'கயமை', 'அகப்பட்டி ஆவாரைக் காணின் அவரின்
மிகப்பட்டுச் செம்மாக்கும் கீழ்.', 'Akappatti Aavaaraik Kaanin Avarin', 'When the base meets a rake so vile Him he will exceed, exult and smile', 'The base feels proud when he sees persons whose acts meaner than his own'),
  (1075, 108, 'கயமை', 'அச்சமே கீழ்களது ஆசாரம் எச்சம்
அவாவுண்டேல் உண்டாம் சிறிது.', 'Achchame Keezhkaladhu Aasaaram Echcham', 'Fear forms the conduct of the low Craving avails a bit below', '(The principle of) behaviour in the mean is chiefly fear; if not, hope of gain, to some extent'),
  (1076, 108, 'கயமை', 'அறைபறை அன்னர் கயவர்தாம் கேட்ட
மறைபிறர்க்கு உய்த்துரைக்க லான்.', 'Araiparai Annar Kayavardhaam Ketta', 'The base are like the beaten drum Since other\'s secrets they proclaim', 'The base are like a drum that is beaten, for they unburden to others the secrets they have heard'),
  (1077, 108, 'கயமை', 'ஈர்ங்கை விதிரார் கயவர் கொடிறுடைக்கும்
கூன்கையர் அல்லா தவர்க்கு.', 'Eerngai Vidhiraar Kayavar Kotirutaikkum', 'The base their damp hand will not shake But for fists clenched their jaws to break', 'The mean will not (even) shake off (what sticks to) their hands (soon after a meal) to any but those who would break their jaws with their clenched fists'),
  (1078, 108, 'கயமை', 'சொல்லப் பயன்படுவர் சான்றோர் கரும்புபோல்
கொல்லப் பயன்படும் கீழ்.', 'Sollap Payanpatuvar Saandror Karumpupol', 'The good by soft words profits yield The cane-like base when crushed and killed', 'The great bestow (their alms) as soon as they are informed; (but) the mean, like the sugar-cane, only when they are tortured to death'),
  (1079, 108, 'கயமை', 'உடுப்பதூஉம் உண்பதூஉம் காணின் பிறர்மேல்
வடுக்காண வற்றாகும் கீழ்.', 'Utuppadhooum Unpadhooum Kaanin Pirarmel', 'Faults in others the mean will guess On seeing how they eat and dress', 'The base will bring an evil (accusation) against others, as soon as he sees them (enjoying) good food'),
  (1080, 108, 'கயமை', 'எற்றிற் குரியர் கயவரொன்று உற்றக்கால்
விற்றற்கு உரியர் விரைந்து.', 'Etrir Kuriyar Kayavarondru Utrakkaal', 'The base hasten to sell themselves From doom to flit and nothing else', 'The base will hasten to sell themselves as soon as a calamity has befallen them. For what else are they fitted ?'),
  (1081, 109, 'தகையணங்குறுத்தல்', 'அணங்குகொல் ஆய்மயில் கொல்லோ கனங்குழை
மாதர்கொல் மாலும் என் நெஞ்சு.', 'Anangukol Aaimayil Kollo Kananguzhai', 'Is it an angel? A fair peacock Or jewelled belle? To my mind a shock!', 'Is this jewelled female a celestial, a choice peahen, or a human being ? My mind is perplexed'),
  (1082, 109, 'தகையணங்குறுத்தல்', 'நோக்கினாள் நோக்கெதிர் நோக்குதல் தாக்கணங்கு
தானைக்கொண் டன்ன துடைத்து.', 'Nokkinaal Nokkedhir Nokkudhal Thaakkanangu', 'The counter glances of this belle Are armied dart of the Love-Angel', 'This female beauty returning my looks is like a celestial maiden coming with an army to contend against me'),
  (1083, 109, 'தகையணங்குறுத்தல்', 'பண்டறியேன் கூற்றென் பதனை இனியறிந்தேன்
பெண்டகையால் பேரமர்க் கட்டு.', 'Pantariyen Kootren Padhanai Iniyarindhen', 'Not known before -I spy Demise In woman\'s guise with battling eyes', 'I never knew before what is called Yama; I see it now; it is the eyes that carry on a great fight with (the help of) female qualities'),
  (1084, 109, 'தகையணங்குறுத்தல்', 'கண்டார் உயிருண்ணும் தோற்றத்தால் பெண்டகைப்
பேதைக்கு அமர்த்தன கண்.', 'Kantaar Uyirunnum Thotraththaal Pentakaip', 'This artless dame has darting eyes That drink the life of men who gaze', 'These eyes that seem to kill those who look at them are as it were in hostilities with this feminine simplicity'),
  (1085, 109, 'தகையணங்குறுத்தல்', 'கூற்றமோ கண்ணோ பிணையோ மடவரல்
நோக்கமிம் மூன்றும் உடைத்து.', 'Kootramo Kanno Pinaiyo Matavaral', 'Is it death, eye or doe? All three In winsome woman\'s look I see', 'Is it Yama, (a pair of) eyes or a hind ?- Are not all these three in the looks of this maid ?'),
  (1086, 109, 'தகையணங்குறுத்தல்', 'கொடும்புருவம் கோடா மறைப்பின் நடுங்கஞர்
செய்யல மன்இவள் கண்.', 'Kotumpuruvam Kotaa Maraippin Natungagnar', 'If cruel brows unbent, would screen Her eyes won\'t cause me trembling pain', 'Her eyes will cause (me) no trembling sorrow, if they are properly hidden by her cruel arched eyebrows'),
  (1087, 109, 'தகையணங்குறுத்தல்', 'கடாஅக் களிற்றின்மேற் கட்படாம் மாதர்
படாஅ முலைமேல் துகில்.', 'Kataaak Kalitrinmer Katpataam Maadhar', 'Vest on the buxom breast of her Looks like rutting tusker\'s eye-cover', 'The cloth that covers the firm bosom of this maiden is (like) that which covers the eyes of a rutting elephant'),
  (1088, 109, 'தகையணங்குறுத்தல்', 'ஒண்ணுதற் கோஒ உடைந்ததே ஞாட்பினுள்
நண்ணாரும் உட்குமென் பீடு.', 'Onnudhar Koo Utaindhadhe Gnaatpinul', 'Ah these fair brows shatter my might Feared by foemen yet to meet', 'On her bright brow alone is destroyed even that power of mine that used to terrify the most fearless'),
  (1089, 109, 'தகையணங்குறுத்தல்', 'பிணையேர் மடநோக்கும் நாணும் உடையாட்கு
அணியெவனோ ஏதில தந்து.', 'Pinaiyer Matanokkum Naanum Utaiyaatku', 'Which jewel can add to her beauty With fawn-like looks and modesty?', 'Of what use are other jewels to her who is adorned with modesty, and the meek looks of a hind ?'),
  (1090, 109, 'தகையணங்குறுத்தல்', 'உண்டார்கண் அல்லது அடுநறாக் காமம்போல்
கண்டார் மகிழ்செய்தல் இன்று.', 'Untaarkan Alladhu Atunaraak Kaamampol', 'To the drunk alone is wine delight Nothing delights like love at sight', 'Unlike boiled honey which yields delight only when it is drunk, love gives pleasure even when looked at'),
  (1091, 110, 'குறிப்பறிதல்', 'இருநோக்கு இவளுண்கண் உள்ளது ஒருநோக்கு
நோய்நோக்கொன் றந்நோய் மருந்து.', 'Irunokku Ivalunkan Ulladhu Orunokku', 'Her painted eyes, two glances dart One hurts; the other heals my heart', 'There are two looks in the dyed eyes of this (fair one); one causes pain, and the other is the cure thereof'),
  (1092, 110, 'குறிப்பறிதல்', 'கண்களவு கொள்ளும் சிறுநோக்கம் காமத்தில்
செம்பாகம் அன்று பெரிது.', 'Kankalavu Kollum Sirunokkam Kaamaththil', 'Her furtive lightning glance is more Than enjoyment of sexual lore', 'A single stolen glance of her eyes is more than half the pleasure (of sexual embrace)'),
  (1093, 110, 'குறிப்பறிதல்', 'நோக்கினாள் நோக்கி இறைஞ்சினாள் அஃதவள்
யாப்பினுள் அட்டிய நீர்.', 'Nokkinaal Nokki Irainjinaal Aqdhaval', 'She looked; looking bowed her head And love-plant was with water fed', 'She has looked (at men) and stooped (her head); and that (sign) waters as it were (the corn of) our love'),
  (1094, 110, 'குறிப்பறிதல்', 'யான்நோக்கும் காலை நிலன்நோக்கும் நோக்காக்கால்
தான்நோக்கி மெல்ல நகும்.', 'Yaannokkum Kaalai Nilannokkum Nokkaakkaal', 'I look; she droops to earth awhile I turn; she looks with gentle smile', 'When I look, she looks down; when I do not, she looks and smiles gently'),
  (1095, 110, 'குறிப்பறிதல்', 'குறிக்கொண்டு நோக்காமை அல்லால் ஒருகண்
சிறக்கணித்தாள் போல நகும்', 'Kurikkontu Nokkaamai Allaal Orukan', 'No direct gaze; a side-long glance She darts at me and smiles askance', 'She not only avoids a direct look at me, but looks as it were with a half-closed eye and smiles'),
  (1096, 110, 'குறிப்பறிதல்', 'உறாஅ தவர்போல் சொலினும் செறாஅர்சொல்
ஒல்லை உணரப் படும்.', 'Uraaa Thavarpol Solinum Seraaarsol', 'Their words at first seem an offence But quick we feel them friendly ones', 'Though they may speak harshly as if they were strangers, the words of the friendly are soon understood'),
  (1097, 110, 'குறிப்பறிதல்', 'செறாஅச் சிறுசொல்லும் செற்றார்போல் நோக்கும்
உறாஅர்போன்று உற்றார் குறிப்பு.', 'Seraaach Chirusollum Setraarpol Nokkum', 'Harsh little words; offended looks, Are feigned consenting love-lorn tricks', 'Little words that are harsh and looks that are hateful are (but) the expressions of lovers who wish to act like strangers'),
  (1098, 110, 'குறிப்பறிதல்', 'அசையியற்கு உண்டாண்டோர் ஏஎர்யான் நோக்கப்
பசையினள் பைய நகும்.', 'Asaiyiyarku Untaantor Eeryaan Nokkap', 'What a grace the slim maid has! As I look she slightly smiles', 'When I look, the pitying maid looks in return and smiles gently; and that is a comforting sign for me'),
  (1099, 110, 'குறிப்பறிதல்', 'ஏதிலார் போலப் பொதுநோக்கு நோக்குதல்
காதலார் கண்ணே உள.', 'Edhilaar Polap Podhunokku Nokkudhal', 'Between lovers we do discern A stranger\'s look of unconcern', 'Both the lovers are capable of looking at each other in an ordinary way, as if they were perfect strangers'),
  (1100, 110, 'குறிப்பறிதல்', 'கண்ணொடு கண்இணை நோக்கொக்கின் வாய்ச்சொற்கள்
என்ன பயனும் இல.', 'Kannotu Kaninai Nokkokkin Vaaichchorkal', 'The words of mouth are of no use When eye to eye agrees the gaze', 'The words of the mouths are of no use whatever, when there is perfect agreement between the eyes (of lovers)'),
  (1101, 111, 'புணர்ச்சிமகிழ்தல்', 'கண்டுகேட்டு உண்டுயிர்த்து உற்றறியும் ஐம்புலனும்
ஒண்தொடி கண்ணே உள.', 'Kantukettu Untuyirththu Utrariyum Aimpulanum', 'In this bangled beauty dwell The joys of sight sound touch taste smell', 'The (simultaneous) enjoyment of the five senses of sight, hearing, taste, smell and touch can only be found with bright braceleted (women)'),
  (1102, 111, 'புணர்ச்சிமகிழ்தல்', 'பிணிக்கு மருந்து பிறமன் அணியிழை
தன்நோய்க்குத் தானே மருந்து.', 'Pinikku Marundhu Piraman Aniyizhai', 'The cure for ailment is somewhere For fair maid\'s ill she is the cure', 'The remedy for a disease is always something different (from it); but for the disease caused by this jewelled maid, she is herself the cure'),
  (1103, 111, 'புணர்ச்சிமகிழ்தல்', 'தாம்வீழ்வார் மென்றோள் துயிலின் இனிதுகொல்
தாமரைக் கண்ணான் உலகு.', 'Thaamveezhvaar Mendrol Thuyilin Inidhukol', 'Is lotus-eyed lord\'s heaven so sweet As sleep in lover\'s arms so soft?', 'Can the lotus-eyed Vishnu\'s heaven be indeed as sweet to those who delight to sleep in the delicate arms of their beloved ?'),
  (1104, 111, 'புணர்ச்சிமகிழ்தல்', 'நீங்கின் தெறூஉம் குறுகுங்கால் தண்ணென்னும்
தீயாண்டுப் பெற்றாள் இவள்?', 'Neengin Theruum Kurukungaal Thannennum', 'Away it burns and cools anear Wherefrom did she get this fire?', 'From whence has she got this fire that burns when I withdraw and cools when I approach ?'),
  (1105, 111, 'புணர்ச்சிமகிழ்தல்', 'வேட்ட பொழுதின் அவையவை போலுமே
தோட்டார் கதுப்பினாள் தோள்.', 'Vetta Pozhudhin Avaiyavai Polume', 'The arms of my flower-tressed maid Whatever I wish that that accord', 'Each varied form of joy the soul can wish is found'),
  (1106, 111, 'புணர்ச்சிமகிழ்தல்', 'உறுதோறு உயிர்தளிர்ப்பத் தீண்டலால் பேதைக்கு
அமிழ்தின் இயன்றன தோள்.', 'Urudhoru Uyirdhalirppath Theentalaal Pedhaikku', 'My simple maid has nectar arms Each embrace brings life-thrilling charms', 'The shoulders of this fair one are made of ambrosia, for they revive me with pleasure every time I embrace them'),
  (1107, 111, 'புணர்ச்சிமகிழ்தல்', 'தம்மில் இருந்து தமதுபாத்து உண்டற்றால்
அம்மா அரிவை முயக்கு.', 'Thammil Irundhu Thamadhupaaththu Untatraal', 'Ah the embrace of this fair dame Is like sharing one\'s food at home', 'The embraces of a gold-complexioned beautiful female are as pleasant as to dwell in one\'s own house and live by one\'s own (earnings) after distributing (a portion of it in charity)'),
  (1108, 111, 'புணர்ச்சிமகிழ்தல்', 'வீழும் இருவர்க்கு இனிதே வளியிடை
போழப் படாஅ முயக்கு.', 'Veezhum Iruvarkku Inidhe Valiyitai', 'Joy is the fast embrace that doth Not admit e\'en air between both', 'To ardent lovers sweet is the embrace that cannot be penetrated even by a breath of breeze'),
  (1109, 111, 'புணர்ச்சிமகிழ்தல்', 'ஊடல் உணர்தல் புணர்தல் இவைகாமம்
கூடியார் பெற்ற பயன்.', 'Ootal Unardhal Punardhal Ivaikaamam', 'Sulking, feeling and clasping fast These three are sweets of lover\'s tryst', 'Love quarrel, reconciliation and intercourse - these are the advantages reaped by those who marry for lust'),
  (1110, 111, 'புணர்ச்சிமகிழ்தல்', 'அறிதோறு அறியாமை கண்டற்றால் காமம்
செறிதோறும் சேயிழை மாட்டு.', 'Aridhoru Ariyaamai Kantatraal Kaamam', 'As knowledge reveals past ignorance So is the belle as love gets close', 'As (one\'s) ignorance is discovered the more one learns, so does repeated intercourse with a welladorned female (only create a desire for more)'),
  (1111, 112, 'நலம்புனைந்துரைத்தல்', 'நன்னீரை வாழி அனிச்சமே நின்னினும்
மென்னீரள் யாம்வீழ் பவள்.', 'Nanneerai Vaazhi Anichchame Ninninum', 'Soft blessed anicha flower, hail On whom I dote is softer still', 'May you flourish, O Anicham! you have a delicate nature But my beloved is more delicate than you'),
  (1112, 112, 'நலம்புனைந்துரைத்தல்', 'மலர்காணின் மையாத்தி நெஞ்சே இவள்கண்
பலர்காணும் பூவொக்கும் என்று.', 'Malarkaanin Maiyaaththi Nenje Ivalkan', 'You can\'t liken flowers by many eyed, To her bright eyes, O mind dismayed', 'O my soul, fancying that flowers which are seen by many can resemble her eyes, you become confused at the sight of them'),
  (1113, 112, 'நலம்புனைந்துரைத்தல்', 'முறிமேனி முத்தம் முறுவல் வெறிநாற்றம்
வேலுண்கண் வேய்த்தோ ளவட்கு.', 'Murimeni Muththam Muruval Verinaatram', 'The bamboo-shouldered has pearl-like smiles Fragrant breath and lance-like eyes', 'The complexion of this bamboo-shouldered one is that of a shoot; her teeth, are pearls; her breath,'),
  (1114, 112, 'நலம்புனைந்துரைத்தல்', 'காணின் குவளை கவிழ்ந்து நிலன்நோக்கும்
மாணிழை கண்ணொவ்வேம் என்று.', 'Kaanin Kuvalai Kavizhndhu Nilannokkum', 'Lily droops down to ground and says I can\'t equal the jewelled-one\'s eyes', 'If the blue lotus could see, it would stoop and look at the ground saying, "I can never resemble the eyes of this excellent jewelled one."'),
  (1115, 112, 'நலம்புனைந்துரைத்தல்', 'அனிச்சப்பூக் கால்களையாள் பெய்தாள் நுகப்பிற்கு
நல்ல படாஅ பறை.', 'Anichchappook Kaalkalaiyaal Peydhaal Nukappirku', 'Anicha flower with stem she wears To her breaking waist sad-drum-blares!', 'No merry drums will be beaten for the (tender) waist of her who has adorned herself with the anicham without having removed its stem'),
  (1116, 112, 'நலம்புனைந்துரைத்தல்', 'மதியும் மடந்தை முகனும் அறியா
பதியின் கலங்கிய மீன்.', 'Madhiyum Matandhai Mukanum Ariyaa', 'Stars are confused to know which is The moon and which is woman\'s face', 'The stars have become confused in their places not being able to distinguish between the moon and the maid\'s countenance'),
  (1117, 112, 'நலம்புனைந்துரைத்தல்', 'அறுவாய் நிறைந்த அவிர்மதிக்குப் க்குப் போல
மறுவுண்டோ மாதர் முகத்து.', 'Aruvaai Niraindha Avirmadhikkup Pola', 'Are there spots on the lady\'s face Just as in moon that changes phase?', 'Could there be spots in the face of this maid like those in the bright full moon ?'),
  (1118, 112, 'நலம்புனைந்துரைத்தல்', 'மாதர் முகம்போல் ஒளிவிட வல்லையேல்
காதலை வாழி மத஧.', 'Maadhar Mukampol Olivita Vallaiyel', 'Like my lady\'s face if you shine All my love to you; hail O moon!', 'If you can indeed shine like the face of women, flourish, O moon, for then would you be worth loving ?'),
  (1119, 112, 'நலம்புனைந்துரைத்தல்', 'மலரன்ன கண்ணாள் முகமொத்தி யாயின்
பலர்காணத் தோன்றல் மதி.', 'Malaranna Kannaal Mukamoththi Yaayin', 'Like the face of my flower-eyed one If you look, then shine alone O moon!', 'O moon, if you wish to resemble the face of her whose eyes are like (these) flowers, do not appear so as to be seen by all'),
  (1120, 112, 'நலம்புனைந்துரைத்தல்', 'அனிச்சமும் அன்னத்தின் தூவியும் மாதர்
அடிக்கு நெருஞ்சிப் பழம்.', 'Anichchamum Annaththin Thooviyum Maadhar', 'The soft flower and the swan\'s down are Like nettles to the feet of the fair', 'The anicham and the feathers of the swan are to the feet of females, like the fruit of the (thorny) Nerunji'),
  (1121, 113, 'காதற்சிறப்புரைத்தல்', 'பாலொடு தேன்கலந் தற்றே பணிமொழி
வாலெயிறு ஊறிய நீர்.', 'Paalotu Thenkalan Thatre Panimozhi', 'Like milk and honey the dew is sweet From her white teeth whose word is soft', 'The water which oozes from the white teeth of this soft speeched damsel is like a mixture of milk and honey'),
  (1122, 113, 'காதற்சிறப்புரைத்தல்', 'உடம்பொடு உயிரிடை என்னமற் றன்ன
மடந்தையொடு எம்மிடை நட்பு.', 'Utampotu Uyiritai Ennamar Ranna', 'Love between me and this lady Is like bond between soul and body', 'The love between me and this damsel is like the union of body and soul'),
  (1123, 113, 'காதற்சிறப்புரைத்தல்', 'கருமணியிற் பாவாய்நீ போதாயாம் வீழும்
திருநுதற்கு இல்லை இடம்.', 'Karumaniyir Paavaainee Podhaayaam Veezhum', 'Depart image in my pupil Giving room to my fair-browed belle!', 'O you image in the pupil (of my eye)! depart; there is no room for (my) fair-browed beloved'),
  (1124, 113, 'காதற்சிறப்புரைத்தல்', 'வாழ்தல் உயிர்க்கன்னள் ஆயிழை சாதல்
அதற்கன்னள் நீங்கும் இடத்து.', 'Vaazhdhal Uyirkkannal Aayizhai Saadhal', 'Life with my jewel is existence Death it is her severance', 'My fair-jewelled one resembles the living soul (when she is in union with me), the dying soul when she leaves me'),
  (1125, 113, 'காதற்சிறப்புரைத்தல்', 'உள்ளுவன் மன்யான் மறப்பின் மறப்பறியேன்
ஒள்ளமர்க் கண்ணாள் குணம்.', 'Ulluvan Manyaan Marappin Marappariyen', 'Can I forget? I recall always The charms of her bright battling eyes', 'If I had forgotten her who has bright battling eyes, I would have remembered (thee); but I never forget her (Thus says he to her maid)'),
  (1126, 113, 'காதற்சிறப்புரைத்தல்', 'கண்ணுள்ளின் போகார் இமைப்பின் பருகுவரா
நுண்ணியர்எம் காத லவர்.', 'Kannullin Pokaar Imaippin Parukuvaraa', 'So subtle is my lover\'s form Ever in my eyes winking, no harm', 'My lover would not depart from mine eyes; even if I wink, he would not suffer (from pain); he is so ethereal'),
  (1127, 113, 'காதற்சிறப்புரைத்தல்', 'கண்ணுள்ளார் காத லவராகக் கண்ணும்
எழுதேம் கரப்பாக்கு அறிந்து.', 'Kannullaar Kaadha Lavaraakak Kannum', 'My lover in my eyes abides I paint them not lest he hides', 'As my lover abides in my eyes, I will not even paint them, for he would (then) have to conceal himself'),
  (1128, 113, 'காதற்சிறப்புரைத்தல்', 'நெஞ்சத்தார் காத லவராக வெய்துண்டல்
அஞ்சுதும் வேபாக் கறிந்து.', 'Nenjaththaar Kaadha Lavaraaka Veydhuntal', 'My lover abides in my heart I fear hot food lest he feels hot', 'As my lover is in my heart, I am afraid of eating (anything) hot, for I know it would pain him'),
  (1129, 113, 'காதற்சிறப்புரைத்தல்', 'இமைப்பின் கரப்பாக்கு அறிவல் அனைத்திற்கே
ஏதிலர் என்னும் இவ் வூர்.', 'Imaippin Karappaakku Arival Anaiththirke', 'My eyes wink not lest he should hide And him as cruel the townsmen chide', 'I will not wink, knowing that if I did, my lover would hide himself; and for this reason, this town says, he is unloving'),
  (1130, 113, 'காதற்சிறப்புரைத்தல்', 'உவந்துறைவர் உள்ளத்துள் என்றும் இகந்துறைவர்
ஏதிலர் என்னும் இவ் வூர்.', 'Uvandhuraivar Ullaththul Endrum Ikandhuraivar', 'He abides happy in my heart But people mistake he is apart', 'My lover dwells in my heart with perpetual delight; but the town says he is unloving and (therefore) dwells afar'),
  (1131, 114, 'நாணுத்துறவுரைத்தல்', 'காமம் உழந்து வருந்தினார்க்கு ஏமம்
மடலல்லது இல்லை வலி.', 'Kaamam Uzhandhu Varundhinaarkku Emam', 'Pangs of passion find no recourse Except riding *`palmyra horse\' * Palmyra horse or \'Madal\' is a torture expressive of the burning passion of the lover to the beloved The lover\'s body is laid on a rough pricking palmyra bed and he is carried along the street with songs of love pangs The parents of the lovers first reproach them and then consent to their marriage', 'To those who after enjoyment of sexual pleasure suffer (for want of more), there is no help so efficient as the palmyra horse'),
  (1132, 114, 'நாணுத்துறவுரைத்தல்', 'நோனா உடம்பும் உயிரும் மடலேறும்
நாணினை நீக்கி நிறுத்து.', 'Nonaa Utampum Uyirum Matalerum', 'Pining body and mind lose shame And take to riding of the palm', 'Having got rid of shame, the suffering body and soul save themselves on the palmyra horse'),
  (1133, 114, 'நாணுத்துறவுரைத்தல்', 'நாணொடு நல்லாண்மை பண்டுடையேன் இன்றுடையேன்
காமுற்றார் ஏறும் மடல்.', 'Naanotu Nallaanmai Pantutaiyen Indrutaiyen', 'Once I was modest and manly My love has now Madal only', 'Modesty and manliness were once my own; now, my own is the palmyra horse that is ridden by the lustful'),
  (1134, 114, 'நாணுத்துறவுரைத்தல்', 'காமக் கடும்புனல் உய்க்கும் நாணொடு
நல்லாண்மை என்னும் புணை.', 'Kaamak Katumpunal Uykkum Naanotu', 'Rushing flood of love sweeps away The raft of shame and firmness, aye!', 'The raft of modesty and manliness, is, alas, carried-off by the strong current of lust'),
  (1135, 114, 'நாணுத்துறவுரைத்தல்', 'தொடலைக் குறுந்தொடி தந்தாள் மடலொடு
மாலை உழக்கும் துயர்.', 'Thotalaik Kurundhoti Thandhaal Matalotu', 'Palm-ride and pangs of eventide Are gifts of wreath-like bracelet maid', 'She with the small garland-like bracelets has given me the palmyra horse and the sorrow that is endured at night'),
  (1136, 114, 'நாணுத்துறவுரைத்தல்', 'மடலூர்தல் யாமத்தும் உள்ளுவேன் மன்ற
படல்ஒல்லா பேதைக்கென் கண்.', 'Mataloordhal Yaamaththum Ulluven Mandra', 'Madal I ride at midnight for My eyes sleep not seeing this fair', 'Mine eyes will not close in sleep on your mistress\'s account; even at midnight will I think of mounting the palmyra horse'),
  (1137, 114, 'நாணுத்துறவுரைத்தல்', 'கடலன்ன காமம் உழந்தும் மடலேறாப்
பெண்ணின் பெருந்தக்க தில்.', 'Katalanna Kaamam Uzhandhum Mataleraap', 'Her sea-like lust seeks not Madal! Serene is woman\'s self control', 'There is nothing so noble as the womanly nature that would not ride the palmyra horse, though plunged a sea of lust'),
  (1138, 114, 'நாணுத்துறவுரைத்தல்', 'நிறையரியர் மன்அளியர் என்னாது காமம்
மறையிறந்து மன்று படும்.', 'Niraiyariyar Manaliyar Ennaadhu Kaamam', 'Lust betrays itself in haste Though women are highly soft and chaste', 'Even the Lust (of women) transgresses its secrecy and appears in public, forgetting that they are too chaste and liberal (to be overcome by it)'),
  (1139, 114, 'நாணுத்துறவுரைத்தல்', 'அறிகிலார் எல்லாரும் என்றேஎன் காமம்
மறுகின் மறுகும் மருண்டு.', 'Arikilaar Ellaarum Endreen Kaamam', 'My perplexed love roves public street Believing that none knows its secret', 'And thus, in public ways, perturbed will rove'),
  (1140, 114, 'நாணுத்துறவுரைத்தல்', 'யாம்கண்ணின் காண நகுப அறிவில்லார்
யாம்பட்ட தாம்படா ஆறு.', 'Yaamkannin Kaana Nakupa Arivillaar', 'Fools laugh at me before my eyes For they feel not my pangs and sighs', 'Even strangers laugh (at us) so as to be seen by us, for they have not suffered'),
  (1141, 115, 'அலரறிவுறுத்தல்', 'அலரெழ ஆருயிர் நிற்கும் அதனைப்
பலரறியார் பாக்கியத் தால்.', 'Alarezha Aaruyir Na�rkum Adhanaip', 'Rumour sustains my existence Good luck! many know not its sense', 'My precious life is saved by the raise of rumour, and this, to my good luck no others are aware of'),
  (1142, 115, 'அலரறிவுறுத்தல்', 'மலரன்ன கண்ணாள் அருமை அறியாது
அலரெமக்கு ஈந்ததிவ் வூர்.', 'Malaranna Kannaal Arumai Ariyaadhu', 'Rumour gives me the flower-like belle People know not what rare angel', 'Not knowing the value of her whose eyes are like flowers this town has got up a rumour about me'),
  (1143, 115, 'அலரறிவுறுத்தல்', 'உறாஅதோ ஊரறிந்த கெளவை அதனைப்
பெறாஅது பெற்றன்ன நீர்த்து.', 'Uraaadho Oorarindha Kelavai Adhanaip', 'I profit by this public rumour Having not, I feel, I have her', 'Will I not get a rumour that is known to the (whole) town ? For what I have not got is as if I had got it (already)'),
  (1144, 115, 'அலரறிவுறுத்தல்', 'கவ்வையால் கவ்விது காமம் அதுவின்றேல்
தவ்வென்னும் தன்மை இழந்து.', 'Kavvaiyaal Kavvidhu Kaamam Adhuvindrel', 'Rumour inflames the love I seek Or else it becomes bleak and weak', 'Rumour increases the violence of my passion; without it it would grow weak and waste away'),
  (1145, 115, 'அலரறிவுறுத்தல்', 'களித்தொறும் கள்ளுண்டல் வேட்டற்றால் காமம்
வெளிப்படுந் தோறும் இனிது.', 'Kaliththorum Kalluntal Vettatraal Kaamam', 'Drink delights as liquor flows Love delights as rumour grows', 'As drinking liquor is delightful (to one) whenever one is in mirth, so is lust delightful to me whenever it is the subject of rumour'),
  (1146, 115, 'அலரறிவுறுத்தல்', 'கண்டது மன்னும் ஒருநாள் அலர்மன்னும்
திங்களைப் பாம்புகொண் டற்று.', 'Kantadhu Mannum Orunaal Alarmannum', 'One lasting day we met alone Lasting rumours eclipse our moon', 'It was but a single day that I looked on (my lover); but the rumour thereof has spread like the seizure of the moon by the serpent'),
  (1147, 115, 'அலரறிவுறுத்தல்', 'ஊரவர் கெளவை எருவாக அன்னைசொல்
நீராக நீளும்இந் நோய்.', 'Ooravar Kelavai Eruvaaka Annaisol', 'Scandal manures; mother\'s refrain Waters the growth of this love-pain', 'This malady (of lust) is manured by the talk of women and watered by the (harsh) words of my mother'),
  (1148, 115, 'அலரறிவுறுத்தல்', 'நெய்யால் எரிநுதுப்பேம் என்றற்றால் கெளவையால்
காமம் நுதுப்பேம் எனல்.', 'Neyyaal Erinudhuppem Endratraal Kelavaiyaal', 'To quench the lust by rumour free Is to quench fire by pouring ghee', 'To say that one could extinguish passion by rumour is like extinguishing fire with ghee'),
  (1149, 115, 'அலரறிவுறுத்தல்', 'அலர்நாண ஒல்வதோ அஞ்சலோம்பு என்றார்
பலர்நாண நீத்தக் கடை.', 'Alarnaana Olvadho Anjalompu Endraar', 'Who said \\"fear not\\" flared up rumour Why then should I blush this clamour?', 'When the departure of him who said "fear not" has put me to shame before others, why need I be ashamed of scandal'),
  (1150, 115, 'அலரறிவுறுத்தல்', 'தாம்வேண்டின் நல்குவர் காதலர் யாம்வேண்டும்
கெளவை எடுக்கும்இவ் வூர்.', 'Thaamventin Nalkuvar Kaadhalar Yaamventum', 'Town raising this cry, I desire Consent is easy from my sire', 'The rumour I desire is raised by the town (itself); and my lover would if desired consent (to my following him)'),
  (1151, 116, 'பிரிவாற்றாமை', 'செல்லாமை உண்டேல் எனக்குரை மற்றுநின்
வல்வரவு வாழ்வார்க் குரை.', 'Sellaamai Untel Enakkurai Matrunin', 'Tell me if you but do not leave, Your quick return to those who live', 'If it is not departure, tell me; but if it is your speedy return, tell it to those who would be alive then'),
  (1152, 116, 'பிரிவாற்றாமை', 'இன்கண் உடைத்தவர் பார்வல் பிரிவஞ்சும்
புன்கண் உடைத்தால் புணர்வு.', 'Inkan Utaiththavar Paarval Pirivanjum', 'His sight itself was pleasing, near Embrace pains now by partings fear', 'His very look was once pleasing; but (now) even intercourse is painful through fear of separation'),
  (1153, 116, 'பிரிவாற்றாமை', 'அரிதரோ தேற்றம் அறிவுடையார் கண்ணும்
பிரிவோ ரிடத்துண்மை யான்.', 'Aridharo Thetram Arivutaiyaar Kannum', 'On whom shall I lay my trust hence While parting lurks in knowing ones?', 'As even the lover who understands (everything) may at times depart, confidence is hardly possible'),
  (1154, 116, 'பிரிவாற்றாமை', 'அளித்தஞ்சல் என்றவர் நீப்பின் தெளித்தசொல்
தேறியார்க்கு உண்டோ தவறு.', 'Aliththanjal Endravar Neeppin Theliththasol', 'He parts whose love told me -fear not Is my trust in him at default?', 'If he who bestowed his love and said "fear not" should depart, will it be the fault of those who believed in (his) assuring words ?'),
  (1155, 116, 'பிரிவாற்றாமை', 'ஓம்பின் அமைந்தார் பிரிவோம்பல் மற்றவர்
நீங்கின் அரிதால் புணர்வு.', 'Ompin Amaindhaar Pirivompal Matravar', 'Stop his parting -my life to save Meeting is rare if he would leave', 'If you would save (my life), delay the departure of my destined (husband); for if he departs, intercourse will become impossible'),
  (1156, 116, 'பிரிவாற்றாமை', 'பிரிவுரைக்கும் வன்கண்ணர் ஆயின் அரிதவர்
நல்குவர் என்னும் நசை.', 'Pirivuraikkum Vankannar Aayin Aridhavar', 'His hardness says, \\"I leave you now\\" Is there hope of his renewed love?', 'Is hard, when he could stand, and of departure speak to me'),
  (1157, 116, 'பிரிவாற்றாமை', 'துறைவன் துறந்தமை தூற்றாகொல் முன்கை
இறைஇறவா நின்ற வளை.', 'Thuraivan Thurandhamai Thootraakol Munkai', 'Will not my gliding bangles\' cry The parting of my lord betray?', 'Do not the rings that begin to slide down my fingers forebode the separation of my lord ?'),
  (1158, 116, 'பிரிவாற்றாமை', 'இன்னாது இனன்இல்ஊர் வாழ்தல் அதனினும்
இன்னாது இனியார்ப் பிரிவு.', 'Innaadhu Inaniloor Vaazhdhal Adhaninum', 'Bitter is life in friendless place; Worse is parting love\'s embrace!', 'Painful is it to live in a friendless town; but far more painful is it to part from one\'s lover'),
  (1159, 116, 'பிரிவாற்றாமை', 'தொடிற்சுடின் அல்லது காமநோய் போல
விடிற்சுடல் ஆற்றுமோ தீ.', 'Thotirsutin Alladhu Kaamanoi Pola', 'Can fire that burns by touch burn like Parting of the hearts love-sick?', 'Fire burns when touched; but, like the sickness of love, can it also burn when removed ?'),
  (1160, 116, 'பிரிவாற்றாமை', 'அரிதாற்றி அல்லல்நோய் நீக்கிப் பிரிவாற்றிப்
பின்இருந்து வாழ்வார் பலர்.', 'Aridhaatri Allalnoi Neekkip Pirivaatrip', 'Many survive pangs of parting Not I this sore so distressing', 'As if there were many indeed that can consent to the impossible, kill their pain, endure separation and yet continue to live afterwards'),
  (1161, 117, 'படர்மெலிந்திரங்கல்', 'மறைப்பேன்மன் யானிஃதோ நோயை இறைப்பவர்க்கு
ஊற்றுநீர் போல மிகும்.', 'Maraippenman Yaaniqdho Noyai Iraippavarkku', 'It swells out like baled out spring How to bear this pain so writhing?', 'I would hide this pain from others; but it (only) swells like a spring to those who drain it'),
  (1162, 117, 'படர்மெலிந்திரங்கல்', 'கரத்தலும் ஆற்றேன்இந் நோயைநோய் செய்தார்க்கு
உரைத்தலும் நாணுத் தரும்.', 'Karaththalum Aatrenin Noyainoi Seydhaarkku', 'I can\'t conceal this nor complain For shame to him who caused this pain', 'I cannot conceal this pain, nor can I relate it without shame to him who has caused it'),
  (1163, 117, 'படர்மெலிந்திரங்கல்', 'காமமும் நாணும் உயிர்காவாத் தூங்கும்என்
நோனா உடம்பின் அகத்து.', 'Kaamamum Naanum Uyirkaavaath Thoongumen', 'In life -poles of this wearied frame Are poised the weights of lust and shame', '(Both) lust and shame, with my soul for their shoulder pole balance themselves on a body that cannot bear them'),
  (1164, 117, 'படர்மெலிந்திரங்கல்', 'காமக் கடல்மன்னும் உண்டே அதுநீந்தும்
ஏமப் புணைமன்னும் இல்.', 'Kaamak Katalmannum Unte Adhuneendhum', 'My lust is a sea; I do not see A raft to go across safely', 'There is indeed a flood of lust; but there is no raft of safety to cross it with'),
  (1165, 117, 'படர்மெலிந்திரங்கல்', 'துப்பின் எவனாவர் மன்கொல் துயர்வரவு
நட்பினுள் ஆற்று பவர்.', 'Thuppin Evanaavar Mankol Thuyarvaravu', 'What wilt they prove when they are foes Who in friendship bring me woes!', 'What will they prove when angry tempests lower?'),
  (1166, 117, 'படர்மெலிந்திரங்கல்', 'இன்பம் கடல்மற்றுக் காமம் அஃதடுங்கால்
துன்பம் அதனிற் பெரிது.', 'Inpam Katalmatruk Kaamam Aqdhatungaal', 'The pleasure in love is oceanful But its pangs are more painful', 'The pleasure of lust is (as great as) the sea; but the pain of lust is far greater'),
  (1167, 117, 'படர்மெலிந்திரங்கல்', 'காமக் கடும்புனல் நீந்திக் கரைகாணேன்
யாமத்தும் யானே உளேன்.', 'Kaamak Katumpunal Neendhik Karaikaanen', 'Wild waves of love I swim shoreless Pining alone in midnight hush', 'I have swam across the terrible flood of lust, but have not seen its shore; even at midnight I am alone; still I live'),
  (1168, 117, 'படர்மெலிந்திரங்கல்', 'மன்னுயிர் எல்லாம் துயிற்றி அளித்திரா
என்னல்லது இல்லை துணை.', 'Mannuyir Ellaam Thuyitri Aliththiraa', 'Night\'s mercy lulls all souls to sleep Keeping but me for companionship', 'The night which graciously lulls to sleep all living creatures, has me alone for her companion'),
  (1169, 117, 'படர்மெலிந்திரங்கல்', 'கொடியார் கொடுமையின் தாம்கொடிய இந்நாள்
நெடிய கழியும் இரா.', 'Kotiyaar Kotumaiyin Thaamkotiya Innaal', 'Crueller than that cruel he Are midnight hours gliding slowly', 'The long nights of these days are far more cruel than the heartless one who is torturing me'),
  (1170, 117, 'படர்மெலிந்திரங்கல்', 'உள்ளம்போன்று உள்வழிச் செல்கிற்பின் வெள்ளநீர்
நீந்தல மன்னோஎன் கண்.', 'Ullampondru Ulvazhich Chelkirpin Vellaneer', 'Like heart, if my sight reaches him It won\'t in floods of tears swim!', 'Could mine eyes travel like my thoughts to the abode (of my absent lord), they would not swim in this flood of tears'),
  (1171, 118, 'கண்விதுப்பழிதல்', 'கண்தாம் கலுழ்வ தெவன்கொலோ தண்டாநோய்
தாம்காட்ட யாம்கண் டது.', 'Kandhaam Kaluzhva Thevankolo Thantaanoi', 'The eye pointed him to me; why then They weep with malady and pine?', 'As this incurable malady has been caused by my eyes which showed (him) to me, why should they now weep for (him)'),
  (1172, 118, 'கண்விதுப்பழிதல்', 'தெரிந்துணரா நோக்கிய உண்கண் பரிந்துணராப்
பைதல் உழப்பது எவன்?', 'Therindhunaraa Nokkiya Unkan Parindhunaraap', 'Why should these dyed eyes grieve now sans Regrets for their thoughtless glance?', 'The dyed eyes that (then) looked without foresight, why should they now endure sorrow, without feeling sharply (their own fault)'),
  (1173, 118, 'கண்விதுப்பழிதல்', 'கதுமெனத் தாநோக்கித் தாமே கலுழும்
இதுநகத் தக்க துடைத்து.', 'Kadhumenath Thaanokkith Thaame Kaluzhum', 'Eyes darted eager glance that day It\'s funny that they weep today', 'They themselves looked eagerly (on him) and now they weep. Is not this to be laughed at ?'),
  (1174, 118, 'கண்விதுப்பழிதல்', 'பெயலாற்றா நீருலந்த உண்கண் உயலாற்றா
உய்வில்நோய் என்கண் நிறுத்து.', 'Peyalaatraa Neerulandha Unkan Uyalaatraa', 'These eyes left me to endless grief Crying adry without relief', 'These painted eyes have caused me a lasting mortal disease; and now they can weep no more, the tears having dried up'),
  (1175, 118, 'கண்விதுப்பழிதல்', 'படலாற்றா பைதல் உழக்கும் கடலாற்றாக்
காமநோய் செய்தஎன் கண்.', 'Patalaatraa Paidhal Uzhakkum Katalaatraak', 'My eyes causing lust more than sea Suffer that torture sleeplessly', 'Mine eyes have caused me a lust that is greater than the sea and (they themselves) endure the torture of sleeplessness'),
  (1176, 118, 'கண்விதுப்பழிதல்', 'ஓஒ இனிதே எமக்கிந்நோய் செய்தகண்
தாஅம் இதற்பட் டது.', 'Oo Inidhe Emakkinnoi Seydhakan', 'Lo! eyes that wrought this love-sickness Are victims of the same themselves', 'The eyes that have given me this disease have themselves been seized with this (suffering) Oh! I am much delighted'),
  (1177, 118, 'கண்விதுப்பழிதல்', 'உழந்துழந் துள்நீர் அறுக விழைந்திழைந்து
வேண்டி அவர்க்கண்ட கண்.', 'Uzhandhuzhan Thulneer Aruka Vizhaindhizhaindhu', 'Let tears dry up pining pining In eyes that eyed him longing longing', 'The eyes that became tender and gazed intently on him, may they suffer so much as to dry up the fountain of their tears'),
  (1178, 118, 'கண்விதுப்பழிதல்', 'பேணாது பெட்டார் உளர்மன்னோ மற்றவர்க்
காணாது அமைவில கண்.', 'Penaadhu Pettaar Ularmanno Matravark', 'Ther\'s he whose lips loved, not his heart Yet my eyes pine seeing him not', 'He is indeed here who loved me with his lips but not with his heart but mine eyes suffer from not seeing him'),
  (1179, 118, 'கண்விதுப்பழிதல்', 'வாராக்கால் துஞ்சா வரின்துஞ்சா ஆயிடை
ஆரஞர் உற்றன கண்.', 'Vaaraakkaal Thunjaa Varindhunjaa Aayitai', 'He comes; no sleep; he goes; no sleep This is the fate of eyes that weep', 'When he is away they do not sleep; when he is present they do not sleep; in either case, mine eyes endure unbearable agony'),
  (1180, 118, 'கண்விதுப்பழிதல்', 'மறைபெறல் ஊரார்க்கு அரிதன்றால் எம்போல்
அறைபறை கண்ணார் அகத்து.', 'Maraiperal Ooraarkku Aridhandraal Empol', 'Like drum beats eyes declare my heart; From people who could hide his secret?', 'It is not difficult for the people of this place to understand the secret of those whose eyes, like mine, are as it were beaten drums'),
  (1181, 119, 'பசப்புறுபருவரல்', 'நயந்தவர்க்கு நல்காமை நேர்ந்தேன் பசந்தவென்
பண்பியார்க்கு உரைக்கோ பிற.', 'Nayandhavarkku Nalkaamai Nerndhen Pasandhaven', 'My lover\'s parting, I allowed Whom to complain my hue pallid?', 'I who (then) consented to the absence of my loving lord, to whom can I (now) relate the fact of my having turned sallow'),
  (1182, 119, 'பசப்புறுபருவரல்', 'அவர்தந்தார் என்னும் தகையால் இவர்தந்தென்
மேனிமேல் ஊரும் பசப்பு.', 'Avardhandhaar Ennum Thakaiyaal Ivardhandhen', 'Claiming it is begot through him Pallor creeps and rides over my frame', 'Sallowness, as if proud of having been caused by him, would now ride on my person'),
  (1183, 119, 'பசப்புறுபருவரல்', 'சாயலும் நாணும் அவர்கொண்டார் கைம்மாறா
நோயும் பசலையும் தந்து.', 'Saayalum Naanum Avarkontaar Kaimmaaraa', 'He seized my beauty and modesty Leaving pangs and Pallor to me', 'He has taken (away) my beauty and modesty, and given me instead disease and sallowness'),
  (1184, 119, 'பசப்புறுபருவரல்', 'உள்ளுவன் மன்யான் உரைப்பது அவர்திறமால்
கள்ளம் பிறவோ பசப்பு.', 'Ulluvan Manyaan Uraippadhu Avardhiramaal', 'He is my thought, his praise my theme Yet this pallor steals over my frame', 'I think (of him); and what I speak about is but his excellence; still is there sallowness; and this is deceitful'),
  (1185, 119, 'பசப்புறுபருவரல்', 'உவக்காண்எம் காதலர் செல்வார் இவக்காண்என்
மேனி பசப்பூர் வது.', 'Uvakkaanem Kaadhalar Selvaar Ivakkaanen', 'My lover departed me there And pallor usurped my body here', 'Just as my lover departed then, did not sallowness spread here on my person ?'),
  (1186, 119, 'பசப்புறுபருவரல்', 'விளக்கற்றம் பார்க்கும் இருளேபோல் கொண்கன்
முயக்கற்றம் பார்க்கும் பசப்பு.', 'Vilakkatram Paarkkum Irulepol Konkan', 'Just as darkness waits for light-off Pallor looks for lover\'s arms-off', 'Just as darkness waits for the failing light; so does sallowness wait for the laxity of my husband\'s intercourse'),
  (1187, 119, 'பசப்புறுபருவரல்', 'புல்லிக் கிடந்தேன் புடைபெயர்ந்தேன் அவ்வளவில்
அள்ளிக்கொள் வற்றே பசப்பு.', 'Pullik Kitandhen Putaipeyarndhen Avvalavil', 'From his embrace I turned a nonce This pallor swallowed me at once', 'I who was in close embrace just turned aside and the moment I did so, sallowness came on me like something to be seized on'),
  (1188, 119, 'பசப்புறுபருவரல்', 'பசந்தாள் இவள்என்பது அல்லால் இவளைத்
துறந்தார் அவர்என்பார் இல்.', 'Pasandhaal Ivalenpadhu Allaal Ivalaith', 'On my pallor they cast a slur But none says \\"lo he parted her\\"', 'Besides those who say "she has turned sallow" there are none who say "he has forsaken her"'),
  (1189, 119, 'பசப்புறுபருவரல்', 'பசக்கமன் பட்டாங்கென் மேனி நயப்பித்தார்
நன்னிலையர் ஆவர் எனின்.', 'Pasakkaman Pattaangen Meni Nayappiththaar', 'Let all my body become pale If he who took my leave fares well', 'If he is clear of guilt who has conciliated me (to his departure) let my body suffer its due and turn sallow'),
  (1190, 119, 'பசப்புறுபருவரல்', 'பசப்பெனப் பேர்பெறுதல் நன்றே நயப்பித்தார்
நல்காமை தூற்றார் எனின்.', 'Pasappenap Perperudhal Nandre Nayappiththaar', 'Let people call me all pallid But my lover let them not deride', 'It would be good to be said of me that I have turned sallow, if friends do not reproach with unkindness him who pleased me (then)'),
  (1191, 120, 'தனிப்படர்மிகுதி', 'தாம்வீழ்வார் தம்வீழப் பெற்றவர் பெற்றாரே
காமத்துக் காழில் கனி.', 'Thaamveezhvaar Thamveezhap Petravar Petraare', 'Stoneless fruit of love they have Who are beloved by those they love', 'The women who are beloved by those whom they love, have they have not got the stone-less fruit of sexual delight ?'),
  (1192, 120, 'தனிப்படர்மிகுதி', 'வாழ்வார்க்கு வானம் பயந்தற்றால் வீழ்வார்க்கு
வீழ்வார் அள஧ க்கும் அளி.', 'Vaazhvaarkku Vaanam Payandhatraal Veezhvaarkku', 'The lover-and-beloved\'s self-givings Are like rains to living beings', 'The bestowal of love by the beloved on those who love them is like the rain raining (at the proper season) on those who live by it'),
  (1193, 120, 'தனிப்படர்மிகுதி', 'வீழுநர் வீழப் படுவார்க்கு அமையுமே
வாழுநம் என்னும் செருக்கு.', 'Veezhunar Veezhap Patuvaarkku Amaiyume', 'The pride of living is for those Whose love is returned by love so close', 'The pride that says "we shall live" suits only those who are loved by their beloved (husbands)'),
  (1194, 120, 'தனிப்படர்மிகுதி', 'வீழப் படுவார் கெழீஇயிலர் தாம்வீழ்வார்
வீழப் படாஅர் எனின்.', 'Veezhap Patuvaar Kezheeiyilar Thaamveezhvaar', 'Whose love is void of love in turn Are luckless with all esteems they earn', 'Even those who are esteemed (by other women) are devoid of excellence, if they are not loved by their beloved'),
  (1195, 120, 'தனிப்படர்மிகுதி', 'நாம்காதல் கொண்டார் நமக்கெவன் செய்பவோ
தாம்காதல் கொள்ளாக் கடை.', 'Naamkaadhal Kontaar Namakkevan Seypavo', 'What can our lover do us now If he does not requite our love?', 'He who is beloved by me, what will he do to me, if I am not beloved by him ?'),
  (1196, 120, 'தனிப்படர்மிகுதி', 'ஒருதலையான் இன்னாது காமம்காப் போல
இருதலை யானும் இனிது.', 'Orudhalaiyaan Innaadhu Kaamamkaap Pola', 'One sided pains; love in both souls Poises well like shoulder poles', 'Lust, like the weight of the KAVADI, pains if it lies in one end only but pleases if it is in both'),
  (1197, 120, 'தனிப்படர்மிகுதி', 'பருவரலும் பைதலும் காணான்கொல் காமன்
ஒருவர்கண் நின்றொழுகு வான்.', 'Paruvaralum Paidhalum Kaanaankol Kaaman', 'This cupid aims at me alone; Knows he not my pallor and pain?', 'Would not cupid who abides and contends in one party (only) witness the pain and sorrow (in that party)?'),
  (1198, 120, 'தனிப்படர்மிகுதி', 'வீழ்வாரின் இன்சொல் பெறாஅது உலகத்து
வாழ்வாரின் வன்கணார் இல்.', 'Veezhvaarin Insol Peraaadhu Ulakaththu', 'None is so firm as she who loves Without kind words from whom she dotes', 'There is no one in the world so hard-hearted as those who can live without receiving (even) a kind word from their beloved'),
  (1199, 120, 'தனிப்படர்மிகுதி', 'நசைஇயார் நல்கார் எனினும் அவர்மாட்டு
இசையும் இனிய செவிக்கு.', 'Nasaiiyaar Nalkaar Eninum Avarmaattu', 'The lover accords not my desires And yet his words sweeten my ears', 'Though my beloved bestows no love on one, still are his words sweet to my ears'),
  (1200, 120, 'தனிப்படர்மிகுதி', 'உறாஅர்க்கு உறுநோய் உரைப்பாய் கடலைச்
செறாஅஅய் வாழிய நெஞ்சு.', 'Uraaarkku Urunoi Uraippaai Katalaich', 'You tell your grief to listless he Bless my heart! rather fill up sea!', 'Live, O my soul, would you who relate your great sorrow to strangers, try rather to fill up your own sea (of sorrow)'),
  (1201, 121, 'நினைந்தவர்புலம்பல்', 'உள்ளினும் தீராப் பெருமகிழ் செய்தலால்
கள்ளினும் காமம் இனிது.', 'Ullinum Theeraap Perumakizh Seydhalaal', 'Love is sweeter than wine; for vast Is its delight at very thought', 'Sexuality is sweeter than liquor, because when remembered, it creates a most rapturous delight'),
  (1202, 121, 'நினைந்தவர்புலம்பல்', 'எனைத்தொனறு இனிதேகாண் காமம்தாம் வீழ்வார்
நினைப்ப வருவதொன்று ஏல்.', 'Enaiththonaru Inidhekaan Kaamamdhaam Veezhvaar', 'Pains are off at the lover\'s thought In all aspects this love is sweet', 'Even to think of one\'s beloved gives one no pain Sexuality, in any degree, is always delightful'),
  (1203, 121, 'நினைந்தவர்புலம்பல்', 'நினைப்பவர் போன்று நினையார்கொல் தும்மல்
சினைப்பது போன்று கெடும்.', 'Ninaippavar Pondru Ninaiyaarkol Thummal', 'To sneeze I tried hence but could not Me he tried to think but did not', 'I feel as if I am going to sneeze but do not, and (therefore) my beloved is about to think (of me) but does not'),
  (1204, 121, 'நினைந்தவர்புலம்பல்', 'யாமும் உளேங்கொல் அவர்நெஞ்சத்து எந்நெஞ்சத்து
ஓஒ உளரே அவர்.', 'Yaamum Ulengol Avarnenjaththu Ennenjaththu', 'Have I a place within his heart? Ah from mine he will never depart', 'He continues to abide in my soul, do I likewise abide in his ?'),
  (1205, 121, 'நினைந்தவர்புலம்பல்', 'தம்நெஞ்சத்து எம்மைக் கடிகொண்டார் நாணார்கொல்
எம்நெஞ்சத்து ஓவா வரல்.', 'Thamnenjaththu Emmaik Katikontaar Naanaarkol', 'Shame! My heart often he enters Banning me entry into his', 'He who has imprisoned me in his soul, is he ashamed to enter incessantly into mine'),
  (1206, 121, 'நினைந்தவர்புலம்பல்', 'மற்றியான் என்னுளேன் மன்னோ அவரொடியான்
உற்றநாள் உள்ள உளேன்.', 'Matriyaan Ennulen Manno Avaroti', 'Beyond the thought of life with him What else of life can I presume?', 'I live by remembering my (former) intercourse with him; if it were not so, how could I live ?'),
  (1207, 121, 'நினைந்தவர்புலம்பல்', 'மறப்பின் எவனாவன் மற்கொல் மறப்பறியேன்
உள்ளினும் உள்ளம் சுடும்.', 'Marappin Evanaavan Markol Marappariyen', 'What will happen if I forget When his memory burns my heart?', 'I have never forgotten (the pleasure); even to think of it burns my soul; could I live, if I should ever forget it ?'),
  (1208, 121, 'நினைந்தவர்புலம்பல்', 'எனைத்து நினைப்பினும் காயார் அனைத்தன்றோ
காதலர் செய்யும் சிறப்பு.', 'Enaiththu Ninaippinum Kaayaar Anaiththandro', 'I bring him to ceaseless memory He chides not; and thus honours me', 'He will not be angry however much I may think of him; is it not so much the delight my beloved'),
  (1209, 121, 'நினைந்தவர்புலம்பல்', 'விளியுமென் இன்னுயிர் வேறல்லம் என்பார்
அளியின்மை ஆற்ற நினைந்து.', 'Viliyumen Innuyir Verallam Enpaar', 'Dear life ebbs away by thought Of him who said we are one heart', 'My precious life is wasting away by thinking too much on the cruelty of him who said we were not different'),
  (1210, 121, 'நினைந்தவர்புலம்பல்', 'விடாஅது சென்றாரைக் கண்ணினால் காணப்
படாஅதி வாழி மதி.', 'Vitaaadhu Sendraaraik Kanninaal Kaanap', 'Hail moon! Set not so that I find Him who left me but not my mind', 'May you live, O Moon! Do not set, that I mine see him who has departed without quitting my soul'),
  (1211, 122, 'கனவுநிலையுரைத்தல்', 'காதலர் தூதொடு வந்த கனவினுக்கு
யாதுசெய் வேன்கொல் விருந்து.', 'Kaadhalar Thoodhotu Vandha Kanavinukku', 'How shall I feast this dream-vision That brings the beloved\'s love-mission?', 'Where with shall I feast the dream which has brought me my dear one\'s messenger ?'),
  (1212, 122, 'கனவுநிலையுரைத்தல்', 'கயலுண்கண் யானிரப்பத் துஞ்சிற் கலந்தார்க்கு
உயலுண்மை சாற்றுவேன் மன்.', 'Kayalunkan Yaanirappath Thunjir Kalandhaarkku', 'I beg these fish-like dark eyes sleep To tell my lover how life I keep', 'If my fish-like painted eyes should, at my begging, close in sleep, I could fully relate my sufferings to my lord'),
  (1213, 122, 'கனவுநிலையுரைத்தல்', 'நனவினால் நல்கா தவரைக் கனவினால்
காண்டலின் உண்டென் உயிர்.', 'Nanavinaal Nalkaa Thavaraik Kanavinaal', 'In wakeful hours who sees me not I meet in dreams and linger yet', 'My life lasts because in my dream I behold him who does not favour me in my waking hours'),
  (1214, 122, 'கனவுநிலையுரைத்தல்', 'கனவினான் உண்டாகும் காமம் நனவினான்
நல்காரை நாடித் தரற்கு.', 'Kanavinaan Untaakum Kaamam Nanavinaan', 'In dreams I enjoy his love-bliss Who in wakeful hours I miss', 'There is pleasure in my dream, because in it I seek and obtain him who does not visit me in my wakefulness'),
  (1215, 122, 'கனவுநிலையுரைத்தல்', 'நனவினால் கண்டதூஉம் ஆங்கே கனவுந்தான்
கண்ட பொழுதே இனிது.', 'Nanavinaal Kantadhooum Aange Kanavundhaan', 'Dream-sight of him delights at once Awake-What of seeing him -hence', 'I saw him in my waking hours, and then it was pleasant; I see him just now in my dream, and it is (equally) pleasant'),
  (1216, 122, 'கனவுநிலையுரைத்தல்', 'நனவென ஒன்றில்லை ஆயின் கனவினால்
காதலர் நீங்கலர் மன்.', 'Nanavena Ondrillai Aayin Kanavinaal', 'If wakeful hours come to nought My lov\'r in dreams would nev\'r depart', 'Were there no such thing as wakefulness, my beloved (who visited me) in my dream would not depart from me'),
  (1217, 122, 'கனவுநிலையுரைத்தல்', 'நனவினால் நல்காக் கொடியார் கனவனால்
என்எம்மைப் பீழிப் பது.', 'Nanavinaal Nalkaak Kotiyaar Kanavanaal', 'Awake he throws my overtures Adream, ah cruel! he tortures!', 'The cruel one who would not favour me in my wakefulness, what right has he to torture me in my dreams?'),
  (1218, 122, 'கனவுநிலையுரைத்தல்', 'துஞ்சுங்கால் தோள்மேலர் ஆகி விழிக்குங்கால்
நெஞ்சத்தர் ஆவர் விரைந்து.', 'Thunjungaal Tholmelar Aaki Vizhikkungaal', 'Asleep he embraces me fast; Awake he enters quick my heart', 'When I am asleep he rests on my shoulders, (but) when I awake he hastens into my soul'),
  (1219, 122, 'கனவுநிலையுரைத்தல்', 'நனவினால் நல்காரை நோவர் கனவினால்
காதலர்க் காணா தவர்.', 'Nanavinaal Nalkaarai Novar Kanavinaal', 'In dreams who don\'t discern lovers Rue their missing in wakeful hours', 'They who have no dear ones to behold in their dreams blame him who visits me not in my waking hours'),
  (1220, 122, 'கனவுநிலையுரைத்தல்', 'நனவினால் நம்நீத்தார் என்பர் கனவினால்
காணார்கொல் இவ்வூ ரவர்.', 'Nanavinaal Namneeththaar Enpar Kanavinaal', 'The townsmen say he left me thus  In dreams failing to see him close', 'The women of this place say he has forsaken me in my wakefulness I think they have not seen him visit me in my dreams'),
  (1221, 123, 'பொழுதுகண்டிரங்கல்', 'மாலையோ அல்லை மணந்தார் உயிருண்ணும்
வேலைநீ வாழி பொழுது.', 'Maalaiyo Allai Manandhaar Uyirunnum', 'Bless you! you are not eventide But killing dart to wedded bride!', 'Live, O you evening are you (the former) evening? No, you are the season that slays (married) women'),
  (1222, 123, 'பொழுதுகண்டிரங்கல்', 'புன்கண்ணை வாழி மருள்மாலை எம்கேள்போல்
வன்கண்ண தோநின் துணை.', 'Punkannai Vaazhi Marulmaalai Emkelpol', 'Hail sad eventide dim and grim Has your mate like mine, cruel whim!', 'A long life to you, O dark evening! You are sightless Is your help-mate (also) as hard-hearted as mine'),
  (1223, 123, 'பொழுதுகண்டிரங்கல்', 'பனிஅரும்பிப் பைதல்கொள் மாலை துனிஅரும்பித்
துன்பம் வளர வரும்.', 'Paniarumpip Paidhalkol Maalai Thuniarumpith', 'Wet eve came pale and trembling then Now it makes bold with growing pain', 'The evening that (once) came in with trembling and dimness (now) brings me an aversion for life and increasing sorrow'),
  (1224, 123, 'பொழுதுகண்டிரங்கல்', 'காதலர் இல்வழி மாலை கொலைக்களத்து
ஏதிலர் போல வரும்.', 'Kaadhalar Ilvazhi Maalai Kolaikkalaththu', 'Lover away, comes eventide Like slayer to field of homicide', 'In the absence of my lover, evening comes in like slayers on the field of slaughter'),
  (1225, 123, 'பொழுதுகண்டிரங்கல்', 'காலைக்குச் செய்தநன்று என்கொல் எவன்கொல்யான்
மாலைக்குச் செய்த பகை?', 'Kaalaikkuch Cheydhanandru Enkol Evankolyaan', 'What good have I done to morning And what evil to this evening?', 'O eve, why art thou foe! thou dost renew my grief'),
  (1226, 123, 'பொழுதுகண்டிரங்கல்', 'மாலைநோய் செய்தல் மணந்தார் அகலாத
காலை அறிந்த திலேன்.', 'Maalainoi Seydhal Manandhaar Akalaadha', 'Evening pangs I have not known When my lord nev\'r left me alone', 'Previous to my husband\'s departure, I know not the painful nature of evening'),
  (1227, 123, 'பொழுதுகண்டிரங்கல்', 'காலை அரும்பிப் பகலெல்லாம் போதாகி
மாலை மலரும்இந் நோய்.', 'Kaalai Arumpip Pakalellaam Podhaaki', 'Budding at dawn burgeoning all day This disease blooms in evening gay', 'This malady buds forth in the morning, expands all day long and blossoms in the evening'),
  (1228, 123, 'பொழுதுகண்டிரங்கல்', 'அழல்போலும் மாலைக்குத் தூதாகி ஆயன்
குழல்போலும் கொல்லும் படை.', 'Azhalpolum Maalaikkuth Thoodhaaki Aayan', 'A deadly arm, this shepherd\'s flute Hails flaming eve and slays my heart', 'The shepherd\'s flute now sounds as a fiery forerunner of night, and is become a weapon that slays (me)'),
  (1229, 123, 'பொழுதுகண்டிரங்கல்', 'பதிமருண்டு பைதல் உழக்கும் மதிமருண்டு
மாலை படர்தரும் போழ்து.', 'Padhimaruntu Paidhal Uzhakkum Madhimaruntu', 'Deluding eve if it prolongs The whole town will suffer love-pangs', 'When night comes on confusing (everyone\'s) mind, the (whole) town will lose its sense and be plunged in sorrow'),
  (1230, 123, 'பொழுதுகண்டிரங்கல்', 'பொருள்மாலை யாளரை உள்ளி மருள்மாலை
மாயும்என் மாயா உயிர்.', 'Porulmaalai Yaalarai Ulli Marulmaalai', 'Thinking of him whose quest is wealth My life outlives the twilight stealth', 'My (hitherto) unextinguished life is now lost in this bewildering night at the thought of him who has the nature of wealth'),
  (1231, 124, 'உறுப்புநலனழிதல்', 'சிறுமை நமக்கொழியச் சேட்சென்றார் உள்ளி
நறுமலர் நாணின கண்.', 'Sirumai Namakkozhiyach Chetchendraar Ulli', 'To lift from want he left me afar His thought makes my eyes blush the flower', 'While we endure the unbearable sorrow, your eyes weep for him who is gone afar, and shun (the sight of) fragrant flowers'),
  (1232, 124, 'உறுப்புநலனழிதல்', 'நயந்தவர் நல்காமை சொல்லுவ போலும்
பசந்து பனிவாரும் கண்.', 'Nayandhavar Nalkaamai Solluva Polum', 'My pale tearful eyes betray The hardness of my husband, away', 'The discoloured eyes that shed tears profusely seem to betray the unkindness of our beloved'),
  (1233, 124, 'உறுப்புநலனழிதல்', 'தணந்தமை சால அறிவிப்ப போலும்
மணந்தநாள் வீங்கிய தோள்.', 'Thanandhamai Saala Arivippa Polum', 'These arms that swelled on nuptial day Now shrunk proclaim \\"He is away\\"', 'The shoulders that swelled on the day of our union (now) seem to announce our separation clearly (to the public)'),
  (1234, 124, 'உறுப்புநலனழிதல்', 'பணைநீங்கிப் பைந்தொடி சோரும் துணைநீங்கித்
தொல்கவின் வாடிய தோள்.', 'Panaineengip Paindhoti Sorum Thunaineengith', 'Bracelets slip off the arms that have Lost old beauty for He took leave', 'In the absence of your consort, your shoulders having lost their former beauty and fulness, your bracelets of pure gold have become loose'),
  (1235, 124, 'உறுப்புநலனழிதல்', 'கொடியார் கொடுமை உரைக்கும் தொடியொடு
தொல்கவின் வாடிய தோள்.', 'Kotiyaar Kotumai Uraikkum Thotiyotu', 'Bereft of bracelets and old beauty Arms tell the cruel\'s cruelty', 'The (loosened) bracelets, and the shoulders from which the old beauty has faded, relate the cruelty of the pitiless one'),
  (1236, 124, 'உறுப்புநலனழிதல்', 'தொடியொடு தோள்நெகிழ நோவல் அவரைக்
கொடியர் எனக்கூறல் நொந்து.', 'Thotiyotu Tholnekizha Noval Avaraik', 'Arms thin, armlets loose make you call My sire cruel; that pains my soul', 'I am greatly pained to hear you call him a cruel man, just because your shoulders are reduced and your bracelets loosened'),
  (1237, 124, 'உறுப்புநலனழிதல்', 'பாடு பெறுதியோ நெஞ்சே கொடியார்க்கென்
வாடுதோட் பூசல் உரைத்து.', 'Paatu Perudhiyo Nenje Kotiyaarkken', 'Go and tell the cruel, O mind  Bruit ov\'r my arms and glory find', 'Can you O my soul! gain glory by relating to the (so-called) cruel one the clamour of my fading shoulders?'),
  (1238, 124, 'உறுப்புநலனழிதல்', 'முயங்கிய கைகளை ஊக்கப் பசந்தது
பைந்தொடிப் பேதை நுதல்.', 'Muyangiya Kaikalai Ookkap Pasandhadhu', 'The front of this fair one O paled As my clasping arms loosed their hold', 'When I once loosened the arms that were in embrace, the forehead of the gold-braceleted women turned sallow'),
  (1239, 124, 'உறுப்புநலனழிதல்', 'முயக்கிடைத் தண்வளி போழப் பசப்புற்ற
பேதை பெருமழைக் கண்.', 'Muyakkitaith Thanvali Pozhap Pasapputra', 'Cool breeze crept between our embrace Her large rain-cloud-eyes paled at once', 'When but a breath of breeze penetrated our embrace, her large cool eyes became sallow'),
  (1240, 124, 'உறுப்புநலனழிதல்', 'கண்ணின் பசப்போ பருவரல் எய்தின்றே
ஒண்ணுதல் செய்தது கண்டு.', 'Kannin Pasappo Paruvaral Eydhindre', 'Pale eyes pained seeing the pallor Of the bright forehead of this fair', 'Was it at the sight of what the bright forehead had done that the sallowness of her eyes became sad?'),
  (1241, 125, 'நெஞ்சொடுகிளத்தல்', 'நினைத்தொன்று சொல்லாயோ நெஞ்சே எனைத்தொன்றும்
எவ்வநோய் தீர்க்கும் மருந்து.', 'Ninaiththondru Sollaayo Nenje Enaiththondrum', 'Think of, O heart, some remedy To cure this chronic malady', 'O my soul, will you not think and tell me some medicine be it what it may, that can cure this incurable malady?'),
  (1242, 125, 'நெஞ்சொடுகிளத்தல்', 'காதல் அவரிலர் ஆகநீ நோவது
பேதைமை வாழியென் நெஞ்சு.', 'Kaadhal Avarilar Aakanee Novadhu', 'Bless O mind! you pine in vain For me he has no love serene', 'Is folly, fare thee well my heart!'),
  (1243, 125, 'நெஞ்சொடுகிளத்தல்', 'இருந்துள்ளி என்பரிதல் நெஞ்சே பரிந்துள்ளல்
பைதல்நோய் செய்தார்கண் இல்.', 'Irundhulli Enparidhal Nenje Parindhullal', 'O mind, why pine and sit moody? Who made you so pale lacks pity', 'O my soul! why remain (here) and suffer thinking (of him)? There are no lewd thoughts (of you) in him who has caused you this disease of sorrow'),
  (1244, 125, 'நெஞ்சொடுகிளத்தல்', 'கண்ணும் கொளச்சேறி நெஞ்சே இவையென்னைத்
தின்னும் அவர்க்காணல் உற்று.', 'Kannum Kolachcheri Nenje Ivaiyennaith', 'Take these eyes and meet him, O heart Or their hunger will eat me out', 'O my soul! take my eyes also with you, (if not), these would eat me up (in their desire) to see him'),
  (1245, 125, 'நெஞ்சொடுகிளத்தல்', 'செற்றார் எனக்கை விடல்உண்டோ நெஞ்சேயாம்
உற்றால் உறாஅ தவர்.', 'Setraar Enakkai Vitalunto Nenjeyaam', 'He spurns our love and yet, O mind, Can we desert him as unkind?', 'O my soul! can he who loves not though he is beloved, be forsaken saying he hates me (now)?'),
  (1246, 125, 'நெஞ்சொடுகிளத்தல்', 'கலந்துணர்த்தும் காதலர்க் கண்டாற் புலந்துணராய்
பொய்க்காய்வு காய்திஎன் நெஞ்சு.', 'Kalandhunarththum Kaadhalark Kantaar Pulandhunaraai', 'Wrath is false, O heart, face-to face Sans huff, you rush to his sweet embrace', 'O my soul! when you see the dear one who remove dislike by intercourse, you are displeased and continue to be so Nay, your displeasure is (simply) false'),
  (1247, 125, 'நெஞ்சொடுகிளத்தல்', 'காமம் விடுஒன்றோ நாண்விடு நன்னெஞ்சே
யானோ பொறேன்இவ் விரண்டு.', 'Kaamam Vituondro Naanvitu Nannenje', 'Off with love O mind, or shame I cannot endure both of them', 'O my good soul, give up either lust or honour, as for me I can endure neither'),
  (1248, 125, 'நெஞ்சொடுகிளத்தல்', 'பரிந்தவர் நல்காரென்று ஏங்கிப் பிரிந்தவர்
பின்செல்வாய் பேதைஎன் நெஞ்சு.', 'Parindhavar Nalkaarendru Engip Pirindhavar', 'Without pity he would depart! You sigh and seek his favour, poor heart!', 'You are a fool, O my soul! to go after my departed one, while you mourn that he is not kind enough to favour you'),
  (1249, 125, 'நெஞ்சொடுகிளத்தல்', 'உள்ளத்தார் காத லவரால் உள்ளிநீ
யாருழைச் சேறியென் நெஞ்சு.', 'Ullaththaar Kaadha Lavaraal Ullinee', 'The lover lives in Self you know; Whom you think, mind to whom you go?', 'O my soul! to whom would you repair, while the dear one is within yourself?'),
  (1250, 125, 'நெஞ்சொடுகிளத்தல்', 'துன்னாத் துறந்தாரை நெஞ்சத்து உடையேமா
இன்னும் இழத்தும் கவின்.', 'Thunnaath Thurandhaarai Nenjaththu Utaiyemaa', 'Without a thought he deserted us To think of him will make us worse', 'If I retain in my heart him who has left me without befriending me, I shall lose even the (inward) beauty that remains'),
  (1251, 126, 'நிறையழிதல்', 'காமக் கணிச்சி உடைக்கும் நிறையென்னும்
நாணுத்தாழ் வீழ்த்த கதவு.', 'Kaamak Kanichchi Utaikkum Niraiyennum', 'Passion\'s axe shall break the door Of reserve bolted with my honour', 'The axe of lust can break the door of chastity which is bolted with the bolt of modesty'),
  (1252, 126, 'நிறையழிதல்', 'காமம் எனவொன்றோ கண்ணின்றென் நெஞ்சத்தை
யாமத்தும் ஆளும் தொழில்.', 'Kaamam Enavondro Kannindren Nenjaththai', 'The thing called lust is a heartless power It sways my mind at midnight hour', 'Even at midnight is my mind worried by lust, and this one thing, alas! is without mercy'),
  (1253, 126, 'நிறையழிதல்', 'மறைப்பேன்மன் காமத்தை யானோ குறிப்பின்றித்
தும்மல்போல் தோன்றி விடும்.', 'Maraippenman Kaamaththai Yaano Kurippindrith', 'How to hide this lust which shows Itself while I sneeze unawares!', 'I would conceal my lust, but alas, it yields not to my will but breaks out like a sneeze'),
  (1254, 126, 'நிறையழிதல்', 'நிறையுடையேன் என்பேன்மன் யானோஎன் காமம்
மறையிறந்து மன்று படும்.', 'Niraiyutaiyen Enpenman Yaanoen Kaamam', 'I was proud of my sex-reserve Lo lust betrays what I preserve', 'I say I would be firm, but alas, my malady breaks out from its concealment and appears in public'),
  (1255, 126, 'நிறையழிதல்', 'செற்றார்பின் செல்லாப் பெருந்தகைமை காமநோய்
உற்றார் அறிவதொன்று அன்று.', 'Setraarpin Sellaap Perundhakaimai Kaamanoi', 'Dignity seeks not a deserter But Love-sick is its innovator', 'The dignity that would not go after an absent lover is not known to those who are sticken by love'),
  (1256, 126, 'நிறையழிதல்', 'செற்றவர் பின்சேறல் வேண்டி அளித்தரோ
எற்றென்னை உற்ற துயர்.', 'Setravar Pinseral Venti Aliththaro', 'O Grief, my deserter you seek Of your caprice what shall I speak!', 'The sorrow I have endured by desiring to go after my absent lover, in what way is it excellent?'),
  (1257, 126, 'நிறையழிதல்', 'நாணென ஒன்றோ அறியலம் காமத்தால்
பேணியார் பெட்ப செயின்.', 'Naanena Ondro Ariyalam Kaamaththaal', 'When lover\'s love does what it desires We forget all shame unawares', 'I know nothing like shame when my beloved does from love (just) what is desired (by me)'),
  (1258, 126, 'நிறையழிதல்', 'பன்மாயக் கள்வன் பணிமொழி அன்றோநம்
பெண்மை உடைக்கும் படை.', 'Panmaayak Kalvan Panimozhi Andronam', 'The cheater of many wily arts His tempting words break through women\'s hearts', 'Are not the enticing words of my trick-abounding roguish lover the weapon that breaks away my feminine firmness?'),
  (1259, 126, 'நிறையழிதல்', 'புலப்பல் எனச்சென்றேன் புல்லினேன் நெஞ்சம்
கலத்தல் உறுவது கண்டு.', 'Pulappal Enachchendren Pullinen Nenjam', 'In huff I went and felt at ease Heat to heart in sweet embrace', 'I said I would feign dislike and so went (away); (but) I embraced him the moment I say my mind began to unite with him!'),
  (1260, 126, 'நிறையழிதல்', 'நிணந்தீயில் இட்டன்ன நெஞ்சினார்க்கு உண்டோ
புணர்ந்தூடி நிற்பேம் எனல்.', 'Ninandheeyil Ittanna Nenjinaarkku Unto', 'To feign dislike is it not rare  For mates who melt like fat in fire?', 'Is it possible for those whose hearts melt like fat in the fire to say they can feign a strong dislike and remain so?'),
  (1261, 127, 'அவர்வயின்விதும்பல்', 'வாளற்றுப் புற்கென்ற கண்ணும் அவர்சென்ற
நாளொற்றித் தேய்ந்த விரல்.', 'Vaalatrup Purkendra Kannum Avarsendra', 'My eyes are dim lustre-bereft Worn fingers count days since he left', 'My finger has worn away by marking (on the wall) the days he has been absent while my eyes have lost their lustre and begin to fail'),
  (1262, 127, 'அவர்வயின்விதும்பல்', 'இலங்கிழாய் இன்று மறப்பின்என் தோள்மேல்
கலங்கழியும் காரிகை நீத்து.', 'Ilangizhaai Indru Marappinen Tholmel', 'Beauty pales and my bracelets slide; Why not forget him now, bright maid?', 'O you bright-jewelled maid, if I forget (him) today, my shoulders will lose their beauty even in the other life and make my bracelets loose'),
  (1263, 127, 'அவர்வயின்விதும்பல்', 'உரன்நசைஇ உள்ளம் துணையாகச் சென்றார்
வரல்நசைஇ இன்னும் உளேன்.', 'Urannasaii Ullam Thunaiyaakach Chendraar', 'Will as guide he went to win Yet I live-to see him again', 'I still live by longing for the arrival of him who has gone out of love for victory and with valour as his guide'),
  (1264, 127, 'அவர்வயின்விதும்பல்', 'கூடிய காமம் பிரிந்தார் வரவுள்ளிக்
கோடுகொ டேறுமென் நெஞ்சு.', 'Kootiya Kaamam Pirindhaar Varavullik', 'My heart in rapture heaves to see His retun with love to embrace me', 'My heart is rid of its sorrow and swells with rapture to think of my absent lover returning with his love'),
  (1265, 127, 'அவர்வயின்விதும்பல்', 'காண்கமன் கொண்கனைக் கண்ணாரக் கண்டபின்
நீங்கும்என் மென்தோள் பசப்பு.', 'Kaankaman Konkanaik Kannaarak Kantapin', 'Let me but gaze and gaze my spouse sallow on my soft shoulders files', 'May I look on my lover till I am satisfied and thereafter will vanish the sallowness of my slender shoulders'),
  (1266, 127, 'அவர்வயின்விதும்பல்', 'வருகமன் கொண்கன் ஒருநாள் பருகுவன்
பைதல்நோய் எல்லாம் கெட.', 'Varukaman Konkan Orunaal Parukuvan', 'Let my spouse return just a day Joy-drink shall drive my pain away', 'May my husband return some day; and then will I enjoy (him) so as to destroy all this agonizing sorrow'),
  (1267, 127, 'அவர்வயின்விதும்பல்', 'புலப்பேன்கொல் புல்லுவேன் கொல்லோ கலப்பேன்கொல்
கண்அன்ன கேளிர் விரன்.', 'Pulappenkol Pulluven Kollo Kalappenkol', 'If my eye-like lord returneth Shall I sulk or clasp or do both?', 'On the return of him who is as dear as my eyes, am I displeased or am I to embrace (him); or am I to do both?'),
  (1268, 127, 'அவர்வயின்விதும்பல்', 'வினைகலந்து வென்றீக வேந்தன் மனைகலந்து
மாலை அயர்கம் விருந்து.', 'Vinaikalandhu Vendreeka Vendhan Manaikalandhu', 'May the king fight and win and give And with my wife I will feast this eve!', 'Let the king fight and gain (victories); (but) let me be united to my wife and feast the evening'),
  (1269, 127, 'அவர்வயின்விதும்பல்', 'ஒருநாள் எழுநாள்போல் செல்லும்சேண் சென்றார்
வருநாள்வைத்து ஏங்கு பவர்க்கு.', 'Orunaal Ezhunaalpol Sellumsen Sendraar', 'One day seems as seven to those Who yearn return of distant spouse', 'To those who suffer waiting for the day of return of their distant lovers one day is as long as seven days'),
  (1270, 127, 'அவர்வயின்விதும்பல்', 'பெறின்என்னாம் பெற்றக்கால் என்னாம் உறினென்னாம்
உள்ளம் உடைந்துக்கக் கால்.', 'Perinennaam Petrakkaal Ennaam Urinennaam', 'When her heart is broken, what is The good of meeting and love-embrace?', 'After (my wife) has died of a broken heart, what good will there be if she is to receive me, has received me, or has even embraced me?'),
  (1271, 128, 'குறிப்பறிவுறுத்தல்', 'கரப்பினுங் கையிகந் தொல்லாநின் உண்கண்
உரைக்கல் உறுவதொன் றுண்டு.', 'Karappinung Kaiyikan Thollaanin Unkan', 'You hide; but your painted eyes Restraint off, report your surmise', 'Though you would conceal (your feelings), your painted eyes would not, for, transgressing (their bounds), they tell (me) something'),
  (1272, 128, 'குறிப்பறிவுறுத்தல்', 'கண்ணிறைந்த காரிகைக் காம்பேர்தோட் பேதைக்குப்
பெண்நிறைந்த நீர்மை பெரிது.', 'Kanniraindha Kaarikaik Kaamperdhot Pedhaikkup', 'With seemly grace and stem-like arms The simple she has ample charms', 'Unusually great is the female simplicity of your maid whose beauty fills my eyes and whose shoulders resemble the bamboo'),
  (1273, 128, 'குறிப்பறிவுறுத்தல்', 'மணியில் திகழ்தரு நூல்போல் மடந்தை
அணியில் திகழ்வதொன்று உண்டு.', 'Maniyil Thikazhdharu Noolpol Matandhai', 'Something shines through her jewelled charm Like thread shining through wreathed gem', 'There is something that is implied in the beauty of this woman, like the thread that is visible in a garland of gems'),
  (1274, 128, 'குறிப்பறிவுறுத்தல்', 'முகைமொக்குள் உள்ளது நாற்றம்போல் பேதை
நகைமொக்குள் உள்ளதொன் றுண்டு.', 'Mukaimokkul Ulladhu Naatrampol Pedhai', 'Like scent in bud secrets conceal In the bosom of her half smile', 'There is something in the unmatured smile of this maid like the fragrance that is contained in an unblossomed bud'),
  (1275, 128, 'குறிப்பறிவுறுத்தல்', 'செறிதொடி செய்திறந்த கள்ளம் உறுதுயர்
தீர்க்கும் மருந்தொன்று உடைத்து.', 'Seridhoti Seydhirandha Kallam Urudhuyar', 'The close-bangled belle\'s hidden thought Has a cure for my troubled heart She to Her Maid', 'The well-meant departure of her whose bangles are tight-fitting contains a remedy that can cure my great sorrow'),
  (1276, 128, 'குறிப்பறிவுறுத்தல்', 'பெரிதாற்றிப் பெட்பக் கலத்தல் அரிதாற்றி
அன்பின்மை சூழ்வ துடைத்து.', 'Peridhaatrip Petpak Kalaththal Aridhaatri', 'His over-kind close embrace sooths; But makes me feel, loveless, he parts', 'The embrace that fills me with comfort and gladness is capable of enduring (my former) sorrow and meditating on his want of love'),
  (1277, 128, 'குறிப்பறிவுறுத்தல்', 'தண்ணந் துறைவன் தணந்தமை நம்மினும்
முன்னம் உணர்ந்த வளை.', 'Thannan Thuraivan Thanandhamai Namminum', 'Quick, my bracelets read before The mind of my lord of cool shore', 'My bracelets have understood before me the (mental) separation of him who rules the cool seashore'),
  (1278, 128, 'குறிப்பறிவுறுத்தல்', 'நெருநற்றுச் சென்றார்எம் காதலர் யாமும்
எழுநாளேம் மேனி பசந்து.', 'Nerunatruch Chendraarem Kaadhalar Yaamum', 'My lover parted but yesterday; With sallowness it is seventh day The Maid Tells Him', 'It was but yesterday my lover departed (from me); and it is seven days since my complexion turned sallow'),
  (1279, 128, 'குறிப்பறிவுறுத்தல்', 'தொடிநோக்கி மென்தோளும் நோக்கி அடிநோக்கி
அஃதாண் டவள்செய் தது.', 'Thotinokki Mendholum Nokki Atinokki', 'She views her armlets, her tender arms And then her feet; these are her norms', 'She looked at her bracelets, her tender shoulders, and her feet; this was what she did there (significantly)'),
  (1280, 128, 'குறிப்பறிவுறுத்தல்', 'பெண்ணினால் பெண்மை உடைத்தென்ப கண்ணினால்
காமநோய் சொல்லி இரவு.', 'Penninaal Penmai Utaiththenpa Kanninaal', 'To express love-pangs by eyes and pray Is womanhood\'s womanly way', 'To express their love-sickness by their eyes and resort to begging bespeaks more than ordinary female excellence'),
  (1281, 129, 'புணர்ச்சிவிதும்பல்', 'உள்ளக் களித்தலும் காண மகிழ்தலும்
கள்ளுக்கில் காமத்திற் குண்டு.', 'Ullak Kaliththalum Kaana Makizhdhalum', 'Rapture at thought and joy when seen Belong to love and not to wine', 'To please by thought and cheer by sight is peculiar, not to liquor but lust'),
  (1282, 129, 'புணர்ச்சிவிதும்பல்', 'தினைத்துணையும் ஊடாமை வேண்டும் பனைத்துணையும்
காமம் நிறைய வரின்.', 'Thinaiththunaiyum Ootaamai Ventum Panaith', 'When passion grows palmyra-tall Sulking is wrong though millet-small', 'If women have a lust that exceeds even the measure of the palmyra fruit, they will not desire (to feign) dislike even as much as the millet'),
  (1283, 129, 'புணர்ச்சிவிதும்பல்', 'பேணாது பெட்பவே செய்யினும் கொண்கனைக்
காணா தமையல கண்.', 'Penaadhu Petpave Seyyinum Konkanaik', 'Though slighting me he acts his will My restless eyes would see him still', 'Though my eyes disregard me and do what is pleasing to my husband, still will they not be satisfied unless they see him'),
  (1284, 129, 'புணர்ச்சிவிதும்பல்', 'ஊடற்கண் சென்றேன்மன் தோழி அதுமறந்து
கூடற்கண் சென்றது என் னெஞ்சு.', 'Ootarkan Sendrenman Thozhi Adhumarandhu', 'Huff I would, maid, but I forget; And leap to embrace him direct', 'My heart, forgetting all, could not its love restrain'),
  (1285, 129, 'புணர்ச்சிவிதும்பல்', 'எழுதுங்கால் கோல்காணாக் கண்ணேபோல் கொண்கன்
பழிகாணேன் கண்ட இடத்து.', 'Ezhudhungaal Kolkaanaak Kannepol Konkan', 'When close I see not lord\'s blemish Like eyes that see not painter\'s brush', 'Like the eyes which see not the pencil that paints it, I cannot see my husband\'s fault (just) when I meet him'),
  (1286, 129, 'புணர்ச்சிவிதும்பல்', 'காணுங்கால் காணேன் தவறாய காணாக்கால்
காணேன் தவறல் லவை.', 'Kaanungaal Kaanen Thavaraaya Kaanaakkaal', 'When he\'s with me I see not fault And nought but fault when he is not', 'When I see my husband, I do not see any faults; but when I do not see him, I do not see anything but faults'),
  (1287, 129, 'புணர்ச்சிவிதும்பல்', 'உய்த்தல் அறிந்து புனல்பாய் பவரேபோல்
பொய்த்தல் அறிந்தென் புலந்து.', 'Uyththal Arindhu Punalpaai Pavarepol', 'To leap in stream which carries off When lord is close to feign a huff', 'Like those who leap into a stream which they know will carry them off, why should a wife feign dislike which she knows cannot hold out long?'),
  (1288, 129, 'புணர்ச்சிவிதும்பல்', 'இளித்தக்க இன்னா செயினும் களித்தார்க்குக்
கள்ளற்றே கள்வநின் மார்பு.', 'Iliththakka Innaa Seyinum Kaliththaarkkuk', 'Like wine to addicts that does disgrace Your breast, O thief, is for my embrace!', 'O you rogue! your breast is to me what liquor is to those who rejoice in it, though it only gives them an unpleasant disgrace'),
  (1289, 129, 'புணர்ச்சிவிதும்பல்', 'மலரினும் மெல்லிது காமம் சிலர்அதன்
செவ்வி தலைப்படு வார்.', 'Malarinum Mellidhu Kaamam Silaradhan', 'Flower-soft is love; a few alone Know its delicacy so fine', 'Sexual delight is more delicate than a flower, and few are those who understand its real nature'),
  (1290, 129, 'புணர்ச்சிவிதும்பல்', 'கண்ணின் துனித்தே கலங்கினாள் புல்லுதல்
என்னினும் தான்விதுப் புற்று.', 'Kannin Thuniththe Kalanginaal Pulludhal', 'She feigned dislike awhile but flew Faster for embrace than I do', 'She once feigned dislike in her eyes, but the warmth of her embrace exceeded my own'),
  (1291, 130, 'நெஞ்சொடுபுலத்தல்', 'அவர்நெஞ்சு அவர்க்காதல் கண்டும் எவன்நெஞ்சே
நீஎமக்கு ஆகா தது.', 'Avarnenju Avarkkaadhal Kantum Evannenje', 'You see, his heart is his alone; Why not my heart be all my own?', 'O my soul! although you have seen how his soul stands by him, how is it you do not stand by me?'),
  (1292, 130, 'நெஞ்சொடுபுலத்தல்', 'உறாஅ தவர்க்கண்ட கண்ணும் அவரைச்
செறாஅரெனச் சேறியென் நெஞ்சு.', 'Uraaa Thavarkkanta Kannum Avaraich', 'O heart, you see how he slights me Yet you clasp him as if friendly', 'O my soul! although you have known him who does not love me, still do you go to him, saying "he will not be displeased."'),
  (1293, 130, 'நெஞ்சொடுபுலத்தல்', 'கெட்டார்க்கு நட்டார்இல் என்பதோ நெஞ்சேநீ
பெட்டாங்கு அவர்பின் செலல்.', 'Kettaarkku Nattaaril Enpadho Nenjenee', 'You follow him at will Is it \\"The fallen have no friends\\" my heart?', 'O my soul! do you follow him at pleasure under the belief that the ruined have no friends?'),
  (1294, 130, 'நெஞ்சொடுபுலத்தல்', 'இனிஅன்ன நின்னொடு சூழ்வார்யார் நெஞ்சே
துனிசெய்து துவ்வாய்காண் மற்று.', 'Inianna Ninnotu Soozhvaaryaar Nenje', 'You won\'t sulk first and then submit Who will then consult you, my heart?', 'O my soul! you would not first seem sulky and then enjoy (him); who then would in future consult you about such things?'),
  (1295, 130, 'நெஞ்சொடுபுலத்தல்', 'பெறாஅமை அஞ்சும் பெறின்பிரிவு அஞ்சும்
அறாஅ இடும்பைத்தென் நெஞ்சு.', 'Peraaamai Anjum Perinpirivu Anjum', 'Frets to gain and fears loss in gain O my heart suffers ceaseless pain', 'My soul fears when it is without him; it also fears when it is with him; it is subject to incessant sorrow'),
  (1296, 130, 'நெஞ்சொடுபுலத்தல்', 'தனியே இருந்து நினைத்தக்கால் என்னைத்
தினிய இருந்ததென் நெஞ்சு.', 'Thaniye Irundhu Ninaiththakkaal Ennaith', 'My itching mind eats me anon As I muse on him all alone', 'My mind has been (here) in order to eat me up (as it were) whenever I think of him in my solitude'),
  (1297, 130, 'நெஞ்சொடுபுலத்தல்', 'நாணும் மறந்தேன் அவர்மறக் கல்லாஎன்
மாணா மடநெஞ்சிற் பட்டு.', 'Naanum Marandhen Avarmarak Kallaaen', 'I forget shame but not his thought In mean foolish mind I\'m caught', 'I have even forgotten my modesty, having been caught in my foolish mind which is not dignified enough to forget him'),
  (1298, 130, 'நெஞ்சொடுபுலத்தல்', 'எள்ளின் இளிவாம்என்று எண்ணி அவர்திறம்
உள்ளும் உயிர்க்காதல் நெஞ்சு.', 'Ellin Ilivaamendru Enni Avardhiram', 'My heart living in love of him Hails his glory ignoring blame', 'My soul which clings to life thinks only of his (own) gain in the belief that it would be disgraceful for it to despise him'),
  (1299, 130, 'நெஞ்சொடுபுலத்தல்', 'துன்பத்திற்கு யாரே துணையாவார் தாமுடைய
நெஞ்சந் துணையல் வழி.', 'Thunpaththirku Yaare Thunaiyaavaar Thaamutaiya', 'Who support a man in grief If lover\'s heart denies relief?', 'Who would help me out of one\'s distress, when one\'s own soul refuses help to one?'),
  (1300, 130, 'நெஞ்சொடுபுலத்தல்', 'தஞ்சம் தமரல்லர் ஏதிலார் தாமுடைய
நெஞ்சம் தமரல் வழி.', 'Thanjam Thamarallar Edhilaar Thaamutaiya', 'Why wonder if strangers disown When one\'s own heart is not his own?', 'It is hardly possible for strangers to behave like relations, when one\'s own soul acts like a stranger'),
  (1301, 131, 'புலவி', 'புல்லா திராஅப் புலத்தை அவர்உறும்
அல்லல்நோய் காண்கம் சிறிது.', 'Pullaa Thiraaap Pulaththai Avar', 'Feign sulk; embrace him not so that We can see his distress a bit', 'Let us witness awhile his keen suffering; just feign dislike and embrace him not'),
  (1302, 131, 'புலவி', 'உப்பமைந் தற்றால் புலவி அதுசிறிது
மிக்கற்றால் நீள விடல்.', 'Uppamain Thatraal Pulavi Adhusiridhu', 'Sulking is the salt of love; but Too much of it spoils the taste Wife Addresses Husband', 'A little dislike is like salt in proportion; to prolong it a little is like salt a little too much'),
  (1303, 131, 'புலவி', 'அலந்தாரை அல்லல்நோய் செய்தற்றால் தம்மைப்
புலந்தாரைப் புல்லா விடல்.', 'Alandhaarai Allalnoi Seydhatraal Thammaip', 'To leave the sulker unembraced Is to grieve the one sorely grieved', 'For men not to embrace those who have feigned dislike is like torturing those already in agony'),
  (1304, 131, 'புலவி', 'ஊடி யவரை உணராமை வாடிய
வள்ளி முதலரிந் தற்று.', 'Ooti Yavarai Unaraamai Vaatiya', 'To comfort not lady in pout Is to cut the fading plant at root He within Himself', 'Not to reconcile those who have feigned dislike is like cutting a faded creeper at its root'),
  (1305, 131, 'புலவி', 'நலத்தகை நல்லவர்க்கு ஏஎர் புலத்தகை
பூஅன்ன கண்ணார் அகத்து.', 'Nalaththakai Nallavarkku Eer Pulaththakai', 'Pouting of flower-eyed has To pure good mates a lovely grace', 'An increased shyness in those whose eyes are like flowers is beautiful even to good and virtuous husbands'),
  (1306, 131, 'புலவி', 'துனியும் புலவியும் இல்லாயின் காமம்
கனியும் கருக்காயும் அற்று.', 'Thuniyum Pulaviyum Illaayin Kaamam', 'Love devoid of frowns and pets Misses its ripe and unripe fruits', 'Sexual pleasure, without prolonged and short-lived dislike, is like too ripe, and unripe fruit'),
  (1307, 131, 'புலவி', 'ஊடலின் உண்டாங்கோர் துன்பம் புணர்வது
நீடுவ தன்று கொல் என்று.', 'Ootalin Untaangor Thunpam Punarvadhu', '\\"Will union take place soon or late?\\" In lover\'s pout this leaves a doubt', 'The doubt as to whether intercourse would take place soon or not, creates a sorrow (even) in feigned dislike'),
  (1308, 131, 'புலவி', 'நோதல் எவன்மற்று நொந்தாரென்று அஃதறியும்
காதலர் இல்லா வழி.', 'Nodhal Evanmatru Nondhaarendru Aqdhariyum', 'What\'s the good of grieving lament When concious lover is not present?', 'What avails sorrow when I am without a wife who can understand the cause of my sorrow?'),
  (1309, 131, 'புலவி', 'நீரும் நிழலது இனிதே புலவியும்
வீழுநர் கண்ணே இனிது.', 'Neerum Nizhaladhu Inidhe Pulaviyum', 'Water delights in a shady grove And sulking in souls of psychic love', 'Like water in the shade, dislike is delicious only in those who love'),
  (1310, 131, 'புலவி', 'ஊடல் உணங்க விடுவாரோடு என்நெஞ்சம்
கூடுவேம் என்பது அவா.', 'Ootal Unanga Vituvaarotu Ennenjam', 'My heart athirst would still unite With her who me in sulking left!', 'It is nothing but strong desire that makes her mind unite with me who can leave her to her own dislike'),
  (1311, 132, 'புலவி நுணுக்கம்', 'பெண்ணியலார் எல்லாரும் கண்ணின் பொதுஉண்பர்
நண்ணேன் பரத்தநின் மார்பு.', 'Penniyalaar Ellaarum Kannin Podhuunpar', 'I shrink to clasp you bosom lewd To the gaze of all ladies exposed', 'You are given to prostitution; all those who are born as womankind enjoy you with their eyes in an ordinary way I will not embrace you'),
  (1312, 132, 'புலவி நுணுக்கம்', 'ஊடி இருந்தேமாத் தும்மினார் யாம்தம்மை
நீடுவாழ் கென்பாக் கறிந்து.', 'Ooti Irundhemaath Thumminaar Yaamdhammai', 'He sneezed while we went on sulking Expecting me to say \\"live long\\"', 'When I continued to be sulky he sneezed and thought I would (then) wish him a long life'),
  (1313, 132, 'புலவி நுணுக்கம்', 'கோட்டுப்பூச் சூடினும் காயும் ஒருத்தியைக்
காட்டிய சூடினீர் என்று.', 'Kottup Pooch Chootinum Kaayum', '\\"For which lady?\\" she widely cries While I adorn myself with flowers', 'Even if I were adorned with a garland of branch-flowers, she would say I did so to show it to another woman'),
  (1314, 132, 'புலவி நுணுக்கம்', 'யாரினும் காதலம் என்றேனா ஊடினாள்
யாரினும் யாரினும் என்று.', 'Yaarinum Kaadhalam Endrenaa Ootinaal', '\\"I love you more than all\\" I said \\"Than whom, than whom?\\" she sulked and chid', 'When I said I loved her more than any other woman, she said "more than others, yes, more than others," and remained sulky'),
  (1315, 132, 'புலவி நுணுக்கம்', 'இம்மைப் பிறப்பில் பிரியலம் என்றேனாக்
கண்நிறை நீர்கொண் டனள்.', 'Immaip Pirappil Piriyalam Endrenaak', '\\"In this life we won\'t part\\" I told Her eyes at once with tears were filled', 'When I said I would never part from her in this life her eyes were filled with tears'),
  (1316, 132, 'புலவி நுணுக்கம்', 'உள்ளினேன் என்றேன்மற் றென்மறந்தீர் என்றென்னைப்
புல்லாள் புலத்தக் கனள்.', 'Ullinen Endrenmar Renmarandheer Endrennaip', 'I said I thought of you She left Her embrace crying \\"Oft you forget\\"', 'When I said I had remembered her, she said I had forgotten her and relaxing her embrace, began to feign dislike'),
  (1317, 132, 'புலவி நுணுக்கம்', 'வழுத்தினாள் தும்மினேன் ஆக அழித்தழுதாள்
யாருள்ளித் தும்மினீர் என்று.', 'Vazhuththinaal Thumminen Aaka Azhiththazhudhaal', 'I sneezed; she blessed; then changed and wept  \\"You sneezed now at which lady\'s thought?\\"', 'When I sneezed she blessed me, but at once changed (her mind) and wept, asking, "At the thought of whom did you sneeze?"'),
  (1318, 132, 'புலவி நுணுக்கம்', 'தும்முச் செறுப்ப அழுதாள் நுமர்உள்ளல்
எம்மை மறைத்திரோ என்று.', 'Thummuch Cheruppa Azhudhaal Numarullal', 'I repressed sneeze; she wept crying \\"Your thoughts from me you are hiding\\"', 'When I suppressed my sneezing, she wept saying, "I suppose you (did so) to hide from me your own people\'s remembrance of you"'),
  (1319, 132, 'புலவி நுணுக்கம்', 'தன்னை உணர்த்தினும் காயும் பிறர்க்கும்நீர்
இந்நீரர் ஆகுதிர் என்று.', 'Thannai Unarththinum Kaayum Pirarkkumneer', 'I try to coax her and she remarks \\"Your coaxing others thus this marks\\"', '\'I see\', quoth she, \'to other folks How you are wondrous kind\' Even when I try to remove her dislike, she is displeased and says, "This is the way you behave'),
  (1320, 132, 'புலவி நுணுக்கம்', 'நினைத்திருந்து நோக்கினும் காயும் அனைத்துநீர்
யாருள்ளி நோக்கினீர் என்று.', 'Ninaiththirundhu Nokkinum Kaayum Anaiththuneer', 'I think and gaze at her; she chides: \\"On whom your thought just now abides?\\"', 'Even when I look on her contemplating (her beauty), she is displeased and says, "With whose thought have you (thus) looked on my person?"'),
  (1321, 133, 'ஊடலுவகை', 'இல்லை தவறவர்க்கு ஆயினும் ஊடுதல்
வல்லது அவர்அள஧க்கு மாறு.', 'Illai Thavaravarkku Aayinum Ootudhal', 'He is flawless; but I do pout So that his loving ways show out', 'Although my husband is free from defects, the way in which he embraces me is such as to make me feign dislike'),
  (1322, 133, 'ஊடலுவகை', 'ஊடலின் தோன்றும் சிறுதுனி நல்லளி
வாடினும் பாடு பெறும்.', 'Ootalin Thondrum Sirudhuni Nallali', 'Fading first, love blooms and outlives The petty pricks that pouting gives', 'His love will increase though it may (at first seem to) fade through the short-lived distress caused by (my) dislike'),
  (1323, 133, 'ஊடலுவகை', 'புலத்தலின் புத்தேள்நாடு உண்டோ நிலத்தொடு
நீரியைந் தன்னார் அகத்து.', 'Pulaththalin Puththelnaatu Unto Nilaththotu', 'Is there a heaven like sulk beneath Of hearts that join like water and earth?', 'Is there a celestial land that can please like the feigned dislike of those whose union resembles that of earth and water?'),
  (1324, 133, 'ஊடலுவகை', 'புல்லி விடாஅப் புலவியுள் தோன்றுமென்
உள்ளம் உடைக்கும் படை.', 'Pulli Vitaaap Pulaviyul Thondrumen', 'In long pout after embrace sweet A weapon is up to break my heart', 'In prolonged dislike after an embrace there is a weapon that can break my heart'),
  (1325, 133, 'ஊடலுவகை', 'தவறிலர் ஆயினும் தாம்வீழ்வார் மென்றோள்
அகறலின் ஆங்கொன் றுடைத்து.', 'Thavarilar Aayinum Thaamveezhvaar Mendrol', 'Though free form faults, one feels the charms Of feigned release from lover\'s arms', 'Though free from defects, men feel pleased when they cannot embrace the delicate shoulders of those whom they love'),
  (1326, 133, 'ஊடலுவகை', 'உணலினும் உண்டது அறல்இனிது காமம்
புணர்தலின் ஊடல் இனிது.', 'Unalinum Untadhu Aralinidhu Kaamam', 'Sweeter than meal is digestion And sulk in love than union', 'To digest what has been eaten is more delightful than to eat more; likewise love is more delightful in dislike than intercourse'),
  (1327, 133, 'ஊடலுவகை', 'ஊடலில் தோற்றவர் வென்றார் அதுமன்னும்
கூடலிற் காணப் படும்.', 'Ootalil Thotravar Vendraar Adhumannum', 'The yielder wins in lover\'s pout Reunited joy brings it out', 'Those are conquerors whose dislike has been defeated and that is proved by the love (which'),
  (1328, 133, 'ஊடலுவகை', 'ஊடிப் பெறுகுவம் கொல்லோ நுதல்வெயர்ப்பக்
கூடலில் தோன்றிய உப்பு.', 'Ootip Perukuvam Kollo Nudhalveyarppak', 'Shall not our pouting again give The dew-browed joy of joint love?', 'Will I enjoy once more through her dislike, the pleasure of that love that makes her forehead perspire?'),
  (1329, 133, 'ஊடலுவகை', 'ஊடுக மன்னோ ஒளியிழை யாமிரப்ப
நீடுக மன்னோ இரா.', 'Ootuka Manno Oliyizhai Yaamirappa', 'Sulk on O belle of shining jewels! Prolong O night! our delight swells!', 'May the bright-jewelled one feign dislike, and may the night be prolonged for me to implore her!'),
  (1330, 133, 'ஊடலுவகை', 'ஊடுதல் காமத்திற்கு இன்பம் அதற்கின்பம்
கூடி முயங்கப் பெறின்.', 'Ootudhal Kaamaththirku Inpam Adharkinpam', 'Bouderie is lovers\' delight Its delight grows when they unite', 'Dislike adds delight to love; and a hearty embrace (thereafter) will add delight to dislike');

-- Update complete
