import { Volume2, Pause, Play } from "lucide-react";
import { useState, useRef, useEffect } from "react";
import { Button } from "./ui/button";

interface TextToSpeechProps {
  text: string;
  language?: string;
  className?: string;
}

export function TextToSpeech({ text, language = "ta-IN", className = "" }: TextToSpeechProps) {
  const [isPlaying, setIsPlaying] = useState(false);
  const [isPaused, setIsPaused] = useState(false);
  const [availableVoices, setAvailableVoices] = useState<SpeechSynthesisVoice[]>([]);
  const utteranceRef = useRef<SpeechSynthesisUtterance | null>(null);

  useEffect(() => {
    const loadVoices = () => {
      const voices = window.speechSynthesis.getVoices();
      setAvailableVoices(voices);
    };

    loadVoices();
    window.speechSynthesis.onvoiceschanged = loadVoices;

    return () => {
      window.speechSynthesis.onvoiceschanged = null;
    };
  }, []);

  const getBestVoice = (lang: string): SpeechSynthesisVoice | null => {
    if (availableVoices.length === 0) return null;

    // For Tamil content, prioritize Tamil voices
    if (lang === "ta-IN" || lang === "ta") {
      // Look for Tamil voices first
      const tamilVoice = availableVoices.find(v => 
        v.lang.startsWith("ta") || v.name.toLowerCase().includes("tamil")
      );
      if (tamilVoice) return tamilVoice;

      // Fallback to Indian English voices (better for Tamil transliteration)
      const indianEnglish = availableVoices.find(v => 
        v.lang === "en-IN" || v.name.toLowerCase().includes("india")
      );
      if (indianEnglish) return indianEnglish;
    }

    // For English content
    if (lang.startsWith("en")) {
      // Prefer Indian English for better pronunciation of Tamil words in English text
      const indianEnglish = availableVoices.find(v => 
        v.lang === "en-IN" || v.name.toLowerCase().includes("india")
      );
      if (indianEnglish) return indianEnglish;

      // Fallback to any English voice
      const englishVoice = availableVoices.find(v => v.lang.startsWith("en"));
      if (englishVoice) return englishVoice;
    }

    // Try to find exact language match
    const exactMatch = availableVoices.find(v => v.lang === lang);
    if (exactMatch) return exactMatch;

    // Try partial match
    const partialMatch = availableVoices.find(v => v.lang.startsWith(lang.split("-")[0]));
    if (partialMatch) return partialMatch;

    // Return default voice
    return availableVoices.find(v => v.default) || availableVoices[0] || null;
  };

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
    
    // Set the best available voice
    const bestVoice = getBestVoice(language);
    if (bestVoice) {
      utterance.voice = bestVoice;
      utterance.lang = bestVoice.lang;
    } else {
      utterance.lang = language;
    }
    
    utterance.rate = 0.85; // Slower for Tamil pronunciation
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
