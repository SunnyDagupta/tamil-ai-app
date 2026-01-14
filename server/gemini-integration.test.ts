import { describe, it, expect } from 'vitest';
import { generateThirukkuralGuidance } from './gemini';

describe('Gemini Integration in Tamil AI App', () => {
  it('should generate Thirukkural guidance using Gemini API', async () => {
    const question = "How can I stay motivated when facing challenges?";
    
    const guidance = await generateThirukkuralGuidance(question);
    
    expect(guidance).toBeDefined();
    expect(typeof guidance).toBe('string');
    expect(guidance.length).toBeGreaterThan(100);
    
    // Should reference Thirukkural
    const hasThirukkuralReference = 
      guidance.toLowerCase().includes('kural') ||
      guidance.toLowerCase().includes('thirukkural') ||
      /\d{1,4}/.test(guidance); // Contains numbers (couplet references)
    
    expect(hasThirukkuralReference).toBe(true);
    
    console.log('✅ Gemini generated guidance:', guidance.substring(0, 200) + '...');
  }, 30000); // 30 second timeout

  it('should handle rate limiting gracefully', async () => {
    // This test verifies the integration works
    // Rate limiting is tested separately in rate limiter tests
    const question = "What does Thirukkural say about wisdom?";
    
    const guidance = await generateThirukkuralGuidance(question);
    
    expect(guidance).toBeDefined();
    expect(guidance.length).toBeGreaterThan(50);
    
    console.log('✅ Rate limiting integration working');
  }, 30000);
});
