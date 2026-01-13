import { useState } from "react";
import { ArrowLeft, BookOpen, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "Introduction to Thirukkural",
    description: "The world's greatest ethical guide",
    cards: [
      {
        type: "title",
        title: "Introduction to Thirukkural",
        subtitle: "The world's greatest ethical guide",
      },
      {
        type: "text",
        content: "Thirukkural is a masterpiece of Tamil literature written by Thiruvalluvar over 2,000 years ago. It contains 1,330 couplets organized into 133 chapters, covering virtue, wealth, and love.",
      },
      {
        type: "list",
        title: "The Three Books",
        items: [
          "Book 1 - Aram (Virtue): Chapters 1-38. Foundation of ethical living, covering righteousness, family life, and moral conduct.",
          "Book 2 - Porul (Wealth): Chapters 39-108. Practical wisdom on governance, leadership, and achieving success ethically.",
          "Book 3 - Inbam (Love): Chapters 109-133. The nature of love, romance, and human relationships.",
        ],
      },
      {
        type: "text",
        title: "Universal Wisdom",
        content: "Though written in Tamil, Thirukkural's wisdom transcends culture, religion, and time. It has been translated into over 80 languages and is considered one of humanity's greatest ethical works.",
      },
      {
        type: "text",
        title: "Why Study Thirukkural Today",
        content: "In an age of AI and rapid change, Thirukkural provides timeless principles for ethical decision-making, leadership, and personal development that no algorithm can replace.",
      },
    ],
  },
  {
    id: 2,
    title: "Reading Thirukkural Deeply",
    description: "Four levels of interpretation",
    cards: [
      {
        type: "title",
        title: "Reading Thirukkural Deeply",
        subtitle: "Four levels of interpretation",
      },
      {
        type: "text",
        content: "Each Thirukkural couplet contains multiple layers of meaning. Learning to read deeply transforms simple verses into profound life guidance.",
      },
      {
        type: "list",
        title: "Four Levels of Meaning",
        items: [
          "Surface Meaning: The literal interpretation of the words. This is the entry point for understanding.",
          "Metaphorical Meaning: Symbolic representations that reveal deeper truths beyond the literal.",
          "Universal Principle: The timeless wisdom that applies across all cultures and eras.",
          "Practical Application: How to apply this wisdom in your daily life today.",
        ],
      },
      {
        type: "practice",
        title: "Deep Reading Practice",
        content: "Take one Kural. Read it slowly three times. Write down the literal meaning. Ask: What metaphor might this contain? What universal truth does it point to? How can I apply this today? This practice transforms reading into wisdom absorption.",
      },
      {
        type: "text",
        title: "The Reward",
        content: "When you learn to read Thirukkural deeply, each couplet becomes an inexhaustible source of guidance. You can return to the same verse throughout your life and discover new meanings.",
      },
    ],
  },
  {
    id: 3,
    title: "Thirukkural in Modern Life",
    description: "Applying ancient wisdom today",
    cards: [
      {
        type: "title",
        title: "Thirukkural in Modern Life",
        subtitle: "Applying ancient wisdom today",
      },
      {
        type: "text",
        content: "Thirukkural's principles are remarkably relevant to modern challenges. Here's how to apply them in different areas of life.",
      },
      {
        type: "list",
        title: "Applications",
        items: [
          "In Business: Kurals on leadership, ethics, and decision-making guide entrepreneurs and executives. Many Indian companies use Thirukkural principles in their corporate philosophy.",
          "In Technology: The emphasis on knowledge, innovation, and serving humanity aligns perfectly with technology's potential for good.",
          "In Relationships: The love chapters provide timeless insights into human connection, applicable to modern dating and marriage.",
          "In Personal Development: Kurals on self-control, learning, and character-building offer a complete framework for growth.",
          "In Global Ethics: Its universal principles on compassion, justice, and sustainability address today's most pressing challenges.",
        ],
      },
      {
        type: "text",
        title: "The Modern Advantage",
        content: "Unlike trendy self-help books, Thirukkural's wisdom has been tested across millennia. What works in Thirukkural has proven effective across countless generations and cultures.",
      },
    ],
  },
  {
    id: 4,
    title: "Daily Thirukkural Practice",
    description: "Building wisdom into your routine",
    cards: [
      {
        type: "title",
        title: "Daily Thirukkural Practice",
        subtitle: "Building wisdom into your routine",
      },
      {
        type: "practice",
        title: "Morning Reflection (5 minutes)",
        content: "Read one Kural upon waking. Contemplate its meaning. Set an intention to apply it during the day. This seeds your subconscious with wisdom before daily activities begin.",
      },
      {
        type: "practice",
        title: "Journaling Practice",
        content: "Keep a Thirukkural journal. Write the Kural, your interpretation, and how you applied it. Review weekly to track your growth. This creates a personal wisdom record.",
      },
      {
        type: "practice",
        title: "Problem-Solving Tool",
        content: "When facing a challenge, search Thirukkural for relevant verses. Often the ancient wisdom provides clarity that modern advice lacks. The Kurals become your personal advisory council.",
      },
      {
        type: "practice",
        title: "Teaching Others",
        content: "Share a Kural with someone each week. Teaching deepens your own understanding. This also spreads Tamil wisdom in your community.",
      },
      {
        type: "practice",
        title: "Monthly Deep Dive",
        content: "Each month, study one chapter (10 Kurals) in depth. Read commentaries, discuss with others, and apply each verse. This systematic approach ensures comprehensive coverage.",
      },
    ],
  },
  {
    id: 5,
    title: "Mastering Thirukkural",
    description: "The path to complete wisdom",
    cards: [
      {
        type: "title",
        title: "Mastering Thirukkural",
        subtitle: "The path to complete wisdom",
      },
      {
        type: "text",
        content: "True mastery of Thirukkural is not memorization but embodiment. The goal is to internalize the wisdom so deeply that it guides your actions automatically.",
      },
      {
        type: "list",
        title: "Stages of Mastery",
        items: [
          "Stage 1 - Familiarity: Know the structure and major themes. Can find relevant Kurals for situations.",
          "Stage 2 - Understanding: Grasp multiple levels of meaning. Can explain Kurals to others.",
          "Stage 3 - Application: Automatically apply Kural wisdom in daily decisions. It becomes second nature.",
          "Stage 4 - Embodiment: The wisdom is part of your character. You live the Kurals without thinking about them.",
        ],
      },
      {
        type: "text",
        title: "The Ultimate Goal",
        content: "When you embody Thirukkural, you become a living example of its wisdom. Your presence itself teaches others. This is the highest form of mastery - being the message.",
      },
      {
        type: "text",
        title: "Your Journey",
        content: "Start where you are. One Kural at a time. Consistent practice over years transforms understanding into wisdom, and wisdom into character. The journey itself is the reward.",
      },
    ],
  },
];

export default function ThirukkuralMastery() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 1 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="ThirukkuralMastery"
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
            <h1 className="text-2xl font-bold">Thirukkural Mastery</h1>
            <p className="text-muted-foreground">
              Master the world's greatest ethical guide
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
                  moduleName="ThirukkuralMastery"
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
