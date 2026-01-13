import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { trpc } from "@/lib/trpc";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Search as SearchIcon, Bookmark, BookmarkCheck, Loader2, MessageCircle, Sparkles, Share2 } from "lucide-react";
import { useAuth } from "@/_core/hooks/useAuth";
import { toast } from "sonner";

export default function SearchPage() {
  const [query, setQuery] = useState("");
  const [searchTerm, setSearchTerm] = useState("");
  const [lifeQuestion, setLifeQuestion] = useState("");
  const [guidance, setGuidance] = useState<string | null>(null);
  const [activeTab, setActiveTab] = useState<"guidance" | "search">("guidance");
  const { isAuthenticated } = useAuth();
  const guidanceResponseRef = useRef<HTMLDivElement>(null);

  const { data: results, isLoading } = trpc.thirukkural.search.useQuery(
    { query: searchTerm, limit: 50 },
    { enabled: searchTerm.length > 0 }
  );

  const { data: bookmarks } = trpc.bookmarks.list.useQuery(undefined, {
    enabled: isAuthenticated,
  });

  const guidanceMutation = trpc.thirukkural.getAIGuidance.useMutation({
    onSuccess: (data) => {
      setGuidance(data.guidance);
      // Scroll to response after a short delay to ensure rendering
      setTimeout(() => {
        guidanceResponseRef.current?.scrollIntoView({ 
          behavior: 'smooth', 
          block: 'start' 
        });
      }, 100);
    },
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

  const handleGetGuidance = () => {
    if (!lifeQuestion.trim()) return;
    guidanceMutation.mutate({
      userContext: lifeQuestion,
    });
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

  const suggestedQuestions = [
    "How do I deal with a difficult boss?",
    "I'm feeling lost in my career",
    "How can I improve my relationships?",
    "I'm struggling with self-discipline",
  ];

  return (
    <div className="min-h-screen bg-gradient-to-b from-purple-50 via-white to-orange-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-900">
      <div className="container mx-auto px-4 py-6 pb-24">
        {/* Header */}
        <div className="text-center mb-6">
          <h1 className="text-3xl font-bold text-transparent bg-clip-text bg-gradient-to-r from-purple-600 to-orange-600 mb-1">
            திருக்குறள்
          </h1>
          <p className="text-lg font-semibold text-gray-900 dark:text-white">Thirukkural Wisdom</p>
          <p className="text-sm text-muted-foreground mt-1">
            1,330 couplets of ancient wisdom for modern life
          </p>
        </div>

        {/* Tab Switcher */}
        <div className="flex bg-gray-100 dark:bg-gray-800 rounded-xl p-1 mb-6 max-w-md mx-auto">
          <button
            onClick={() => setActiveTab("guidance")}
            className={`flex-1 py-2.5 px-4 rounded-lg text-sm font-medium transition-all ${
              activeTab === "guidance"
                ? "bg-white dark:bg-gray-700 text-purple-600 shadow-sm"
                : "text-gray-600 dark:text-gray-400"
            }`}
          >
            <MessageCircle className="w-4 h-4 inline mr-2" />
            Get Life Guidance
          </button>
          <button
            onClick={() => setActiveTab("search")}
            className={`flex-1 py-2.5 px-4 rounded-lg text-sm font-medium transition-all ${
              activeTab === "search"
                ? "bg-white dark:bg-gray-700 text-purple-600 shadow-sm"
                : "text-gray-600 dark:text-gray-400"
            }`}
          >
            <SearchIcon className="w-4 h-4 inline mr-2" />
            Search Couplets
          </button>
        </div>

        {/* Life Guidance Tab */}
        <AnimatePresence mode="wait">
          {activeTab === "guidance" && (
            <motion.div
              key="guidance"
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: -10 }}
              className="max-w-2xl mx-auto"
            >
              {/* Main Input Card */}
              <Card className="border-purple-200 dark:border-purple-900 shadow-lg">
                <CardHeader className="pb-3">
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 bg-gradient-to-br from-purple-500 to-orange-500 rounded-full flex items-center justify-center">
                      <Sparkles className="w-5 h-5 text-white" />
                    </div>
                    <div>
                      <CardTitle className="text-lg">What's on your mind?</CardTitle>
                      <CardDescription>
                        Describe your situation and receive wisdom from Thirukkural
                      </CardDescription>
                    </div>
                  </div>
                </CardHeader>
                <CardContent className="space-y-4">
                  <textarea
                    value={lifeQuestion}
                    onChange={(e) => setLifeQuestion(e.target.value)}
                    onKeyDown={(e) => {
                      if (e.key === 'Enter' && !e.shiftKey) {
                        e.preventDefault();
                        handleGetGuidance();
                      }
                    }}
                    placeholder="Example: I'm facing a tough decision at work about whether to speak up against unfair treatment..."
                    className="w-full p-4 border border-gray-200 dark:border-gray-700 rounded-xl focus:ring-2 focus:ring-purple-500 focus:border-transparent resize-none bg-white dark:bg-gray-800 text-gray-900 dark:text-white"
                    rows={3}
                  />

                  <Button
                    onClick={handleGetGuidance}
                    disabled={!lifeQuestion.trim() || guidanceMutation.isPending}
                    className="w-full bg-gradient-to-r from-purple-500 to-orange-500 hover:from-purple-600 hover:to-orange-600 text-white py-6 text-base"
                  >
                    {guidanceMutation.isPending ? (
                      <>
                        <Loader2 className="w-5 h-5 animate-spin mr-2" />
                        Finding wisdom...
                      </>
                    ) : (
                      <>
                        <Sparkles className="w-5 h-5 mr-2" />
                        Get Thirukkural Guidance
                      </>
                    )}
                  </Button>

                  {/* Suggested Questions */}
                  <div>
                    <p className="text-xs text-muted-foreground mb-2">Try asking about:</p>
                    <div className="flex flex-wrap gap-2">
                      {suggestedQuestions.map((q, i) => (
                        <button
                          key={i}
                          onClick={() => setLifeQuestion(q)}
                          className="text-xs bg-purple-50 dark:bg-purple-900/30 hover:bg-purple-100 dark:hover:bg-purple-900/50 text-purple-700 dark:text-purple-300 px-3 py-1.5 rounded-full transition-colors"
                        >
                          {q}
                        </button>
                      ))}
                    </div>
                  </div>
                </CardContent>
              </Card>

              {/* Error Display */}
              {guidanceMutation.isError && (
                <Card className="mt-4 border-red-200 bg-red-50 dark:bg-red-900/20">
                  <CardContent className="py-4 text-red-700 dark:text-red-300 text-sm">
                    Unable to get guidance. Please try again.
                  </CardContent>
                </Card>
              )}

              {/* Guidance Response */}
              {guidance && (
                <motion.div
                  ref={guidanceResponseRef}
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  className="mt-6"
                >
                  <Card className="border-orange-200 dark:border-orange-900 bg-gradient-to-br from-orange-50 to-purple-50 dark:from-gray-800 dark:to-gray-800">
                    <CardHeader className="pb-3">
                      <div className="flex items-center gap-2">
                        <div className="w-8 h-8 bg-gradient-to-r from-orange-500 to-purple-500 rounded-full flex items-center justify-center">
                          <Sparkles className="w-4 h-4 text-white" />
                        </div>
                        <CardTitle className="text-base">Thirukkural Wisdom</CardTitle>
                      </div>
                    </CardHeader>
                    <CardContent>
                      <div className="text-gray-700 dark:text-gray-300 whitespace-pre-wrap leading-relaxed">
                        {guidance}
                      </div>
                      <div className="mt-4 flex gap-2">
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => {
                            const shareText = `Thirukkural Wisdom:\n\n${guidance.substring(0, 200)}...\n\nGet personalized guidance at ${window.location.origin}`;
                            if (navigator.share) {
                              navigator.share({
                                title: 'Thirukkural Wisdom',
                                text: shareText,
                              }).catch(() => {});
                            } else {
                              navigator.clipboard.writeText(shareText);
                              toast.success('Copied to clipboard!');
                            }
                          }}
                          className="text-orange-600 hover:text-orange-700"
                        >
                          <Share2 className="w-4 h-4 mr-2" />
                          Share
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => {
                            setGuidance(null);
                            setLifeQuestion("");
                          }}
                          className="text-purple-600 hover:text-purple-700"
                        >
                          Ask another question
                        </Button>
                      </div>
                    </CardContent>
                  </Card>
                </motion.div>
              )}
            </motion.div>
          )}

          {/* Search Tab */}
          {activeTab === "search" && (
            <motion.div
              key="search"
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: -10 }}
              className="max-w-4xl mx-auto"
            >
              {/* Search Input */}
              <div className="flex gap-2 mb-6">
                <Input
                  placeholder="Search by keywords, themes, or wisdom..."
                  value={query}
                  onChange={(e) => setQuery(e.target.value)}
                  onKeyDown={(e) => e.key === "Enter" && handleSearch()}
                  className="text-base h-12"
                />
                <Button onClick={handleSearch} size="lg" disabled={isLoading}>
                  {isLoading ? (
                    <Loader2 className="w-5 h-5 animate-spin" />
                  ) : (
                    <SearchIcon className="w-5 h-5" />
                  )}
                </Button>
              </div>

              {/* Search Results */}
              <div className="space-y-4">
                {isLoading && (
                  <div className="text-center py-12">
                    <Loader2 className="w-8 h-8 animate-spin mx-auto text-purple-500" />
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
                  <Card className="border-purple-100 dark:border-purple-900">
                    <CardContent className="py-12 text-center">
                      <SearchIcon className="w-12 h-12 mx-auto text-purple-300 mb-4" />
                      <p className="text-muted-foreground">
                        Search through 1,330 Thirukkural couplets
                      </p>
                      <p className="text-sm text-muted-foreground mt-2">
                        Try: love, wealth, virtue, friendship, leadership
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
                          </div>
                          <CardTitle className="text-xl text-purple-700 dark:text-purple-400 mb-2">
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
                            <BookmarkCheck className="w-5 h-5 text-purple-500" />
                          ) : (
                            <Bookmark className="w-5 h-5" />
                          )}
                        </Button>
                      </div>
                    </CardHeader>
                    <CardContent>
                      <div className="space-y-3">
                        <div>
                          <h4 className="font-semibold mb-1 text-sm text-gray-600 dark:text-gray-400">Translation</h4>
                          <p className="text-gray-900 dark:text-gray-100">{couplet.englishTranslation}</p>
                        </div>
                        {couplet.explanation && (
                          <div>
                            <h4 className="font-semibold mb-1 text-sm text-gray-600 dark:text-gray-400">Explanation</h4>
                            <p className="text-muted-foreground">{couplet.explanation}</p>
                          </div>
                        )}
                      </div>
                    </CardContent>
                  </Card>
                ))}
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
}
