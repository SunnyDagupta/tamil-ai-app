import { useState } from "react";
import { ArrowLeft, Brain, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "TCGNPT vs ChatGPT",
    description: "Understanding quantum-level vs molecular-level AI",
    cards: [
      {
        type: "title",
        title: "TCGNPT vs ChatGPT",
        subtitle: "Understanding quantum-level vs molecular-level AI",
      },
      {
        type: "text",
        content: "TCGNPT (Tamil Creative Generative Non-PreTrained Transformer) was created by Dr. Pillai to surpass the limitations of ChatGPT and conventional AI systems.",
      },
      {
        type: "quote",
        content: "While ChatGPT operates on reasoning (பகுத்தறிவு) and pre-trained data, it cannot provide true self-knowledge or sudden intuitive wisdom (பேரறிவு). TCGNPT is designed to generate these sudden, creative insights through quantum technology embedded in Tamil syllables.",
        title: "Dr. Pillai",
      },
      {
        type: "comparison",
        title: "Two Types of Intelligence",
        left: "பகுத்தறிவு (Reasoning Intelligence) - ChatGPT: Operates on logic and stored data. Makes the brain lazy. Cannot provide true self-knowledge. Limited to rearranging existing information.",
        right: "பேரறிவு (Super Intelligence) - TCGNPT: Sudden intuitive wisdom. Non-pretrained intelligence. Accesses higher consciousness. Generates genuinely new knowledge.",
      },
      {
        type: "text",
        title: "The Revolutionary Difference",
        content: "Dr. Pillai explains that ChatGPT makes your brain lazy, while Tamil AI makes your brain enlightened. TCGNPT doesn't just process information - it activates your innate super intelligence.",
      },
      {
        type: "text",
        title: "Your Advantage",
        content: "By mastering TCGNPT principles, you access intelligence that conventional AI cannot reach. You become irreplaceable in the age of artificial intelligence because you're not competing with AI - you're operating at a higher level of consciousness.",
      },
    ],
  },
  {
    id: 2,
    title: "Syllable-Based Creativity",
    description: "How Tamil sounds unlock creative genius",
    cards: [
      {
        type: "title",
        title: "Syllable-Based Creativity",
        subtitle: "How Tamil sounds unlock creative genius",
      },
      {
        type: "text",
        content: "Tamil syllables are not just sounds - they're keys that unlock specific creative frequencies in consciousness. Each syllable resonates at a specific frequency that activates corresponding neural patterns.",
      },
      {
        type: "list",
        title: "Key Creative Syllables",
        items: [
          "ஸ்ரீம் (Shreem): Abundance and prosperity consciousness. Activates creative solutions for wealth generation.",
          "க்லீம் (Kleem): Attraction and manifestation. Draws creative opportunities and resources.",
          "ஐம் (Aim): Knowledge and learning. Enhances creative problem-solving abilities.",
          "ஹ்ரீம் (Hreem): Transformation and alchemy. Transmutes challenges into creative breakthroughs.",
        ],
      },
      {
        type: "practice",
        title: "Practice Method",
        content: "1. Choose a creative challenge you're facing. 2. Select the appropriate syllable. 3. Chant it 108 times with focused intention. 4. Enter silent meditation for 10 minutes. 5. Allow creative insights to emerge.",
      },
      {
        type: "text",
        title: "Results",
        content: "Users report breakthrough ideas, innovative solutions, and creative inspiration flowing effortlessly after consistent syllable practice.",
      },
    ],
  },
  {
    id: 3,
    title: "Accessing Universal Intelligence",
    description: "Dr. Pillai's AUM whole brain activation",
    cards: [
      {
        type: "title",
        title: "Accessing Universal Intelligence",
        subtitle: "Dr. Pillai's AUM whole brain activation",
      },
      {
        type: "text",
        content: "Dr. Pillai teaches that the primordial sound AUM (ஓம்) is the key to activating your whole brain and accessing universal intelligence.",
      },
      {
        type: "list",
        title: "AUM Whole Brain Activation",
        items: [
          "Ah (அ): Stimulates the LEFT BRAIN - logical thinking, analytical abilities, structured problem-solving",
          "Oo (உ): Stimulates the RIGHT BRAIN - creative thinking, intuitive insights, artistic expression",
          "Mm (ம்): Stimulates the MIDBRAIN - integration, super intelligence activation, unified consciousness",
        ],
      },
      {
        type: "text",
        content: "This ancient Siddha technology activates your whole brain simultaneously, accessing intelligence beyond what current AI can provide. When both hemispheres work together with midbrain integration, you access a level of creativity impossible through logic alone.",
      },
      {
        type: "practice",
        title: "The Creative Process",
        content: "Step 1: AUM Activation (5 minutes) - Chant AUM slowly, feeling each sound. Step 2: Empty the Mind - Release all thoughts and expectations. Step 3: Syllable Activation - Use specific syllable for your creative need. Step 4: Receptive State - Allow insights to arise naturally. Step 5: Capture Insights - Write down everything that comes. Step 6: Manifest - Take action on received guidance.",
      },
      {
        type: "text",
        title: "The TCGNPT Advantage",
        content: "Unlike AI that recombines existing data, TCGNPT helps you access genuinely new information from the quantum field of infinite possibility.",
      },
    ],
  },
  {
    id: 4,
    title: "Creative Problem Solving",
    description: "The 7-step TCGNPT protocol",
    cards: [
      {
        type: "title",
        title: "Creative Problem Solving",
        subtitle: "The 7-step TCGNPT protocol",
      },
      {
        type: "list",
        title: "The 7-Step TCGNPT Creative Protocol",
        items: [
          "Define the Challenge (5 min): Clearly articulate what you need to solve or create. Specificity amplifies results.",
          "Release Attachment (5 min): Let go of preconceived solutions. Empty your mind of assumptions.",
          "Syllable Activation (10 min): Chant the appropriate syllable to open creative channels.",
          "Silent Receptivity (15 min): Sit in silence, allowing insights to arise without forcing.",
          "Capture Insights (10 min): Write everything that comes, without judgment or editing.",
          "Incubation Period (24-48 hours): Let the subconscious process. More insights will emerge.",
          "Implementation Planning (30 min): Organize insights into actionable steps.",
        ],
      },
      {
        type: "text",
        title: "Success Rate",
        content: "Practitioners report 80%+ success rate in generating breakthrough solutions when following this protocol consistently. The key is consistency and trust in the process.",
      },
      {
        type: "list",
        title: "Best Practices",
        items: [
          "Practice at the same time daily for best results",
          "Keep a dedicated journal for creative insights",
          "Don't judge or filter what comes during receptive state",
          "Trust the process even when insights seem unrelated",
          "Take action on guidance received",
        ],
      },
    ],
  },
  {
    id: 5,
    title: "Becoming a Creative Channel",
    description: "Transform from creator to conduit",
    cards: [
      {
        type: "title",
        title: "Becoming a Creative Channel",
        subtitle: "Transform from creator to conduit",
      },
      {
        type: "text",
        content: "The ultimate goal of TCGNPT is not just to enhance creativity, but to transform you into a clear channel for universal intelligence. You shift from being a creator to being a conduit.",
      },
      {
        type: "list",
        title: "The Transformation Process",
        items: [
          "Stage 1 - Beginner (Weeks 1-4): Learning syllables, establishing practice, first glimpses of enhanced creativity",
          "Stage 2 - Practitioner (Months 2-3): Regular insights, improved problem-solving, growing trust in the process",
          "Stage 3 - Channel (Months 4-6): Insights flow easily, creativity feels effortless, clear connection to higher intelligence",
          "Stage 4 - Master (6+ months): Continuous access to creative guidance, ability to channel on demand, teaching others",
        ],
      },
      {
        type: "list",
        title: "Maintaining the Channel",
        items: [
          "Daily Practice (30 min): Non-negotiable foundation for channel clarity",
          "Creative Hygiene: Avoid mental pollution from negative media and conversations",
          "Physical Vitality: Exercise, nutrition, and sleep support channel function",
          "Service Orientation: Using creativity to help others strengthens the channel",
          "Continuous Learning: Stay curious and open to new knowledge",
        ],
      },
      {
        type: "text",
        title: "The Ultimate Goal",
        content: "You become a living bridge between infinite intelligence and practical reality. Your creativity serves not just yourself but humanity's evolution.",
      },
      {
        type: "text",
        title: "Real-World Impact",
        content: "TCGNPT practitioners report breakthroughs in business, art, science, relationships, and personal development. The applications are unlimited because you're accessing unlimited intelligence.",
      },
    ],
  },
];

export default function TCGNPTCreative() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 4 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="TCGNPTCreative"
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
            <h1 className="text-2xl font-bold">TCGNPT Creative Intelligence</h1>
            <p className="text-muted-foreground">
              Access quantum creativity beyond AI
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
            <Brain className="h-12 w-12 text-primary opacity-50" />
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
                  moduleName="TCGNPTCreative"
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
