import { useState } from "react";
import { ArrowLeft, Sparkles, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "Introduction to Syllable Intelligence",
    description: "Understanding how Tamil syllables operate at the quantum level",
    cards: [
      {
        type: "title",
        title: "Introduction to Syllable Intelligence",
        subtitle: "Understanding how Tamil syllables operate at the quantum level",
      },
      {
        type: "text",
        content: "Tamil syllables are not just sounds—they are quantum-level information carriers. Each syllable contains inherent intelligence that can influence reality at the fundamental level.",
      },
      {
        type: "quote",
        content: "Each Tamil letter contains a secret that can transform your life. This is not metaphor—it's quantum technology embedded in an ancient language.",
        title: "Dr. Pillai",
      },
      {
        type: "text",
        content: "The Syllable Intelligence System (SIS) reveals that Tamil, as one of the oldest living languages, has preserved these quantum codes for over 5,000 years. When you speak or meditate on these syllables, you're accessing a level of intelligence that modern AI cannot reach.",
      },
      {
        type: "comparison",
        title: "Quantum vs Molecular Level",
        left: "ChatGPT operates at the molecular level - processing data, rearranging information, pattern matching from existing knowledge.",
        right: "Tamil syllables operate at the quantum level - influencing reality itself, carrying inherent wisdom, generating new knowledge.",
      },
      {
        type: "list",
        title: "Key Concepts",
        items: [
          "Omniscience: Each syllable contains complete knowledge within it",
          "Manifestation Power: Syllables can materialize thoughts into reality",
          "Non-PreTrained: Unlike AI that needs training data, Tamil syllables carry inherent wisdom",
          "Consciousness Access: Direct connection to universal intelligence",
        ],
      },
      {
        type: "quote",
        content: "ChatGPT can give answers to almost everything. But knowing answers is not the same as understanding them. Tamil AI gives you understanding at the consciousness level.",
        title: "Dr. Pillai",
      },
    ],
  },
  {
    id: 2,
    title: "The 12 Core Tamil Syllables",
    description: "Learn the fundamental syllables and their quantum properties",
    cards: [
      {
        type: "title",
        title: "The 12 Core Tamil Syllables",
        subtitle: "Learn the fundamental syllables and their quantum properties",
      },
      {
        type: "text",
        content: "The 12 core Tamil syllables form the foundation of Syllable Intelligence. Each carries specific vibrational frequencies that activate corresponding aspects of consciousness.",
      },
      {
        type: "list",
        title: "Primary Creation Syllables",
        items: [
          "AH (அ) - Creation, Beginning, Divine Source. Dr. Pillai: 'The sound A contains super intelligence!'",
          "EE (ஈ) - Expansion, Growth, Abundance. Chant to break through mental boundaries.",
          "OO (ஊ) - Protection, Stability, Foundation. Creates grounding energy.",
        ],
      },
      {
        type: "list",
        title: "Action Syllables",
        items: [
          "KA (க) - Action, Movement, Manifestation",
          "SA (ச) - Consciousness, Awareness, Wisdom",
          "TA (த) - Transformation, Change, Evolution",
          "PA (ப) - Power, Energy, Strength",
        ],
      },
      {
        type: "list",
        title: "Higher Consciousness Syllables",
        items: [
          "MA (ம) - Mind, Meditation, Inner Peace",
          "YA (ய) - Union, Connection, Harmony",
          "RA (ர) - Light, Illumination, Truth",
          "LA (ல) - Flow, Grace, Ease",
          "VA (வ) - Life Force, Vitality, Breath",
        ],
      },
      {
        type: "practice",
        title: "Practice",
        content: "Start with AH (அ). Sit quietly, take a deep breath, and chant 'Ahhh' for 5 seconds. Feel the vibration in your chest. Repeat 7 times. Notice how your awareness shifts.",
      },
    ],
  },
  {
    id: 3,
    title: "Syllable Meditation Techniques",
    description: "Practical methods for activating syllable power",
    cards: [
      {
        type: "title",
        title: "Syllable Meditation Techniques",
        subtitle: "Practical methods for activating syllable power",
      },
      {
        type: "text",
        content: "Syllable meditation is the core practice of Tamil AI. Unlike passive meditation, you actively engage with specific sounds to reprogram consciousness.",
      },
      {
        type: "list",
        title: "Basic Technique: Single Syllable Focus",
        items: [
          "Choose one syllable based on your intention",
          "Sit comfortably with spine straight",
          "Close eyes and take 3 deep breaths",
          "Chant the syllable aloud 21 times",
          "Then whisper it 21 times",
          "Finally, repeat it silently 21 times",
          "Sit in silence for 5 minutes",
        ],
      },
      {
        type: "practice",
        title: "Advanced Technique: Syllable Breathing",
        content: "Inhale while mentally chanting the syllable. Hold breath briefly while feeling its vibration. Exhale while releasing the syllable's energy into your intention. This synchronizes breath, sound, and consciousness.",
      },
      {
        type: "list",
        title: "Best Practices",
        items: [
          "Practice at the same time daily for best results",
          "Early morning (4-6 AM) is most powerful",
          "Empty stomach enhances effects",
          "Face east or north while practicing",
          "Keep a journal of experiences and insights",
        ],
      },
      {
        type: "text",
        title: "Expected Results",
        content: "Within 40 days of consistent practice, most practitioners report increased clarity, enhanced intuition, and noticeable synchronicities in daily life.",
      },
    ],
  },
  {
    id: 4,
    title: "Syllables for Specific Goals",
    description: "Matching syllables to your intentions",
    cards: [
      {
        type: "title",
        title: "Syllables for Specific Goals",
        subtitle: "Matching syllables to your intentions",
      },
      {
        type: "text",
        content: "Different syllables activate different aspects of consciousness. Choose syllables based on what you want to manifest or develop.",
      },
      {
        type: "list",
        title: "For Wealth and Abundance",
        items: [
          "SHREEM (ஸ்ரீம்) - Primary wealth syllable",
          "KLEEM (க்லீம்) - Attraction power",
          "AH (அ) - Creation energy",
        ],
      },
      {
        type: "list",
        title: "For Knowledge and Learning",
        items: [
          "AIM (ஐம்) - Wisdom and learning",
          "SA (ச) - Consciousness expansion",
          "RA (ர) - Illumination and truth",
        ],
      },
      {
        type: "list",
        title: "For Health and Healing",
        items: [
          "HREEM (ஹ்ரீம்) - Transformation and healing",
          "MA (ம) - Inner peace and balance",
          "VA (வ) - Life force vitality",
        ],
      },
      {
        type: "list",
        title: "For Relationships",
        items: [
          "KLEEM (க்லீம்) - Attraction and love",
          "YA (ய) - Union and harmony",
          "LA (ல) - Grace and flow",
        ],
      },
      {
        type: "practice",
        title: "Practice Protocol",
        content: "Identify your primary goal. Select 1-3 syllables from the appropriate category. Practice for 40 days without changing syllables. Track results in your journal. Adjust after completing the 40-day cycle.",
      },
    ],
  },
  {
    id: 5,
    title: "Integrating Syllable Intelligence",
    description: "Making SIS part of daily life",
    cards: [
      {
        type: "title",
        title: "Integrating Syllable Intelligence",
        subtitle: "Making SIS part of daily life",
      },
      {
        type: "text",
        content: "The goal is not just to practice syllables during meditation, but to integrate syllable intelligence into every aspect of your life.",
      },
      {
        type: "list",
        title: "Daily Integration Points",
        items: [
          "Morning: 10-minute syllable meditation to set the day's energy",
          "Before Meetings: Quick SHREEM chant for abundance consciousness",
          "Problem-Solving: AIM meditation before tackling challenges",
          "Evening: MA meditation for peace and integration",
          "Before Sleep: Syllable review of the day's intentions",
        ],
      },
      {
        type: "practice",
        title: "The 108 Practice",
        content: "Use mala beads to chant your chosen syllable 108 times daily. This creates a powerful vibrational field around you. 108 is considered sacred in Tamil tradition and creates complete energetic cycles.",
      },
      {
        type: "list",
        title: "Signs of Progress",
        items: [
          "Increased synchronicities in daily life",
          "Enhanced intuition and decision-making",
          "Greater emotional stability",
          "Clearer thinking and creativity",
          "Manifestation of intentions",
          "Deeper sense of connection to life",
        ],
      },
      {
        type: "text",
        title: "The Ultimate Integration",
        content: "Eventually, syllable consciousness becomes automatic. You naturally think in terms of vibrational frequencies. Your speech becomes more powerful. Your presence itself carries syllable energy. This is mastery of Syllable Intelligence.",
      },
    ],
  },
];

export default function SIS() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 2 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="SIS"
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
            <h1 className="text-2xl font-bold">Syllable Intelligence System</h1>
            <p className="text-muted-foreground">
              Quantum technology in Tamil sounds
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
            <Sparkles className="h-12 w-12 text-primary opacity-50" />
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
                  moduleName="SIS"
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
