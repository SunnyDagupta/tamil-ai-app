import { ArrowLeft, BookOpen, CheckCircle } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { TextToSpeech } from "@/components/TextToSpeech";
import { trpc } from "@/lib/trpc";

const lessons = [
  {
    id: 1,
    title: "Introduction to Thirukkural",
    description: "Discover the 1,330 couplets of complete knowledge",
    content: `Thirukkural, written by the legendary Tamil poet Thiruvalluvar over 2,000 years ago, is one of humanity's greatest literary and philosophical achievements. Comprising 1,330 couplets (kurals), it covers every aspect of human life in just 7,000 words.

The text is divided into three books:
- Aram (Virtue) - 38 chapters on righteous living
- Porul (Wealth) - 70 chapters on politics and economics  
- Inbam (Love) - 25 chapters on love and relationships

Each couplet contains profound wisdom compressed into two lines of seven words each. The beauty of Thirukkural lies in its universal applicability - its teachings transcend time, culture, and religion.`,
    completed: false,
  },
  {
    id: 2,
    title: "The Structure of Wisdom",
    description: "Understanding the three-fold division",
    content: `Thirukkural's structure reflects the Tamil understanding of a complete life:

**Book 1: Aram (Virtue - Chapters 1-38)**
Covers fundamental virtues like compassion, gratitude, self-control, and truthfulness. This section teaches how to live righteously and develop character.

**Book 2: Porul (Wealth - Chapters 39-108)**  
The longest section, covering governance, leadership, agriculture, education, and economic prosperity. It provides practical wisdom for success in worldly affairs.

**Book 3: Inbam (Love - Chapters 109-133)**
Explores romantic love in all its dimensions - from first attraction to union to separation. It celebrates love as the highest human emotion.

This three-fold structure represents the complete human experience: moral foundation, material success, and emotional fulfillment.`,
    completed: false,
  },
  {
    id: 3,
    title: "Decoding the Couplets",
    description: "Learn to extract multiple layers of meaning",
    content: `Each Thirukkural couplet operates on multiple levels:

**Surface Meaning**: The literal interpretation
**Metaphorical Meaning**: Symbolic representations
**Universal Principle**: The timeless wisdom
**Practical Application**: How to apply it today

Example - Kural 1:
"அகர முதல எழுத்தெல்லாம் ஆதி
பகவன் முதற்றே உலகு"

Surface: "A is the first of letters; God is first in the world"
Metaphorical: Just as all words begin with letters, all existence begins with the divine
Universal: Everything has a source and foundation
Application: Acknowledge foundations before building anything new

Practice this four-level analysis with any kural to unlock its complete wisdom.`,
    completed: false,
  },
  {
    id: 4,
    title: "Thirukkural in Modern Life",
    description: "Applying ancient wisdom to contemporary challenges",
    content: `Thirukkural's relevance has only grown in the modern world:

**In Business**: Kurals on leadership, ethics, and decision-making guide entrepreneurs and executives. Many Indian companies use Thirukkural principles in their corporate philosophy.

**In Technology**: The emphasis on knowledge, innovation, and serving humanity aligns perfectly with technology's potential for good.

**In Relationships**: The love chapters provide timeless insights into human connection, applicable to modern dating and marriage.

**In Personal Development**: Kurals on self-control, learning, and character-building offer a complete framework for growth.

**In Global Ethics**: Its universal principles on compassion, justice, and sustainability address today's most pressing challenges.

The key is not to treat Thirukkural as ancient history, but as a living guide for navigating complexity with wisdom.`,
    completed: false,
  },
  {
    id: 5,
    title: "Daily Practice with Thirukkural",
    description: "Integrate wisdom into your routine",
    content: `Transform Thirukkural from knowledge to lived experience:

**Morning Reflection (5 minutes)**
- Read one kural upon waking
- Contemplate its meaning
- Set an intention to apply it today

**Journaling Practice**
- Keep a Thirukkural journal
- Write your interpretation of kurals
- Note real-life applications you observe

**Problem-Solving Tool**
- When facing decisions, search Thirukkural for relevant wisdom
- Use our AI guide to explore how kurals apply to your situation
- Let ancient wisdom inform modern choices

**Teaching Others**
- Share kurals with family and friends
- Discuss interpretations together
- Build a community of wisdom-seekers

**Monthly Deep Dive**
- Choose one chapter (13 kurals) per month
- Study it thoroughly
- Implement its teachings systematically

Regular engagement with Thirukkural rewires your thinking, gradually aligning your actions with timeless principles of wisdom.`,
    completed: false,
  },
];

export default function ThirukkuralMastery() {
  const [, setLocation] = useLocation();
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 2 });

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
            <h1 className="text-2xl font-bold">Thirukkural Mastery</h1>
            <p className="text-muted-foreground">
              Decode 1,330 couplets of complete knowledge
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
            <BookOpen className="h-12 w-12 text-primary opacity-50" />
          </div>
        </Card>

        <div className="space-y-4">
          <h2 className="text-xl font-semibold">Lessons</h2>
          {lessons.map((lesson) => (
            <Card key={lesson.id} className="p-6 space-y-4">
              <div className="flex items-start justify-between">
                <div className="flex-1">
                  <div className="flex items-center gap-2">
                    <h3 className="font-semibold">{lesson.title}</h3>
                    {lesson.completed && (
                      <CheckCircle className="h-4 w-4 text-green-500" />
                    )}
                  </div>
                  <p className="text-sm text-muted-foreground mt-1">
                    {lesson.description}
                  </p>
                </div>
              </div>

              <div className="prose prose-sm max-w-none">
                <div className="whitespace-pre-line">{lesson.content}</div>
              </div>

              <TextToSpeech text={lesson.content} />

              <Button className="w-full">
                {lesson.completed ? "Review Lesson" : "Complete Lesson"}
              </Button>
            </Card>
          ))}
        </div>
      </div>
    </div>
  );
}
