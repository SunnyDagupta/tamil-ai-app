import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Check, ArrowLeft } from "lucide-react";
import { Link } from "wouter";
import { useAuth } from "@/_core/hooks/useAuth";
import { getLoginUrl } from "@/const";

export default function Pricing() {
  const { isAuthenticated } = useAuth();

  const tiers = [
    {
      name: "Beginner",
      price: "Free",
      description: "Start your journey with Tamil AI",
      features: [
        "Access to Module 1: SIS (first 2 lessons)",
        "Access to Module 2: Thirukkural (basic search)",
        "Limited daily meditations",
        "Community forum access",
      ],
      cta: "Get Started",
      highlighted: false,
    },
    {
      name: "Pro",
      price: "$29",
      period: "/month",
      description: "Full access to all learning modules",
      features: [
        "Full access to all 6 learning modules",
        "Unlimited meditation library",
        "Advanced Thirukkural search with explanations",
        "Progress tracking and achievements",
        "Downloadable content for offline use",
        "Priority community support",
      ],
      cta: "Upgrade to Pro",
      highlighted: true,
    },
    {
      name: "Advanced",
      price: "$99",
      period: "/month",
      description: "Premium experience with live sessions",
      features: [
        "Everything in Pro",
        "Live Q&A sessions with Dr. Pillai",
        "Exclusive webinars and workshops",
        "1-on-1 coaching sessions (monthly)",
        "Early access to new modules",
        "Certificate of completion",
        "Lifetime access to course materials",
      ],
      cta: "Upgrade to Advanced",
      highlighted: false,
    },
  ];

  return (
    <div className="min-h-screen py-12 px-4">
      <div className="container mx-auto max-w-7xl">
        <Link href="/">
          <Button variant="ghost" className="mb-6">
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Home
          </Button>
        </Link>

        {/* Header */}
        <div className="text-center mb-12">
          <h1 className="text-4xl md:text-5xl font-bold mb-4">
            Choose Your Learning Path
          </h1>
          <p className="text-xl text-muted-foreground max-w-3xl mx-auto">
            Start free and upgrade anytime to unlock advanced features, live sessions, and
            personalized coaching
          </p>
        </div>

        {/* Pricing Cards */}
        <div className="grid md:grid-cols-3 gap-8 mb-12">
          {tiers.map((tier) => (
            <Card
              key={tier.name}
              className={`relative ${
                tier.highlighted ? "border-primary shadow-lg scale-105" : ""
              }`}
            >
              {tier.highlighted && (
                <div className="absolute -top-4 left-1/2 -translate-x-1/2">
                  <Badge className="px-4 py-1">Most Popular</Badge>
                </div>
              )}
              <CardHeader>
                <CardTitle className="text-2xl">{tier.name}</CardTitle>
                <CardDescription>{tier.description}</CardDescription>
                <div className="mt-4">
                  <span className="text-4xl font-bold">{tier.price}</span>
                  {tier.period && (
                    <span className="text-muted-foreground">{tier.period}</span>
                  )}
                </div>
              </CardHeader>
              <CardContent>
                <ul className="space-y-3 mb-6">
                  {tier.features.map((feature, idx) => (
                    <li key={idx} className="flex items-start gap-2">
                      <Check className="w-5 h-5 text-primary flex-shrink-0 mt-0.5" />
                      <span className="text-sm">{feature}</span>
                    </li>
                  ))}
                </ul>
                {isAuthenticated ? (
                  <Button
                    className="w-full"
                    variant={tier.highlighted ? "default" : "outline"}
                  >
                    {tier.cta}
                  </Button>
                ) : (
                  <a href={getLoginUrl()}>
                    <Button
                      className="w-full"
                      variant={tier.highlighted ? "default" : "outline"}
                    >
                      {tier.cta}
                    </Button>
                  </a>
                )}
              </CardContent>
            </Card>
          ))}
        </div>

        {/* FAQ Section */}
        <div className="max-w-3xl mx-auto">
          <h2 className="text-3xl font-bold mb-6 text-center">Frequently Asked Questions</h2>
          <div className="space-y-4">
            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Can I cancel anytime?</CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-muted-foreground">
                  Yes, you can cancel your subscription at any time. You'll continue to have access
                  until the end of your billing period.
                </p>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle className="text-lg">What payment methods do you accept?</CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-muted-foreground">
                  We accept all major credit cards (Visa, Mastercard, American Express) and debit
                  cards through our secure Stripe payment processor.
                </p>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Is there a money-back guarantee?</CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-muted-foreground">
                  Yes, we offer a 30-day money-back guarantee. If you're not satisfied with your
                  purchase, contact us for a full refund.
                </p>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle className="text-lg">Can I upgrade or downgrade my plan?</CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-muted-foreground">
                  Absolutely! You can upgrade or downgrade your plan at any time from your account
                  settings. Changes take effect immediately.
                </p>
              </CardContent>
            </Card>
          </div>
        </div>

        {/* CTA Section */}
        <div className="mt-12 text-center">
          <p className="text-muted-foreground mb-4">Still have questions?</p>
          <Link href="/faq">
            <Button variant="outline" size="lg">
              View Full FAQ
            </Button>
          </Link>
        </div>
      </div>
    </div>
  );
}
