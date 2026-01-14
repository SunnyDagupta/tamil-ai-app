import { describe, it, expect } from 'vitest';

describe('Google Gemini API Integration', () => {
  it('should validate Gemini API key by making a test request', async () => {
    const apiKey = process.env.GOOGLE_GEMINI_API_KEY;
    
    expect(apiKey).toBeDefined();
    expect(apiKey).toMatch(/^AIza/);

    // Test API call to Gemini
    const response = await fetch(
      `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=${apiKey}`,
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          contents: [{
            parts: [{
              text: 'Say hello in one word'
            }]
          }]
        })
      }
    );

    expect(response.ok).toBe(true);
    
    const data = await response.json();
    expect(data.candidates).toBeDefined();
    expect(data.candidates[0].content.parts[0].text).toBeDefined();
    
    console.log('✅ Gemini API key is valid and working!');
  }, 30000); // 30 second timeout
});
