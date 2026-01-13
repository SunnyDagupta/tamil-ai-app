import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { trpc } from "../lib/trpc";

interface AskForWisdomProps {
  coupletId?: number;
  coupletTamil?: string;
  coupletEnglish?: string;
}

export function AskForWisdom({ coupletId, coupletTamil, coupletEnglish }: AskForWisdomProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [question, setQuestion] = useState("");
  const [guidance, setGuidance] = useState<string | null>(null);
  
  const guidanceMutation = trpc.thirukkural.getAIGuidance.useMutation({
    onSuccess: (data) => {
      setGuidance(data.guidance);
    },
  });

  const handleAskWisdom = () => {
    if (!question.trim()) return;
    guidanceMutation.mutate({
      coupletId,
      userContext: question,
    });
  };

  const suggestedQuestions = [
    "How can I apply this to my career?",
    "What does this teach about relationships?",
    "How can this help with my current challenges?",
    "What is the deeper meaning of this wisdom?",
  ];

  return (
    <div className="w-full">
      {/* Trigger Button */}
      <motion.button
        onClick={() => setIsOpen(!isOpen)}
        className="w-full bg-gradient-to-r from-orange-500 to-red-500 text-white rounded-xl p-4 flex items-center justify-between shadow-lg"
        whileHover={{ scale: 1.02 }}
        whileTap={{ scale: 0.98 }}
      >
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 bg-white/20 rounded-full flex items-center justify-center">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
          </div>
          <div className="text-left">
            <p className="font-semibold">Ask for Wisdom</p>
            <p className="text-sm text-white/80">Get AI-powered life guidance</p>
          </div>
        </div>
        <motion.svg 
          className="w-5 h-5" 
          fill="none" 
          stroke="currentColor" 
          viewBox="0 0 24 24"
          animate={{ rotate: isOpen ? 180 : 0 }}
        >
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
        </motion.svg>
      </motion.button>

      {/* Expanded Panel */}
      <AnimatePresence>
        {isOpen && (
          <motion.div
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: "auto", opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            className="overflow-hidden"
          >
            <div className="bg-white rounded-xl mt-3 p-4 shadow-lg border border-gray-100">
              {/* Context Display */}
              {coupletTamil && (
                <div className="bg-orange-50 rounded-lg p-3 mb-4">
                  <p className="text-sm text-gray-500 mb-1">Asking about:</p>
                  <p className="text-orange-700 font-tamil">{coupletTamil}</p>
                  {coupletEnglish && (
                    <p className="text-sm text-gray-600 mt-1">{coupletEnglish}</p>
                  )}
                </div>
              )}

              {/* Question Input */}
              <div className="mb-4">
                <label className="block text-sm font-medium text-gray-700 mb-2">
                  Describe your life situation or question:
                </label>
                <textarea
                  value={question}
                  onChange={(e) => setQuestion(e.target.value)}
                  placeholder="e.g., I'm facing a difficult decision at work about whether to speak up against unfair practices..."
                  className="w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent resize-none"
                  rows={3}
                />
              </div>

              {/* Suggested Questions */}
              {!coupletId && (
                <div className="mb-4">
                  <p className="text-sm text-gray-500 mb-2">Or try a suggested question:</p>
                  <div className="flex flex-wrap gap-2">
                    {suggestedQuestions.map((q, i) => (
                      <button
                        key={i}
                        onClick={() => setQuestion(q)}
                        className="text-xs bg-gray-100 hover:bg-orange-100 text-gray-700 px-3 py-1.5 rounded-full transition-colors"
                      >
                        {q}
                      </button>
                    ))}
                  </div>
                </div>
              )}

              {/* Submit Button */}
              <button
                onClick={handleAskWisdom}
                disabled={!question.trim() || guidanceMutation.isPending}
                className="w-full bg-gradient-to-r from-orange-500 to-red-500 text-white py-3 rounded-lg font-medium disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
              >
                {guidanceMutation.isPending ? (
                  <>
                    <svg className="animate-spin h-5 w-5" viewBox="0 0 24 24">
                      <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
                      <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                    </svg>
                    <span>Seeking Wisdom...</span>
                  </>
                ) : (
                  <>
                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 10V3L4 14h7v7l9-11h-7z" />
                    </svg>
                    <span>Get Thirukkural Wisdom</span>
                  </>
                )}
              </button>

              {/* Error Display */}
              {guidanceMutation.isError && (
                <div className="mt-4 p-3 bg-red-50 text-red-700 rounded-lg text-sm">
                  Unable to get guidance. Please try again.
                </div>
              )}

              {/* Guidance Response */}
              {guidance && (
                <motion.div
                  initial={{ opacity: 0, y: 10 }}
                  animate={{ opacity: 1, y: 0 }}
                  className="mt-4 p-4 bg-gradient-to-br from-orange-50 to-amber-50 rounded-xl border border-orange-100"
                >
                  <div className="flex items-center gap-2 mb-3">
                    <div className="w-8 h-8 bg-gradient-to-r from-orange-500 to-red-500 rounded-full flex items-center justify-center">
                      <svg className="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
                      </svg>
                    </div>
                    <h4 className="font-semibold text-gray-800">Thirukkural Wisdom</h4>
                  </div>
                  <div className="text-gray-700 whitespace-pre-wrap leading-relaxed">
                    {guidance}
                  </div>
                  <button
                    onClick={() => {
                      setGuidance(null);
                      setQuestion("");
                    }}
                    className="mt-4 text-sm text-orange-600 hover:text-orange-700 font-medium"
                  >
                    Ask another question →
                  </button>
                </motion.div>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}

export default AskForWisdom;
