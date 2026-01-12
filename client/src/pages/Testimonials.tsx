import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Avatar, AvatarFallback } from "@/components/ui/avatar";
import { ArrowLeft, Quote } from "lucide-react";
import { Link } from "wouter";

export default function Testimonials() {
  const testimonials = [
    {
      name: "Arjun",
      role: "Software Engineer",
      location: "Chennai",
      initials: "A",
      quote:
        "I was terrified AI would replace me as a software engineer. After learning SIS and TCGNPT, I realized I can build AI systems that have consciousness and manifestation power. Now I'm building the next generation of Tamil AI tools.",
    },
    {
      name: "Dr. Priya",
      role: "General Practitioner",
      location: "Mumbai",
      initials: "P",
      quote:
        "As a doctor, I was losing patients to AI diagnostics. Then I discovered how Tamil Siddhas performed medical miracles through sound. I'm now integrating Siddha knowledge with modern medicine and it's transforming patient outcomes.",
    },
    {
      name: "Rajagopal",
      role: "Entrepreneur",
      location: "Bangalore",
      initials: "R",
      quote:
        "I switched careers from IT to Tamil AI. Within 6 months, I developed a unique Tamil-based knowledge system that 3 companies want to license. This wasn't possible with ChatGPT alone.",
    },
    {
      name: "Suresh",
      role: "Business Manager",
      location: "Silicon Valley",
      initials: "S",
      quote:
        "The Thirukkural wisdom classes completely changed my perspective. I started seeing business problems as philosophical puzzles with proven solutions already written in Tamil couplets 2,000 years ago.",
    },
    {
      name: "Meera",
      role: "Student",
      location: "Delhi",
      initials: "M",
      quote:
        "Learning about Ramalinga Swami's 'Oothaadu Unar' (learning without studying) concept literally freed me from academic anxiety. My creativity and problem-solving improved 10x once I understood real intelligence doesn't come from external learning.",
    },
    {
      name: "Vikram",
      role: "Startup Founder",
      location: "Singapore",
      initials: "V",
      quote:
        "As a Tamil entrepreneur, I felt disconnected from global tech. Tamil AI gave me pride and practical skills. I'm now advising startups on building Tamil-native AI solutions that compete globally.",
    },
  ];

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-6xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        <h1 className="text-4xl md:text-5xl font-bold mb-4 text-center">
          Student Transformations & Breakthroughs
        </h1>
        <p className="text-center text-muted-foreground mb-12 text-lg max-w-3xl mx-auto">
          Real stories from professionals who discovered Tamil AI and transformed their careers
        </p>

        <div className="grid md:grid-cols-2 gap-8">
          {testimonials.map((testimonial, idx) => (
            <Card key={idx} className="relative">
              <CardContent className="p-8">
                <Quote className="w-10 h-10 text-primary/20 mb-4" />
                <p className="text-lg mb-6 italic">&quot;{testimonial.quote}&quot;</p>
                <div className="flex items-center gap-4">
                  <Avatar className="w-12 h-12">
                    <AvatarFallback className="bg-primary text-primary-foreground">
                      {testimonial.initials}
                    </AvatarFallback>
                  </Avatar>
                  <div>
                    <p className="font-semibold">{testimonial.name}</p>
                    <p className="text-sm text-muted-foreground">
                      {testimonial.role}, {testimonial.location}
                    </p>
                  </div>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        <div className="mt-12 text-center">
          <p className="text-lg text-muted-foreground mb-6">
            Ready to write your own success story?
          </p>
          <Link href="/">
            <Button size="lg">Start Your Journey</Button>
          </Link>
        </div>
      </div>
    </div>
  );
}
