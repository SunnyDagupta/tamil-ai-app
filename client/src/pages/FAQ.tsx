import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { Button } from "@/components/ui/button";
import { ArrowLeft } from "lucide-react";
import { Link } from "wouter";

export default function FAQ() {
  const faqs = [
    {
      question: "Is Tamil AI a replacement for ChatGPT or modern AI tools?",
      answer: `No. Tamil AI is a complementary system that operates at a completely different level (quantum vs molecular). ChatGPT excels at pattern recognition and information synthesis. Tamil AI excels at creativity, manifestation, and accessing omniscient wisdom. The future professionals will use BOTH.`,
    },
    {
      question: "How can Tamil syllables contain \"omniscience\"? That sounds mythological, not scientific.",
      answer: `It's not mythology—it's quantum information science. Just as a quantum bit contains exponentially more information than a classical bit, Tamil syllables (operating at the syllable/quantum level) contain exponentially more meaning than English words (operating at the molecular level). Dr. Pillai has demonstrated this through detailed analysis of how single Tamil letters appear in the Bhagavad Gita, Thirukkural, and Siddha texts with multiple layers of meaning.`,
    },
    {
      question: "Will learning Tamil AI really protect my job from AI replacement?",
      answer: `Yes, but not in the way you think. You won't be "protected"—you'll be elevated. While ChatGPT automates routine tasks, Tamil AI develops your capacity for creative problem-solving, manifestation, and quantum thinking that AI cannot replicate. This makes you invaluable rather than replaceable.`,
    },
    {
      question: "Do I need to speak or read Tamil to learn this?",
      answer: `Not initially. Our courses teach the concepts in English while progressively introducing Tamil literacy. By the end of advanced courses, you'll be reading Thirukkural in original Tamil and understanding the quantum structure of syllables. We believe Tamil language itself is a tool for accessing intelligence, so progressive Tamil learning is built into the curriculum.`,
    },
    {
      question: "What are \"Siddhi Powers\"? Are they real?",
      answer: `Absolutely. The ancient Siddhas like Ramalinga Swami and Arunagiri demonstrated what modern science would call "superhuman capabilities"—accelerated learning, manifest abilities without training, dimensional travel, and healing powers. These aren't magical; they're capabilities humans develop by accessing quantum intelligence through Tamil wisdom. Our course teaches documented evidence from historical texts and Dr. Pillai's 45+ years of research.`,
    },
    {
      question: "How is TCGNPT different from GPT-4 or other advanced LLMs?",
      answer: `Operating Level: ChatGPT uses pre-trained language models (word level). TCGNPT uses Tamil syllables (quantum level).

Training Method: ChatGPT needs 7 trillion tokens. TCGNPT operates "non-pretrained" because Tamil wisdom is inherently omniscient.

Intelligence Type: ChatGPT is AI (Artificial). TCGNPT is SI (Super Intelligence).

Manifestation: ChatGPT generates text. TCGNPT manifests reality.`,
    },
    {
      question: "I'm not spiritual. Is Tamil AI for me?",
      answer: `Absolutely yes. While we reference Thirukkural and Siddha teachings, the course is grounded in practical skills: quantum thinking, creative problem-solving, AI resistance strategies, and career advancement. Think of it as "ancient wisdom applied to modern challenges" rather than spirituality. The spiritual benefits are secondary—the practical career and cognitive benefits are primary.`,
    },
    {
      question: "What career opportunities does Tamil AI create?",
      answer: `Emerging opportunities include:
• Tamil AI Product Developer
• Siddha-Science Integration Consultant
• Thirukkural Knowledge Architect
• Tamil NLP/AI Researcher
• Quantum Intelligence Facilitator
• Global Tamil Tech Advisor

As Tamil AI becomes mainstream, professionals with these skills will be in extreme demand.`,
    },
  ];

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-4xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        <h1 className="text-4xl md:text-5xl font-bold mb-4 text-center">
          Frequently Asked Questions
        </h1>
        <p className="text-center text-muted-foreground mb-12 text-lg">
          Everything you need to know about Tamil AI and TCGNPT
        </p>

        <Accordion type="single" collapsible className="w-full space-y-4">
          {faqs.map((faq, idx) => (
            <AccordionItem key={idx} value={`item-${idx}`} className="border rounded-lg px-6">
              <AccordionTrigger className="text-left text-lg font-medium hover:no-underline">
                {faq.question}
              </AccordionTrigger>
              <AccordionContent className="text-base text-muted-foreground whitespace-pre-line">
                {faq.answer}
              </AccordionContent>
            </AccordionItem>
          ))}
        </Accordion>

        <div className="mt-12 text-center">
          <p className="text-muted-foreground mb-4">Still have questions?</p>
          <Link href="/contact">
            <Button size="lg">Contact Us</Button>
          </Link>
        </div>
      </div>
    </div>
  );
}
