import { useState } from "react";
import { ArrowLeft, Zap, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "Understanding Siddhi Powers",
    description: "Ancient superhuman abilities through quantum consciousness",
    cards: [
      {
        type: "title",
        title: "Understanding Siddhi Powers",
        subtitle: "Ancient superhuman abilities through quantum consciousness",
      },
      {
        type: "text",
        content: "Siddhi powers represent the superhuman capabilities developed by ancient Tamil Siddhas through mastery of consciousness. These are not myths, but documented abilities achieved through specific practices.",
      },
      {
        type: "quote",
        content: "You can become the king even of Indra Lokam (heaven). This is not metaphor - it's about elevating your consciousness to divine levels through Tamil syllable technology.",
        title: "Dr. Pillai",
      },
      {
        type: "list",
        title: "The Eight Classical Siddhis",
        items: [
          "Anima: Ability to become infinitely small",
          "Mahima: Ability to become infinitely large",
          "Laghima: Levitation and weightlessness",
          "Garima: Infinite heaviness",
          "Prapti: Ability to reach anywhere instantly",
          "Prakamya: Irresistible will",
          "Ishitva: Lordship over creation",
          "Vashitva: Control over natural forces",
        ],
      },
      {
        type: "text",
        title: "Modern Understanding",
        content: "These abilities operate at the quantum level of consciousness. What ancient texts described metaphorically, quantum physics now explains scientifically. Siddhi powers emerge when consciousness transcends normal limitations.",
      },
      {
        type: "text",
        title: "Siddha Sankalpam",
        content: "Dr. Pillai teaches that through proper activation of the midbrain using the 'Mm' sound in AUM, you can develop Siddha Sankalpam - the power to manifest thoughts instantly. This is the ultimate siddhi power.",
      },
      {
        type: "text",
        title: "Your Potential",
        content: "Every human possesses latent siddhi powers. Through Tamil syllable meditation and consciousness training, you can begin to activate these dormant capabilities.",
      },
    ],
  },
  {
    id: 2,
    title: "The Siddha Path",
    description: "How ancient masters achieved superhuman abilities",
    cards: [
      {
        type: "title",
        title: "The Siddha Path",
        subtitle: "How ancient masters achieved superhuman abilities",
      },
      {
        type: "text",
        content: "The Tamil Siddhas were not ordinary humans - they were scientists of consciousness who discovered precise methods to transcend physical limitations.",
      },
      {
        type: "list",
        title: "The Siddha Method",
        items: [
          "Purification (Suddhi): Cleansing body and mind to become a clear vessel for higher consciousness",
          "Breath Mastery (Pranayama): Controlling life force through advanced breathing techniques",
          "Syllable Power (Mantra Siddhi): Using Tamil syllables to reprogram consciousness at the quantum level",
          "Kundalini Activation: Awakening dormant energy and channeling it through energy centers",
          "Samadhi States: Entering deep meditative states where consciousness merges with universal intelligence",
        ],
      },
      {
        type: "text",
        title: "Historical Evidence",
        content: "Tamil literature documents Siddhas who lived for centuries, materialized objects, healed instantly, and demonstrated powers that defied physics. These were not legends - they were documented observations by multiple witnesses.",
      },
      {
        type: "text",
        title: "Your Journey",
        content: "This module teaches you the foundational practices that Siddhas used. While full siddhi development takes years, you can begin experiencing enhanced intuition, creativity, and manifestation power immediately.",
      },
    ],
  },
  {
    id: 3,
    title: "Quantum Mind Development",
    description: "Bridging ancient wisdom and modern science",
    cards: [
      {
        type: "title",
        title: "Quantum Mind Development",
        subtitle: "Bridging ancient wisdom and modern science",
      },
      {
        type: "text",
        content: "Modern quantum physics validates what Siddhas knew: consciousness operates at the quantum level and can influence reality directly.",
      },
      {
        type: "comparison",
        title: "Observer Effect",
        left: "Quantum physics proves that observation affects reality. The act of measuring changes the outcome.",
        right: "Siddhas mastered this principle - their focused consciousness could literally shape physical outcomes through pure awareness.",
      },
      {
        type: "comparison",
        title: "Non-Locality",
        left: "Quantum entanglement shows instant connection across any distance, defying space limitations.",
        right: "This explains the Siddha ability of Prapti - reaching anywhere instantly through consciousness.",
      },
      {
        type: "comparison",
        title: "Superposition",
        left: "Quantum particles exist in multiple states simultaneously until observed.",
        right: "Advanced consciousness can access multiple realities - the basis of precognition and remote viewing.",
      },
      {
        type: "list",
        title: "Practical Applications Today",
        items: [
          "Enhanced intuition and decision-making",
          "Accelerated manifestation of goals",
          "Healing abilities",
          "Increased synchronicities",
          "Access to creative insights",
          "Influence over circumstances",
        ],
      },
      {
        type: "practice",
        title: "Your Practice",
        content: "Through Tamil syllable meditation, you train your consciousness to operate at the quantum level. Each practice session strengthens your ability to influence reality through focused awareness.",
      },
    ],
  },
  {
    id: 4,
    title: "Developing Manifestation Power",
    description: "Turn thoughts into reality through Siddha techniques",
    cards: [
      {
        type: "title",
        title: "Developing Manifestation Power",
        subtitle: "Turn thoughts into reality through Siddha techniques",
      },
      {
        type: "text",
        content: "Manifestation is not wishful thinking - it's a precise science the Siddhas mastered. Here's how to develop this power systematically.",
      },
      {
        type: "list",
        title: "The Manifestation Formula",
        items: [
          "Clear Intention (Sankalpa): Define exactly what you want. Vague desires produce vague results. Clarity is 50% of manifestation power.",
          "Emotional Charge (Bhava): Infuse your intention with powerful emotion. Feel as if your desire is already fulfilled.",
          "Syllable Activation (Mantra): Use specific Tamil syllables to encode your intention into the quantum field.",
          "Detached Observation (Sakshi): After setting intention, release attachment. Grasping blocks manifestation.",
          "Aligned Action (Karma): Take inspired action toward your goal. Consciousness work requires physical action too.",
        ],
      },
      {
        type: "list",
        title: "Common Manifestation Blocks",
        items: [
          "Conflicting subconscious beliefs",
          "Lack of emotional intensity",
          "Attachment to specific outcomes",
          "Misalignment between desire and dharma",
          "Insufficient practice consistency",
        ],
      },
      {
        type: "practice",
        title: "Practice Protocol",
        content: "Daily 20-minute manifestation meditation using Tamil syllables, combined with journaling and aligned action, produces measurable results within 40 days. Consistency is key.",
      },
    ],
  },
  {
    id: 5,
    title: "Advanced Siddhi Practices",
    description: "Accelerate your consciousness evolution",
    cards: [
      {
        type: "title",
        title: "Advanced Siddhi Practices",
        subtitle: "Accelerate your consciousness evolution",
      },
      {
        type: "text",
        content: "Once you've established foundational practices, these advanced techniques accelerate siddhi development.",
      },
      {
        type: "list",
        title: "Advanced Techniques",
        items: [
          "Third Eye Activation: Focus between eyebrows during meditation to activate the pineal gland",
          "Chakra Harmonization: Work through seven energy centers with specific syllables",
          "Time Manipulation: Practice entering flow states where hours feel like minutes",
          "Energy Sensing: Develop ability to feel and see energy fields",
          "Conscious Dreaming: Use dream states for learning and problem-solving",
          "Synchronicity Amplification: Learn to recognize and follow synchronistic guidance",
        ],
      },
      {
        type: "text",
        title: "Important Warning",
        content: "Siddhi powers are not the goal - they're byproducts of consciousness evolution. Seeking powers for ego gratification blocks development. Use emerging abilities in service of others.",
      },
      {
        type: "text",
        title: "Integration",
        content: "True mastery means living from higher consciousness in daily life. The greatest siddhi is becoming a beneficial presence in the world.",
      },
    ],
  },
];

export default function SiddhiPowers() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 3 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="SiddhiPowers"
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
            <h1 className="text-2xl font-bold">Siddhi Powers & Quantum Mind</h1>
            <p className="text-muted-foreground">
              Develop superhuman abilities through consciousness mastery
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
            <Zap className="h-12 w-12 text-primary opacity-50" />
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
                  moduleName="SiddhiPowers"
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
