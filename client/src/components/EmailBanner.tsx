import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Mail, Sparkles } from "lucide-react";
import { trpc } from "@/lib/trpc";

export function EmailBanner() {
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
        source: "homepage_banner"
      });
      setIsSubmitted(true);
    } catch (err) {
      setError("Something went wrong. Please try again.");
    } finally {
      setIsSubmitting(false);
    }
  };

  if (isSubmitted) {
    return (
      <section className="py-8 px-4 bg-gradient-to-r from-primary/20 to-accent/20">
        <div className="container mx-auto text-center">
          <div className="flex items-center justify-center gap-2 text-primary">
            <Sparkles className="w-5 h-5" />
            <span className="text-lg font-medium">Thank you! You're now part of our wisdom community.</span>
          </div>
        </div>
      </section>
    );
  }

  return (
    <section className="py-8 px-4 bg-gradient-to-r from-primary/10 to-accent/10 border-t border-b border-primary/20">
      <div className="container mx-auto">
        <form onSubmit={handleSubmit} className="flex flex-col md:flex-row items-center justify-center gap-4 max-w-3xl mx-auto">
          <div className="flex items-center gap-2 text-foreground">
            <Mail className="w-5 h-5 text-primary" />
            <span className="font-medium whitespace-nowrap">Get weekly Thirukkural wisdom</span>
          </div>
          <div className="flex flex-col sm:flex-row gap-2 w-full md:w-auto">
            <Input
              type="text"
              placeholder="Your name"
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full sm:w-36 bg-background"
            />
            <Input
              type="email"
              placeholder="Your email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              className="w-full sm:w-48 bg-background"
            />
            <Button type="submit" disabled={isSubmitting} className="whitespace-nowrap">
              {isSubmitting ? "..." : "Subscribe"}
            </Button>
          </div>
          {error && <span className="text-sm text-destructive">{error}</span>}
        </form>
      </div>
    </section>
  );
}
