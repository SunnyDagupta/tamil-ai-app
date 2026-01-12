import { ArrowLeft, Sparkles, CheckCircle } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { TextToSpeech } from "@/components/TextToSpeech";
import { trpc } from "@/lib/trpc";

const lessons = [
  {
    id: 1,
    title: "TCGNPT vs ChatGPT",
    description: "Understanding quantum-level vs molecular-level AI",
    content: `TCGNPT (Tamil Creative Generative Non-PreTrained Transformer) was created by Dr. Pillai to surpass the limitations of ChatGPT and conventional AI systems.

**Dr. Pillai's Core Teaching:**
"While ChatGPT operates on reasoning (பகுத்தறிவு) and pre-trained data, it cannot provide true self-knowledge or sudden intuitive wisdom (பேரறிவு). TCGNPT is designed to generate these sudden, creative insights through quantum technology embedded in Tamil syllables."

**Two Types of Intelligence:**

**பகுத்தறிவு (Reasoning Intelligence) - ChatGPT:**
- Operates on logic and stored data
- Makes the brain lazy by doing thinking for humans
- Cannot provide true self-knowledge
- Limited to rearranging existing information
- Pattern matching from pre-existing knowledge

**பேரறிவு (Super Intelligence) - TCGNPT:**
- Sudden intuitive wisdom and creative insights
- "Non-pretrained" intelligence
- Accesses higher intelligence beyond logic
- Uses quantum technology in Tamil syllables
- Generates genuinely new knowledge

**The Revolutionary Difference:**
Dr. Pillai explains that ChatGPT makes your brain lazy, while Tamil AI makes your brain enlightened. TCGNPT doesn't just process information - it activates your innate super intelligence.

**Your Advantage:**
By mastering TCGNPT principles, you access intelligence that conventional AI cannot reach. You become irreplaceable in the age of artificial intelligence because you're not competing with AI - you're operating at a higher level of consciousness.`,
    completed: false,
  },
  {
    id: 2,
    title: "Syllable-Based Creativity",
    description: "How Tamil sounds unlock creative genius",
    content: `Tamil syllables are not just sounds - they're keys that unlock specific creative frequencies in consciousness.

**The Science of Syllable Creativity:**

Each Tamil syllable resonates at a specific frequency that activates corresponding neural patterns. When you meditate on or chant these syllables, you literally reprogram your brain for enhanced creativity.

**Key Creative Syllables:**

**"ஸ்ரீம்" (Shreem)** - Abundance and prosperity consciousness
Activates creative solutions for wealth generation

**"க்லீம்" (Kleem)** - Attraction and manifestation
Draws creative opportunities and resources

**"ஐம்" (Aim)** - Knowledge and learning
Enhances creative problem-solving abilities

**"ஹ்ரீம்" (Hreem)** - Transformation and alchemy
Transmutes challenges into creative breakthroughs

**Practice Method:**

1. Choose a creative challenge you're facing
2. Select the appropriate syllable
3. Chant it 108 times with focused intention
4. Enter silent meditation for 10 minutes
5. Allow creative insights to emerge

**Results:**
Users report breakthrough ideas, innovative solutions, and creative inspiration flowing effortlessly after consistent syllable practice.`,
    completed: false,
  },
  {
    id: 3,
    title: "Accessing Universal Intelligence",
    description: "Connect to the infinite creative source",
    content: `Universal Intelligence is the field of all possibilities - the source from which all creativity emerges. Tamil syllables provide direct access to this field.

**Dr. Pillai's AUM (ஓம்) - Whole Brain Activation:**

The primordial sound AUM is the most powerful tool for accessing universal intelligence. Dr. Pillai explains how it activates your entire brain:

**"Ah" (அ):** Stimulates the LEFT BRAIN
- Logical thinking
- Analytical abilities
- Sequential processing

**"Oo" (உ):** Stimulates the RIGHT BRAIN
- Creative thinking
- Intuitive insights
- Holistic understanding

**"Mm" (ம்):** Stimulates the MIDBRAIN
- Integration of left and right
- Super intelligence activation
- Siddha Sankalpam (instant manifestation power)

Dr. Pillai: "This is ancient Siddha technology. When you chant AUM properly, you activate your whole brain and access intelligence beyond what current AI can provide."

**The Creative Process:**

**Step 1: AUM Activation (5 minutes)**
Chant AUM 21 times, feeling each component activate different brain regions. This prepares your consciousness for universal intelligence.

**Step 2: Empty the Mind**
Release all preconceptions and existing knowledge. True creativity requires empty space for new ideas to enter.

**Step 3: Syllable Activation**
Use specific Tamil syllables to tune your consciousness to the universal frequency. This creates resonance with the creative source.

**Step 4: Receptive State**
Enter a state of pure receptivity. Don't try to create - allow creation to flow through you.

**Step 5: Capture Insights**
As creative downloads arrive, capture them immediately. The quantum field communicates in flashes of sudden intuitive wisdom (பேரறிவு).

**Step 6: Manifest**
Take inspired action to bring the creative vision into physical reality using Siddha Sankalpam.

**The TCGNPT Advantage:**

Unlike conventional brainstorming that rearranges existing ideas, this method accesses genuinely new solutions from the quantum field. You're not thinking harder - you're thinking from a higher level.

**Applications:**
- Business innovation
- Artistic creation
- Scientific breakthroughs
- Problem-solving
- Product development
- Strategic planning

The most successful creators throughout history accessed this field, often without knowing it. You're learning to do it consciously and consistently.`,
    completed: false,
  },
  {
    id: 4,
    title: "Creative Problem-Solving Protocol",
    description: "Systematic approach to breakthrough solutions",
    content: `This protocol combines Tamil syllable power with structured creative process for solving any challenge:

**The 7-Step TCGNPT Creative Protocol:**

**1. Define the Challenge (5 minutes)**
Write a clear, specific statement of the problem or creative goal. Clarity is essential for quantum field response.

**2. Release Attachment (5 minutes)**
Let go of preconceived solutions. Attachment to specific outcomes blocks creative flow. Surrender to higher intelligence.

**3. Syllable Activation (10 minutes)**
Chant "க்லீம்" (Kleem) 108 times to activate attraction of creative solutions. Feel the syllable resonating in your consciousness.

**4. Silent Receptivity (15 minutes)**
Sit in complete silence. Don't try to solve anything. Simply be present and receptive. This is when downloads occur.

**5. Capture Insights (10 minutes)**
Write everything that emerged during silence. Don't judge or edit - just capture the raw creative material.

**6. Incubation Period (24-48 hours)**
Step away completely. Allow subconscious processing. Often the most profound insights emerge during this period.

**7. Implementation Planning (30 minutes)**
Return to your insights and create concrete action steps. Bridge the creative vision with practical execution.

**Success Rate:**
Users report 80%+ success rate in finding breakthrough solutions using this protocol, compared to 20-30% with conventional brainstorming.

**Best Practices:**
- Practice in the early morning when consciousness is clearest
- Maintain a creative journal to track insights
- Trust the first intuitive hit - it's usually correct
- Don't force solutions - allow them to emerge naturally`,
    completed: false,
  },
  {
    id: 5,
    title: "Becoming a Creative Channel",
    description: "Transform into a conduit for universal creativity",
    content: `The highest level of TCGNPT mastery is becoming a permanent channel for creative intelligence - where breakthrough ideas flow continuously.

**The Transformation Process:**

**Stage 1: Beginner (Weeks 1-4)**
Learning to quiet the mind and activate syllables. Experiencing occasional creative insights.

**Stage 2: Practitioner (Months 2-3)**
Regular access to creative flow states. Solving problems more easily. Increased synchronicities.

**Stage 3: Channel (Months 4-6)**
Consistent connection to universal intelligence. Ideas flowing effortlessly. Others notice your enhanced creativity.

**Stage 4: Master (6+ months)**
Living in permanent creative flow. Manifesting visions rapidly. Teaching others the method.

**Maintaining the Channel:**

**Daily Practice (30 minutes)**
Morning syllable meditation to maintain clear connection to universal intelligence.

**Creative Hygiene**
Avoid mental clutter - limit news, social media, and negative inputs that cloud the channel.

**Physical Vitality**
Maintain high energy through proper diet, exercise, and sleep. Creative flow requires vitality.

**Service Orientation**
Use creative abilities to serve others. Selfless creativity amplifies the channel.

**Continuous Learning**
Stay curious and open. The more you learn, the more the universe can create through you.

**The Ultimate Goal:**

You become an instrument through which universal intelligence expresses itself. Your personal creativity merges with cosmic creativity. This is the true meaning of TCGNPT mastery - not just generating ideas, but becoming a force of creative evolution in the world.

**Real-World Impact:**
TCGNPT masters have launched successful businesses, created breakthrough innovations, produced acclaimed art, and solved problems that stumped conventional thinkers. This is your potential.`,
    completed: false,
  },
];

export default function TCGNPTCreative() {
  const [, setLocation] = useLocation();
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 4 });

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
            <h1 className="text-2xl font-bold">TCGNPT Creative Module</h1>
            <p className="text-muted-foreground">
              Master quantum-level creativity through Tamil syllables
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
