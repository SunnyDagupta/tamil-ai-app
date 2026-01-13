import { useState } from "react";
import { ArrowLeft, Globe, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "Tamil's Global Historical Reach",
    description: "How Tamil civilization shaped the world",
    cards: [
      {
        type: "title",
        title: "Tamil's Global Historical Reach",
        subtitle: "How Tamil civilization shaped the world",
      },
      {
        type: "text",
        content: "Tamil civilization's influence extends far beyond India. For over 2,000 years, Tamil traders, scholars, and spiritual teachers spread their knowledge across the globe.",
      },
      {
        type: "list",
        title: "Southeast Asia",
        items: [
          "Tamil traders established kingdoms in Malaysia, Indonesia, Thailand, and Cambodia",
          "Tamil script influenced Southeast Asian writing systems",
          "Hindu-Buddhist temples built by Tamil architects still stand",
          "Tamil words remain in local languages today",
        ],
      },
      {
        type: "list",
        title: "Middle East & Africa",
        items: [
          "Tamil merchants traded with Rome, Egypt, and Arabia",
          "Roman coins found in Tamil Nadu prove ancient trade routes",
          "Tamil communities established in East Africa centuries ago",
          "Spice trade connected Tamil Nadu to the Mediterranean world",
        ],
      },
      {
        type: "text",
        title: "Why This Matters",
        content: "Understanding Tamil's global influence reveals that this is not a regional tradition but a world heritage. Tamil wisdom belongs to all humanity and has already shaped civilizations worldwide.",
      },
    ],
  },
  {
    id: 2,
    title: "Tamil Solutions for Global Crises",
    description: "Ancient wisdom for modern problems",
    cards: [
      {
        type: "title",
        title: "Tamil Solutions for Global Crises",
        subtitle: "Ancient wisdom for modern problems",
      },
      {
        type: "quote",
        content: "Tamil wisdom is not just for Tamils - it's a gift to humanity that can solve the world's most pressing problems.",
        title: "Dr. Pillai",
      },
      {
        type: "list",
        title: "Climate Crisis → Tamil Ecological Wisdom",
        items: [
          "Pancha Bhutas (Five Elements): Understanding nature's balance",
          "Sustainable Agriculture: Traditional Tamil farming methods",
          "Water Management: Ancient Tamil irrigation systems",
          "Biodiversity: Tamil texts document 1000+ plant species",
        ],
      },
      {
        type: "list",
        title: "AI Ethics → Tamil Moral Philosophy",
        items: [
          "Thirukkural's Ethics: Universal moral principles for technology",
          "Ahimsa (Non-harm): Foundational ethical principle for AI",
          "Dharma: Right action in complex situations",
          "Collective Welfare: Balance of individual and community",
        ],
      },
      {
        type: "list",
        title: "Mental Health Crisis → Tamil Consciousness Practices",
        items: [
          "Meditation Techniques: Proven stress reduction methods",
          "Community Support: Traditional Tamil social structures",
          "Purpose and Meaning: Philosophical frameworks for life",
          "Holistic Health: Integration of body, mind, spirit",
        ],
      },
    ],
  },
  {
    id: 3,
    title: "Your Role in the Movement",
    description: "How you can spread Tamil wisdom",
    cards: [
      {
        type: "title",
        title: "Your Role in the Movement",
        subtitle: "How you can spread Tamil wisdom",
      },
      {
        type: "quote",
        content: "Every person who learns Tamil wisdom becomes a carrier of this knowledge. You are not just a student - you are a torchbearer.",
        title: "Dr. Pillai",
      },
      {
        type: "list",
        title: "Individual Level: Master the Practices",
        items: [
          "Complete all learning pathways in this app",
          "Establish daily Tamil meditation practice",
          "Study Thirukkural systematically",
          "Apply wisdom in your daily decisions",
          "Document your transformation journey",
        ],
      },
      {
        type: "list",
        title: "Community Level: Share the Knowledge",
        items: [
          "Teach family members what you learn",
          "Start a local study group",
          "Share insights on social media",
          "Organize Tamil wisdom events",
          "Connect with other practitioners",
        ],
      },
      {
        type: "list",
        title: "Professional Level: Apply in Your Field",
        items: [
          "Business: Use Tamil ethics and creativity methods",
          "Technology: Build tools that spread Tamil wisdom",
          "Healthcare: Apply Tamil healing principles",
          "Education: Teach Tamil learning methods",
          "Arts: Create works inspired by Tamil culture",
        ],
      },
    ],
  },
  {
    id: 4,
    title: "Preserving Tamil for Future Generations",
    description: "Why Tamil must survive and thrive",
    cards: [
      {
        type: "title",
        title: "Preserving Tamil for Future Generations",
        subtitle: "Why Tamil must survive and thrive",
      },
      {
        type: "text",
        content: "Tamil is one of the world's oldest living languages, with continuous literary tradition spanning over 2,000 years. Its preservation is crucial for humanity.",
      },
      {
        type: "list",
        title: "Why Tamil Must Be Preserved",
        items: [
          "Linguistic Heritage: One of only two classical languages still spoken",
          "Unique Phonetic System: Contains sounds that unlock consciousness",
          "Literary Treasure: Vast library of wisdom texts",
          "Scientific Knowledge: Ancient texts contain advanced concepts",
          "Cultural Identity: Core to 80+ million Tamil speakers worldwide",
        ],
      },
      {
        type: "list",
        title: "Your Role in Preservation",
        items: [
          "Use Tamil Daily: Speak, read, and write in Tamil",
          "Teach the Next Generation: Pass Tamil to children",
          "Create Tamil Content: Write, record, and share in Tamil",
          "Support Tamil Technology: Use and promote Tamil apps",
          "Learn Classical Tamil: Study the ancient literary forms",
        ],
      },
      {
        type: "text",
        title: "The Opportunity",
        content: "Technology now makes it possible to learn Tamil from anywhere in the world. This app is part of a global movement to make Tamil wisdom accessible to everyone.",
      },
    ],
  },
  {
    id: 5,
    title: "The Vision for 2035",
    description: "Tamil wisdom transforming the world",
    cards: [
      {
        type: "title",
        title: "The Vision for 2035",
        subtitle: "Tamil wisdom transforming the world",
      },
      {
        type: "text",
        content: "Dr. Pillai envisions a world where Tamil wisdom is recognized as essential knowledge for human evolution. Here's the roadmap.",
      },
      {
        type: "list",
        title: "Phase 1 - Foundation (2025-2027)",
        items: [
          "100,000 active practitioners worldwide",
          "Tamil AI apps in 10 languages",
          "University courses on Tamil wisdom",
          "Scientific research validating practices",
        ],
      },
      {
        type: "list",
        title: "Phase 2 - Acceleration (2028-2030)",
        items: [
          "1 million practitioners globally",
          "Tamil wisdom integrated in corporate training",
          "Healthcare systems adopting Tamil practices",
          "Educational curricula including Tamil philosophy",
        ],
      },
      {
        type: "list",
        title: "Phase 3 - Transformation (2031-2035)",
        items: [
          "Tamil wisdom recognized as world heritage",
          "Global centers for Tamil consciousness research",
          "Integration with AI for enhanced learning",
          "New generation of Tamil wisdom teachers",
        ],
      },
      {
        type: "text",
        title: "Your Legacy",
        content: "By learning and practicing Tamil wisdom now, you become part of this historic movement. Future generations will look back at this period as the Tamil Renaissance - and you are helping to create it.",
      },
    ],
  },
];

