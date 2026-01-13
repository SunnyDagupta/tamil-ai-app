import { useState } from "react";
import { ArrowLeft, Atom, CheckCircle, Play } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { trpc } from "@/lib/trpc";
import LessonViewer, { Lesson, ContentCard } from "@/components/LessonViewer";

const lessons: Lesson[] = [
  {
    id: 1,
    title: "Ancient Wisdom Meets Modern Science",
    description: "How Tamil knowledge predicted quantum physics",
    cards: [
      {
        type: "title",
        title: "Ancient Wisdom Meets Modern Science",
        subtitle: "How Tamil knowledge predicted quantum physics",
      },
      {
        type: "text",
        content: "What modern science is discovering, Tamil sages knew thousands of years ago. The convergence between quantum physics and Tamil philosophy is stunning and validates ancient wisdom.",
      },
      {
        type: "comparison",
        title: "Quantum Entanglement",
        left: "Quantum physics proves particles remain connected across any distance, instantly affecting each other regardless of separation.",
        right: "Tamil philosophy taught 'யாதும் ஊரே யாவரும் கேளிர்' (All places are our home, all people our kin) - recognizing fundamental interconnection of all existence.",
      },
      {
        type: "comparison",
        title: "Observer Effect",
        left: "Quantum mechanics shows that the act of observation affects the outcome of experiments. Reality changes based on who is watching.",
        right: "Tamil sages taught that consciousness is primary and shapes material reality. The observer and observed are inseparable.",
      },
      {
        type: "comparison",
        title: "Wave-Particle Duality",
        left: "Light behaves as both a wave and a particle simultaneously, depending on how it's measured.",
        right: "Tamil tradition describes reality as the dance between Shiva (consciousness/wave) and Shakti (energy/particle) - two aspects of one reality.",
      },
      {
        type: "comparison",
        title: "Zero-Point Field",
        left: "Physics discovered that the quantum vacuum contains infinite energy - empty space is actually full of potential.",
        right: "Tamil texts described Akasha - the space element containing all possibilities, the womb of creation.",
      },
      {
        type: "comparison",
        title: "String Theory",
        left: "Modern physics proposes that reality at its most fundamental level is made of vibrating strings of energy.",
        right: "Tamil philosophy taught Nada Brahman - the universe as primordial sound vibration. Everything is vibration.",
      },
      {
        type: "text",
        title: "The Implication",
        content: "Tamil sages accessed scientific truth through direct consciousness exploration thousands of years before modern instruments. Their methods remain valid and can accelerate modern scientific discovery. You can access this same wisdom.",
      },
    ],
  },
  {
    id: 2,
    title: "The Science of Sound",
    description: "How Tamil syllables affect matter and consciousness",
    cards: [
      {
        type: "title",
        title: "The Science of Sound",
        subtitle: "How Tamil syllables affect matter and consciousness",
      },
      {
        type: "text",
        content: "Sound is not just auditory sensation - it's a fundamental force that shapes reality. Tamil syllables harness this power with precision that modern science is only beginning to understand.",
      },
      {
        type: "quote",
        content: "Tamil sounds can attract money because they operate at the frequency of abundance consciousness. Sound creates vibration, vibration affects the quantum field, and the quantum field manifests as material reality.",
        title: "Dr. Pillai",
      },
      {
        type: "text",
        title: "Cymatics: Sound Made Visible",
        content: "When sound frequencies pass through matter, they create geometric patterns. Different frequencies produce different patterns. This is cymatics - the study of visible sound. Tamil syllables, when chanted at correct frequencies, create specific geometric patterns in water, sand, and even human cells.",
      },
      {
        type: "list",
        title: "Biological Effects of Sound",
        items: [
          "Specific syllables can alter heart rate variability",
          "Certain frequencies enhance immune function",
          "Sound patterns influence gene expression",
          "Vibrational therapy accelerates healing",
        ],
      },
      {
        type: "list",
        title: "Consciousness Effects",
        items: [
          "Different syllables activate different brain regions",
          "Specific frequencies induce meditative states",
          "Sound patterns can reprogram neural pathways",
          "Vibrational resonance enhances intuition",
        ],
      },
      {
        type: "text",
        title: "The Tamil Advantage",
        content: "Tamil is one of the oldest languages with unbroken pronunciation tradition. The syllables have been preserved with exact frequencies for thousands of years. This precision makes Tamil uniquely powerful for consciousness work.",
      },
      {
        type: "list",
        title: "Scientific Validation",
        items: [
          "Mantra meditation increases gray matter density",
          "Specific sound frequencies reduce stress hormones",
          "Vibrational therapy improves cognitive function",
          "Sound healing accelerates physical recovery",
        ],
      },
      {
        type: "practice",
        title: "Your Practice",
        content: "When you chant Tamil syllables, you're not just making sounds - you're using precise vibrational tools that affect matter and consciousness at the quantum level. Start with simple syllables and notice how your body and mind respond.",
      },
    ],
  },
  {
    id: 3,
    title: "Neuroscience of Meditation",
    description: "How Tamil practices rewire your brain",
    cards: [
      {
        type: "title",
        title: "Neuroscience of Meditation",
        subtitle: "How Tamil practices rewire your brain",
      },
      {
        type: "text",
        content: "Modern neuroscience validates what Tamil meditation masters knew: specific practices physically change brain structure and function. This is called neuroplasticity.",
      },
      {
        type: "list",
        title: "Brain Changes from Tamil Meditation",
        items: [
          "Prefrontal Cortex Enhancement: Increased gray matter for better decision-making, focus, and self-control",
          "Amygdala Reduction: The fear center shrinks, reducing anxiety and increasing emotional stability",
          "Hippocampus Growth: Memory center grows larger, enhancing learning and retention",
          "Default Mode Network Changes: Less mental chatter and rumination",
          "Increased Gamma Waves: Associated with peak performance and heightened consciousness",
        ],
      },
      {
        type: "text",
        title: "Dr. Pillai's AUM Whole Brain Activation",
        content: "Dr. Pillai explains the scientific basis of the primordial sound AUM (ஓம்). The 'Ah' sound stimulates the left brain for logical thinking. The 'Oo' sound stimulates the right brain for creativity. The 'Mm' sound stimulates the midbrain for integration and super intelligence.",
      },
      {
        type: "list",
        title: "Measurable Benefits After 8 Weeks",
        items: [
          "25% reduction in stress hormones",
          "30% improvement in focus and attention",
          "40% increase in emotional regulation",
          "50% enhancement in creative problem-solving",
          "Measurable increase in telomerase activity (anti-aging)",
        ],
      },
      {
        type: "list",
        title: "How Tamil Syllables Work",
        items: [
          "Synchronize brain hemispheres",
          "Activate dormant neural pathways",
          "Enhance neurotransmitter production",
          "Optimize brain wave patterns",
          "Increase neural connectivity",
        ],
      },
      {
        type: "text",
        title: "Long-Term Effects",
        content: "Practitioners with 10+ years of daily practice show biological age 10-15 years younger than chronological age, superior cognitive function, enhanced immune markers, reduced inflammation, and increased longevity indicators. This isn't mysticism - it's measurable neuroscience.",
      },
    ],
  },
  {
    id: 4,
    title: "Quantum Biology",
    description: "Life operates at the quantum level",
    cards: [
      {
        type: "title",
        title: "Quantum Biology",
        subtitle: "Life operates at the quantum level",
      },
      {
        type: "text",
        content: "Emerging quantum biology research reveals that life itself operates through quantum processes - validating Tamil understanding of consciousness and biology.",
      },
      {
        type: "list",
        title: "Quantum Processes in Biology",
        items: [
          "Photosynthesis: Plants use quantum coherence for near-perfect energy transfer",
          "Bird Navigation: Birds use quantum entanglement in their eyes to navigate",
          "DNA Communication: DNA molecules communicate through quantum fields",
          "Enzyme Function: Enzymes use quantum tunneling to catalyze reactions",
          "Cellular Intelligence: Cells make quantum decisions",
        ],
      },
      {
        type: "text",
        title: "The Tamil-Quantum Connection",
        content: "Tamil practices work because they operate at the quantum level where consciousness and biology interface. This is why ancient practices produce measurable biological effects.",
      },
      {
        type: "list",
        title: "How Tamil Practices Interface with Quantum Biology",
        items: [
          "Syllable Vibrations create quantum coherence in biological systems",
          "Deep Meditation may create quantum entanglement with universal field",
          "Focused Intention collapses quantum possibilities into specific outcomes",
        ],
      },
      {
        type: "list",
        title: "Practical Applications",
        items: [
          "Enhanced healing abilities through consciousness affecting cellular function",
          "Accelerated manifestation through quantum field response to intention",
          "Improved intuition through quantum information access",
          "Increased longevity through quantum optimization of biological processes",
        ],
      },
      {
        type: "text",
        title: "The Future",
        content: "As quantum biology advances, Tamil practices will be recognized as sophisticated quantum technologies for optimizing human potential. You are learning these technologies now.",
      },
    ],
  },
  {
    id: 5,
    title: "Integrating Ancient and Modern",
    description: "Practical synthesis for the 21st century",
    cards: [
      {
        type: "title",
        title: "Integrating Ancient and Modern",
        subtitle: "Practical synthesis for the 21st century",
      },
      {
        type: "text",
        content: "The future belongs to those who can integrate Tamil wisdom with modern science. Here's your practical framework for becoming a bridge between ancient and modern.",
      },
      {
        type: "list",
        title: "The Integration Model",
        items: [
          "Scientific Understanding + Traditional Practice: Study the science while practicing daily",
          "Measurement + Experience: Use modern tools to track effects while honoring subjective experience",
          "Innovation + Tradition: Preserve core methods while innovating delivery",
          "Individual + Collective: Personal practice combined with community support",
          "Material + Spiritual: Apply wisdom to worldly success while pursuing evolution",
        ],
      },
      {
        type: "practice",
        title: "Morning Routine (30 minutes)",
        content: "Tamil syllable meditation for 15 minutes. Journal your insights for 10 minutes. Set clear intentions for 5 minutes. This simple routine creates the foundation for integration.",
      },
      {
        type: "practice",
        title: "Work Integration",
        content: "Use syllable breathing before important meetings. Apply the creative problem-solving protocol for challenges. Practice mindful awareness throughout the day. Tamil wisdom enhances professional performance.",
      },
      {
        type: "practice",
        title: "Evening Reflection (15 minutes)",
        content: "Review the day's synchronicities. Practice gratitude. Brief meditation to integrate learnings. This closes the day with consciousness.",
      },
      {
        type: "list",
        title: "Expected Outcomes (6 months)",
        items: [
          "Enhanced cognitive performance",
          "Improved health markers",
          "Increased career success",
          "Deeper relationships",
          "Greater life satisfaction",
          "Sense of purpose and meaning",
        ],
      },
      {
        type: "text",
        title: "Your Transformation",
        content: "You become a living bridge between ancient wisdom and modern life - the prototype of the evolved human. This is not just learning; it's becoming.",
      },
    ],
  },
];

export default function TamilScienceFusion() {
  const [, setLocation] = useLocation();
  const [activeLesson, setActiveLesson] = useState<Lesson | null>(null);
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 5 });

  const handleLessonComplete = () => {
    setActiveLesson(null);
  };

  if (activeLesson) {
    return (
      <LessonViewer
        lesson={activeLesson}
        onClose={() => setActiveLesson(null)}
        onComplete={handleLessonComplete}
        moduleName="TamilScienceFusion"
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
            <h1 className="text-2xl font-bold">Tamil-Science Fusion</h1>
            <p className="text-muted-foreground">
              Bridge ancient wisdom with quantum physics
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
            <Atom className="h-12 w-12 text-primary opacity-50" />
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
                  moduleName="TamilScienceFusion"
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
