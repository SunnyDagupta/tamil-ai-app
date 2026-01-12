import { useState } from "react";
import { Card, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Search, Bookmark, BookmarkCheck, Loader2 } from "lucide-react";
import { trpc } from "@/lib/trpc";
import { useAuth } from "@/_core/hooks/useAuth";
import { toast } from "sonner";

export default function SearchPage() {
  const [searchQuery, setSearchQuery] = useState("");
  const { isAuthenticated } = useAuth();

  const { data: searchResults, isLoading } = trpc.thirukkural.search.useQuery(
    { query: searchQuery },
    { enabled: searchQuery.length > 2 }
  );

  const { data: bookmarks } = trpc.bookmarks.list.useQuery(
    undefined,
    { enabled: isAuthenticated }
  );

  const addBookmark = trpc.bookmarks.add.useMutation({
    onSuccess: () => {
      toast.success("Added to bookmarks");
    },
  });

  const removeBookmark = trpc.bookmarks.remove.useMutation({
    onSuccess: () => {
      toast.success("Removed from bookmarks");
    },
  });

  const isBookmarked = (coupletId: number) => {
    return bookmarks?.some((b) => b.bookmark.coupletId === coupletId);
  };

  const toggleBookmark = (coupletId: number) => {
    if (!isAuthenticated) {
      toast.error("Please sign in to bookmark");
      return;
    }

    if (isBookmarked(coupletId)) {
      const bookmark = bookmarks?.find((b) => b.bookmark.coupletId === coupletId);
      if (bookmark) {
        removeBookmark.mutate({ coupletId });
      }
    } else {
      addBookmark.mutate({ coupletId });
    }
  };

  return (
    <div className="min-h-screen">
      {/* Header */}
      <div className="bg-gradient-to-br from-orange-50 to-purple-50 dark:from-orange-950 dark:to-purple-950 px-6 py-8 sticky top-0 z-10">
        <h1 className="text-3xl font-bold mb-4">Search Thirukkural</h1>
        
        {/* Search Input */}
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-muted-foreground" />
          <Input
            type="text"
            placeholder="Search wisdom..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="pl-10 h-12 text-base"
          />
        </div>

        {searchQuery.length > 0 && searchQuery.length <= 2 && (
          <p className="text-sm text-muted-foreground mt-2">
            Type at least 3 characters to search
          </p>
        )}
      </div>

      {/* Results */}
      <div className="px-6 py-6 pb-24">
        {isLoading && (
          <div className="flex items-center justify-center py-12">
            <Loader2 className="w-8 h-8 animate-spin text-primary" />
          </div>
        )}

        {searchResults && searchResults.length === 0 && (
          <div className="text-center py-12">
            <p className="text-muted-foreground">No results found</p>
            <p className="text-sm text-muted-foreground mt-2">
              Try different keywords
            </p>
          </div>
        )}

        {searchResults && searchResults.length > 0 && (
          <div className="space-y-4">
            <p className="text-sm text-muted-foreground">
              Found {searchResults.length} couplets
            </p>

            {searchResults.map((couplet) => (
              <Card key={couplet.id}>
                <CardContent className="p-4">
                  <div className="flex items-start justify-between gap-3 mb-3">
                    <Badge variant="outline" className="text-xs">
                      Couplet {couplet.coupletNumber}
                    </Badge>
                    <Button
                      variant="ghost"
                      size="sm"
                      className="h-8 w-8 p-0"
                      onClick={() => toggleBookmark(couplet.id)}
                    >
                      {isBookmarked(couplet.id) ? (
                        <BookmarkCheck className="w-5 h-5 text-primary" />
                      ) : (
                        <Bookmark className="w-5 h-5" />
                      )}
                    </Button>
                  </div>

                  <div className="space-y-3">
                    <div>
                      <p className="text-sm text-muted-foreground mb-1">Tamil</p>
                      <p className="text-lg font-medium">{couplet.originalTamil}</p>
                    </div>

                    <div>
                      <p className="text-sm text-muted-foreground mb-1">English</p>
                      <p className="text-base">{couplet.englishTranslation}</p>
                    </div>

                    {couplet.explanation && (
                      <div>
                        <p className="text-sm text-muted-foreground mb-1">Explanation</p>
                        <p className="text-sm text-muted-foreground">
                          {couplet.explanation}
                        </p>
                      </div>
                    )}
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}

        {!searchQuery && bookmarks && bookmarks.length > 0 && (
          <div>
            <h2 className="text-xl font-semibold mb-4">Your Bookmarks</h2>
            <div className="space-y-4">
              {bookmarks.map((item) => (
                <Card key={item.bookmark.id}>
                  <CardContent className="p-4">
                    <div className="flex items-start justify-between gap-3 mb-3">
                      <Badge variant="outline" className="text-xs">
                        Saved
                      </Badge>
                      <Button
                        variant="ghost"
                        size="sm"
                        className="h-8 w-8 p-0"
                        onClick={() => toggleBookmark(item.bookmark.coupletId)}
                      >
                        <BookmarkCheck className="w-5 h-5 text-primary" />
                      </Button>
                    </div>

                    {item.bookmark.notes && (
                      <p className="text-sm text-muted-foreground mb-2">
                        {item.bookmark.notes}
                      </p>
                    )}
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>
        )}

        {!searchQuery && (!bookmarks || bookmarks.length === 0) && (
          <div className="text-center py-12">
            <Search className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
            <p className="text-lg font-medium mb-2">Search Thirukkural</p>
            <p className="text-sm text-muted-foreground">
              Explore 1,330 couplets of ancient Tamil wisdom
            </p>
          </div>
        )}
      </div>
    </div>
  );
}
