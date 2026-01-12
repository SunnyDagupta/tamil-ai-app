import { ArrowLeft, Atom, CheckCircle } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { TextToSpeech } from "@/components/TextToSpeech";
import { trpc } from "@/lib/trpc";

const lessons = [
  {
    id: 1,
    title: "Ancient Wisdom Meets Modern Science",
    description: "How Tamil knowledge predicted quantum physics",
    content: `What modern science is discovering, Tamil sages knew thousands of years ago. The convergence is stunning.

**Key Parallels:**

**Quantum Entanglement ↔ Tamil Concept of Oneness**
Quantum physics proves particles remain connected across any distance. Tamil philosophy taught "யாதும் ஊரே யாவரும் கேளிர்" (All places are our home, all people our kin) - recognizing fundamental interconnection.

**Observer Effect ↔ Consciousness Creates Reality**
Quantum mechanics shows observation affects outcomes. Tamil sages taught that consciousness is primary and shapes material reality.

**Wave-Particle Duality ↔ Shiva-Shakti Principle**
Light behaves as both wave and particle. Tamil tradition describes reality as the dance between Shiva (consciousness/wave) and Shakti (energy/particle).

**Zero-Point Field ↔ Akasha**
Physics discovered the quantum vacuum contains infinite energy. Tamil texts described Akasha - the space element containing all possibilities.

**String Theory ↔ Nada Brahman**
Modern physics proposes reality is vibrating strings. Tamil philosophy taught Nada Brahman - the universe as primordial sound vibration.

**The Implication:**
Tamil sages accessed scientific truth through direct consciousness exploration. Their methods remain valid and can accelerate modern scientific discovery.`,
    completed: false,
  },
  {
    id: 2,
    title: "The Science of Sound",
    description: "How Tamil syllables affect matter and consciousness",
    content: `Sound is not just auditory sensation - it's a fundamental force that shapes reality. Tamil syllables harness this power with precision.

**Cymatics: Sound Made Visible**

When sound frequencies pass through matter, they create geometric patterns. Different frequencies produce different patterns. This is cymatics - the study of visible sound.

Tamil syllables, when chanted at correct frequencies, create specific geometric patterns in water, sand, and even human cells. These patterns have measurable effects:

**Biological Effects:**
- Specific syllables can alter heart rate variability
- Certain frequencies enhance immune function
- Sound patterns influence gene expression
- Vibrational therapy accelerates healing

**Consciousness Effects:**
- Different syllables activate different brain regions
- Specific frequencies induce meditative states
- Sound patterns can reprogram neural pathways
- Vibrational resonance enhances intuition

**The Tamil Advantage:**

Tamil is one of the oldest languages with unbroken pronunciation tradition. The syllables have been preserved with exact frequencies for thousands of years. This precision makes Tamil uniquely powerful for consciousness work.

**Scientific Validation:**

Research shows:
- Mantra meditation increases gray matter density
- Specific sound frequencies reduce stress hormones
- Vibrational therapy improves cognitive function
- Sound healing accelerates physical recovery

**Your Practice:**
When you chant Tamil syllables, you're not just making sounds - you're using precise vibrational tools that affect matter and consciousness at the quantum level.`,
    completed: false,
  },
  {
    id: 3,
    title: "Neuroscience of Meditation",
    description: "How Tamil practices rewire your brain",
    content: `Modern neuroscience validates what Tamil meditation masters knew: specific practices physically change brain structure and function.

**Neuroplasticity Through Tamil Meditation:**

**Prefrontal Cortex Enhancement**
Regular Tamil syllable meditation increases gray matter in the prefrontal cortex - the area responsible for decision-making, focus, and self-control.

**Amygdala Reduction**
The amygdala (fear center) actually shrinks with consistent practice. This explains reduced anxiety and increased emotional stability.

**Hippocampus Growth**
The hippocampus (memory center) grows larger. Practitioners show enhanced learning ability and memory retention.

**Default Mode Network Changes**
The brain's "self-referential" network becomes less active. This reduces rumination and enhances present-moment awareness.

**Increased Gamma Waves**
Advanced practitioners show sustained gamma wave activity - associated with peak performance, insight, and heightened consciousness.

**Measurable Benefits:**

After 8 weeks of daily Tamil meditation practice:
- 25% reduction in stress hormones
- 30% improvement in focus and attention
- 40% increase in emotional regulation
- 50% enhancement in creative problem-solving
- Measurable increase in telomerase activity (anti-aging)

**The Mechanism:**

Tamil syllables create specific vibrational patterns that:
1. Synchronize brain hemispheres
2. Activate dormant neural pathways
3. Enhance neurotransmitter production
4. Optimize brain wave patterns
5. Increase neural connectivity

**Long-Term Effects:**

Practitioners with 10+ years of daily practice show:
- Biological age 10-15 years younger than chronological age
- Superior cognitive function compared to peers
- Enhanced immune system markers
- Reduced inflammation throughout the body
- Increased longevity indicators

This isn't mysticism - it's measurable neuroscience.`,
    completed: false,
  },
  {
    id: 4,
    title: "Quantum Biology",
    description: "Life operates at the quantum level",
    content: `Emerging quantum biology research reveals that life itself operates through quantum processes - validating Tamil understanding of consciousness and biology.

**Quantum Processes in Biology:**

**Photosynthesis**
Plants use quantum coherence to achieve near-perfect energy transfer efficiency. Tamil texts described plants as conscious beings using light intelligence.

**Bird Navigation**
Birds use quantum entanglement in their eyes to navigate. Tamil sages taught that consciousness extends beyond the brain.

**DNA Communication**
DNA molecules communicate through quantum fields. Tamil medicine recognized that consciousness affects genetic expression.

**Enzyme Function**
Enzymes use quantum tunneling to catalyze reactions. Tamil Siddhas manipulated biological processes through consciousness.

**Cellular Intelligence**
Cells make quantum decisions. Tamil philosophy taught that intelligence permeates all levels of existence.

**The Tamil-Quantum Connection:**

Tamil practices work because they operate at the quantum level where consciousness and biology interface:

**Syllable Vibrations → Quantum Coherence**
Tamil sounds create coherent quantum states in biological systems, optimizing function.

**Meditation → Quantum Entanglement**
Deep meditation may create quantum entanglement between practitioner and universal field.

**Intention → Quantum Collapse**
Focused intention collapses quantum possibilities into specific outcomes - the basis of manifestation.

**Practical Applications:**

Understanding quantum biology enhances:
- Healing abilities (consciousness affects cellular function)
- Manifestation power (quantum field responds to intention)
- Intuition (quantum information access)
- Longevity (quantum optimization of biological processes)

**The Future:**

As quantum biology advances, Tamil practices will be recognized as sophisticated quantum technologies for optimizing human potential.`,
    completed: false,
  },
  {
    id: 5,
    title: "Integrating Ancient and Modern",
    description: "Practical synthesis for the 21st century",
    content: `The future belongs to those who can integrate Tamil wisdom with modern science. Here's your practical framework:

**The Integration Model:**

**1. Scientific Understanding + Traditional Practice**
Study the science behind Tamil methods while practicing them daily. Understanding enhances effectiveness.

**2. Measurement + Experience**
Use modern tools (HRV monitors, EEG devices, biomarkers) to track the effects of Tamil practices. Validate subjectively and objectively.

**3. Innovation + Tradition**
Preserve core Tamil methods while innovating delivery. Example: Traditional syllable meditation delivered through modern apps.

**4. Individual + Collective**
Personal practice combined with community support. Ancient wisdom thrived in sanghas (communities) - recreate this online.

**5. Material + Spiritual**
Apply Tamil wisdom to worldly success (career, wealth, relationships) while pursuing spiritual evolution.

**Practical Implementation:**

**Morning Routine (30 minutes)**
- Tamil syllable meditation (15 min)
- Journaling insights (10 min)
- Setting intentions (5 min)

**Work Integration**
- Use syllable breathing before important meetings
- Apply creative problem-solving protocol for challenges
- Practice mindful awareness throughout the day

**Evening Reflection (15 minutes)**
- Review day's synchronicities
- Gratitude practice
- Brief meditation to integrate learnings

**Weekly Deep Dive (2 hours)**
- Study one Tamil concept in depth
- Research related scientific findings
- Experiment with applications

**Monthly Assessment**
- Track measurable progress (focus, creativity, health markers)
- Adjust practices based on results
- Set new goals for next month

**The Outcome:**

Within 6 months of consistent integration:
- Enhanced cognitive performance
- Improved health markers
- Increased career success
- Deeper relationships
- Greater life satisfaction
- Sense of purpose and meaning

You become a living bridge between ancient wisdom and modern life - the prototype of the evolved human.`,
    completed: false,
  },
];

export default function TamilScienceFusion() {
  const [, setLocation] = useLocation();
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 5 });

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
