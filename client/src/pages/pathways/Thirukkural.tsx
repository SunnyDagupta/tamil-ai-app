import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import { ArrowLeft, Search, BookOpen, Bookmark } from "lucide-react";
import { Link } from "wouter";
import { useState } from "react";
import { trpc } from "@/lib/trpc";
import { useAuth } from "@/_core/hooks/useAuth";
// Auth removed for public access

export default function ThirukkuralPathway() {
  const { isAuthenticated } = useAuth();
  const [searchQuery, setSearchQuery] = useState("");
  
  const { data: couplets, isLoading } = trpc.thirukkural.search.useQuery(
    { query: searchQuery },
    { enabled: searchQuery.length > 2 }
  );

  const { data: bookmarkedCouplets } = trpc.bookmarks.list.useQuery(
    undefined,
    { enabled: isAuthenticated }
  );

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-6xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        {/* Header */}
        <div className="mb-8">
          <Badge className="mb-4">Module 2</Badge>
          <h1 className="text-4xl md:text-5xl font-bold mb-4">
            Thirukkural Mastery
          </h1>
          <p className="text-xl text-muted-foreground mb-6">
            Decode the 1,330 couplets containing complete knowledge systems: business, ethics,
            love, war strategy, and quantum physics all in Tamil wisdom.
          </p>
          <Card className="bg-primary/5 border-primary/20">
            <CardContent className="pt-6">
              <p className="italic text-foreground/90 mb-2">
                "Thirukkural embodies பேரறிவு (super intelligence) - sudden intuitive wisdom that transcends logical reasoning. Each couplet is a quantum code containing infinite knowledge."
              </p>
              <p className="text-sm text-muted-foreground text-right">- Dr. Pillai</p>
            </CardContent>
          </Card>
        </div>

        {/* Search Section */}
        <Card className="mb-8">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Search className="w-5 h-5" />
              Search Thirukkural
            </CardTitle>
            <CardDescription>
              Search through 1,330 couplets by keywords, themes, or concepts
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="relative">
              <Search className="absolute left-3 top-3 w-5 h-5 text-muted-foreground" />
              <Input
                placeholder="Search for wisdom... (e.g., 'virtue', 'wealth', 'love')"
                className="pl-10"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
              />
            </div>

            {isLoading && searchQuery.length > 2 && (
              <div className="mt-4 text-center text-muted-foreground">Searching...</div>
            )}

            {couplets && couplets.length > 0 && (
              <div className="mt-6 space-y-4">
                {couplets.map((couplet) => (
                  <Card key={couplet.id} className="hover:shadow-md transition-shadow">
                    <CardHeader>
                      <div className="flex items-start justify-between">
                        <div className="flex-1">
                          <CardTitle className="text-lg">
                            Couplet {couplet.coupletNumber} - Chapter {couplet.chapterNumber}
                          </CardTitle>
                          <CardDescription>{couplet.chapterName}</CardDescription>
                        </div>
                        {isAuthenticated && (
                          <Button variant="ghost" size="sm">
                            <Bookmark className="w-4 h-4" />
                          </Button>
                        )}
                      </div>
                    </CardHeader>
                    <CardContent>
                      <div className="space-y-3">
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">Tamil</p>
                          <p className="text-lg font-tamil">{couplet.originalTamil}</p>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">Transliteration</p>
                          <p className="italic">{couplet.transliteration}</p>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">English Translation</p>
                          <p>{couplet.englishTranslation || 'Translation not available'}</p>
                        </div>
                        {couplet.explanation && (
                          <div>
                            <p className="text-sm text-muted-foreground mb-1">Explanation</p>
                            <p className="text-sm">{couplet.explanation}</p>
                          </div>
                        )}
                      </div>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}

            {couplets && couplets.length === 0 && searchQuery.length > 2 && (
              <div className="mt-4 text-center text-muted-foreground">
                No couplets found. Try different keywords.
              </div>
            )}
          </CardContent>
        </Card>

        {/* Bookmarked Couplets */}
        {isAuthenticated && bookmarkedCouplets && bookmarkedCouplets.length > 0 && (
          <Card className="mb-8">
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <Bookmark className="w-5 h-5" />
                Your Bookmarked Couplets
              </CardTitle>
              <CardDescription>
                {bookmarkedCouplets.length} couplets saved for later study
              </CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-3">
                {bookmarkedCouplets.slice(0, 5).map((bookmark: any) => (
                  <div key={bookmark.id} className="flex items-center justify-between p-3 border rounded-lg">
                    <div>
                      <p className="font-medium">Couplet {bookmark.thirukkuralNumber}</p>
                      <p className="text-sm text-muted-foreground">
                        Added {new Date(bookmark.createdAt).toLocaleDateString()}
                      </p>
                    </div>
                    <Button variant="ghost" size="sm">
                      View
                    </Button>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Structure Overview */}
        <div className="grid md:grid-cols-3 gap-6 mb-8">
          <Card>
            <CardHeader>
              <CardTitle className="text-3xl font-bold text-primary">1,330</CardTitle>
              <CardDescription>Total Couplets</CardDescription>
            </CardHeader>
          </Card>
          <Card>
            <CardHeader>
              <CardTitle className="text-3xl font-bold text-primary">133</CardTitle>
              <CardDescription>Chapters (Adhikarams)</CardDescription>
            </CardHeader>
          </Card>
          <Card>
            <CardHeader>
              <CardTitle className="text-3xl font-bold text-primary">3</CardTitle>
              <CardDescription>Main Sections</CardDescription>
            </CardHeader>
          </Card>
        </div>

        {/* Three Main Sections */}
        <div className="space-y-4 mb-8">
          <h2 className="text-2xl font-bold">The Three Sections of Thirukkural</h2>
          
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <BookOpen className="w-5 h-5" />
                Aram (Virtue) - Chapters 1-38
              </CardTitle>
              <CardDescription>
                The foundation of righteous living and moral conduct
              </CardDescription>
            </CardHeader>
            <CardContent>
              <p className="text-sm text-muted-foreground">
                380 couplets covering topics like hospitality, compassion, gratitude, self-control,
                and ethical behavior in society.
              </p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <BookOpen className="w-5 h-5" />
                Porul (Wealth) - Chapters 39-108
              </CardTitle>
              <CardDescription>
                Practical wisdom for prosperity and governance
              </CardDescription>
            </CardHeader>
            <CardContent>
              <p className="text-sm text-muted-foreground">
                700 couplets on kingship, ministers, army, fortifications, friendship, avoiding
                harmful associations, and achieving material success.
              </p>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <BookOpen className="w-5 h-5" />
                Inbam (Love) - Chapters 109-133
              </CardTitle>
              <CardDescription>
                The nature of love and human relationships
              </CardDescription>
            </CardHeader>
            <CardContent>
              <p className="text-sm text-muted-foreground">
                250 couplets exploring romantic love, longing, separation, and the psychology of
                human connection.
              </p>
            </CardContent>
          </Card>
        </div>

        {/* CTA */}
        {!isAuthenticated && (
          <Card className="bg-primary/5 border-primary">
            <CardContent className="p-8 text-center">
              <h3 className="text-2xl font-bold mb-4">Unlock Full Access</h3>
              <p className="text-muted-foreground mb-6">
                Sign up to bookmark couplets, track your progress, and access detailed explanations
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
