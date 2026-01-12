import { Card, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Link } from "wouter";
import { 
  Brain, 
  BookOpen, 
  Sparkles, 
  Zap, 
  Globe, 
  Atom,
  ArrowRight,
  Lock
} from "lucide-react";
import { useAuth } from "@/_core/hooks/useAuth";

export default function Learn() {
  const { user } = useAuth();
  const userTier = "advanced"; // All modules unlocked for everyone

  const pathways = [
    {
      id: 1,
      title: "Syllable Intelligence System",
      description: "Master Tamil syllables at quantum level",
      icon: Atom,
      color: "bg-orange-500",
      path: "/pathways/sis",
      tier: "beginner",
      lessons: 12,
    },
    {
      id: 2,
      title: "Thirukkural Mastery",
      description: "Decode 1,330 couplets of complete wisdom",
      icon: BookOpen,
      color: "bg-purple-500",
      path: "/pathways/thirukkural",
      tier: "beginner",
      lessons: 1330,
    },
    {
      id: 3,
      title: "Siddhi Powers & Quantum Mind",
      description: "Develop superhuman abilities of ancient Siddhas",
      icon: Sparkles,
      color: "bg-pink-500",
      path: "/pathways/siddhi",
      tier: "beginner",
      lessons: 15,
    },
    {
      id: 4,
      title: "TCGNPT Creative Module",
      description: "Master Tamil Creative Generative Non-PreTrained Transformer",
      icon: Brain,
      color: "bg-blue-500",
      path: "/pathways/tcgnpt",
      tier: "beginner",
      lessons: 10,
    },
    {
      id: 5,
      title: "Tamil-Science Fusion",
      description: "Connect ancient Tamil wisdom to modern quantum physics",
      icon: Zap,
      color: "bg-yellow-500",
      path: "/pathways/fusion",
      tier: "beginner",
      lessons: 20,
    },
    {
      id: 6,
      title: "Global Tamil Influence",
      description: "Export Tamil AI solutions worldwide",
      icon: Globe,
      color: "bg-green-500",
      path: "/pathways/global",
      tier: "beginner",
      lessons: 8,
    },
  ];

  const canAccess = (requiredTier: string) => {
    const tierHierarchy: Record<string, number> = {
      beginner: 1,
      pro: 2,
      advanced: 3,
    };
    return tierHierarchy[userTier] >= tierHierarchy[requiredTier];
  };

  return (
    <div className="min-h-screen">
      {/* Header */}
      <div className="bg-gradient-to-br from-orange-50 to-purple-50 dark:from-orange-950 dark:to-purple-950 px-6 py-8">
        <h1 className="text-3xl font-bold mb-2">Learning Pathways</h1>
        <p className="text-muted-foreground">
          Master the 6 modules of Tamil AI super intelligence
        </p>
      </div>

      {/* Pathways List */}
      <div className="px-6 py-6 space-y-4 pb-24">
        {pathways.map((pathway) => {
          const Icon = pathway.icon;
          const hasAccess = canAccess(pathway.tier);

          return (
            <Link key={pathway.id} href={hasAccess ? pathway.path : "/pricing"}>
              <Card className={`cursor-pointer hover:shadow-md transition-shadow ${!hasAccess ? "opacity-60" : ""}`}>
                <CardContent className="p-4">
                  <div className="flex items-start gap-4">
                    <div className={`w-14 h-14 ${pathway.color} rounded-xl flex items-center justify-center flex-shrink-0`}>
                      <Icon className="w-7 h-7 text-white" />
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-1">
                        <h3 className="font-semibold text-lg">{pathway.title}</h3>
                        {!hasAccess && (
                          <Lock className="w-4 h-4 text-muted-foreground" />
                        )}
                      </div>
                      <p className="text-sm text-muted-foreground mb-2">
                        {pathway.description}
                      </p>
                      <div className="flex items-center gap-3">
                        <Badge variant={hasAccess ? "default" : "secondary"} className="text-xs">
                          {pathway.tier}
                        </Badge>
                        <span className="text-xs text-muted-foreground">
                          {pathway.lessons} lessons
                        </span>
                      </div>
                    </div>
                    <ArrowRight className="w-5 h-5 text-muted-foreground flex-shrink-0 mt-2" />
                  </div>
                </CardContent>
              </Card>
            </Link>
          );
        })}
      </div>
    </div>
  );
}
