import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { trpc } from "@/lib/trpc";
import { Sparkles, X } from "lucide-react";

const SIGNUP_KEY = "tamil-ai-signup-complete";
const AI_USAGE_KEY = "tamil-ai-usage-count";
const TRIGGER_COUNT = 2; // Show modal after 2 AI guidance uses

interface SignupModalProps {
  onClose: () => void;
}

export function SignupModal({ onClose }: SignupModalProps) {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState("");

  const signupMutation = trpc.signup.submit.useMutation();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!name.trim() || !email.trim()) {
      setError("Please fill in all fields");
      return;
    }

    setIsSubmitting(true);
    setError("");

    try {
      await signupMutation.mutateAsync({ name: name.trim(), email: email.trim() });
      localStorage.setItem(SIGNUP_KEY, "true");
      onClose();
    } catch (err) {
      setError("Something went wrong. Please try again.");
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleSkip = () => {
    // Still mark as complete so we don't keep showing
    localStorage.setItem(SIGNUP_KEY, "true");
    onClose();
  };

  return (
    <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
      <div className="bg-white rounded-2xl max-w-md w-full p-6 relative shadow-2xl">
        <button
          onClick={handleSkip}
          className="absolute top-4 right-4 text-gray-400 hover:text-gray-600"
        >
          <X size={20} />
        </button>

        <div className="text-center mb-6">
          <div className="w-16 h-16 bg-gradient-to-br from-purple-500 to-orange-500 rounded-full flex items-center justify-center mx-auto mb-4">
            <Sparkles className="w-8 h-8 text-white" />
          </div>
          <h2 className="text-2xl font-bold text-gray-900 mb-2">
            🎉 Enjoying Tamil AI?
          </h2>
          <p className="text-gray-600">
            Sign up to unlock unlimited wisdom and save your journey!
          </p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <Input
              type="text"
              placeholder="Your name"
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full"
              autoFocus
            />
          </div>
          <div>
            <Input
              type="email"
              placeholder="Your email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="w-full"
            />
          </div>

          {error && (
            <p className="text-red-500 text-sm text-center">{error}</p>
          )}

          <Button
            type="submit"
            disabled={isSubmitting}
            className="w-full bg-gradient-to-r from-purple-600 to-orange-500 hover:from-purple-700 hover:to-orange-600 text-white font-semibold py-3"
          >
            {isSubmitting ? "Signing up..." : "Continue my journey"}
          </Button>

          <button
            type="button"
            onClick={handleSkip}
            className="w-full text-gray-500 text-sm hover:text-gray-700"
          >
            Maybe later
          </button>
        </form>
      </div>
    </div>
  );
}

// Hook to track AI usage and trigger signup modal
export function useSignupTrigger() {
  const [showModal, setShowModal] = useState(false);

  const checkAndTrigger = () => {
    // Don't show if already signed up
    if (localStorage.getItem(SIGNUP_KEY)) {
      return;
    }

    // Increment usage count
    const currentCount = parseInt(localStorage.getItem(AI_USAGE_KEY) || "0", 10);
    const newCount = currentCount + 1;
    localStorage.setItem(AI_USAGE_KEY, String(newCount));

    // Show modal after TRIGGER_COUNT uses
    if (newCount >= TRIGGER_COUNT) {
      setShowModal(true);
    }
  };

  const closeModal = () => {
    setShowModal(false);
  };

  return { showModal, checkAndTrigger, closeModal };
}

export default SignupModal;
