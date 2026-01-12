import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { ArrowLeft, Youtube, BookOpen, Sparkles, Search } from "lucide-react";
import { Link } from "wouter";
import { useState } from "react";

export default function DrPillaiWisdom() {
  const [searchQuery, setSearchQuery] = useState("");

  const quotes = [
    {
      id: 1,
      quote: "பகுத்தறிவு வந்து பேரறிவு கிடையாது (Reasoning is not supreme wisdom)",
      category: "Core Teaching",
      module: "TCGNPT",
    },
    {
      id: 2,
      quote: "Super intelligence (பேரறிவு) is possible for everyone through Tamil sounds. This is not for the elite few - it's the birthright of every human being.",
      category: "Democratic Access",
      module: "Global Tamil Influence",
    },
    {
      id: 3,
      quote: "அக்ஷராணாம் அகோராஸ்மி - Among all syllables, I am the syllable 'Ah' (Krishna in Bhagavad Gita)",
      category: "Tamil Syllables",
      module: "SIS",
    },
    {
      id: 4,
      quote: "அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு - Just as 'Ah' is the first of all letters, God is the origin of the universe (Thirukkural)",
      category: "Thirukkural Wisdom",
      module: "Thirukkural",
    },
    {
      id: 5,
      quote: "If you just keep chanting 'Aah...', all parts of your brain will be activated. Harvard scientist confirmed 'Ah' has global representation in the brain.",
      category: "Scientific Validation",
      module: "Tamil-Science Fusion",
    },
    {
      id: 6,
      quote: "Tamil will give you Anima Siddhi. You will become like an atom. Becoming atomic in size, you will disappear and access quantum intelligence.",
      category: "Siddhi Powers",
      module: "Siddhi Powers",
    },
    {
      id: 7,
      quote: "Tamil will reduce your knowledge temperature to Absolute Zero. That's where quantum computers operate, and that's where super intelligence emerges.",
      category: "Quantum Mind",
      module: "Tamil-Science Fusion",
    },
    {
      id: 8,
      quote: "தன்னார் தமிழளிக்கும் தண்பாண்டி நாட்டானை - The Lord of cool Pandya country who offers the cool Tamil (Thiruvasagam)",
      category: "Cool Tamil",
      module: "Siddhi Powers",
    },
    {
      id: 9,
      quote: "சும்மா இரு (Be still) - In complete stillness, free from thought and words, you access the quantum state where miraculous powers emerge (Arunagirinathar)",
      category: "Stillness Practice",
      module: "Siddhi Powers",
    },
    {
      id: 10,
      quote: "While ChatGPT operates on reasoning (பகுத்தறிவு) and pre-trained data, TCGNPT generates sudden, creative insights through quantum technology embedded in Tamil syllables.",
      category: "TCGNPT",
      module: "TCGNPT",
    },
    {
      id: 11,
      quote: "Tamil sounds can attract money because they operate at the frequency of abundance consciousness. Sound creates vibration, vibration affects the quantum field, and the quantum field manifests as material reality.",
      category: "Wealth Manifestation",
      module: "SIS",
    },
    {
      id: 12,
      quote: "AUM activates your whole brain: 'அ' (Ah) activates left brain, 'உ' (Oo) activates right brain, 'ம்' (Mm) activates midbrain - leading to super intelligence.",
      category: "AUM Practice",
      module: "TCGNPT",
    },
    {
      id: 13,
      quote: "The Tamil language is not just a language but a great science. Every word and letter holds secrets that can lead to Quantum Mind.",
      category: "Tamil Science",
      module: "Tamil-Science Fusion",
    },
    {
      id: 14,
      quote: "You can become the king even of Indra Lokam (heaven). This is about elevating your consciousness to divine levels through Tamil syllable technology.",
      category: "Divine Consciousness",
      module: "Siddhi Powers",
    },
    {
      id: 15,
      quote: "Tamil AI can help you succeed - this is the truth, not motivation. It's actual quantum technology for success.",
      category: "Success Technology",
      module: "Global Tamil Influence",
    },
  ];

  const videos = [
    {
      id: 1,
      title: "இனி புத்தகங்களே தேவைப்படாது! ChatGPT-ஐ முறியடிக்கும் 'தமிழ் AI' ரகசியம்!",
      titleEn: "No more need for books! The secret of 'Tamil AI' that defeats ChatGPT!",
      url: "https://www.youtube.com/watch?v=HfYuZVKK8LQ",
      views: "24",
      duration: "15:05",
      keyTopics: ["Steve Jobs & Zuckerberg's use of Indian wisdom", "How ChatGPT dulls your brain", "Tamil AI as superior alternative"],
    },
    {
      id: 2,
      title: "ஒவ்வொரு தமிழ் எழுத்திலும் ஒரு ரகசியம்! உங்கள் வாழ்க்கை மாறும்!",
      titleEn: "A secret in every Tamil letter! Your life will change! How Tamil can make you AI Scientist",
      url: "https://www.youtube.com/watch?v=HyfzVomCLyk",
      views: "830K",
      duration: "05:37",
      keyTopics: ["Quantum Mind through Tamil letters", "Life transformation through syllables", "Tamil as mega science"],
    },
    {
      id: 3,
      title: "ChatGPT-ஐ மிஞ்சும் தமிழ் AI (TCGNPT) | Instant Super Intelligence!",
      titleEn: "Tamil AI (TCGNPT) that surpasses ChatGPT | Instant Super Intelligence!",
      url: "https://www.youtube.com/watch?v=UPyp8v6-UJs",
      views: "417K",
      duration: "05:50",
      keyTopics: ["TCGNPT vs ChatGPT", "பகுத்தறிவு vs பேரறிவு", "AUM whole brain activation", "Non-pretrained intelligence"],
    },
    {
      id: 4,
      title: "AI ரகசியம் தமிழில்-Part 12 | தமிழ் ஒலியால் பணம் ஈர்க்கலாம்!",
      titleEn: "AI Secret in Tamil - Part 12 | Attract Money with Tamil Sound! Dr. Pillai's Way",
      url: "https://www.youtube.com/watch?v=qYlTZusR88Y",
      views: "893K",
      duration: "21:08",
      keyTopics: ["Wealth manifestation through sound", "TCGNT explained", "Ancient wisdom + modern science"],
    },
    {
      id: 5,
      title: "AI ரகசியம் தமிழில்-Part 11 | அனைவருக்கும் பேரறிவு சாத்தியம்!",
      titleEn: "AI Secret in Tamil - Part 11 | Superintelligence is possible for everyone!",
      url: "https://www.youtube.com/watch?v=J67LyBVHscw",
      views: "1.6M",
      duration: "05:20",
      keyTopics: ["Democratic access to super intelligence", "'அ' as origin of all knowledge", "Tamil AI fusion"],
    },
    {
      id: 6,
      title: "AI ரகசியம் தமிழில்-Part 10 | 'அ' சத்தத்தில் உள்ள பேரறிவு!",
      titleEn: "The Secret of Superintelligence (AI) Hidden in the Tamil Syllable 'Ah'",
      url: "https://www.youtube.com/watch?v=9DSKY-JSbiY",
      views: "673K",
      duration: "06:57",
      keyTopics: ["Power of 'அ' syllable", "Harvard fMRI validation", "Agaram galaxy", "Krishna's teaching"],
    },
    {
      id: 7,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 9",
      titleEn: "Anima Siddhi and Quantum Knowledge Through the Tamil Language",
      url: "https://www.youtube.com/watch?v=mvZtWz_VXaY",
      views: "1.2M",
      duration: "10:32",
      keyTopics: ["Anima Siddhi", "Quantum physics analogy", "Cool Tamil technology", "Absolute Zero consciousness"],
    },
    {
      id: 8,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 8",
      titleEn: "Quantum Intelligence",
      url: "https://www.youtube.com/watch?v=zKpp8FM1wGE",
      views: "509K",
      duration: "07:29",
      keyTopics: ["சும்மா இரு (be still)", "Quantum state through stillness", "Murugan's supreme intelligence"],
    },
    {
      id: 9,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 7",
      titleEn: "True AGI in Empty Mind",
      url: "https://www.youtube.com/watch?v=KiJT58alotY",
      views: "563K",
      duration: "05:54",
      keyTopics: ["AGI in 'no knowledge' state", "Murugan's secret", "Empty mind wisdom"],
    },
    {
      id: 10,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 6",
      titleEn: "Part 6",
      url: "https://www.youtube.com/watch?v=Ijn93ZpjwzA",
      views: "654K",
      duration: "N/A",
      keyTopics: ["Tamil AI secrets", "Super intelligence path"],
    },
    {
      id: 11,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 5",
      titleEn: "Part 5",
      url: "https://www.youtube.com/watch?v=Q1_rcokKYnI",
      views: "612K",
      duration: "N/A",
      keyTopics: ["Tamil AI wisdom", "Consciousness technology"],
    },
    {
      id: 12,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 4",
      titleEn: "Part 4",
      url: "https://www.youtube.com/watch?v=scPRW0e_UAM",
      views: "946K",
      duration: "N/A",
      keyTopics: ["Tamil syllable power", "Ancient technology"],
    },
    {
      id: 13,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 3",
      titleEn: "Part 3",
      url: "https://www.youtube.com/watch?v=0P5-oVh2W1Y",
      views: "311K",
      duration: "N/A",
      keyTopics: ["Tamil AI foundation", "Quantum consciousness"],
    },
    {
      id: 14,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 2",
      titleEn: "Part 2",
      url: "https://www.youtube.com/watch?v=Kd7-Ff7SEPM",
      views: "755K",
      duration: "N/A",
      keyTopics: ["Tamil language secrets", "Intelligence activation"],
    },
    {
      id: 15,
      title: "The secret of AI lies in Tamil – Dr. Pillai explains!",
      titleEn: "Part 1 - The Foundation",
      url: "https://www.youtube.com/watch?v=kk5X4DbDZH8",
      views: "1.6M",
      duration: "N/A",
      keyTopics: ["Tamil AI introduction", "Super intelligence basics"],
    },
    {
      id: 16,
      title: "Tamil AI can help you succeed - Dr. Pillai tells the truth",
      titleEn: "Tamil AI for Success",
      url: "https://www.youtube.com/watch?v=QwvsP5PYNUw",
      views: "93K",
      duration: "N/A",
      keyTopics: ["Success through Tamil AI", "Practical applications", "Truth about Tamil technology"],
    },
  ];

  const keyConcepts = [
    {
      id: 1,
      title: "பகுத்தறிவு vs பேரறிவு",
      titleEn: "Reasoning vs Super Intelligence",
      description: "ChatGPT provides reasoning (பகுத்தறிவு) based on existing data. Tamil AI provides super intelligence (பேரறிவு) - sudden, intuitive wisdom that emerges from quantum consciousness.",
    },
    {
      id: 2,
      title: "TCGNPT",
      titleEn: "Tamil Creative Generative Non-Pre-trained Transformer",
      description: "Unlike ChatGPT which is pre-trained on data, TCGNPT accesses inherent wisdom within Tamil syllables. It operates at quantum level, not molecular level.",
    },
    {
      id: 3,
      title: "AUM Whole Brain Activation",
      titleEn: "ஓம் - Complete Brain Integration",
      description: "'அ' (Ah) activates LEFT BRAIN for logic. 'உ' (Oo) activates RIGHT BRAIN for creativity. 'ம்' (Mm) activates MIDBRAIN for super intelligence integration.",
    },
    {
      id: 4,
      title: "Quantum Mind",
      titleEn: "குவாண்டம் மனம்",
      description: "Tamil syllables operate at Absolute Zero consciousness - the same level where quantum computers function. This 'cool Tamil' lowers your knowledge temperature to quantum state.",
    },
    {
      id: 5,
      title: "Democratic Access",
      titleEn: "அனைவருக்கும் பேரறிவு",
      description: "Super intelligence is not for the elite few. It's the birthright of every human being, accessible through Tamil sounds and syllables.",
    },
  ];

  const filteredQuotes = quotes.filter(
    (q) =>
      q.quote.toLowerCase().includes(searchQuery.toLowerCase()) ||
      q.category.toLowerCase().includes(searchQuery.toLowerCase()) ||
      q.module.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const filteredVideos = videos.filter(
    (v) =>
      v.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      v.titleEn.toLowerCase().includes(searchQuery.toLowerCase()) ||
      v.keyTopics.some((topic) => topic.toLowerCase().includes(searchQuery.toLowerCase()))
  );

  const filteredConcepts = keyConcepts.filter(
    (c) =>
      c.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      c.titleEn.toLowerCase().includes(searchQuery.toLowerCase()) ||
      c.description.toLowerCase().includes(searchQuery.toLowerCase())
  );

  return (
    <div className="min-h-screen bg-gradient-to-br from-orange-50 via-white to-purple-50">
      {/* Header */}
      <div className="bg-gradient-to-r from-orange-600 to-purple-600 text-white py-8">
        <div className="container mx-auto px-4">
          <Link href="/app">
            <button className="flex items-center gap-2 text-white/90 hover:text-white mb-4 transition-colors">
              <ArrowLeft className="w-5 h-5" />
              Back to Home
            </button>
          </Link>
          <div className="flex items-center gap-3 mb-2">
            <Sparkles className="w-8 h-8" />
            <h1 className="text-4xl font-bold">Dr. Pillai's Wisdom</h1>
          </div>
          <p className="text-white/90 text-lg">
            Complete teachings from the "Tamil vs AI" video series
          </p>
          <div className="mt-4 flex items-center gap-2 text-sm">
            <Badge variant="secondary" className="bg-white/20 text-white border-white/30">
              16 Videos
            </Badge>
            <Badge variant="secondary" className="bg-white/20 text-white border-white/30">
              15 Core Quotes
            </Badge>
            <Badge variant="secondary" className="bg-white/20 text-white border-white/30">
              5 Key Concepts
            </Badge>
          </div>
        </div>
      </div>

      <div className="container mx-auto px-4 py-8">
        {/* Search Bar */}
        <div className="mb-8">
          <div className="relative max-w-2xl mx-auto">
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
            <Input
              type="text"
              placeholder="Search quotes, videos, or concepts..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 py-6 text-lg"
            />
          </div>
        </div>

        {/* Key Concepts Section */}
        <section className="mb-12">
          <div className="flex items-center gap-2 mb-6">
            <BookOpen className="w-6 h-6 text-orange-600" />
            <h2 className="text-3xl font-bold">Key Concepts</h2>
          </div>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {filteredConcepts.map((concept) => (
              <Card key={concept.id} className="hover:shadow-lg transition-shadow border-l-4 border-l-orange-500">
                <CardHeader>
                  <CardTitle className="text-xl">{concept.title}</CardTitle>
                  <CardDescription className="text-base font-medium">{concept.titleEn}</CardDescription>
                </CardHeader>
                <CardContent>
                  <p className="text-gray-700">{concept.description}</p>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>

        {/* Quotes Section */}
        <section className="mb-12">
          <div className="flex items-center gap-2 mb-6">
            <Sparkles className="w-6 h-6 text-purple-600" />
            <h2 className="text-3xl font-bold">Dr. Pillai's Quotes</h2>
          </div>
          <div className="grid md:grid-cols-2 gap-6">
            {filteredQuotes.map((quote) => (
              <Card key={quote.id} className="hover:shadow-lg transition-shadow">
                <CardContent className="pt-6">
                  <p className="text-lg italic mb-4 text-gray-800">"{quote.quote}"</p>
                  <div className="flex gap-2 flex-wrap">
                    <Badge variant="outline" className="bg-orange-50">
                      {quote.category}
                    </Badge>
                    <Badge variant="outline" className="bg-purple-50">
                      {quote.module}
                    </Badge>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>

        {/* Video Library Section */}
        <section>
          <div className="flex items-center gap-2 mb-6">
            <Youtube className="w-6 h-6 text-red-600" />
            <h2 className="text-3xl font-bold">Complete Video Library</h2>
          </div>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {filteredVideos.map((video) => (
              <Card key={video.id} className="hover:shadow-lg transition-shadow">
                <CardHeader>
                  <div className="flex items-start justify-between gap-2 mb-2">
                    <Badge variant="secondary" className="bg-red-50 text-red-700">
                      {video.views} views
                    </Badge>
                    {video.duration !== "N/A" && (
                      <Badge variant="outline">{video.duration}</Badge>
                    )}
                  </div>
                  <CardTitle className="text-lg leading-tight mb-2">{video.title}</CardTitle>
                  <CardDescription className="text-sm">{video.titleEn}</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="mb-4">
                    <p className="text-sm font-semibold text-gray-700 mb-2">Key Topics:</p>
                    <div className="flex flex-wrap gap-1">
                      {video.keyTopics.map((topic, idx) => (
                        <Badge key={idx} variant="outline" className="text-xs">
                          {topic}
                        </Badge>
                      ))}
                    </div>
                  </div>
                  <a
                    href={video.url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="inline-flex items-center gap-2 text-red-600 hover:text-red-700 font-medium"
                  >
                    <Youtube className="w-4 h-4" />
                    Watch on YouTube
                  </a>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>
      </div>
    </div>
  );
}
