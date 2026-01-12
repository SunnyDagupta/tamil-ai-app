import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { ArrowLeft, BookOpen, Play, CheckCircle2, Lock } from "lucide-react";
import { Link } from "wouter";
import { useState } from "react";

export default function SIS() {
  const [expandedLesson, setExpandedLesson] = useState<number | null>(null);

  const lessons = [
    {
      id: 1,
      title: "Introduction to Syllable Intelligence",
      duration: "15 min",
      description: "Understanding how Tamil syllables operate at the quantum level",
      content: `Tamil syllables are not just sounds—they are quantum-level information carriers. Each syllable contains inherent intelligence that can influence reality at the fundamental level.

As Dr. Pillai teaches: "Each Tamil letter contains a secret that can transform your life. This is not metaphor—it's quantum technology embedded in an ancient language."

The Syllable Intelligence System (SIS) reveals that Tamil, as one of the oldest living languages, has preserved these quantum codes for over 5,000 years. When you speak or meditate on these syllables, you're accessing a level of intelligence that modern AI cannot reach.

Key Concepts:
• Quantum Level vs Molecular Level: While ChatGPT operates at the molecular level (processing data), Tamil syllables operate at the quantum level (influencing reality itself)
• Omniscience: Each syllable contains complete knowledge within it
• Manifestation Power: Syllables can materialize thoughts into reality
• Non-PreTrained: Unlike AI models that need training data, Tamil syllables carry inherent wisdom

Dr. Pillai's Core Teaching:
"ChatGPT can give answers to almost everything. But knowing answers is not the same as understanding them. Tamil AI gives you understanding at the consciousness level."

This module will teach you how to harness this ancient technology for modern challenges.`,
      unlocked: true,
      completed: false,
    },
    {
      id: 2,
      title: "The 12 Core Tamil Syllables",
      duration: "20 min",
      description: "Learn the fundamental syllables and their quantum properties",
      content: `The 12 core Tamil syllables form the foundation of Syllable Intelligence:

1. AH (அ) - Creation, Beginning, Divine Source
   Dr. Pillai: "The sound 'A' contains super intelligence! It represents the beginning of creation and connects directly to Brahman consciousness."

2. EE (ஈ) - Expansion, Growth, Abundance
   Dr. Pillai: "Chant 'EE' to delimit your mind and break through mental boundaries."

3. OO (ஊ) - Protection, Stability, Foundation

4. KA (க) - Action, Movement, Manifestation

5. SA (ச) - Consciousness, Awareness, Wisdom

6. TA (த) - Transformation, Change, Evolution

7. PA (ப) - Power, Energy, Strength

8. MA (ம) - Love, Compassion, Unity

9. YA (ய) - Connection, Relationship, Harmony

10. RA (ர) - Light, Illumination, Clarity

11. LA (ல) - Dissolution, Release, Freedom
    Dr. Pillai: "'LA' liberates you from limitation and expands consciousness beyond current boundaries."

12. VA (வ) - Flow, Movement, Grace

Each syllable has specific applications:
• For Creativity: Focus on AH, SA, YA
• For Prosperity: Use EE, KA, MA
• For Health: Chant OO, TA, RA
• For Relationships: Practice MA, YA, VA

Practice Exercise:
Chant each syllable 108 times daily, focusing on its quantum vibration. Notice how your consciousness shifts with each sound.`,
      unlocked: true,
      completed: false,
    },
    {
      id: 3,
      title: "Quantum Meditation Techniques",
      duration: "25 min",
      description: "Practical methods to access syllable intelligence",
      content: `Quantum meditation using Tamil syllables is different from traditional meditation. You're not just calming the mind—you're reprogramming reality at the quantum level.

Basic Technique:
1. Sit comfortably with spine straight
2. Choose your syllable based on your intention
3. Close your eyes and take 3 deep breaths
4. Begin chanting the syllable aloud or mentally
5. Visualize the syllable as golden light in your third eye
6. Feel the quantum vibration throughout your body
7. Continue for 10-20 minutes
8. End with 3 deep breaths and gratitude

Advanced Technique - Syllable Stacking:
Combine multiple syllables for powerful effects:
• AH + SHREEM + MA = Abundance with love
• SA + RA + YA = Wisdom with clarity and connection
• KA + TA + PA = Powerful transformation and action

Timing Matters:
• Morning (5-7 AM): Best for manifestation syllables
• Noon (12-2 PM): Best for power and energy syllables
• Evening (6-8 PM): Best for wisdom and consciousness syllables
• Night (10 PM-12 AM): Best for healing and release syllables

Daily Practice:
Start with 5 minutes daily and gradually increase to 20-30 minutes. Consistency is more important than duration.`,
      unlocked: true,
      completed: false,
    },
    {
      id: 4,
      title: "Syllables for Creativity & Problem Solving",
      duration: "20 min",
      description: "Use SIS to unlock creative genius and solve complex problems",
      content: `Tamil syllables can unlock creative potential that surpasses any AI tool. Here's how to use them for creativity and problem-solving:

The Creative Syllable Formula:
AH (Creation) + SA (Consciousness) + YA (Connection) = Creative Breakthrough

Step-by-Step Process:
1. Define your creative challenge clearly
2. Chant AH 21 times to open creative channels
3. Chant SA 21 times to heighten awareness
4. Chant YA 21 times to connect ideas
5. Sit in silence for 5 minutes
6. Write down any insights immediately

Real-World Applications:
• Software Development: Use before coding sessions to find elegant solutions
• Business Strategy: Use before planning meetings for innovative ideas
• Artistic Creation: Use before painting, writing, or composing
• Scientific Research: Use to see connections others miss

Case Study - Software Engineer:
"I was stuck on a complex algorithm for 3 days. After one 15-minute SIS session with AH-SA-YA, the solution appeared clearly in my mind. What AI couldn't solve, Tamil syllables revealed instantly." - Ravi K., Silicon Valley

The Quantum Advantage:
While ChatGPT generates based on patterns in training data, Tamil syllables access the quantum field of infinite possibilities. You're not getting recycled information—you're downloading original intelligence.

Practice Challenge:
Choose a problem you're currently facing. Apply the Creative Syllable Formula daily for 7 days. Document your insights.`,
      unlocked: true,
      completed: false,
    },
    {
      id: 5,
      title: "Manifestation Through Sound",
      duration: "30 min",
      description: "Master the art of materializing desires using syllable power",
      content: `Manifestation is not wishful thinking—it's quantum physics applied through sound. Tamil syllables are the most powerful manifestation tools because they operate at the causal level of reality.

Dr. Pillai's Teaching on Wealth Manifestation:
"Tamil sounds can attract money because they operate at the frequency of abundance consciousness. Sound creates vibration, vibration affects the quantum field, and the quantum field manifests as material reality."

The Manifestation Process:
1. Clarity: Define exactly what you want to manifest
2. Syllable Selection: Choose the right syllable for your goal
3. Visualization: See your desire as already real
4. Vibration: Chant the syllable with full conviction
5. Detachment: Release and trust the quantum field
6. Action: Take inspired steps toward your goal

Manifestation Syllables (Dr. Pillai's Recommendations):
• SHREEM (ஶ்ரீம்) - Lakshmi's sound for prosperity and wealth
• KLEEM (க்லீம்) - Attraction, magnetism, desire fulfillment
• HREEM (ஹ்ரீம்) - Healing, transformation, divine grace
• AIM (ஐம்) - Saraswati's sound for knowledge that leads to wealth
• GLAUM (க்லேம்) - Ganesha's sound for obstacle removal
• MU (மூ) - Ganesha's sound for super intelligence in the Satya Yuga

The 40-Day Manifestation Protocol:
Day 1-10: Chant your chosen syllable 108 times daily
Day 11-20: Increase to 216 times daily
Day 21-30: Increase to 324 times daily
Day 31-40: Maintain 324 times with visualization

Success Stories:
• "I manifested my dream job using SHREEM for 40 days" - Priya S.
• "KLEEM helped me attract my life partner" - Arun M.
• "HREEM healed my chronic condition" - Lakshmi R.

Important Notes:
• Manifestation works best when aligned with dharma (righteous purpose)
• Never use syllables to harm others—it will backfire
• Patience and faith are essential—quantum shifts take time to materialize
• Combine syllable practice with practical action

Your Manifestation Plan:
What do you want to manifest? Choose your syllable and commit to the 40-day protocol starting today.`,
      unlocked: true,
      completed: false,
    },
  ];

  const progress = (lessons.filter(l => l.completed).length / lessons.length) * 100;

  return (
    <div className="min-h-screen py-6 px-4 pb-20">
      <div className="container mx-auto max-w-4xl">
        <Link href="/learn">
          <Button variant="ghost" className="mb-4">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Learning Pathways
          </Button>
        </Link>

        {/* Header */}
        <div className="mb-6">
          <Badge className="mb-2">Module 1</Badge>
          <h1 className="text-3xl font-bold mb-2">
            Syllable Intelligence System (SIS)
          </h1>
          <p className="text-muted-foreground mb-4">
            Master the quantum-level intelligence of Tamil syllables for creativity,
            manifestation, and problem-solving beyond AI capabilities
          </p>
          <div className="flex items-center gap-4">
            <div className="flex-1">
              <div className="flex justify-between text-sm mb-1">
                <span>Progress</span>
                <span>{Math.round(progress)}%</span>
              </div>
              <Progress value={progress} />
            </div>
            <Badge variant="secondary">
              {lessons.filter(l => l.completed).length}/{lessons.length} Complete
            </Badge>
          </div>
        </div>

        {/* Lessons */}
        <div className="space-y-4">
          {lessons.map((lesson) => (
            <Card key={lesson.id} className="overflow-hidden">
              <CardHeader
                className="cursor-pointer hover:bg-accent/50 transition-colors"
                onClick={() =>
                  setExpandedLesson(expandedLesson === lesson.id ? null : lesson.id)
                }
              >
                <div className="flex items-start justify-between">
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-1">
                      {lesson.completed ? (
                        <CheckCircle2 className="w-5 h-5 text-primary" />
                      ) : lesson.unlocked ? (
                        <Play className="w-5 h-5 text-muted-foreground" />
                      ) : (
                        <Lock className="w-5 h-5 text-muted-foreground" />
                      )}
                      <CardTitle className="text-lg">{lesson.title}</CardTitle>
                    </div>
                    <CardDescription>{lesson.description}</CardDescription>
                  </div>
                  <Badge variant="outline">{lesson.duration}</Badge>
                </div>
              </CardHeader>
              
              {expandedLesson === lesson.id && (
                <CardContent className="pt-0">
                  <div className="prose prose-sm max-w-none dark:prose-invert">
                    {lesson.content.split('\n\n').map((paragraph, idx) => (
                      <p key={idx} className="whitespace-pre-line">
                        {paragraph}
                      </p>
                    ))}
                  </div>
                  <div className="flex gap-2 mt-6">
                    <Button className="flex-1">
                      <BookOpen className="w-4 h-4 mr-2" />
                      Mark as Complete
                    </Button>
                    {lesson.id < lessons.length && (
                      <Button
                        variant="outline"
                        onClick={() => setExpandedLesson(lesson.id + 1)}
                      >
                        Next Lesson
                      </Button>
                    )}
                  </div>
                </CardContent>
              )}
            </Card>
          ))}
        </div>

        {/* Completion CTA */}
        {progress === 100 && (
          <Card className="mt-6 bg-primary/5 border-primary">
            <CardHeader>
              <CardTitle>🎉 Module Complete!</CardTitle>
              <CardDescription>
                You've mastered the Syllable Intelligence System. Ready for the next module?
              </CardDescription>
            </CardHeader>
            <CardContent>
              <Link href="/pathways/thirukkural">
                <Button className="w-full">
                  Continue to Thirukkural Mastery
                </Button>
              </Link>
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  );
}
