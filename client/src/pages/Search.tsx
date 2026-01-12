import { useState } from "react";
import { trpc } from "@/lib/trpc";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Search as SearchIcon, Bookmark, BookmarkCheck, Loader2 } from "lucide-react";
import { useAuth } from "@/_core/hooks/useAuth";
import { toast } from "sonner";

export default function Search() {
  const [query, setQuery] = useState("");
  const [searchTerm, setSearchTerm] = useState("");
  const { isAuthenticated } = useAuth();

  const { data: results, isLoading } = trpc.thirukkural.search.useQuery(
    { query: searchTerm, limit: 50 },
    { enabled: searchTerm.length > 0 }
  );

  const { data: bookmarks } = trpc.bookmarks.list.useQuery(undefined, {
    enabled: isAuthenticated,
  });

  const addBookmarkMutation = trpc.bookmarks.add.useMutation({
    onSuccess: () => {
      toast.success("Bookmark added");
    },
  });

  const removeBookmarkMutation = trpc.bookmarks.remove.useMutation({
    onSuccess: () => {
      toast.success("Bookmark removed");
    },
  });

  const handleSearch = () => {
    if (query.trim()) {
      setSearchTerm(query.trim());
    }
  };

  const isBookmarked = (coupletId: number) => {
    return bookmarks?.some((b) => b.bookmark.coupletId === coupletId);
  };

  const toggleBookmark = (coupletId: number) => {
    if (!isAuthenticated) {
      toast.error("Please sign in to bookmark couplets");
      return;
    }

    if (isBookmarked(coupletId)) {
      removeBookmarkMutation.mutate({ coupletId });
    } else {
      addBookmarkMutation.mutate({ coupletId });
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted/20">
      <div className="container mx-auto px-4 py-8">
        {/* Search Header */}
        <div className="max-w-4xl mx-auto mb-8">
          <div className="text-center mb-6">
            <h1 className="text-4xl font-bold mb-2">Search Thirukkural</h1>
            <p className="text-muted-foreground">
              Explore 1,330 couplets of ancient Tamil wisdom
            </p>
          </div>

          <div className="flex gap-2">
            <Input
              placeholder="Search by keywords, themes, or wisdom..."
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              onKeyDown={(e) => e.key === "Enter" && handleSearch()}
              className="text-lg h-12"
            />
            <Button onClick={handleSearch} size="lg" disabled={isLoading}>
              {isLoading ? (
                <Loader2 className="w-5 h-5 animate-spin" />
              ) : (
                <SearchIcon className="w-5 h-5" />
              )}
            </Button>
          </div>
        </div>

        {/* Search Results */}
        <div className="max-w-4xl mx-auto space-y-4">
          {isLoading && (
            <div className="text-center py-12">
              <Loader2 className="w-8 h-8 animate-spin mx-auto text-primary" />
              <p className="text-muted-foreground mt-4">Searching...</p>
            </div>
          )}

          {!isLoading && results && results.length === 0 && searchTerm && (
            <Card>
              <CardContent className="py-12 text-center">
                <p className="text-muted-foreground">
                  No results found for "{searchTerm}". Try different keywords.
                </p>
              </CardContent>
            </Card>
          )}

          {!isLoading && !searchTerm && (
            <Card>
              <CardContent className="py-12 text-center">
                <SearchIcon className="w-12 h-12 mx-auto text-muted-foreground mb-4" />
                <p className="text-muted-foreground">
                  Enter a search term to explore Thirukkural wisdom
                </p>
              </CardContent>
            </Card>
          )}

          {results?.map((couplet) => (
            <Card key={couplet.id} className="hover:shadow-lg transition-shadow">
              <CardHeader>
                <div className="flex items-start justify-between">
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-2">
                      <Badge variant="secondary">Couplet {couplet.coupletNumber}</Badge>
                      <Badge variant="outline">{couplet.chapterName}</Badge>
                      {couplet.isPremium === 1 && (
                        <Badge className="bg-gradient-to-r from-primary to-accent">
                          Premium
                        </Badge>
                      )}
                    </div>
                    <CardTitle className="text-2xl text-primary mb-2">
                      {couplet.originalTamil}
                    </CardTitle>
                    {couplet.transliteration && (
                      <CardDescription className="text-base italic mb-2">
                        {couplet.transliteration}
                      </CardDescription>
                    )}
                  </div>
                  <Button
                    variant="ghost"
                    size="icon"
                    onClick={() => toggleBookmark(couplet.id)}
                    disabled={
                      addBookmarkMutation.isPending || removeBookmarkMutation.isPending
                    }
                  >
                    {isBookmarked(couplet.id) ? (
                      <BookmarkCheck className="w-5 h-5 text-primary" />
                    ) : (
                      <Bookmark className="w-5 h-5" />
                    )}
                  </Button>
                </div>
              </CardHeader>
              <CardContent>
                <div className="space-y-3">
                  <div>
                    <h4 className="font-semibold mb-1">English Translation:</h4>
                    <p className="text-foreground/90">{couplet.englishTranslation}</p>
                  </div>
                  {couplet.explanation && (
                    <div>
                      <h4 className="font-semibold mb-1">Explanation:</h4>
                      <p className="text-muted-foreground">{couplet.explanation}</p>
                    </div>
                  )}
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>
    </div>
  );
}
