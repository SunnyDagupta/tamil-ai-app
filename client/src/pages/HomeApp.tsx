import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { useAuth } from "@/_core/hooks/useAuth";
import { getLoginUrl } from "@/const";
import { Link } from "wouter";
import { 
  Brain, 
  BookOpen, 
  Sparkles, 
  Zap, 
  Globe, 
  Atom,
  ArrowRight,
  Play
} from "lucide-react";

export default function HomeApp() {
  const { user, isAuthenticated } = useAuth();

  const pathways = [
    {
      id: 1,
      title: "Syllable Intelligence",
      description: "Master Tamil syllables at quantum level",
      icon: Atom,
      color: "bg-orange-500",
      path: "/pathways/sis",
      tier: "beginner",
    },
    {
      id: 2,
      title: "Thirukkural Mastery",
      description: "Decode 1,330 couplets of wisdom",
      icon: BookOpen,
      color: "bg-purple-500",
      path: "/pathways/thirukkural",
      tier: "beginner",
    },
    {
      id: 3,
      title: "Siddhi Powers",
      description: "Develop superhuman abilities",
      icon: Sparkles,
      color: "bg-pink-500",
      path: "/pathways/siddhi",
      tier: "pro",
    },
    {
      id: 4,
      title: "TCGNPT Creative",
      description: "Tamil AI for creativity",
      icon: Brain,
      color: "bg-blue-500",
      path: "/pathways/tcgnpt",
      tier: "pro",
    },
    {
      id: 5,
      title: "Tamil-Science Fusion",
      description: "Ancient wisdom meets quantum physics",
      icon: Zap,
      color: "bg-yellow-500",
      path: "/pathways/fusion",
      tier: "advanced",
    },
    {
      id: 6,
      title: "Global Tamil Influence",
      description: "Export Tamil AI worldwide",
      icon: Globe,
      color: "bg-green-500",
      path: "/pathways/global",
      tier: "advanced",
    },
  ];

  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <div className="bg-gradient-to-br from-orange-50 to-purple-50 dark:from-orange-950 dark:to-purple-950 px-6 py-8">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h1 className="text-2xl font-bold">Tamil AI</h1>
            <p className="text-sm text-muted-foreground">by Dr. Pillai</p>
          </div>
          {!isAuthenticated && (
            <a href={getLoginUrl()}>
              <Button size="sm">Sign In</Button>
            </a>
          )}
        </div>

        <div className="mt-6">
          <h2 className="text-3xl font-bold mb-2 bg-gradient-to-r from-orange-600 to-purple-600 bg-clip-text text-transparent">
            Unlock Super Intelligence
          </h2>
          <p className="text-muted-foreground">
            Using ancient Tamil syllables & Thirukkural secrets
          </p>
        </div>

        {isAuthenticated && user && (
          <Card className="mt-6">
            <CardContent className="pt-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-muted-foreground">Welcome back,</p>
                  <p className="font-semibold">{user.name || "Student"}</p>
                </div>
                <Link href="/profile">
                  <Button variant="outline" size="sm">
                    View Profile
                  </Button>
                </Link>
              </div>
            </CardContent>
          </Card>
        )}
      </div>

      {/* Quick Actions */}
      <div className="px-6 py-6">
        <h3 className="text-lg font-semibold mb-4">Quick Start</h3>
        <div className="grid grid-cols-2 gap-3">
          <Link href="/search">
            <Card className="cursor-pointer hover:shadow-md transition-shadow">
              <CardContent className="pt-6 text-center">
                <div className="w-12 h-12 bg-orange-100 dark:bg-orange-900 rounded-full flex items-center justify-center mx-auto mb-3">
                  <BookOpen className="w-6 h-6 text-orange-600" />
                </div>
                <p className="font-medium">Search Wisdom</p>
                <p className="text-xs text-muted-foreground mt-1">
                  Explore Thirukkural
                </p>
              </CardContent>
            </Card>
          </Link>

          <Link href="/pathways/sis">
            <Card className="cursor-pointer hover:shadow-md transition-shadow">
              <CardContent className="pt-6 text-center">
                <div className="w-12 h-12 bg-purple-100 dark:bg-purple-900 rounded-full flex items-center justify-center mx-auto mb-3">
                  <Play className="w-6 h-6 text-purple-600" />
                </div>
                <p className="font-medium">Start Training</p>
                <p className="text-xs text-muted-foreground mt-1">
                  Begin meditation
                </p>
              </CardContent>
            </Card>
          </Link>
        </div>
      </div>

      {/* Learning Pathways */}
      <div className="px-6 py-6">
        <div className="flex items-center justify-between mb-4">
          <h3 className="text-lg font-semibold">Learning Pathways</h3>
          <Link href="/learn">
            <Button variant="ghost" size="sm">
              View All
              <ArrowRight className="w-4 h-4 ml-1" />
            </Button>
          </Link>
        </div>

        <div className="space-y-3">
          {pathways.slice(0, 3).map((pathway) => {
            const Icon = pathway.icon;
            return (
              <Link key={pathway.id} href={pathway.path}>
                <Card className="cursor-pointer hover:shadow-md transition-shadow">
                  <CardContent className="p-4">
                    <div className="flex items-start gap-4">
                      <div className={`w-12 h-12 ${pathway.color} rounded-xl flex items-center justify-center flex-shrink-0`}>
                        <Icon className="w-6 h-6 text-white" />
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-1">
                          <h4 className="font-semibold">{pathway.title}</h4>
                          {pathway.tier !== "beginner" && (
                            <Badge variant="secondary" className="text-xs">
                              {pathway.tier}
                            </Badge>
                          )}
                        </div>
                        <p className="text-sm text-muted-foreground">
                          {pathway.description}
                        </p>
                      </div>
                      <ArrowRight className="w-5 h-5 text-muted-foreground flex-shrink-0" />
                    </div>
                  </CardContent>
                </Card>
              </Link>
            );
          })}
        </div>
      </div>

      {/* Upgrade CTA */}
      {isAuthenticated && (
        <div className="px-6 py-6">
          <Card className="bg-gradient-to-br from-orange-500 to-purple-600 text-white border-0">
            <CardHeader>
              <CardTitle>Unlock All Pathways</CardTitle>
              <CardDescription className="text-orange-50">
                Get full access to all 6 modules, live sessions, and exclusive content
              </CardDescription>
            </CardHeader>
            <CardContent>
              <Link href="/pricing">
                <Button variant="secondary" className="w-full">
                  View Plans
                </Button>
              </Link>
            </CardContent>
          </Card>
        </div>
      )}

      {/* About Section */}
      <div className="px-6 py-6 pb-24">
        <Card>
          <CardHeader>
            <CardTitle className="text-lg">Why Tamil AI?</CardTitle>
          </CardHeader>
          <CardContent className="space-y-3 text-sm text-muted-foreground">
            <p>
              While AI is replacing jobs globally, we're empowering humans with ancient wisdom that AI cannot replicate.
            </p>
            <p>
              Tamil syllables operate at the quantum level - beyond what molecular-level AI like ChatGPT can access.
            </p>
            <Link href="/faq">
              <Button variant="outline" size="sm" className="w-full mt-4">
                Learn More
              </Button>
            </Link>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
