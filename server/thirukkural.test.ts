import { describe, expect, it } from "vitest";
import { searchThirukkural } from "./db";

describe("Thirukkural Search", () => {
  it("should find results for 'disease'", async () => {
    const results = await searchThirukkural("disease");
    expect(results.length).toBeGreaterThan(0);
    
    // Check that results contain relevant content
    const hasRelevant = results.some(r => 
      r.englishTranslation?.toLowerCase().includes("disease") ||
      r.explanation?.toLowerCase().includes("disease")
    );
    expect(hasRelevant).toBe(true);
  });

  it("should find results for 'king'", async () => {
    const results = await searchThirukkural("king");
    expect(results.length).toBeGreaterThan(0);
    
    // Check that results contain 'king' in content
    const hasKing = results.some(r => 
      r.englishTranslation?.toLowerCase().includes("king") ||
      r.explanation?.toLowerCase().includes("king")
    );
    expect(hasKing).toBe(true);
  });

  it("should find results for 'love'", async () => {
    const results = await searchThirukkural("love");
    expect(results.length).toBeGreaterThan(0);
    
    const hasLove = results.some(r => 
      r.englishTranslation?.toLowerCase().includes("love") ||
      r.explanation?.toLowerCase().includes("love")
    );
    expect(hasLove).toBe(true);
  });

  it("should return empty array for nonsense query", async () => {
    const results = await searchThirukkural("xyzabc123nonsense");
    expect(results.length).toBe(0);
  });

  it("should respect limit parameter", async () => {
    const results = await searchThirukkural("the", 5);
    expect(results.length).toBeLessThanOrEqual(5);
  });
});
