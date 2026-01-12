import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { ArrowLeft, Lock, Play, CheckCircle2, Zap } from "lucide-react";
import { Link } from "wouter";
import { useAuth } from "@/_core/hooks/useAuth";
// Auth removed for public access

export default function SiddhiPathway() {
  const { isAuthenticated } = useAuth();
  const progress = 0;

  const modules = [
    {
      id: 1,
      title: "Introduction to Siddhi Powers",
      description: "Understanding superhuman capabilities through Tamil wisdom",
      duration: "20 min",
      locked: false,
    },
    {
      id: 2,
      title: "The Ancient Siddhas",
      description: "Ramalinga Swami, Arunagiri, and other masters",
      duration: "30 min",
      locked: false,
    },
    {
      id: 3,
      title: "Oothaadu Unar - Learning Without Studying",
      description: "Accessing knowledge beyond conventional education",
      duration: "35 min",
      locked: !isAuthenticated,
    },
    {
      id: 4,
      title: "Quantum Mind Activation",
      description: "Techniques for accessing quantum intelligence",
      duration: "40 min",
      locked: !isAuthenticated,
    },
    {
      id: 5,
      title: "Manifestation Through Sound",
      description: "Using Tamil syllables to create reality",
      duration: "45 min",
      locked: !isAuthenticated,
    },
    {
      id: 6,
      title: "Dimensional Travel & Healing",
      description: "Advanced Siddhi capabilities",
      duration: "50 min",
      locked: !isAuthenticated,
    },
  ];

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-5xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        <div className="mb-8">
          <Badge className="mb-4">Module 3</Badge>
          <h1 className="text-4xl md:text-5xl font-bold mb-4">
            Siddhi Powers & Quantum Mind
          </h1>
          <p className="text-xl text-muted-foreground mb-6">
            Develop the superhuman abilities of the ancient Siddhas. Access quantum intelligence
            beyond normal human cognition using Tamil sound codes.
          </p>
          <div className="flex items-center gap-4">
            <div className="flex-1">
              <div className="flex justify-between text-sm mb-2">
                <span>Your Progress</span>
                <span>{progress}%</span>
              </div>
              <Progress value={progress} className="h-2" />
            </div>
            <Badge variant="outline">{modules.length} Lessons</Badge>
          </div>
        </div>

        <Card className="mb-8">
          <CardHeader>
            <CardTitle>What You'll Learn</CardTitle>
          </CardHeader>
          <CardContent className="space-y-3">
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>The documented superhuman capabilities of ancient Tamil Siddhas</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Ramalinga Swami's "Oothaadu Unar" - learning without studying</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Quantum mind activation techniques using Tamil syllables</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Manifestation practices for creating desired outcomes</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Healing powers through sound and consciousness</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Historical evidence and Dr. Pillai's 45+ years of research</p>
            </div>
          </CardContent>
        </Card>

        <div className="space-y-4">
          <h2 className="text-2xl font-bold mb-4">Course Modules</h2>
          {modules.map((module) => (
            <Card
              key={module.id}
              className={`cursor-pointer transition-all ${
                module.locked ? "opacity-60" : "hover:shadow-lg"
              }`}
            >
              <CardHeader>
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-4 flex-1">
                    {module.locked ? (
                      <Lock className="w-6 h-6 text-muted-foreground" />
                    ) : (
                      <Zap className="w-6 h-6 text-primary" />
                    )}
                    <div className="flex-1">
                      <CardTitle className="text-lg">{module.title}</CardTitle>
                      <CardDescription>{module.description}</CardDescription>
                    </div>
                  </div>
                  <Badge variant="outline">{module.duration}</Badge>
                </div>
              </CardHeader>
            </Card>
          ))}
        </div>

        {!isAuthenticated && (
          <Card className="mt-8 bg-primary/5 border-primary">
            <CardContent className="p-8 text-center">
              <h3 className="text-2xl font-bold mb-4">Unlock Siddhi Powers</h3>
              <p className="text-muted-foreground mb-6">
                Sign up to access advanced techniques and develop superhuman capabilities
              </p>
              <Link href="/learn">
                <Button size="lg">Get Started</Button>
              </Link>
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  );
}
