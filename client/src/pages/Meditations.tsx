import { useState } from "react";
import { trpc } from "@/lib/trpc";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Play, Clock, Sparkles, TrendingUp, Heart, Zap, Loader2 } from "lucide-react";
import { Link } from "wouter";

export default function Meditations() {
  const [selectedCategory, setSelectedCategory] = useState<number | undefined>();

  const { data: categories, isLoading: categoriesLoading } =
    trpc.meditations.categories.useQuery();
  
  const { data: meditations, isLoading: meditationsLoading } =
    trpc.meditations.list.useQuery({ categoryId: selectedCategory });

  const getCategoryIcon = (name: string) => {
    switch (name.toLowerCase()) {
      case "creativity":
        return <Sparkles className="w-5 h-5" />;
      case "prosperity":
        return <TrendingUp className="w-5 h-5" />;
      case "health":
        return <Heart className="w-5 h-5" />;
      case "manifestation":
        return <Zap className="w-5 h-5" />;
      default:
        return <Play className="w-5 h-5" />;
    }
  };

  const formatDuration = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, "0")}`;
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted/20">
      <div className="container mx-auto px-4 py-8">
        {/* Header */}
        <div className="max-w-6xl mx-auto mb-8">
          <div className="text-center mb-6">
            <h1 className="text-4xl font-bold mb-2">Brain Training Meditations</h1>
            <p className="text-muted-foreground">
              Develop super intelligence through Tamil syllable meditations
            </p>
          </div>

          {/* Category Tabs */}
          {categoriesLoading ? (
            <div className="flex justify-center py-4">
              <Loader2 className="w-6 h-6 animate-spin text-primary" />
            </div>
          ) : (
            <Tabs
              value={selectedCategory?.toString() || "all"}
              onValueChange={(v) => setSelectedCategory(v === "all" ? undefined : parseInt(v))}
              className="w-full"
            >
              <TabsList className="w-full justify-start overflow-x-auto">
                <TabsTrigger value="all">All</TabsTrigger>
                {categories?.map((cat) => (
                  <TabsTrigger key={cat.id} value={cat.id.toString()} className="gap-2">
                    {getCategoryIcon(cat.name)}
                    {cat.displayName}
                  </TabsTrigger>
                ))}
              </TabsList>
            </Tabs>
          )}
        </div>

        {/* Meditations Grid */}
        <div className="max-w-6xl mx-auto">
          {meditationsLoading ? (
            <div className="text-center py-12">
              <Loader2 className="w-8 h-8 animate-spin mx-auto text-primary" />
              <p className="text-muted-foreground mt-4">Loading meditations...</p>
            </div>
          ) : meditations && meditations.length === 0 ? (
            <Card>
              <CardContent className="py-12 text-center">
                <p className="text-muted-foreground">
                  No meditations found in this category. Check back soon!
                </p>
              </CardContent>
            </Card>
          ) : (
            <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
              {meditations?.map((meditation) => (
                <Link key={meditation.id} href={`/meditation/${meditation.id}`}>
                  <Card className="cursor-pointer hover:shadow-xl transition-all hover:scale-105 h-full">
                    {meditation.thumbnailUrl && (
                      <div className="aspect-video w-full overflow-hidden rounded-t-lg">
                        <img
                          src={meditation.thumbnailUrl}
                          alt={meditation.title}
                          className="w-full h-full object-cover"
                        />
                      </div>
                    )}
                    <CardHeader>
                      <div className="flex items-start justify-between gap-2 mb-2">
                        <Badge
                          variant={
                            meditation.requiredTier === "beginner"
                              ? "secondary"
                              : meditation.requiredTier === "pro"
                              ? "default"
                              : "destructive"
                          }
                        >
                          {meditation.requiredTier}
                        </Badge>
                        <Badge variant="outline" className="gap-1">
                          <Clock className="w-3 h-3" />
                          {formatDuration(meditation.durationSeconds)}
                        </Badge>
                      </div>
                      <CardTitle className="line-clamp-2">{meditation.title}</CardTitle>
                      {meditation.titleTamil && (
                        <p className="text-sm text-primary font-medium">
                          {meditation.titleTamil}
                        </p>
                      )}
                      {meditation.syllable && (
                        <div className="flex items-center gap-2 mt-2">
                          <span className="text-xs text-muted-foreground">Syllable:</span>
                          <Badge variant="secondary" className="font-bold">
                            {meditation.syllableTamil || meditation.syllable}
                          </Badge>
                        </div>
                      )}
                    </CardHeader>
                    <CardContent>
                      <CardDescription className="line-clamp-3">
                        {meditation.description}
                      </CardDescription>
                      <div className="mt-4 flex items-center justify-between">
                        <div className="flex items-center gap-2 text-sm text-muted-foreground">
                          <Play className="w-4 h-4" />
                          <span>{meditation.playCount} plays</span>
                        </div>
                        <Button size="sm" className="gap-2">
                          <Play className="w-4 h-4" />
                          Start
                        </Button>
                      </div>
                    </CardContent>
                  </Card>
                </Link>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
