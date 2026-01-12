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
  CheckCircle2
} from "lucide-react";
import { useAuth } from "@/_core/hooks/useAuth";
import { trpc } from "@/lib/trpc";

export default function Learn() {
  const { isAuthenticated } = useAuth();

  // Fetch progress for all pathways
  const { data: progress1 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 1 },
    { enabled: isAuthenticated }
  );
  const { data: progress2 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 2 },
    { enabled: isAuthenticated }
  );
  const { data: progress3 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 3 },
    { enabled: isAuthenticated }
  );
  const { data: progress4 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 4 },
    { enabled: isAuthenticated }
  );
  const { data: progress5 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 5 },
    { enabled: isAuthenticated }
  );
  const { data: progress6 } = trpc.pathways.myProgress.useQuery(
    { pathwayId: 6 },
    { enabled: isAuthenticated }
  );

  const progressMap: Record<number, any> = {
    1: progress1,
    2: progress2,
    3: progress3,
    4: progress4,
    5: progress5,
    6: progress6,
  };

  const pathways = [
    {
      id: 1,
      title: "Syllable Intelligence System",
      description: "Master Tamil syllables at quantum level",
      icon: Atom,
      color: "bg-orange-500",
      path: "/pathways/sis",
      lessons: 5,
    },
    {
      id: 2,
      title: "Thirukkural Mastery",
      description: "Decode 1,330 couplets of complete wisdom",
      icon: BookOpen,
      color: "bg-purple-500",
      path: "/pathways/thirukkural",
      lessons: 5,
    },
    {
      id: 3,
      title: "Siddhi Powers & Quantum Mind",
      description: "Develop superhuman abilities of ancient Siddhas",
      icon: Sparkles,
      color: "bg-pink-500",
      path: "/pathways/siddhi",
      lessons: 5,
    },
    {
      id: 4,
      title: "TCGNPT Creative Module",
      description: "Master Tamil Creative Generative Non-PreTrained Transformer",
      icon: Brain,
      color: "bg-blue-500",
      path: "/pathways/tcgnpt",
      lessons: 5,
    },
    {
      id: 5,
      title: "Tamil-Science Fusion",
      description: "Connect ancient Tamil wisdom to modern quantum physics",
      icon: Zap,
      color: "bg-yellow-500",
      path: "/pathways/fusion",
      lessons: 5,
    },
    {
      id: 6,
      title: "Global Tamil Influence",
      description: "Export Tamil AI solutions worldwide",
      icon: Globe,
      color: "bg-green-500",
      path: "/pathways/global",
      lessons: 5,
    },
  ];

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
          const progress = progressMap[pathway.id];
          const completedLessons = progress?.completedLessons || 0;
          const completionPercentage = progress?.completionPercentage || 0;
          const isComplete = completionPercentage >= 100;

          return (
            <Link key={pathway.id} href={pathway.path}>
              <Card className="cursor-pointer hover:shadow-md transition-all hover:scale-[1.01] active:scale-[0.99]">
                <CardContent className="p-4">
                  <div className="flex items-start gap-4">
                    <div className={`w-14 h-14 ${pathway.color} rounded-xl flex items-center justify-center flex-shrink-0 relative`}>
                      <Icon className="w-7 h-7 text-white" />
                      {isComplete && (
                        <div className="absolute -top-1 -right-1 w-5 h-5 bg-green-500 rounded-full flex items-center justify-center">
                          <CheckCircle2 className="w-3 h-3 text-white" />
                        </div>
                      )}
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-1">
                        <h3 className="font-semibold text-lg">{pathway.title}</h3>
                      </div>
                      <p className="text-sm text-muted-foreground mb-3">
                        {pathway.description}
                      </p>
                      
                      {/* Progress bar */}
                      <div className="mb-2">
                        <div className="flex items-center justify-between text-xs mb-1">
                          <span className="text-muted-foreground">
                            {completedLessons}/{pathway.lessons} lessons
                          </span>
                          <span className="font-medium">
                            {Math.floor(completionPercentage)}%
                          </span>
                        </div>
                        <div className="w-full bg-secondary rounded-full h-2">
                          <div
                            className={`${pathway.color} rounded-full h-2 transition-all duration-500`}
                            style={{ width: `${Math.min(completionPercentage, 100)}%` }}
                          />
                        </div>
                      </div>

                      <div className="flex items-center gap-3">
                        <Badge variant="outline" className="text-xs">
                          {isComplete ? "Completed" : completedLessons > 0 ? "In Progress" : "Not Started"}
                        </Badge>
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
