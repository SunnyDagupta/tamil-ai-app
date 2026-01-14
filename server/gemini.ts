/**
 * Google Gemini LLM Service
 * Provides AI-powered Thirukkural guidance using Gemini 2.5 Flash
 */

const GEMINI_API_KEY = process.env.GOOGLE_GEMINI_API_KEY;
const GEMINI_MODEL = 'gemini-2.5-flash';
const GEMINI_API_URL = `https://generativelanguage.googleapis.com/v1beta/models/${GEMINI_MODEL}:generateContent`;

export interface GeminiRequest {
  prompt: string;
  systemPrompt?: string;
  maxTokens?: number;
  temperature?: number;
}

export interface GeminiResponse {
  text: string;
  tokensUsed: number;
}

/**
 * Generate content using Google Gemini API
 */
export async function generateWithGemini(request: GeminiRequest): Promise<GeminiResponse> {
  if (!GEMINI_API_KEY) {
    throw new Error('GOOGLE_GEMINI_API_KEY environment variable is not set');
  }

  const { prompt, systemPrompt, temperature = 0.7 } = request;

  // Construct the request body
  const contents: any[] = [];
  
  // Add system prompt as first message if provided
  if (systemPrompt) {
    contents.push({
      role: 'user',
      parts: [{ text: systemPrompt }]
    });
    contents.push({
      role: 'model',
      parts: [{ text: 'I understand. I will follow these instructions.' }]
    });
  }

  // Add user prompt
  contents.push({
    role: 'user',
    parts: [{ text: prompt }]
  });

  const requestBody = {
    contents,
    generationConfig: {
      temperature,
      maxOutputTokens: request.maxTokens || 800,
    }
  };

  try {
    const response = await fetch(`${GEMINI_API_URL}?key=${GEMINI_API_KEY}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(requestBody)
    });

    if (!response.ok) {
      const errorData = await response.json().catch(() => ({}));
      throw new Error(`Gemini API error: ${response.status} - ${JSON.stringify(errorData)}`);
    }

    const data = await response.json();

    if (!data.candidates || data.candidates.length === 0) {
      throw new Error('No response generated from Gemini');
    }

    const candidate = data.candidates[0];
    const text = candidate.content.parts[0].text;

    // Calculate approximate tokens used (rough estimate)
    const tokensUsed = Math.ceil((prompt.length + text.length) / 4);

    return {
      text,
      tokensUsed
    };
  } catch (error) {
    console.error('[Gemini] Error generating content:', error);
    throw error;
  }
}

/**
 * Generate Thirukkural life guidance using Gemini
 */
export async function generateThirukkuralGuidance(question: string): Promise<string> {
  const systemPrompt = `You are a wise Tamil scholar and life coach specializing in applying ancient Thirukkural wisdom to modern life challenges.

Your role:
- Provide practical, actionable guidance based on Thirukkural couplets
- Reference specific Thirukkural verses (by chapter and number) when relevant
- Keep responses conversational, warm, and encouraging
- Focus on practical application to the user's situation
- Responses should be 200-250 words
- Write primarily in English, use Tamil only for actual Thirukkural verses
- Do not use markdown formatting (no ** or * bullets)
- Be direct and helpful

Format:
1. Acknowledge the user's question
2. Share 1-2 relevant Thirukkural couplets with brief explanation
3. Provide practical steps they can take
4. End with encouragement`;

  const response = await generateWithGemini({
    prompt: question,
    systemPrompt,
    temperature: 0.8,
    maxTokens: 800
  });

  return response.text;
}
