import Razorpay from "razorpay";
import { ENV } from "./_core/env";

// Initialize Razorpay instance
// Note: User needs to add RAZORPAY_KEY_ID and RAZORPAY_KEY_SECRET to environment variables
export const razorpay = new Razorpay({
  key_id: process.env.RAZORPAY_KEY_ID || "",
  key_secret: process.env.RAZORPAY_KEY_SECRET || "",
});

// Subscription plans matching the tiers
export const RAZORPAY_PLANS = {
  beginner: {
    name: "Beginner Tier",
    price: 0,
    currency: "INR",
    period: "monthly",
    interval: 1,
  },
  pro: {
    name: "Pro Tier",
    price: 49900, // ₹499 in paise
    currency: "INR",
    period: "monthly",
    interval: 1,
  },
  advanced: {
    name: "Advanced Tier",
    price: 99900, // ₹999 in paise
    currency: "INR",
    period: "monthly",
    interval: 1,
  },
};

// Helper to create a Razorpay order
export async function createRazorpayOrder(params: {
  amount: number; // in paise
  currency: string;
  receipt: string;
  notes?: Record<string, string>;
}) {
  return await razorpay.orders.create({
    amount: params.amount,
    currency: params.currency,
    receipt: params.receipt,
    notes: params.notes,
  });
}

// Helper to verify payment signature
export function verifyRazorpaySignature(params: {
  orderId: string;
  paymentId: string;
  signature: string;
}) {
  const crypto = require("crypto");
  const body = params.orderId + "|" + params.paymentId;
  const expectedSignature = crypto
    .createHmac("sha256", process.env.RAZORPAY_KEY_SECRET || "")
    .update(body.toString())
    .digest("hex");
  
  return expectedSignature === params.signature;
}
