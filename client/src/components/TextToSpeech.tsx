import { Volume2, Pause, Play } from "lucide-react";
import { useState, useRef } from "react";
import { Button } from "./ui/button";

interface TextToSpeechProps {
  text: string;
  language?: string;
  className?: string;
}

export function TextToSpeech({ text, language = "en-US", className = "" }: TextToSpeechProps) {
  const [isPlaying, setIsPlaying] = useState(false);
  const [isPaused, setIsPaused] = useState(false);
  const utteranceRef = useRef<SpeechSynthesisUtterance | null>(null);

  const speak = () => {
    if (!('speechSynthesis' in window)) {
      alert('Text-to-speech is not supported in your browser');
      return;
    }

    // If already speaking and paused, resume
    if (isPaused) {
      window.speechSynthesis.resume();
      setIsPaused(false);
      setIsPlaying(true);
      return;
    }

    // If already speaking, pause
    if (isPlaying) {
      window.speechSynthesis.pause();
      setIsPaused(true);
      setIsPlaying(false);
      return;
    }

    // Start new speech
    const utterance = new SpeechSynthesisUtterance(text);
    utterance.lang = language;
    utterance.rate = 0.9; // Slightly slower for better comprehension
    utterance.pitch = 1;

    utterance.onstart = () => {
      setIsPlaying(true);
      setIsPaused(false);
    };

    utterance.onend = () => {
      setIsPlaying(false);
      setIsPaused(false);
      utteranceRef.current = null;
    };

    utterance.onerror = () => {
      setIsPlaying(false);
      setIsPaused(false);
      utteranceRef.current = null;
    };

    utteranceRef.current = utterance;
    window.speechSynthesis.speak(utterance);
  };

  const stop = () => {
    window.speechSynthesis.cancel();
    setIsPlaying(false);
    setIsPaused(false);
    utteranceRef.current = null;
  };

  return (
    <div className={`flex items-center gap-2 ${className}`}>
      <Button
        variant="outline"
        size="sm"
        onClick={speak}
        className="gap-2"
      >
        {isPlaying ? (
          <>
            <Pause className="h-4 w-4" />
            Pause
          </>
        ) : isPaused ? (
          <>
            <Play className="h-4 w-4" />
            Resume
          </>
        ) : (
          <>
            <Volume2 className="h-4 w-4" />
            Listen
          </>
        )}
      </Button>
      {(isPlaying || isPaused) && (
        <Button
          variant="ghost"
          size="sm"
          onClick={stop}
        >
          Stop
        </Button>
      )}
    </div>
  );
}
