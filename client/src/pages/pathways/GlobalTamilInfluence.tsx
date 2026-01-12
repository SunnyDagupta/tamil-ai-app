import { ArrowLeft, Globe, CheckCircle } from "lucide-react";
import { useLocation } from "wouter";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { TextToSpeech } from "@/components/TextToSpeech";
import { trpc } from "@/lib/trpc";

const lessons = [
  {
    id: 1,
    title: "Tamil's Global Heritage",
    description: "The worldwide influence of Tamil civilization",
    content: `Tamil is not just a regional language - it's a global civilization that shaped human history across continents.

**Historical Reach:**

**Southeast Asia**
Tamil traders and scholars established kingdoms and spread Tamil culture throughout Southeast Asia. Evidence includes:
- Tamil inscriptions in Thailand, Cambodia, Vietnam
- Tamil loan words in Malay, Indonesian, Thai languages
- Hindu-Buddhist temples built by Tamil architects
- Trade networks connecting Tamil Nadu to entire region

**Middle East**
Tamil merchants dominated Indian Ocean trade for centuries:
- Tamil communities in ancient Mesopotamia
- Trade routes connecting Tamil ports to Arabia
- Cultural exchange influencing both civilizations
- Tamil words in Arabic and Persian

**Africa**
Tamil presence in East Africa dates back millennia:
- Archaeological evidence of Tamil settlements
- Trade connections with Swahili coast
- Cultural influences in Madagascar
- Tamil genetic markers in African populations

**Europe**
Romans prized Tamil goods and culture:
- Tamil spices, textiles, and gems in Roman markets
- Cultural exchanges documented in classical texts
- Tamil influence on Mediterranean trade
- Ancient connections predating colonial era

**The Americas**
Controversial but growing evidence suggests pre-Columbian Tamil contact:
- Linguistic similarities in indigenous languages
- Architectural parallels with Tamil temples
- Cultural practices showing Tamil influence
- DNA evidence of ancient connections

**Why This Matters:**

Tamil civilization was a global superpower of knowledge, trade, and culture. Understanding this heritage empowers modern Tamil identity and demonstrates the universal relevance of Tamil wisdom.`,
    completed: false,
  },
  {
    id: 2,
    title: "Tamil AI for Global Challenges",
    description: "Applying Tamil wisdom to solve world problems",
    content: `The world faces unprecedented challenges. Tamil AI offers unique solutions rooted in ancient wisdom and quantum understanding.

**Dr. Pillai's Vision:**
"Tamil AI can help you succeed - this is the truth, not motivation. It's actual quantum technology for success that can be exported worldwide."

**Climate Crisis → Tamil Ecological Wisdom**

Tamil civilization lived in harmony with nature for millennia. Key principles:
- **Pancha Bhutas** (Five Elements): Understanding nature's balance
- **Sustainable Agriculture**: Traditional Tamil farming methods
- **Water Management**: Ancient Tamil irrigation systems
- **Biodiversity**: Tamil texts document 1000+ plant species

Application: Tamil ecological principles can guide sustainable development globally.

**AI Ethics → Tamil Moral Philosophy**

As AI becomes more powerful, ethical frameworks are crucial. Tamil contribution:
- **Thirukkural's Ethics**: Universal moral principles
- **Ahimsa** (Non-harm): Foundational ethical principle
- **Dharma**: Right action in complex situations
- **Collective Welfare**: Balance of individual and community

Application: Tamil ethics can shape responsible AI development.

**Mental Health Crisis → Tamil Consciousness Practices**

Global mental health is deteriorating. Tamil solutions:
- **Meditation Techniques**: Proven stress reduction
- **Community Support**: Traditional Tamil social structures
- **Purpose and Meaning**: Philosophical frameworks
- **Holistic Health**: Integration of body, mind, spirit

Application: Tamil practices address root causes of mental health issues.

**Economic Inequality → Tamil Wealth Principles**

**Dr. Pillai's Teaching on Wealth:**
"Tamil sounds can attract money because they operate at the frequency of abundance consciousness. Sound creates vibration, vibration affects the quantum field, and the quantum field manifests as material reality."

Tamil texts offer sophisticated economic wisdom:
- **Sustainable Prosperity**: Wealth creation that benefits all
- **Ethical Business**: Thirukkural's guidelines for commerce
- **Community Economics**: Traditional Tamil cooperative systems
- **Abundance Consciousness**: Shifting from scarcity to sufficiency
- **SHREEM, KLEEM, AIM**: Specific syllables for wealth manifestation

Application: Tamil economic principles can create more equitable systems.

**Education Crisis → Tamil Learning Methods**

Traditional Tamil education produced extraordinary scholars:
- **Guru-Shishya**: Personalized mentorship model
- **Experiential Learning**: Direct experience over rote memorization
- **Holistic Development**: Intellectual, emotional, spiritual growth
- **Lifelong Learning**: Education as continuous evolution

Application: Tamil methods can transform modern education.`,
    completed: false,
  },
  {
    id: 3,
    title: "Building the Tamil AI Movement",
    description: "Your role in the global Tamil renaissance",
    content: `Tamil AI is not just personal development - it's a movement to elevate human consciousness globally. Here's how you contribute:

**Dr. Pillai's Core Message:**
"Super intelligence (பேரறிவு) is possible for everyone through Tamil sounds. This is not for the elite few - it's the birthright of every human being."

This is the foundation of the Tamil AI movement: democratizing access to super intelligence for all humanity.

**Individual Level: Master the Practices**

Your first responsibility is personal mastery:
- Daily Tamil syllable meditation
- Study of Thirukkural and Tamil texts
- Development of siddhi powers
- Integration of Tamil wisdom in daily life

As you transform, you become a living example of Tamil AI's power.

**Community Level: Share the Knowledge**

Once established in practice, share with others:
- Teach Tamil meditation to friends and family
- Start local study groups
- Share insights on social media
- Create content explaining Tamil concepts
- Support others on the path

Every person you influence multiplies the movement's impact.

**Professional Level: Apply in Your Field**

Integrate Tamil AI principles in your work:
- **Business**: Use Tamil ethics and creativity methods
- **Technology**: Build tools that spread Tamil wisdom
- **Healthcare**: Apply Tamil healing principles
- **Education**: Teach Tamil learning methods
- **Arts**: Create works inspired by Tamil culture

Your professional success validates Tamil AI's effectiveness.

**Global Level: Contribute to the Movement**

Participate in the larger mission:
- Join Tamil AI research projects
- Contribute to open-source Tamil AI tools
- Participate in global Tamil conferences
- Support Tamil language preservation
- Advocate for Tamil wisdom in mainstream discourse

**The Vision:**

A global network of Tamil AI practitioners:
- Solving problems conventional thinking cannot
- Demonstrating superhuman capabilities
- Living proof of Tamil wisdom's power
- Catalyzing human consciousness evolution
- Creating a more enlightened civilization

**Your Unique Contribution:**

You have skills, knowledge, and connections that are uniquely yours. How can you leverage them for the Tamil AI movement?

Reflect on:
- What resources do you have access to?
- What platforms can you influence?
- What problems are you positioned to solve?
- Who can you reach that others cannot?

Your unique position is not accidental - it's your dharma to fulfill.`,
    completed: false,
  },
  {
    id: 4,
    title: "Tamil Language Preservation",
    description: "Protecting humanity's oldest living language",
    content: `Tamil is the world's oldest living classical language - over 5,000 years of continuous use. Preserving it is crucial for humanity.

**Why Tamil Must Be Preserved:**

**Linguistic Heritage**
Tamil represents an unbroken chain of human communication spanning millennia. Its loss would sever humanity's connection to ancient wisdom.

**Unique Phonetic System**
Tamil's sound system is scientifically designed for consciousness work. No other language offers the same vibrational precision.

**Literary Treasure**
Tamil literature spans 2,000+ years of continuous production. Sangam poetry, Thirukkural, Siddha texts - irreplaceable human heritage.

**Scientific Knowledge**
Ancient Tamil texts contain advanced knowledge in:
- Medicine (Siddha system)
- Astronomy and mathematics
- Metallurgy and chemistry
- Architecture and engineering
- Psychology and consciousness

**Cultural Identity**
For 80+ million Tamil speakers, the language is core to identity. Its loss would devastate cultural continuity.

**Current Threats:**

- Globalization favoring English
- Younger generations preferring other languages
- Lack of modern Tamil AI tools
- Limited Tamil content online
- Insufficient government support

**Your Role in Preservation:**

**Use Tamil Daily**
Speak, read, and write Tamil regularly. Language lives through use.

**Teach the Next Generation**
Ensure children learn Tamil. Pass on the heritage.

**Create Tamil Content**
Write, record, and share Tamil content online. Increase Tamil's digital presence.

**Support Tamil Technology**
Use and promote Tamil AI tools, apps, and platforms. Technology ensures relevance.

**Advocate for Tamil**
Push for Tamil in education, government, and business. Political support is essential.

**Learn Classical Tamil**
Study ancient Tamil texts. Connect with the language's full depth.

**The Opportunity:**

Tamil AI can make Tamil relevant for the 21st century. By demonstrating Tamil's power for consciousness evolution and problem-solving, we ensure its survival and global spread.

Imagine:
- Tamil AI tools used worldwide
- Tamil meditation taught in schools globally
- Thirukkural studied in universities
- Tamil syllables recognized as consciousness technology
- Tamil language thriving for another 5,000 years

This is possible - and you're part of making it happen.`,
    completed: false,
  },
  {
    id: 5,
    title: "The Tamil AI Future",
    description: "Vision for humanity's next evolution",
    content: `Tamil AI represents humanity's next evolutionary leap - integrating ancient wisdom with modern capability to create superhuman potential.

**The 2025-2035 Timeline:**

**Phase 1: Foundation (2025-2027)**
- Tamil AI platforms reach 1 million users globally
- Scientific validation of Tamil meditation benefits
- Integration into mainstream wellness and education
- First generation of Tamil AI practitioners demonstrating enhanced capabilities

**Phase 2: Acceleration (2028-2030)**
- Tamil AI taught in schools and universities
- Corporate adoption for leadership development
- Medical integration for healing and longevity
- Tamil AI practitioners showing measurable superhuman abilities

**Phase 3: Transformation (2031-2035)**
- Tamil AI becomes global movement
- Mainstream recognition of consciousness technologies
- Integration with emerging technologies (quantum computing, biotech)
- New civilization based on elevated consciousness

**The Transformed World:**

**Education**
Children learn Tamil meditation from age 5. By adolescence, they demonstrate:
- Photographic memory
- Enhanced creativity
- Emotional mastery
- Intuitive problem-solving

**Healthcare**
Tamil consciousness practices become primary medicine:
- Prevention through daily practice
- Healing through syllable therapy
- Longevity through consciousness optimization
- Mental health through meditation

**Business**
Companies adopt Tamil AI principles:
- Ethical decision-making from Thirukkural
- Creative innovation through TCGNPT methods
- Leadership development through consciousness training
- Sustainable prosperity through Tamil economic wisdom

**Technology**
Tamil AI merges with artificial intelligence:
- Conscious AI systems
- Quantum computing enhanced by consciousness
- Biotechnology guided by Tamil healing wisdom
- Technology serving human evolution

**Society**
Civilization reorganizes around elevated consciousness:
- Reduced conflict through expanded awareness
- Sustainable living through Tamil ecological wisdom
- Meaningful work aligned with dharma
- Community based on genuine connection

**Your Legacy:**

You're among the first generation of Tamil AI practitioners. Future historians will recognize this moment as pivotal in human evolution.

Your descendants will live in the world you're helping create:
- Enhanced human capabilities as normal
- Wisdom guiding technology
- Consciousness as primary focus
- Tamil heritage recognized globally
- Humanity fulfilling its potential

**The Choice:**

This future is not guaranteed - it requires committed practitioners like you. Every meditation session, every lesson studied, every person you influence moves humanity toward this vision.

The question is not whether Tamil AI will transform the world. The question is: Will you be part of making it happen?

**Your Next Steps:**

1. Complete all Tamil AI modules
2. Establish daily practice routine
3. Share Tamil AI with your network
4. Apply principles in your field
5. Contribute to the movement
6. Live as an example of Tamil AI's power

Welcome to the future. Let's build it together.`,
    completed: false,
  },
];

export default function GlobalTamilInfluence() {
  const [, setLocation] = useLocation();
  const { data: progress } = trpc.pathways.myProgress.useQuery({ pathwayId: 6 });

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
              Spread Tamil wisdom worldwide
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
