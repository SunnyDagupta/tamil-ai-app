import { useState } from "react";
import { motion, AnimatePresence, PanInfo } from "framer-motion";
import { ChevronLeft, ChevronRight, Check, Volume2, X } from "lucide-react";
import { Button } from "@/components/ui/button";
import { TextToSpeech } from "./TextToSpeech";

export interface ContentCard {
  type: "title" | "text" | "comparison" | "list" | "quote" | "practice";
  title?: string;
  subtitle?: string;
  content?: string;
  items?: string[];
  left?: string;
  right?: string;
}

export interface Lesson {
  id: number;
  title: string;
  description: string;
  cards: ContentCard[];
}

interface LessonViewerProps {
  lesson: Lesson;
  onClose: () => void;
  onComplete: () => void;
  moduleName: string;
}

export default function LessonViewer({ lesson, onClose, onComplete, moduleName }: LessonViewerProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [direction, setDirection] = useState(0);

  const cards = lesson.cards;
  const currentCard = cards[currentIndex];
  const isLastCard = currentIndex === cards.length - 1;
  const progress = ((currentIndex + 1) / cards.length) * 100;

  const goNext = () => {
    if (currentIndex < cards.length - 1) {
      setDirection(1);
      setCurrentIndex(currentIndex + 1);
    } else {
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

  const getCardStyle = (type: ContentCard["type"]) => {
    switch (type) {
      case "title":
        return "bg-gradient-to-br from-purple-600 to-orange-500";
      case "comparison":
        return "bg-gradient-to-br from-blue-50 to-purple-50 dark:from-gray-800 dark:to-gray-900";
      case "quote":
        return "bg-gradient-to-br from-amber-50 to-orange-50 dark:from-gray-800 dark:to-gray-900";
      case "practice":
        return "bg-gradient-to-br from-green-50 to-emerald-50 dark:from-gray-800 dark:to-gray-900";
      case "list":
        return "bg-gradient-to-br from-purple-50 to-pink-50 dark:from-gray-800 dark:to-gray-900";
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

  const renderCardContent = (card: ContentCard) => {
    const isLight = card.type === "title";

    switch (card.type) {
      case "title":
        return (
          <div className="flex flex-col items-center justify-center h-full text-center text-white p-6">
            <h2 className="text-3xl font-bold mb-4">{card.title}</h2>
            {card.subtitle && (
              <p className="text-lg text-white/80">{card.subtitle}</p>
            )}
            <p className="mt-6 text-white/70 text-sm">Swipe to begin</p>
          </div>
        );

      case "comparison":
        return (
          <div className="p-6 h-full flex flex-col">
            <span className="text-xs font-medium px-3 py-1 rounded-full bg-blue-100 text-blue-700 dark:bg-blue-900/50 dark:text-blue-300 self-start mb-4">
              Modern ↔ Ancient
            </span>
            {card.title && (
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-4">{card.title}</h3>
            )}
            <div className="flex-1 flex flex-col gap-4">
              <div className="flex-1 bg-blue-100/50 dark:bg-blue-900/30 rounded-xl p-4">
                <p className="text-xs font-medium text-blue-600 dark:text-blue-400 mb-2">Modern Science</p>
                <p className="text-gray-700 dark:text-gray-300">{card.left}</p>
              </div>
              <div className="flex items-center justify-center">
                <span className="text-2xl">↕</span>
              </div>
              <div className="flex-1 bg-purple-100/50 dark:bg-purple-900/30 rounded-xl p-4">
                <p className="text-xs font-medium text-purple-600 dark:text-purple-400 mb-2">Tamil Wisdom</p>
                <p className="text-gray-700 dark:text-gray-300">{card.right}</p>
              </div>
            </div>
          </div>
        );

      case "quote":
        return (
          <div className="p-6 h-full flex flex-col justify-center">
            <span className="text-xs font-medium px-3 py-1 rounded-full bg-amber-100 text-amber-700 dark:bg-amber-900/50 dark:text-amber-300 self-start mb-4">
              Dr. Pillai's Teaching
            </span>
            <blockquote className="text-xl italic text-gray-700 dark:text-gray-300 leading-relaxed">
              "{card.content}"
            </blockquote>
            {card.title && (
              <p className="mt-4 text-sm text-gray-500 dark:text-gray-400">— {card.title}</p>
            )}
          </div>
        );

      case "list":
        return (
          <div className="p-6 h-full flex flex-col">
            <span className="text-xs font-medium px-3 py-1 rounded-full bg-purple-100 text-purple-700 dark:bg-purple-900/50 dark:text-purple-300 self-start mb-4">
              Key Points
            </span>
            {card.title && (
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-4">{card.title}</h3>
            )}
            <div className="flex-1 space-y-3 overflow-y-auto">
              {card.items?.map((item, idx) => (
                <div key={idx} className="flex gap-3 items-start">
                  <div className="w-6 h-6 rounded-full bg-purple-500 text-white flex items-center justify-center flex-shrink-0 text-sm font-medium">
                    {idx + 1}
                  </div>
                  <p className="text-gray-700 dark:text-gray-300 flex-1">{item}</p>
                </div>
              ))}
            </div>
          </div>
        );

      case "practice":
        return (
          <div className="p-6 h-full flex flex-col">
            <span className="text-xs font-medium px-3 py-1 rounded-full bg-green-100 text-green-700 dark:bg-green-900/50 dark:text-green-300 self-start mb-4">
              Practice
            </span>
            {card.title && (
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-4">{card.title}</h3>
            )}
            <div className="flex-1 overflow-y-auto">
              <p className="text-gray-700 dark:text-gray-300 leading-relaxed">{card.content}</p>
            </div>
          </div>
        );

      default:
        return (
          <div className="p-6 h-full flex flex-col">
            {card.title && (
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-4">{card.title}</h3>
            )}
            <div className="flex-1 overflow-y-auto">
              <p className="text-gray-700 dark:text-gray-300 leading-relaxed">{card.content || ''}</p>
            </div>
          </div>
        );
    }
  };

  return (
    <div className="fixed inset-0 bg-gray-100 dark:bg-gray-900 z-50 flex flex-col">
      {/* Header */}
      <div className="px-4 py-3 bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700">
        <div className="flex items-center justify-between mb-2">
          <button onClick={onClose} className="p-2 -ml-2 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-full">
            <X className="w-5 h-5 text-gray-600 dark:text-gray-400" />
          </button>
          <span className="text-sm font-medium text-purple-600">
            {currentIndex + 1} / {cards.length}
          </span>
        </div>
        <h2 className="text-sm font-medium text-gray-600 dark:text-gray-400 truncate">
          {lesson.title}
        </h2>
        {/* Progress bar */}
        <div className="h-1 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden mt-2">
          <motion.div
            className="h-full bg-gradient-to-r from-purple-500 to-orange-500"
            initial={{ width: 0 }}
            animate={{ width: `${progress}%` }}
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
            className={`absolute inset-x-4 top-6 bottom-6 rounded-3xl shadow-xl overflow-hidden ${getCardStyle(currentCard.type)}`}
          >
            {renderCardContent(currentCard)}
          </motion.div>
        </AnimatePresence>
      </div>

      {/* Navigation */}
      <div className="px-4 py-4 bg-white dark:bg-gray-800 border-t border-gray-200 dark:border-gray-700">
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
        <div className="flex justify-center gap-1 mt-3 flex-wrap max-w-full">
          {cards.length <= 12 ? (
            cards.map((_, idx) => (
              <button
                key={idx}
                onClick={() => {
                  setDirection(idx > currentIndex ? 1 : -1);
                  setCurrentIndex(idx);
                }}
                className={`w-2 h-2 rounded-full transition-all ${
                  idx === currentIndex
                    ? "bg-purple-500 w-4"
                    : idx < currentIndex
                    ? "bg-purple-300"
                    : "bg-gray-300 dark:bg-gray-600"
                }`}
              />
            ))
          ) : (
            <span className="text-xs text-gray-500">
              Card {currentIndex + 1} of {cards.length}
            </span>
          )}
        </div>
      </div>
    </div>
  );
}
