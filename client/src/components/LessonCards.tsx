import { useState } from "react";
import { motion, AnimatePresence, PanInfo } from "framer-motion";
import { ChevronLeft, ChevronRight, Check } from "lucide-react";
import { Button } from "@/components/ui/button";

export interface LessonCard {
  id: string;
  type: "intro" | "concept" | "comparison" | "insight" | "practice" | "summary";
  title?: string;
  subtitle?: string;
  content: string;
  tamil?: string;
  icon?: string;
  highlight?: boolean;
}

interface LessonCardsProps {
  cards: LessonCard[];
  onComplete?: () => void;
  lessonTitle: string;
}

export default function LessonCards({ cards, onComplete, lessonTitle }: LessonCardsProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [direction, setDirection] = useState(0);

  const goNext = () => {
    if (currentIndex < cards.length - 1) {
      setDirection(1);
      setCurrentIndex(currentIndex + 1);
    } else if (onComplete) {
      onComplete();
    }
  };

  const goPrev = () => {
    if (currentIndex > 0) {
      setDirection(-1);
      setCurrentIndex(currentIndex - 1);
    }
  };

  const handleDragEnd = (_: any, info: PanInfo) => {
    const threshold = 50;
    if (info.offset.x < -threshold) {
      goNext();
    } else if (info.offset.x > threshold) {
      goPrev();
    }
  };

  const currentCard = cards[currentIndex];
  const isLastCard = currentIndex === cards.length - 1;

  const getCardStyle = (type: LessonCard["type"]) => {
    switch (type) {
      case "intro":
        return "bg-gradient-to-br from-purple-500 to-orange-500 text-white";
      case "concept":
        return "bg-white dark:bg-gray-800 border-2 border-purple-200 dark:border-purple-800";
      case "comparison":
        return "bg-gradient-to-br from-orange-50 to-purple-50 dark:from-gray-800 dark:to-gray-900 border border-orange-200 dark:border-orange-900";
      case "insight":
        return "bg-gradient-to-br from-amber-50 to-orange-50 dark:from-gray-800 dark:to-gray-900 border-2 border-amber-300 dark:border-amber-700";
      case "practice":
        return "bg-gradient-to-br from-green-50 to-emerald-50 dark:from-gray-800 dark:to-gray-900 border-2 border-green-300 dark:border-green-700";
      case "summary":
        return "bg-gradient-to-br from-purple-600 to-pink-500 text-white";
      default:
        return "bg-white dark:bg-gray-800";
    }
  };

  const variants = {
    enter: (direction: number) => ({
      x: direction > 0 ? 300 : -300,
      opacity: 0,
    }),
    center: {
      x: 0,
      opacity: 1,
    },
    exit: (direction: number) => ({
      x: direction < 0 ? 300 : -300,
      opacity: 0,
    }),
  };

  return (
    <div className="flex flex-col h-full">
      {/* Header with progress */}
      <div className="px-4 py-3 bg-white/80 dark:bg-gray-900/80 backdrop-blur-sm sticky top-0 z-10">
        <div className="flex items-center justify-between mb-2">
          <h2 className="text-sm font-medium text-gray-600 dark:text-gray-400 truncate max-w-[200px]">
            {lessonTitle}
          </h2>
          <span className="text-sm font-medium text-purple-600">
            {currentIndex + 1} / {cards.length}
          </span>
        </div>
        {/* Progress bar */}
        <div className="h-1 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
          <motion.div
            className="h-full bg-gradient-to-r from-purple-500 to-orange-500"
            initial={{ width: 0 }}
            animate={{ width: `${((currentIndex + 1) / cards.length) * 100}%` }}
            transition={{ duration: 0.3 }}
          />
        </div>
      </div>

      {/* Card area */}
      <div className="flex-1 px-4 py-6 overflow-hidden relative">
        <AnimatePresence initial={false} custom={direction} mode="wait">
          <motion.div
            key={currentIndex}
            custom={direction}
            variants={variants}
            initial="enter"
            animate="center"
            exit="exit"
            transition={{ type: "spring", stiffness: 300, damping: 30 }}
            drag="x"
            dragConstraints={{ left: 0, right: 0 }}
            dragElastic={0.2}
            onDragEnd={handleDragEnd}
            className={`absolute inset-x-4 top-6 bottom-6 rounded-3xl shadow-xl p-6 flex flex-col ${getCardStyle(currentCard.type)}`}
          >
            {/* Card type indicator */}
            {currentCard.type !== "intro" && currentCard.type !== "summary" && (
              <div className="mb-4">
                <span className={`text-xs font-medium px-3 py-1 rounded-full ${
                  currentCard.type === "comparison" ? "bg-orange-100 text-orange-700 dark:bg-orange-900/50 dark:text-orange-300" :
                  currentCard.type === "insight" ? "bg-amber-100 text-amber-700 dark:bg-amber-900/50 dark:text-amber-300" :
                  currentCard.type === "practice" ? "bg-green-100 text-green-700 dark:bg-green-900/50 dark:text-green-300" :
                  "bg-purple-100 text-purple-700 dark:bg-purple-900/50 dark:text-purple-300"
                }`}>
                  {currentCard.type === "comparison" ? "Modern ↔ Ancient" :
                   currentCard.type === "insight" ? "Key Insight" :
                   currentCard.type === "practice" ? "Practice" :
                   "Concept"}
                </span>
              </div>
            )}

            {/* Title */}
            {currentCard.title && (
              <h3 className={`text-2xl font-bold mb-2 ${
                currentCard.type === "intro" || currentCard.type === "summary" ? "text-white" : "text-gray-900 dark:text-white"
              }`}>
                {currentCard.title}
              </h3>
            )}

            {/* Subtitle */}
            {currentCard.subtitle && (
              <p className={`text-sm mb-4 ${
                currentCard.type === "intro" || currentCard.type === "summary" ? "text-white/80" : "text-gray-500 dark:text-gray-400"
              }`}>
                {currentCard.subtitle}
              </p>
            )}

            {/* Tamil text */}
            {currentCard.tamil && (
              <p className={`text-lg font-medium mb-4 ${
                currentCard.type === "intro" || currentCard.type === "summary" ? "text-white/90" : "text-purple-600 dark:text-purple-400"
              }`}>
                {currentCard.tamil}
              </p>
            )}

            {/* Main content */}
            <div className={`flex-1 overflow-y-auto text-base leading-relaxed ${
              currentCard.type === "intro" || currentCard.type === "summary" ? "text-white/90" : "text-gray-700 dark:text-gray-300"
            }`}>
              {currentCard.content}
            </div>

            {/* Swipe hint for first card */}
            {currentIndex === 0 && (
              <div className="mt-4 text-center">
                <p className={`text-xs ${currentCard.type === "intro" ? "text-white/60" : "text-gray-400"}`}>
                  Swipe or tap arrows to continue
                </p>
              </div>
            )}
          </motion.div>
        </AnimatePresence>
      </div>

      {/* Navigation */}
      <div className="px-4 py-4 bg-white/80 dark:bg-gray-900/80 backdrop-blur-sm">
        <div className="flex items-center justify-between gap-4">
          <Button
            variant="outline"
            size="lg"
            onClick={goPrev}
            disabled={currentIndex === 0}
            className="flex-1"
          >
            <ChevronLeft className="w-5 h-5 mr-1" />
            Back
          </Button>
          
          <Button
            size="lg"
            onClick={goNext}
            className={`flex-1 ${isLastCard ? "bg-green-500 hover:bg-green-600" : "bg-gradient-to-r from-purple-500 to-orange-500 hover:from-purple-600 hover:to-orange-600"}`}
          >
            {isLastCard ? (
              <>
                <Check className="w-5 h-5 mr-1" />
                Complete
              </>
            ) : (
              <>
                Next
                <ChevronRight className="w-5 h-5 ml-1" />
              </>
            )}
          </Button>
        </div>

        {/* Dot indicators */}
        <div className="flex justify-center gap-1.5 mt-3">
          {cards.map((_, idx) => (
            <button
              key={idx}
              onClick={() => {
                setDirection(idx > currentIndex ? 1 : -1);
                setCurrentIndex(idx);
              }}
              className={`w-2 h-2 rounded-full transition-all ${
                idx === currentIndex
                  ? "bg-purple-500 w-6"
                  : idx < currentIndex
                  ? "bg-purple-300"
                  : "bg-gray-300 dark:bg-gray-600"
              }`}
            />
          ))}
        </div>
      </div>
    </div>
  );
}