export default function GlobalTamilInfluence() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 6 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="GlobalTamilInfluence"
      />
    );
  }

  return (
    <div className="min-h-screen bg-background pb-20">
      <div className="container max-w-2xl py-6 space-y-6">
        <div className="flex items-center gap-4">
          <Button
            variant="ghost"
            size="icon"
            onClick={() => setLocation("/learn")}
          >
            <ArrowLeft className="h-5 w-5" />
          </Button>
          <div>
            <h1 className="text-2xl font-bold">Global Tamil Influence</h1>
            <p className="text-muted-foreground">
              Tamil wisdom for world transformation
            </p>
          </div>
        </div>

        <Card className="p-6 bg-gradient-to-br from-primary/10 to-purple-500/10">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="font-semibold">Your Progress</h3>
              <p className="text-2xl font-bold mt-1">
                {Math.floor((progress?.completionPercentage || 0) / 100 * lessons.length)} / {lessons.length}
              </p>
              <p className="text-sm text-muted-foreground mt-1">
                Lessons completed
              </p>
            </div>
            <Globe className="h-12 w-12 text-primary opacity-50" />
          </div>
        </Card>

        <div className="space-y-4">
          <h2 className="text-xl font-semibold">Lessons</h2>
          {lessons.map((lesson) => (
            <Card key={lesson.id} className="p-4">
              <div className="flex items-center justify-between">
                <div className="flex-1">
                  <h3 className="font-semibold">{lesson.title}</h3>
                  <p className="text-sm text-muted-foreground mt-1">
                    {lesson.description}
                  </p>
                  <p className="text-xs text-purple-600 mt-2">
                    {lesson.cards.length} cards
                  </p>
                </div>
                <Button
                  onClick={() => setActiveLesson(lesson)}
                  className="bg-gradient-to-r from-purple-500 to-orange-500 hover:from-purple-600 hover:to-orange-600"
                >
                  <Play className="w-4 h-4 mr-2" />
                  Start
                </Button>
              </div>
              <div className="mt-3">
                <MarkCompleteButton 
                  moduleName="GlobalTamilInfluence"
                  lessonId={`lesson-${lesson.id}`}
                />
              </div>
            </Card>
          ))}
        </div>
      </div>
    </div>
  );
}
