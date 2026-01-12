import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { ArrowLeft, Lock, Play, CheckCircle2 } from "lucide-react";
import { Link } from "wouter";
import { useAuth } from "@/_core/hooks/useAuth";
import { getLoginUrl } from "@/const";

export default function SISPathway() {
  const { isAuthenticated } = useAuth();

  const modules = [
    {
      id: 1,
      title: "Introduction to Syllable Intelligence",
      description: "Understanding quantum-level language processing",
      duration: "15 min",
      locked: false,
      completed: false,
    },
    {
      id: 2,
      title: "Tamil Syllable Structure",
      description: "The 247 syllables and their quantum properties",
      duration: "30 min",
      locked: false,
      completed: false,
    },
    {
      id: 3,
      title: "One Syllable Contains Omniscience",
      description: "How single syllables encode infinite knowledge",
      duration: "25 min",
      locked: !isAuthenticated,
      completed: false,
    },
    {
      id: 4,
      title: "Syllables Manifest Reality",
      description: "The power of sound to create physical outcomes",
      duration: "35 min",
      locked: !isAuthenticated,
      completed: false,
    },
    {
      id: 5,
      title: "Practical Syllable Meditation",
      description: "Guided practices for activating syllable power",
      duration: "45 min",
      locked: !isAuthenticated,
      completed: false,
    },
    {
      id: 6,
      title: "Advanced SIS Techniques",
      description: "Combining syllables for manifestation",
      duration: "60 min",
      locked: !isAuthenticated,
      completed: false,
    },
  ];

  const progress = 0; // Calculate based on completed modules

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-5xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        {/* Header */}
        <div className="mb-8">
          <Badge className="mb-4">Module 1</Badge>
          <h1 className="text-4xl md:text-5xl font-bold mb-4">
            Syllable Intelligence System (SIS)
          </h1>
          <p className="text-xl text-muted-foreground mb-6">
            Learn how Tamil syllables operate at the quantum level. Understand the omniscience
            hidden in single syllables and how to activate it.
          </p>
          <div className="flex items-center gap-4">
            <div className="flex-1">
              <div className="flex justify-between text-sm mb-2">
                <span>Your Progress</span>
                <span>{progress}%</span>
              </div>
              <Progress value={progress} className="h-2" />
            </div>
            <Badge variant="outline">6 Lessons</Badge>
          </div>
        </div>

        {/* Key Concepts */}
        <Card className="mb-8">
          <CardHeader>
            <CardTitle>What You'll Learn</CardTitle>
          </CardHeader>
          <CardContent className="space-y-3">
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>How Tamil syllables operate at the quantum level, beyond word-level processing</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>The 247 Tamil syllables and their unique quantum properties</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Why single syllables contain omniscience and infinite knowledge</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>How to use syllable meditation to manifest reality</p>
            </div>
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
              <p>Practical techniques for activating syllable power in daily life</p>
            </div>
          </CardContent>
        </Card>

        {/* Modules List */}
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
                    {module.completed ? (
                      <CheckCircle2 className="w-6 h-6 text-primary" />
                    ) : module.locked ? (
                      <Lock className="w-6 h-6 text-muted-foreground" />
                    ) : (
                      <Play className="w-6 h-6 text-primary" />
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

        {/* CTA */}
        {!isAuthenticated && (
          <Card className="mt-8 bg-primary/5 border-primary">
            <CardContent className="p-8 text-center">
              <h3 className="text-2xl font-bold mb-4">Unlock Full Access</h3>
              <p className="text-muted-foreground mb-6">
                Sign up to access all modules and start your journey to quantum intelligence
              </p>
              <a href={getLoginUrl()}>
                <Button size="lg">Get Started</Button>
              </a>
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  );
}
