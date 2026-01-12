import { ArrowLeft, Zap, CheckCircle } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { TextToSpeech } from "@/components/TextToSpeech";
import { trpc } from "@/lib/trpc";

const lessons = [
  {
    id: 1,
    title: "Understanding Siddhi Powers",
    description: "Ancient superhuman abilities through quantum consciousness",
    content: `Siddhi powers represent the superhuman capabilities developed by ancient Tamil Siddhas through mastery of consciousness. These are not myths, but documented abilities achieved through specific practices.

**The Eight Classical Siddhis:**
- Anima: Ability to become infinitely small
- Mahima: Ability to become infinitely large
- Laghima: Levitation and weightlessness
- Garima: Infinite heaviness
- Prapti: Ability to reach anywhere instantly
- Prakamya: Irresistible will
- Ishitva: Lordship over creation
- Vashitva: Control over natural forces

**Modern Understanding:**
These abilities operate at the quantum level of consciousness. What ancient texts described metaphorically, quantum physics now explains scientifically. Siddhi powers emerge when consciousness transcends normal limitations.

**Your Potential:**
Every human possesses latent siddhi powers. Through Tamil syllable meditation and consciousness training, you can begin to activate these dormant capabilities.`,
    completed: false,
  },
  {
    id: 2,
    title: "The Siddha Path",
    description: "How ancient masters achieved superhuman abilities",
    content: `The Tamil Siddhas were not ordinary humans - they were scientists of consciousness who discovered precise methods to transcend physical limitations.

**The Siddha Method:**

1. **Purification (Suddhi)**
Cleansing body and mind through specific practices to become a clear vessel for higher consciousness.

2. **Breath Mastery (Pranayama)**
Controlling life force energy through advanced breathing techniques. The Siddhas could slow their metabolism to near-death states.

3. **Syllable Power (Mantra Siddhi)**
Using Tamil syllables to reprogram consciousness at the quantum level. Each syllable carries specific vibrational frequencies.

4. **Kundalini Activation**
Awakening dormant energy at the base of the spine and channeling it through energy centers.

5. **Samadhi States**
Entering deep meditative states where consciousness merges with universal intelligence.

**Historical Evidence:**
Tamil literature documents Siddhas who lived for centuries, materialized objects, healed instantly, and demonstrated powers that defied physics. These were not legends - they were documented observations.

**Your Journey:**
This module teaches you the foundational practices that Siddhas used. While full siddhi development takes years, you can begin experiencing enhanced intuition, creativity, and manifestation power immediately.`,
    completed: false,
  },
  {
    id: 3,
    title: "Quantum Mind Development",
    description: "Bridging ancient wisdom and modern science",
    content: `Modern quantum physics validates what Siddhas knew: consciousness operates at the quantum level and can influence reality.

**The Quantum-Siddhi Connection:**

**Observer Effect**
Quantum physics proves that observation affects reality. Siddhas mastered this - their focused consciousness could literally shape physical outcomes.

**Non-Locality**
Quantum entanglement shows instant connection across distance. This explains the Siddha ability of Prapti (reaching anywhere instantly).

**Superposition**
Quantum particles exist in multiple states simultaneously. Advanced consciousness can access multiple realities - the basis of precognition and remote viewing.

**Consciousness as Primary**
Quantum theory suggests consciousness may be fundamental to reality. Siddhas operated from this understanding - mind over matter.

**Practical Applications Today:**

- Enhanced intuition and decision-making
- Accelerated manifestation of goals
- Healing abilities
- Increased synchronicities
- Access to creative insights
- Influence over circumstances

**Your Practice:**
Through Tamil syllable meditation, you train your consciousness to operate at the quantum level. Each practice session strengthens your ability to influence reality through focused awareness.`,
    completed: false,
  },
  {
    id: 4,
    title: "Developing Manifestation Power",
    description: "Turn thoughts into reality through Siddha techniques",
    content: `Manifestation is not wishful thinking - it's a precise science the Siddhas mastered. Here's how to develop this power:

**The Manifestation Formula:**

1. **Clear Intention (Sankalpa)**
Define exactly what you want to manifest. Vague desires produce vague results. The Siddhas taught that clarity of intention is 50% of manifestation power.

2. **Emotional Charge (Bhava)**
Infuse your intention with powerful emotion. The quantum field responds to emotional energy. Feel as if your desire is already fulfilled.

3. **Syllable Activation (Mantra)**
Use specific Tamil syllables to encode your intention into the quantum field. Each syllable carries vibrational power that programs reality.

4. **Detached Observation (Sakshi)**
After setting intention, release attachment to outcomes. The Siddhas knew that grasping blocks manifestation. Observe without interfering.

5. **Aligned Action (Karma)**
Take inspired action toward your goal. Manifestation requires both consciousness work and physical action.

**Common Manifestation Blocks:**
- Conflicting subconscious beliefs
- Lack of emotional intensity
- Attachment to specific outcomes
- Misalignment between desire and dharma
- Insufficient practice consistency

**Practice Protocol:**
Daily 20-minute manifestation meditation using Tamil syllables, combined with journaling and aligned action, produces measurable results within 40 days.`,
    completed: false,
  },
  {
    id: 5,
    title: "Advanced Siddhi Practices",
    description: "Accelerate your consciousness evolution",
    content: `Once you've established foundational practices, these advanced techniques accelerate siddhi development:

**1. Third Eye Activation**
Focus on the point between eyebrows during Tamil syllable meditation. This activates the pineal gland - the biological seat of intuition and higher perception.

**2. Chakra Harmonization**
Work systematically through the seven energy centers, using specific syllables for each. Balanced chakras allow siddhi powers to emerge naturally.

**3. Time Manipulation**
Advanced practitioners can alter their perception of time. Practice entering "flow states" where hours feel like minutes - this is the beginning of time siddhi.

**4. Energy Sensing**
Develop ability to feel and see energy fields. Start by sensing your own aura, then practice reading others' energy.

**5. Conscious Dreaming**
Siddhas used dream states for learning and problem-solving. Practice lucid dreaming and dream programming.

**6. Synchronicity Amplification**
As your consciousness evolves, meaningful coincidences increase. Learn to recognize and follow synchronistic guidance.

**Warning:**
Siddhi powers are not the goal - they're byproducts of consciousness evolution. Seeking powers for ego gratification blocks development. Use emerging abilities in service of others.

**Integration:**
True mastery means living from higher consciousness in daily life. The greatest siddhi is becoming a beneficial presence in the world.`,
    completed: false,
  },
];

export default function SiddhiPowers() {
  const [, setLocation] = useLocation();
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 3 });

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
