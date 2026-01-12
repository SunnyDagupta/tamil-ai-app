import { Play, Pause, SkipBack, SkipForward } from "lucide-react";
import { useState, useRef, useEffect } from "react";
import { Button } from "./ui/button";
import { Slider } from "./ui/slider";
import { trpc } from "@/lib/trpc";

interface AudioPlayerProps {
  audioUrl: string;
  meditationId: number;
  title: string;
  onComplete?: () => void;
}

export function AudioPlayer({ audioUrl, meditationId, title, onComplete }: AudioPlayerProps) {
  const [isPlaying, setIsPlaying] = useState(false);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const startTimeRef = useRef<number>(0);
  
  const createSession = trpc.meditations.createSession.useMutation();

  useEffect(() => {
    const audio = new Audio(audioUrl);
    audioRef.current = audio;

    audio.addEventListener('loadedmetadata', () => {
      setDuration(audio.duration);
    });

    audio.addEventListener('timeupdate', () => {
      setCurrentTime(audio.currentTime);
    });

    audio.addEventListener('ended', async () => {
      setIsPlaying(false);
      const listenedSeconds = Math.floor(audio.duration);
      
      await createSession.mutateAsync({
        meditationId,
        durationListenedSeconds: listenedSeconds,
        completed: true,
      });
      
      onComplete?.();
    });

    return () => {
      audio.pause();
      audio.src = '';
    };
  }, [audioUrl, meditationId]);

  const togglePlay = async () => {
    if (!audioRef.current) return;

    if (isPlaying) {
      audioRef.current.pause();
      setIsPlaying(false);
    } else {
      if (startTimeRef.current === 0) {
        startTimeRef.current = Date.now();
      }
      audioRef.current.play();
      setIsPlaying(true);
    }
  };

  const seek = (value: number[]) => {
    if (!audioRef.current) return;
    const time = value[0];
    audioRef.current.currentTime = time;
    setCurrentTime(time);
  };

  const skip = (seconds: number) => {
    if (!audioRef.current) return;
    audioRef.current.currentTime = Math.max(0, Math.min(duration, currentTime + seconds));
  };

  const formatTime = (time: number) => {
    const minutes = Math.floor(time / 60);
    const seconds = Math.floor(time % 60);
    return `${minutes}:${seconds.toString().padStart(2, '0')}`;
  };

  return (
    <div className="bg-card rounded-lg p-6 space-y-4">
      <div className="text-center">
        <h3 className="font-semibold text-lg">{title}</h3>
        <p className="text-sm text-muted-foreground mt-1">
          {formatTime(currentTime)} / {formatTime(duration)}
        </p>
      </div>

      <Slider
        value={[currentTime]}
        max={duration}
        step={0.1}
        onValueChange={seek}
        className="w-full"
      />

      <div className="flex items-center justify-center gap-4">
        <Button
          variant="outline"
          size="icon"
          onClick={() => skip(-10)}
        >
          <SkipBack className="h-4 w-4" />
        </Button>

        <Button
          size="lg"
          onClick={togglePlay}
          className="h-14 w-14 rounded-full"
        >
          {isPlaying ? (
            <Pause className="h-6 w-6" />
          ) : (
            <Play className="h-6 w-6 ml-1" />
          )}
        </Button>

        <Button
          variant="outline"
          size="icon"
          onClick={() => skip(10)}
        >
          <SkipForward className="h-4 w-4" />
        </Button>
      </div>
    </div>
  );
}
