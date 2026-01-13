import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Link } from "wouter";
import { 
  Brain, 
  BookOpen, 
  Sparkles, 
  Zap, 
  Globe, 
  Atom,
  ArrowRight,
  Play,
  Search,
  MessageCircle
} from "lucide-react";
import AskForWisdom from "@/components/AskForWisdom";

export default function HomeApp() {
  const pathways = [
    {
      id: 1,
      title: "Syllable Intelligence",
      tamil: "எழுத்து அறிவு",
      description: "Master Tamil syllables at quantum level",
      icon: Atom,
      gradient: "from-orange-500 to-red-500",
      path: "/pathways/sis",
    },
    {
      id: 2,
      title: "Thirukkural Mastery",
      tamil: "திருக்குறள்",
      description: "Decode 1,330 couplets of wisdom",
      icon: BookOpen,
      gradient: "from-purple-500 to-pink-500",
      path: "/pathways/thirukkural",
    },
    {
      id: 3,
      title: "Siddhi Powers",
      tamil: "சித்தி சக்தி",
      description: "Develop superhuman abilities",
      icon: Sparkles,
      gradient: "from-pink-500 to-rose-500",
      path: "/pathways/siddhi",
    },
    {
      id: 4,
      title: "TCGNPT Creative",
      tamil: "படைப்பாற்றல்",
      description: "Tamil AI for creativity",
      icon: Brain,
      gradient: "from-blue-500 to-cyan-500",
      path: "/pathways/tcgnpt",
    },
    {
      id: 5,
      title: "Tamil-Science Fusion",
      tamil: "அறிவியல் இணைப்பு",
      description: "Ancient wisdom meets quantum physics",
      icon: Zap,
      gradient: "from-yellow-500 to-orange-500",
      path: "/pathways/fusion",
    },
    {
      id: 6,
      title: "Global Tamil Influence",
      tamil: "உலக தமிழ்",
      description: "Export Tamil AI worldwide",
      icon: Globe,
      gradient: "from-green-500 to-teal-500",
      path: "/pathways/global",
    },
  ];

  return (
    <div className="min-h-screen bg-gradient-to-b from-orange-50 via-white to-purple-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-900">
      {/* Hero Section - Matching Onboarding Style */}
      <div className="relative px-6 pt-8 pb-6">
        {/* Animated Icon */}
        <div className="flex justify-center mb-4">
          <div className="w-20 h-20 bg-gradient-to-br from-orange-500 to-red-500 rounded-full flex items-center justify-center shadow-lg shadow-orange-500/30 animate-pulse">
            <Sparkles className="w-10 h-10 text-white" />
          </div>
        </div>

        {/* Tamil Branding */}
        <div className="text-center">
          <h1 className="text-4xl font-bold text-transparent bg-clip-text bg-gradient-to-r from-orange-600 to-red-600 mb-1">
            பேரறிவு
          </h1>
          <p className="text-sm text-muted-foreground mb-3">Super Intelligence</p>
          
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-1">
            Tamil AI
          </h2>
          <p className="text-orange-600 font-medium text-sm">by Dr. Pillai</p>
        </div>

        {/* Tagline */}
        <p className="text-center text-muted-foreground mt-4 max-w-xs mx-auto">
          Unlock your Super Intelligence through ancient Tamil wisdom
        </p>
      </div>

      {/* Ask for Wisdom - Primary Feature */}
      <div className="px-6 py-2">
        <AskForWisdom />
      </div>

      {/* Quick Actions - Prominent CTAs */}
      <div className="px-6 py-4">
        <div className="grid grid-cols-2 gap-3">
          <Link href="/pathways/sis">
            <Card className="cursor-pointer hover:shadow-lg transition-all hover:scale-[1.02] border-orange-200 dark:border-orange-900">
              <CardContent className="p-4 text-center">
                <div className="w-14 h-14 bg-gradient-to-br from-orange-500 to-red-500 rounded-2xl flex items-center justify-center mx-auto mb-3 shadow-md shadow-orange-500/20">
                  <Play className="w-7 h-7 text-white" />
                </div>
                <p className="font-semibold text-gray-900 dark:text-white">Start Learning</p>
                <p className="text-xs text-muted-foreground mt-1">
                  Begin your journey
                </p>
              </CardContent>
            </Card>
          </Link>

          <Link href="/search">
            <Card className="cursor-pointer hover:shadow-lg transition-all hover:scale-[1.02] border-purple-200 dark:border-purple-900">
              <CardContent className="p-4 text-center">
                <div className="w-14 h-14 bg-gradient-to-br from-purple-500 to-pink-500 rounded-2xl flex items-center justify-center mx-auto mb-3 shadow-md shadow-purple-500/20">
                  <Search className="w-7 h-7 text-white" />
                </div>
                <p className="font-semibold text-gray-900 dark:text-white">Search Wisdom</p>
                <p className="text-xs text-muted-foreground mt-1">
                  Explore Thirukkural
                </p>
              </CardContent>
            </Card>
          </Link>
        </div>
        
        {/* Dr. Pillai Wisdom Card */}
        <Link href="/wisdom">
          <Card className="cursor-pointer hover:shadow-lg transition-all hover:scale-[1.01] mt-3 bg-gradient-to-r from-orange-500 to-purple-500 text-white border-0">
            <CardContent className="p-4">
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 bg-white/20 backdrop-blur rounded-xl flex items-center justify-center flex-shrink-0">
                  <Sparkles className="w-6 h-6 text-white" />
                </div>
                <div className="flex-1">
                  <p className="font-semibold">Dr. Pillai's Wisdom</p>
                  <p className="text-xs text-white/80">Quotes, videos & teachings</p>
                </div>
                <ArrowRight className="w-5 h-5 text-white/80" />
              </div>
            </CardContent>
          </Card>
        </Link>
      </div>

      {/* Learning Pathways */}
      <div className="px-6 py-4">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h3 className="text-lg font-bold text-gray-900 dark:text-white">Learning Pathways</h3>
            <p className="text-xs text-muted-foreground">கற்றல் பாதைகள்</p>
          </div>
          <Link href="/learn">
            <Button variant="ghost" size="sm" className="text-orange-600">
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
                <Card className="cursor-pointer hover:shadow-md transition-all hover:scale-[1.01]">
                  <CardContent className="p-4">
                    <div className="flex items-center gap-4">
                      <div className={`w-12 h-12 bg-gradient-to-br ${pathway.gradient} rounded-xl flex items-center justify-center flex-shrink-0 shadow-sm`}>
                        <Icon className="w-6 h-6 text-white" />
                      </div>
                      <div className="flex-1 min-w-0">
                        <h4 className="font-semibold text-gray-900 dark:text-white">{pathway.title}</h4>
                        <p className="text-xs text-orange-600 font-medium">{pathway.tamil}</p>
                        <p className="text-xs text-muted-foreground mt-0.5">
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

      {/* About Section */}
      <div className="px-6 py-4 pb-24">
        <Card className="bg-gradient-to-br from-gray-50 to-orange-50 dark:from-gray-800 dark:to-gray-800 border-orange-100 dark:border-gray-700">
          <CardHeader className="pb-2">
            <CardTitle className="text-lg flex items-center gap-2">
              <Brain className="w-5 h-5 text-orange-600" />
              Why Tamil AI?
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-3 text-sm text-muted-foreground">
            <p>
              While AI is replacing jobs globally, we're empowering humans with ancient wisdom that AI cannot replicate.
            </p>
            <p className="font-medium text-orange-600">
              Tamil syllables operate at the quantum level - beyond what molecular-level AI like ChatGPT can access.
            </p>
            <Link href="/learn">
              <Button className="w-full mt-4 bg-gradient-to-r from-orange-500 to-red-500 hover:from-orange-600 hover:to-red-600">
                Start Your Journey
                <ArrowRight className="w-4 h-4 ml-2" />
              </Button>
            </Link>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
