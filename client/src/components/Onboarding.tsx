import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { motion, AnimatePresence } from "framer-motion";
import { ChevronRight, BookOpen, Brain, Sparkles, Play } from "lucide-react";

interface OnboardingProps {
  onComplete: () => void;
}

const screens = [
  {
    id: 1,
    title: "Welcome to Tamil AI",
    subtitle: "by Dr. Pillai",
    description: "Unlock your Super Intelligence through ancient Tamil wisdom. Discover the power of sacred syllables, Thirukkural wisdom, and quantum consciousness.",
    icon: Sparkles,
    gradient: "from-orange-500 to-red-500",
    bgGradient: "from-orange-50 to-red-50",
    tamilText: "பேரறிவு",
    tamilMeaning: "Super Intelligence"
  },
  {
    id: 2,
    title: "6 Learning Pathways",
    subtitle: "Your Journey to Wisdom",
    description: "Master Tamil syllables (SIS), explore 1,330 Thirukkural couplets, develop Siddhi powers, learn TCGNPT, discover Tamil-Science fusion, and join the global Tamil AI community.",
    icon: BookOpen,
    gradient: "from-purple-500 to-indigo-500",
    bgGradient: "from-purple-50 to-indigo-50",
    tamilText: "கற்றல் பாதைகள்",
    tamilMeaning: "Learning Pathways"
  },
  {
    id: 3,
    title: "Begin Your Journey",
    subtitle: "Transform Your Mind",
    description: "Track your progress, complete lessons, practice daily meditations, and unlock achievements as you develop your super intelligence through Tamil wisdom.",
    icon: Brain,
    gradient: "from-emerald-500 to-teal-500",
    bgGradient: "from-emerald-50 to-teal-50",
    tamilText: "தொடங்கு",
    tamilMeaning: "Begin"
  }
];

export default function Onboarding({ onComplete }: OnboardingProps) {
  const [currentScreen, setCurrentScreen] = useState(0);

  const handleNext = () => {
    if (currentScreen < screens.length - 1) {
      setCurrentScreen(currentScreen + 1);
    } else {
      onComplete();
    }
  };

  const handleSkip = () => {
    onComplete();
  };

  const screen = screens[currentScreen];
  const Icon = screen.icon;

  return (
    <div className={`fixed inset-0 z-50 bg-gradient-to-b ${screen.bgGradient} flex flex-col`}>
      {/* Skip Button */}
      <div className="flex justify-end p-4">
        <Button 
          variant="ghost" 
          onClick={handleSkip}
          className="text-gray-500 hover:text-gray-700"
        >
          Skip
        </Button>
      </div>

      {/* Content */}
      <div className="flex-1 flex flex-col items-center justify-center px-6">
        <AnimatePresence mode="wait">
          <motion.div
            key={currentScreen}
            initial={{ opacity: 0, x: 50 }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: -50 }}
            transition={{ duration: 0.3 }}
            className="flex flex-col items-center text-center max-w-md"
          >
            {/* Icon Circle */}
            <motion.div
              initial={{ scale: 0 }}
              animate={{ scale: 1 }}
              transition={{ delay: 0.2, type: "spring", stiffness: 200 }}
              className={`w-28 h-28 rounded-full bg-gradient-to-br ${screen.gradient} flex items-center justify-center mb-8 shadow-lg`}
            >
              <Icon className="w-14 h-14 text-white" />
            </motion.div>

            {/* Tamil Text */}
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: 0.3 }}
              className="mb-4"
            >
              <span className={`text-4xl font-bold bg-gradient-to-r ${screen.gradient} bg-clip-text text-transparent`}>
                {screen.tamilText}
              </span>
              <p className="text-sm text-gray-500 mt-1">{screen.tamilMeaning}</p>
            </motion.div>

            {/* Title */}
            <motion.h1
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: 0.4 }}
              className="text-2xl font-bold text-gray-900 mb-2"
            >
              {screen.title}
            </motion.h1>

            {/* Subtitle */}
            <motion.p
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: 0.5 }}
              className={`text-sm font-medium bg-gradient-to-r ${screen.gradient} bg-clip-text text-transparent mb-4`}
            >
              {screen.subtitle}
            </motion.p>

            {/* Description */}
            <motion.p
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: 0.6 }}
              className="text-gray-600 leading-relaxed"
            >
              {screen.description}
            </motion.p>
          </motion.div>
        </AnimatePresence>
      </div>

      {/* Bottom Section */}
      <div className="p-6 pb-10">
        {/* Progress Dots */}
        <div className="flex justify-center gap-2 mb-6">
          {screens.map((_, index) => (
            <motion.div
              key={index}
              className={`h-2 rounded-full transition-all duration-300 ${
                index === currentScreen 
                  ? `w-8 bg-gradient-to-r ${screen.gradient}` 
                  : "w-2 bg-gray-300"
              }`}
              animate={{ scale: index === currentScreen ? 1 : 0.8 }}
            />
          ))}
        </div>

        {/* Next/Start Button */}
        <Button
          onClick={handleNext}
          className={`w-full py-6 text-lg font-semibold bg-gradient-to-r ${screen.gradient} hover:opacity-90 transition-opacity`}
        >
          {currentScreen === screens.length - 1 ? (
            <>
              <Play className="w-5 h-5 mr-2" />
              Start Learning
            </>
          ) : (
            <>
              Next
              <ChevronRight className="w-5 h-5 ml-2" />
            </>
          )}
        </Button>
      </div>
    </div>
  );
}
