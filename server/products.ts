/**
 * Stripe Product and Price Configuration
 * Centralized product definitions for Tamil AI subscription tiers
 */

export const SUBSCRIPTION_TIERS = {
  BEGINNER: {
    name: "Beginner (Free)",
    tier: "beginner",
    price: 0,
    features: [
      "Access to Module 1: SIS (first 2 lessons)",
      "Access to Module 2: Thirukkural (basic search)",
      "Limited daily meditations",
      "Community forum access",
    ],
  },
  PRO: {
    name: "Pro",
    tier: "pro",
    price: 2900, // $29/month in cents
    stripePriceId: process.env.STRIPE_PRICE_ID_PRO || "price_pro_monthly",
    features: [
      "Full access to all 6 learning modules",
      "Unlimited meditation library",
      "Advanced Thirukkural search with explanations",
      "Progress tracking and achievements",
      "Downloadable content for offline use",
      "Priority community support",
    ],
  },
  ADVANCED: {
    name: "Advanced",
    tier: "advanced",
    price: 9900, // $99/month in cents
    stripePriceId: process.env.STRIPE_PRICE_ID_ADVANCED || "price_advanced_monthly",
    features: [
      "Everything in Pro",
      "Live Q&A sessions with Dr. Pillai",
      "Exclusive webinars and workshops",
      "1-on-1 coaching sessions (monthly)",
      "Early access to new modules",
      "Certificate of completion",
      "Lifetime access to course materials",
    ],
  },
} as const;

export type SubscriptionTier = "beginner" | "pro" | "advanced";

export function getTierByPriceId(priceId: string): SubscriptionTier | null {
  if (priceId === SUBSCRIPTION_TIERS.PRO.stripePriceId) return "pro";
  if (priceId === SUBSCRIPTION_TIERS.ADVANCED.stripePriceId) return "advanced";
  return null;
}

export function canAccessContent(userTier: SubscriptionTier, requiredTier: SubscriptionTier): boolean {
  const tierHierarchy: Record<SubscriptionTier, number> = {
    beginner: 1,
    pro: 2,
    advanced: 3,
  };
  
  return tierHierarchy[userTier] >= tierHierarchy[requiredTier];
}
