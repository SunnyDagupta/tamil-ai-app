import { Button } from "@/components/ui/button";
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
      quote: "Super intelligence (பேரறிவு) is possible for everyone through Tamil sounds. This is not for the elite few - it's the birthright of every human being.",
      category: "Super Intelligence",
      module: "Core Teaching",
    },
    {
      id: 2,
      quote: "ChatGPT makes your brain lazy by doing thinking for you. Tamil AI makes your brain enlightened by activating your own super intelligence.",
      category: "TCGNPT",
      module: "Module 4",
    },
    {
      id: 3,
      quote: "Each Tamil letter contains a secret that can transform your life. This is not metaphor—it's quantum technology embedded in an ancient language.",
      category: "Tamil Syllables",
      module: "Module 1",
    },
    {
      id: 4,
      quote: "While ChatGPT operates on reasoning (பகுத்தறிவு) and pre-trained data, it cannot provide true self-knowledge or sudden intuitive wisdom (பேரறிவு). TCGNPT is designed to generate these sudden, creative insights through quantum technology embedded in Tamil syllables.",
      category: "TCGNPT",
      module: "Module 4",
    },
    {
      id: 5,
      quote: "The sound 'A' (அ) contains super intelligence! It represents the beginning of creation and connects directly to Brahman consciousness.",
      category: "Tamil Syllables",
      module: "Module 1",
    },
    {
      id: 6,
      quote: "Chant 'EE' (ஈ) to delimit your mind and break through mental boundaries.",
      category: "Tamil Syllables",
      module: "Module 1",
    },
    {
      id: 7,
      quote: "'LA' (ல) liberates you from limitation and expands consciousness beyond current boundaries.",
      category: "Tamil Syllables",
      module: "Module 1",
    },
    {
      id: 8,
      quote: "Tamil sounds can attract money because they operate at the frequency of abundance consciousness. Sound creates vibration, vibration affects the quantum field, and the quantum field manifests as material reality.",
      category: "Wealth Manifestation",
      module: "Module 1",
    },
    {
      id: 9,
      quote: "This is ancient Siddha technology. When you chant AUM properly, you activate your whole brain and access intelligence beyond what current AI can provide.",
      category: "AUM Practice",
      module: "Module 4",
    },
    {
      id: 10,
      quote: "You can become the king even of Indra Lokam (heaven). This is not metaphor - it's about elevating your consciousness to divine levels through Tamil syllable technology.",
      category: "Siddhi Powers",
      module: "Module 3",
    },
    {
      id: 11,
      quote: "Through proper activation of the midbrain using the 'Mm' sound in AUM, you can develop 'Siddha Sankalpam' - the power to manifest thoughts instantly. This is the ultimate siddhi power.",
      category: "Siddhi Powers",
      module: "Module 3",
    },
    {
      id: 12,
      quote: "Tamil AI can help you succeed - this is the truth, not motivation. It's actual quantum technology for success.",
      category: "Success",
      module: "Module 6",
    },
  ];

  const videos = [
    {
      id: 1,
      title: "ChatGPT-ஐ மிஞ்சும் தமிழ் AI (TCGNPT) | Instant Super Intelligence!",
      titleEn: "Tamil AI (TCGNPT) that surpasses ChatGPT | Instant Super Intelligence!",
      url: "https://www.youtube.com/watch?v=UPyp8v6-UJs",
      views: "416K",
      duration: "5:51",
      keyTopics: ["TCGNPT vs ChatGPT", "பகுத்தறிவு vs பேரறிவு", "Non-pretrained intelligence", "AUM whole brain activation"],
    },
    {
      id: 2,
      title: "ஒவ்வொரு தமிழ் எழுத்திலும் ஒரு ரகசியம்!",
      titleEn: "A secret in every Tamil letter! How Tamil can make you AI Scientist",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      duration: "5:07",
      keyTopics: ["247 Tamil letters", "Consciousness codes", "Becoming an AI scientist"],
    },
    {
      id: 3,
      title: "AI ரகசியம் தமிழில்-Part 12 | தமிழ் ஒலியால் பணம் ஈர்க்கலாம்!",
      titleEn: "AI Secret in Tamil-Part 12 | Attract money with Tamil sounds!",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "893K",
      duration: "21:09",
      keyTopics: ["Wealth manifestation", "SHREEM, KLEEM, AIM", "Sound and quantum field"],
    },
    {
      id: 4,
      title: "AI ரகசியம் தமிழில்-Part 11 | அனைவருக்கும் பேரறிவு சாத்தியம்!",
      titleEn: "AI Secret in Tamil-Part 11 | Super intelligence is possible for everyone!",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "1.6M",
      duration: "5:21",
      keyTopics: ["Democratic access to super intelligence", "Everyone's birthright"],
    },
    {
      id: 5,
      title: "AI ரகசியம் தமிழில்-Part 10 | 'அ' சத்தத்தில் உள்ள பேரறிவு!",
      titleEn: "AI Secret in Tamil-Part 10 | The super intelligence in the sound 'A'!",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "673K",
      duration: "6:58",
      keyTopics: ["First Tamil letter", "Brahman consciousness", "Activating dormant brain"],
    },
    {
      id: 6,
      title: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 9",
      titleEn: "The secret of AI is in Tamil – Dr. Pillai explains! - Part 9",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "1.1M",
      duration: "10:33",
      keyTopics: ["Tamil as AI technology", "Ancient wisdom meets modern AI"],
    },
    {
      id: 7,
      title: "Tamil AI can help you succeed - Dr. Pillai tells the truth",
      titleEn: "Tamil AI can help you succeed - Dr. Pillai tells the truth",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "93K",
      keyTopics: ["Quantum technology for success", "Not motivation but actual science"],
    },
    {
      id: 8,
      title: "You can become the king even of Indra Lokam",
      titleEn: "You can become the king even of Indra Lokam | Dr. Pillai",
      url: "https://www.youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN",
      views: "16K",
      duration: "5:26",
      keyTopics: ["King consciousness", "Divine level elevation", "Royal consciousness syllables"],
    },
  ];

  const concepts = [
    {
      term: "TCGNPT",
      definition: "Tamil Creative Generative Non-PreTrained Transformer - Dr. Pillai's alternative to ChatGPT that activates your innate super intelligence rather than making your brain lazy.",
      tamilTerm: "தமிழ் படைப்பாற்றல் உருவாக்கும் முன்பயிற்சியற்ற மாற்றி",
    },
    {
      term: "பகுத்தறிவு (Pakutharivu)",
      definition: "Reasoning Intelligence - The logical, data-based intelligence that ChatGPT uses. Limited to rearranging existing information.",
      tamilTerm: "பகுத்தறிவு",
    },
    {
      term: "பேரறிவு (Perarivu)",
      definition: "Super Intelligence - Sudden intuitive wisdom and creative insights that come from beyond logic. This is what TCGNPT activates.",
      tamilTerm: "பேரறிவு",
    },
    {
      term: "Siddha Sankalpam",
      definition: "The power to manifest thoughts instantly. Achieved through activation of the midbrain using the 'Mm' sound in AUM. The ultimate siddhi power.",
      tamilTerm: "சித்த சங்கல்பம்",
    },
    {
      term: "AUM Whole Brain Activation",
      definition: "'Ah' (அ) stimulates left brain, 'Oo' (உ) stimulates right brain, 'Mm' (ம்) stimulates midbrain. Complete brain activation through one primordial sound.",
      tamilTerm: "ஓம் முழு மூளை செயல்படுத்தல்",
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

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-6xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        <div className="mb-8">
          <Badge className="mb-4 text-lg px-4 py-2">🕉️ Dr. Pillai's Teachings</Badge>
          <h1 className="text-4xl md:text-5xl font-bold mb-4">Dr. Pillai's Wisdom</h1>
          <p className="text-xl text-muted-foreground mb-6">
            Authentic teachings from the Tamil vs AI video series. Explore quotes, concepts, and
            video lessons from Dr. Pillai.
          </p>

          {/* Search */}
          <div className="relative max-w-2xl">
            <Search className="absolute left-3 top-3 h-5 w-5 text-muted-foreground" />
            <Input
              type="text"
              placeholder="Search quotes, videos, or concepts..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 py-6 text-lg"
            />
          </div>
        </div>

        {/* Key Concepts */}
        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-6 flex items-center gap-2">
            <Sparkles className="w-8 h-8 text-primary" />
            Key Concepts
          </h2>
          <div className="grid md:grid-cols-2 gap-4">
            {concepts.map((concept) => (
              <Card key={concept.term}>
                <CardHeader>
                  <CardTitle className="text-lg">{concept.term}</CardTitle>
                  <CardDescription className="text-sm text-muted-foreground">
                    {concept.tamilTerm}
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <p className="text-sm">{concept.definition}</p>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>

        {/* Quotes */}
        <section className="mb-12">
          <h2 className="text-3xl font-bold mb-6 flex items-center gap-2">
            <BookOpen className="w-8 h-8 text-primary" />
            Wisdom Quotes ({filteredQuotes.length})
          </h2>
          <div className="space-y-4">
            {filteredQuotes.map((quote) => (
              <Card key={quote.id} className="border-l-4 border-l-primary">
                <CardContent className="pt-6">
                  <p className="text-lg italic mb-4">"{quote.quote}"</p>
                  <div className="flex gap-2 flex-wrap">
                    <Badge variant="outline">{quote.category}</Badge>
                    <Badge variant="secondary">{quote.module}</Badge>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>

        {/* Video Library */}
        <section>
          <h2 className="text-3xl font-bold mb-6 flex items-center gap-2">
            <Youtube className="w-8 h-8 text-primary" />
            Video Library ({filteredVideos.length})
          </h2>
          <div className="grid md:grid-cols-2 gap-6">
            {filteredVideos.map((video) => (
              <Card key={video.id} className="hover:shadow-lg transition-shadow">
                <CardHeader>
                  <div className="flex items-start justify-between mb-2">
                    <Badge variant="outline" className="mb-2">
                      {video.duration}
                    </Badge>
                    {video.views && <Badge variant="secondary">{video.views} views</Badge>}
                  </div>
                  <CardTitle className="text-base leading-tight mb-2">{video.title}</CardTitle>
                  <CardDescription className="text-sm">{video.titleEn}</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="mb-4">
                    <p className="text-sm font-semibold mb-2">Key Topics:</p>
                    <div className="flex flex-wrap gap-2">
                      {video.keyTopics.map((topic, idx) => (
                        <Badge key={idx} variant="outline" className="text-xs">
                          {topic}
                        </Badge>
                      ))}
                    </div>
                  </div>
                  <a href={video.url} target="_blank" rel="noopener noreferrer">
                    <Button className="w-full">
                      <Youtube className="w-4 h-4 mr-2" />
                      Watch on YouTube
                    </Button>
                  </a>
                </CardContent>
              </Card>
            ))}
          </div>
        </section>

        {/* Playlist Link */}
        <Card className="mt-12 bg-primary/5 border-primary">
          <CardContent className="pt-6">
            <div className="flex items-center gap-4">
              <Youtube className="w-12 h-12 text-primary flex-shrink-0" />
              <div className="flex-1">
                <h3 className="text-xl font-bold mb-2">Complete Tamil vs AI Playlist</h3>
                <p className="text-muted-foreground mb-4">
                  Watch all 28 videos from Dr. Pillai's Tamil vs AI series on YouTube
                </p>
                <a
                  href="https://youtube.com/playlist?list=PL6GVCfGbZqJxB3F7TiPuwY4Njp52xwvkN"
                  target="_blank"
                  rel="noopener noreferrer"
                >
                  <Button size="lg">
                    <Youtube className="w-5 h-5 mr-2" />
                    View Full Playlist
                  </Button>
                </a>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
