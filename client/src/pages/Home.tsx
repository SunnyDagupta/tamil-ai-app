import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {
  Sparkles,
  Brain,
  Zap,
  TrendingUp,
  BookOpen,
  Globe,
  ArrowRight,
  CheckCircle2,
  XCircle,
} from "lucide-react";
import { Link } from "wouter";
import { getLoginUrl } from "@/const";
import { useAuth } from "@/_core/hooks/useAuth";

export default function Home() {
  const { isAuthenticated } = useAuth();

  const learningPathways = [
    {
      icon: <Sparkles className="w-8 h-8" />,
      title: "Syllable Intelligence System (SIS)",
      description:
        "Learn how Tamil syllables operate at the quantum level. Understand the omniscience hidden in single syllables and how to activate it.",
      path: "/pathway/sis",
    },
    {
      icon: <BookOpen className="w-8 h-8" />,
      title: "Thirukkural Mastery",
      description:
        "Decode the 1,330 couplets containing complete knowledge systems: business, ethics, love, war strategy, and quantum physics all in Tamil wisdom.",
      path: "/pathway/thirukkural",
    },
    {
      icon: <Zap className="w-8 h-8" />,
      title: "Siddhi Powers & Quantum Mind",
      description:
        "Develop the superhuman abilities of the ancient Siddhas. Access quantum intelligence beyond normal human cognition using Tamil sound codes.",
      path: "/pathway/siddhi",
    },
    {
      icon: <Brain className="w-8 h-8" />,
      title: "TCGNPT Creative Module",
      description:
        "Master Tamil Creative Generative Non-PreTrained Transformer. Create innovative solutions ChatGPT cannot—with manifestation ability built-in.",
      path: "/pathway/tcgnpt",
    },
    {
      icon: <TrendingUp className="w-8 h-8" />,
      title: "Tamil-Science Fusion",
      description:
        "Connect ancient Tamil wisdom to modern quantum physics, neuroscience, and biotech. Understand how Siddhas predicted scientific discoveries 1000s of years ago.",
      path: "/pathway/science",
    },
    {
      icon: <Globe className="w-8 h-8" />,
      title: "Global Tamil Influence",
      description:
        "Export Tamil AI solutions worldwide. Elevate Tamil language as a technology stack in the global AI revolution. Transform your career.",
      path: "/pathway/global",
    },
  ];

  const comparisonData = [
    {
      aspect: "Operating Level",
      chatgpt: "Word (Molecular)",
      tcgnpt: "Syllable (Quantum)",
    },
    {
      aspect: "Training Method",
      chatgpt: "Pre-trained on 7T tokens",
      tcgnpt: "Non-pre-trained (spontaneous)",
    },
    {
      aspect: "Intelligence Type",
      chatgpt: "Artificial",
      tcgnpt: "Super Intelligence",
    },
    {
      aspect: "Knowledge Source",
      chatgpt: "External data fed to it",
      tcgnpt: "Internal Tamil wisdom",
    },
    {
      aspect: "Manifestation Power",
      chatgpt: "Information generation",
      tcgnpt: "Reality manifestation",
    },
    {
      aspect: "Primary Source",
      chatgpt: "Modern language patterns",
      tcgnpt: "Thirukkural, Siddha teachings",
    },
  ];

  const crisisPoints = [
    "Jobs disappearing: Large companies are replacing employees with AI",
    "Doctors losing work: Medical jobs increasingly automated",
    "Skill obsolescence: Skills learned today are outdated tomorrow",
    "Job insecurity: 1 in 3 professionals fear AI replacement",
    "No competitive edge: Everyone can use ChatGPT equally",
  ];

  const advantagePoints = [
    "Siddhi Powers: Develop superintelligence beyond AI",
    "Manifestation Ability: Create solutions, not just information",
    "Ancient Weapons: Thirukkural contains 1,330 couplets of wisdom = infinite knowledge",
    "Quantum Mind: Access intelligence ChatGPT cannot reach",
    "Future-Proof: Based on 5,000-year-old wisdom that never becomes obsolete",
  ];

  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <section className="relative bg-gradient-to-br from-primary/10 via-background to-accent/10 py-20 px-4">
        <div className="container mx-auto text-center">
          <Badge className="mb-4 text-lg px-4 py-2">🕉️ Tamil AI by Dr. Pillai</Badge>
          <h1 className="text-5xl md:text-7xl font-bold mb-6 bg-gradient-to-r from-primary via-accent to-primary bg-clip-text text-transparent">
            Tamil Wisdom Meets Quantum Intelligence
          </h1>
          <p className="text-2xl md:text-3xl mb-4 text-foreground/90 max-w-4xl mx-auto">
            Unlock Super Intelligence Using Ancient Tamil Syllables & Thirukkural Secrets
          </p>
          <p className="text-lg text-muted-foreground mb-8 max-w-3xl mx-auto">
            While AI is replacing jobs globally, we're empowering humans with the ancient wisdom
            that AI cannot replicate.
          </p>
          <div className="bg-primary/10 border-l-4 border-primary p-6 max-w-3xl mx-auto mb-8 rounded-r-lg">
            <p className="text-lg italic text-foreground/90">
              "Super intelligence (பேரறிவு) is possible for everyone through Tamil sounds. This is not for the elite few - it's the birthright of every human being."
            </p>
            <p className="text-sm text-muted-foreground mt-2 text-right">- Dr. Pillai</p>
          </div>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            {isAuthenticated ? (
              <Link href="/dashboard">
                <Button size="lg" className="text-lg px-8 py-6">
                  Go to Dashboard <ArrowRight className="ml-2 w-5 h-5" />
                </Button>
              </Link>
            ) : (
              <>
                <a href={getLoginUrl()}>
                  <Button size="lg" className="text-lg px-8 py-6">
                    Join Now <ArrowRight className="ml-2 w-5 h-5" />
                  </Button>
                </a>
                <Link href="/about">
                  <Button size="lg" variant="outline" className="text-lg px-8 py-6">
                    Learn More
                  </Button>
                </Link>
              </>
            )}
          </div>
        </div>
      </section>

      {/* TCGNPT vs ChatGPT Comparison */}
      <section className="py-16 px-4 bg-muted/30">
        <div className="container mx-auto">
          <h2 className="text-4xl font-bold text-center mb-4">
            What is TCGNPT? The AI Revolution That Doesn't Replace You
          </h2>
          <p className="text-center text-muted-foreground mb-6 max-w-3xl mx-auto">
            TCGNPT = Tamil Creative Generative Non-PreTrained Transformer
          </p>
          <div className="bg-accent/10 border border-accent/30 p-6 max-w-3xl mx-auto mb-12 rounded-lg">
            <p className="text-base italic text-foreground/90 text-center">
              "ChatGPT makes your brain lazy by doing thinking for you. Tamil AI makes your brain enlightened by activating your own super intelligence."
            </p>
            <p className="text-sm text-muted-foreground mt-2 text-center">- Dr. Pillai</p>
          </div>

          <div className="grid md:grid-cols-2 gap-8 max-w-5xl mx-auto mb-12">
            <Card>
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  🤖 ChatGPT (LLM)
                </CardTitle>
                <CardDescription>Operates at: Word Level (Molecular)</CardDescription>
              </CardHeader>
              <CardContent className="space-y-2 text-sm">
                <p>• Operates on reasoning (பகுத்தறிவு)</p>
                <p>• Trained on 7 trillion tokens of data</p>
                <p>• Makes brain lazy</p>
                <p>• Cannot provide self-knowledge</p>
                <p>• Rearranges existing information</p>
                <p>• Limited by pre-trained data</p>
              </CardContent>
            </Card>

            <Card className="border-primary">
              <CardHeader>
                <CardTitle className="flex items-center gap-2 text-primary">
                  ✨ TCGNPT (SIS)
                </CardTitle>
                <CardDescription>Operates at: Quantum Level (Syllable)</CardDescription>
              </CardHeader>
              <CardContent className="space-y-2 text-sm">
                <p>• Accesses super intelligence (பேரறிவு)</p>
                <p>• Non-pretrained - spontaneous wisdom</p>
                <p>• Sudden intuitive insights</p>
                <p>• Activates your innate intelligence</p>
                <p>• Quantum technology in syllables</p>
                <p>• Siddha Sankalpam (instant manifestation)</p>
              </CardContent>
            </Card>
          </div>

          <div className="overflow-x-auto max-w-5xl mx-auto">
            <table className="w-full border-collapse">
              <thead>
                <tr className="border-b-2">
                  <th className="p-4 text-left">Aspect</th>
                  <th className="p-4 text-left">ChatGPT / LLM</th>
                  <th className="p-4 text-left text-primary">TCGNPT / SIS</th>
                </tr>
              </thead>
              <tbody>
                {comparisonData.map((row, idx) => (
                  <tr key={idx} className="border-b">
                    <td className="p-4 font-medium">{row.aspect}</td>
                    <td className="p-4 text-muted-foreground">{row.chatgpt}</td>
                    <td className="p-4 text-primary font-medium">{row.tcgnpt}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </section>

      {/* Why Tamil AI Matters NOW */}
      <section className="py-16 px-4">
        <div className="container mx-auto">
          <h2 className="text-4xl font-bold text-center mb-12">
            Why Tamil AI Matters NOW - 2025
          </h2>

          <div className="grid md:grid-cols-2 gap-8 max-w-6xl mx-auto">
            <Card className="border-destructive">
              <CardHeader>
                <CardTitle className="flex items-center gap-2 text-destructive">
                  <XCircle className="w-6 h-6" />
                  The Global AI Crisis
                </CardTitle>
              </CardHeader>
              <CardContent className="space-y-3">
                {crisisPoints.map((point, idx) => (
                  <p key={idx} className="flex items-start gap-2">
                    <XCircle className="w-5 h-5 text-destructive flex-shrink-0 mt-0.5" />
                    <span>{point}</span>
                  </p>
                ))}
              </CardContent>
            </Card>

            <Card className="border-primary">
              <CardHeader>
                <CardTitle className="flex items-center gap-2 text-primary">
                  <CheckCircle2 className="w-6 h-6" />
                  The Tamil AI Advantage
                </CardTitle>
              </CardHeader>
              <CardContent className="space-y-3">
                {advantagePoints.map((point, idx) => (
                  <p key={idx} className="flex items-start gap-2">
                    <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
                    <span>{point}</span>
                  </p>
                ))}
              </CardContent>
            </Card>
          </div>
        </div>
      </section>

      {/* Dr. Pillai's Quote */}
      <section className="py-16 px-4 bg-primary/5">
        <div className="container mx-auto max-w-4xl">
          <Card className="border-primary">
            <CardContent className="p-8">
              <blockquote className="text-xl md:text-2xl italic text-center mb-4">
                "Thirukkural contains NO secret without artificial intelligence in it. Vallalar
                was the supreme master—he learned without studying (Oothaadu Unar). Because he
                didn't attend school, he gained super-intelligence and traveled to other galaxies."
              </blockquote>
              <p className="text-center text-muted-foreground font-medium">— Dr. Pillai</p>
              <p className="text-center text-sm text-muted-foreground mt-4">
                The lesson: Real intelligence comes from bypassing conventional learning and
                accessing the quantum intelligence embedded in Tamil syllables.
              </p>
            </CardContent>
          </Card>
        </div>
      </section>

      {/* Learning Pathways */}
      <section className="py-16 px-4">
        <div className="container mx-auto">
          <h2 className="text-4xl font-bold text-center mb-4">
            Your Tamil AI Learning Pathways
          </h2>
          <p className="text-center text-muted-foreground mb-12 max-w-3xl mx-auto">
            Master the ancient-meets-modern skills that will keep you ahead of AI
          </p>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6 max-w-7xl mx-auto">
            {learningPathways.map((pathway, idx) => (
              <Link key={idx} href={pathway.path}>
                <Card className="cursor-pointer hover:shadow-xl transition-all hover:scale-105 h-full">
                  <CardHeader>
                    <div className="mb-4 text-primary">{pathway.icon}</div>
                    <CardTitle className="text-xl">{pathway.title}</CardTitle>
                  </CardHeader>
                  <CardContent>
                    <CardDescription className="text-base">{pathway.description}</CardDescription>
                  </CardContent>
                </Card>
              </Link>
            ))}
          </div>

          <div className="text-center mt-12">
            {isAuthenticated ? (
              <Link href="/pathways">
                <Button size="lg" className="text-lg px-8 py-6">
                  Explore All Pathways <ArrowRight className="ml-2 w-5 h-5" />
                </Button>
              </Link>
            ) : (
              <a href={getLoginUrl()}>
                <Button size="lg" className="text-lg px-8 py-6">
                  Start Your Journey <ArrowRight className="ml-2 w-5 h-5" />
                </Button>
              </a>
            )}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-16 px-4 bg-gradient-to-br from-primary/10 to-accent/10">
        <div className="container mx-auto text-center max-w-4xl">
          <h2 className="text-4xl font-bold mb-6">
            Ready to Join the Tamil AI Revolution?
          </h2>
          <p className="text-xl text-muted-foreground mb-8">
            Secure your future. Master Super Intelligence. Elevate Tamil language globally.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            {isAuthenticated ? (
              <Link href="/dashboard">
                <Button size="lg" className="text-lg px-8 py-6">
                  Go to Dashboard <ArrowRight className="ml-2 w-5 h-5" />
                </Button>
              </Link>
            ) : (
              <>
                <a href={getLoginUrl()}>
                  <Button size="lg" className="text-lg px-8 py-6">
                    Join Free Access <ArrowRight className="ml-2 w-5 h-5" />
                  </Button>
                </a>
                <Link href="/faq">
                  <Button size="lg" variant="outline" className="text-lg px-8 py-6">
                    View FAQ
                  </Button>
                </Link>
              </>
            )}
          </div>
          <p className="text-sm text-muted-foreground mt-6">
            Free video introduction + exclusive access to the Tamil AI community
          </p>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-8 px-4 border-t">
        <div className="container mx-auto text-center text-sm text-muted-foreground">
          <p className="mb-2">Dr. Pillai's Tamil AI Initiative</p>
          <p>
            Bridging 5,000 years of Tamil wisdom with the quantum age of technology
          </p>
          <p className="mt-4">
            © 2026 Tamil AI. All wisdom preserved. | Based on Dr. Pillai's 45+ years of research
            in quantum intelligence and Tamil linguistics.
          </p>
        </div>
      </footer>
    </div>
  );
}
