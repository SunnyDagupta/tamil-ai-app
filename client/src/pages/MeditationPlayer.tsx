import { useEffect, useRef, useState } from "react";
import { useParams, useLocation } from "wouter";
import { trpc } from "@/lib/trpc";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Slider } from "@/components/ui/slider";
import { Badge } from "@/components/ui/badge";
import { Textarea } from "@/components/ui/textarea";
import {
  Play,
  Pause,
  SkipBack,
  SkipForward,
  Volume2,
  VolumeX,
  Loader2,
  Star,
} from "lucide-react";
import { toast } from "sonner";
import { useAuth } from "@/_core/hooks/useAuth";

export default function MeditationPlayer() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const { isAuthenticated } = useAuth();
  
  const meditationId = parseInt(params.id || "0");
  const audioRef = useRef<HTMLAudioElement>(null);
  
  const [isPlaying, setIsPlaying] = useState(false);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [volume, setVolume] = useState(1);
  const [isMuted, setIsMuted] = useState(false);
  const [rating, setRating] = useState(0);
  const [notes, setNotes] = useState("");
  const [hasStarted, setHasStarted] = useState(false);

  const { data: meditation, isLoading } = trpc.meditations.getById.useQuery({ id: meditationId });

  const createSessionMutation = trpc.meditations.createSession.useMutation({
    onSuccess: () => {
      toast.success("Session saved!");
      navigate("/dashboard");
    },
  });

  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    const updateTime = () => setCurrentTime(audio.currentTime);
    const updateDuration = () => setDuration(audio.duration);
    const handleEnded = () => {
      setIsPlaying(false);
      if (isAuthenticated && hasStarted) {
        saveSession(true);
      }
    };

    audio.addEventListener("timeupdate", updateTime);
    audio.addEventListener("loadedmetadata", updateDuration);
    audio.addEventListener("ended", handleEnded);

    return () => {
      audio.removeEventListener("timeupdate", updateTime);
      audio.removeEventListener("loadedmetadata", updateDuration);
      audio.removeEventListener("ended", handleEnded);
    };
  }, [isAuthenticated, hasStarted]);

  const togglePlay = () => {
    const audio = audioRef.current;
    if (!audio) return;

    if (isPlaying) {
      audio.pause();
    } else {
      audio.play();
      if (!hasStarted) setHasStarted(true);
    }
    setIsPlaying(!isPlaying);
  };

  const handleSeek = (value: number[]) => {
    const audio = audioRef.current;
    if (!audio) return;
    audio.currentTime = value[0];
    setCurrentTime(value[0]);
  };

  const handleVolumeChange = (value: number[]) => {
    const audio = audioRef.current;
    if (!audio) return;
    const newVolume = value[0];
    audio.volume = newVolume;
    setVolume(newVolume);
    setIsMuted(newVolume === 0);
  };

  const toggleMute = () => {
    const audio = audioRef.current;
    if (!audio) return;
    if (isMuted) {
      audio.volume = volume || 0.5;
      setIsMuted(false);
    } else {
      audio.volume = 0;
      setIsMuted(true);
    }
  };

  const skip = (seconds: number) => {
    const audio = audioRef.current;
    if (!audio) return;
    audio.currentTime = Math.max(0, Math.min(duration, currentTime + seconds));
  };

  const saveSession = (completed: boolean) => {
    if (!isAuthenticated) {
      toast.error("Please sign in to save your progress");
      return;
    }

    createSessionMutation.mutate({
      meditationId,
      durationListenedSeconds: Math.floor(currentTime),
      completed,
      rating: rating > 0 ? rating : undefined,
      notes: notes.trim() || undefined,
    });
  };

  const formatTime = (seconds: number) => {
    const mins = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${mins}:${secs.toString().padStart(2, "0")}`;
  };

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  if (!meditation) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <Card>
          <CardContent className="py-12 text-center">
            <p className="text-muted-foreground">Meditation not found</p>
            <Button className="mt-4" onClick={() => navigate("/meditations")}>
              Back to Meditations
            </Button>
          </CardContent>
        </Card>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted/20">
      <div className="container mx-auto px-4 py-8">
        <div className="max-w-3xl mx-auto">
          <Card className="shadow-2xl">
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
              <div className="flex items-center gap-2 mb-2">
                <Badge>{meditation.requiredTier}</Badge>
                <Badge variant="outline">{meditation.difficulty}</Badge>
              </div>
              <CardTitle className="text-3xl">{meditation.title}</CardTitle>
              {meditation.titleTamil && (
                <p className="text-lg text-primary font-medium">{meditation.titleTamil}</p>
              )}
              {meditation.syllable && (
                <div className="flex items-center gap-2 mt-2">
                  <span className="text-sm text-muted-foreground">Syllable:</span>
                  <Badge variant="secondary" className="text-lg font-bold">
                    {meditation.syllableTamil || meditation.syllable}
                  </Badge>
                </div>
              )}
              <CardDescription className="text-base mt-4">
                {meditation.description}
              </CardDescription>
            </CardHeader>

            <CardContent className="space-y-6">
              {/* Audio Element */}
              <audio ref={audioRef} src={meditation.audioUrl} preload="metadata" />

              {/* Progress Bar */}
              <div className="space-y-2">
                <Slider
                  value={[currentTime]}
                  max={duration || 100}
                  step={1}
                  onValueChange={handleSeek}
                  className="w-full"
                />
                <div className="flex justify-between text-sm text-muted-foreground">
                  <span>{formatTime(currentTime)}</span>
                  <span>{formatTime(duration)}</span>
                </div>
              </div>

              {/* Controls */}
              <div className="flex items-center justify-center gap-4">
                <Button variant="ghost" size="icon" onClick={() => skip(-10)}>
                  <SkipBack className="w-5 h-5" />
                </Button>
                <Button
                  size="lg"
                  className="w-16 h-16 rounded-full"
                  onClick={togglePlay}
                >
                  {isPlaying ? (
                    <Pause className="w-6 h-6" />
                  ) : (
                    <Play className="w-6 h-6 ml-1" />
                  )}
                </Button>
                <Button variant="ghost" size="icon" onClick={() => skip(10)}>
                  <SkipForward className="w-5 h-5" />
                </Button>
              </div>

              {/* Volume Control */}
              <div className="flex items-center gap-4">
                <Button variant="ghost" size="icon" onClick={toggleMute}>
                  {isMuted ? (
                    <VolumeX className="w-5 h-5" />
                  ) : (
                    <Volume2 className="w-5 h-5" />
                  )}
                </Button>
                <Slider
                  value={[isMuted ? 0 : volume]}
                  max={1}
                  step={0.1}
                  onValueChange={handleVolumeChange}
                  className="w-32"
                />
              </div>

              {/* Rating */}
              {isAuthenticated && (
                <div className="space-y-4 pt-4 border-t">
                  <div>
                    <label className="text-sm font-medium mb-2 block">Rate this meditation:</label>
                    <div className="flex gap-2">
                      {[1, 2, 3, 4, 5].map((star) => (
                        <button
                          key={star}
                          onClick={() => setRating(star)}
                          className="transition-colors"
                        >
                          <Star
                            className={`w-8 h-8 ${
                              star <= rating
                                ? "fill-primary text-primary"
                                : "text-muted-foreground"
                            }`}
                          />
                        </button>
                      ))}
                    </div>
                  </div>

                  <div>
                    <label className="text-sm font-medium mb-2 block">Notes (optional):</label>
                    <Textarea
                      placeholder="How did this meditation make you feel?"
                      value={notes}
                      onChange={(e) => setNotes(e.target.value)}
                      rows={3}
                    />
                  </div>

                  <Button
                    className="w-full"
                    onClick={() => saveSession(currentTime >= duration * 0.9)}
                    disabled={createSessionMutation.isPending || !hasStarted}
                  >
                    {createSessionMutation.isPending ? (
                      <Loader2 className="w-4 h-4 animate-spin mr-2" />
                    ) : null}
                    Save Session
                  </Button>
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
}
