import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Mail, Sparkles } from "lucide-react";
import { trpc } from "@/lib/trpc";

interface EmailSubscribeDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  source: string;
}

export function EmailSubscribeDialog({ open, onOpenChange, source }: EmailSubscribeDialogProps) {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isSubmitted, setIsSubmitted] = useState(false);
  const [error, setError] = useState("");

  const signupMutation = trpc.signup.submit.useMutation();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email.trim()) {
      setError("Please enter your email");
      return;
    }
    
    setIsSubmitting(true);
    setError("");
    
    try {
      await signupMutation.mutateAsync({
        name: name.trim() || undefined,
        email: email.trim(),
        source
      });
      setIsSubmitted(true);
      setTimeout(() => {
        onOpenChange(false);
        // Reset state after closing
        setTimeout(() => {
          setIsSubmitted(false);
          setName("");
          setEmail("");
        }, 300);
      }, 2000);
    } catch (err) {
      setError("Something went wrong. Please try again.");
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-md">
        {isSubmitted ? (
          <div className="py-8 text-center">
            <div className="flex justify-center mb-4">
              <div className="w-16 h-16 bg-gradient-to-r from-primary to-accent rounded-full flex items-center justify-center">
                <Sparkles className="w-8 h-8 text-white" />
              </div>
            </div>
            <h3 className="text-xl font-semibold mb-2">Welcome to our community!</h3>
            <p className="text-muted-foreground">
              You'll receive weekly Thirukkural wisdom in your inbox.
            </p>
          </div>
        ) : (
          <>
            <DialogHeader>
              <DialogTitle className="flex items-center gap-2">
                <Mail className="w-5 h-5 text-primary" />
                Get Weekly Thirukkural Wisdom
              </DialogTitle>
              <DialogDescription>
                Join our community and receive timeless wisdom delivered to your inbox every week.
              </DialogDescription>
            </DialogHeader>
            <form onSubmit={handleSubmit} className="space-y-4 mt-4">
              <div>
                <Input
                  type="text"
                  placeholder="Your name (optional)"
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  className="w-full"
                />
              </div>
              <div>
                <Input
                  type="email"
                  placeholder="Your email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                  className="w-full"
                />
              </div>
              {error && <p className="text-sm text-destructive">{error}</p>}
              <Button type="submit" disabled={isSubmitting} className="w-full">
                {isSubmitting ? "Subscribing..." : "Subscribe"}
              </Button>
            </form>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
}
