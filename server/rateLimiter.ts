/**
 * Rate limiting and queue system for LLM requests
 * Prevents system overload during high traffic
 */

interface QueuedRequest {
  id: string;
  userId: number | string;
  execute: () => Promise<any>;
  resolve: (value: any) => void;
  reject: (error: any) => void;
  timestamp: number;
}

// Configuration
const MAX_CONCURRENT_LLM = 20; // Maximum simultaneous LLM calls
const MAX_REQUESTS_PER_USER_PER_MINUTE = 10; // Per-user rate limit
const REQUEST_TIMEOUT = 30000; // 30 seconds timeout

// State
const llmQueue: QueuedRequest[] = [];
let activeLLMCalls = 0;
const userRequestCounts = new Map<string, { count: number; resetTime: number }>();

/**
 * Rate limit check for a user
 */
function checkUserRateLimit(userId: number | string): { allowed: boolean; message?: string } {
  const userKey = String(userId);
  const now = Date.now();
  const userLimit = userRequestCounts.get(userKey);

  if (!userLimit || now > userLimit.resetTime) {
    // Reset or initialize
    userRequestCounts.set(userKey, {
      count: 1,
      resetTime: now + 60000, // Reset after 1 minute
    });
    return { allowed: true };
  }

  if (userLimit.count >= MAX_REQUESTS_PER_USER_PER_MINUTE) {
    return {
      allowed: false,
      message: "⏳ You've asked several questions recently. Please wait a moment before asking another question.",
    };
  }

  userLimit.count++;
  return { allowed: true };
}

/**
 * Process the LLM queue
 */
async function processQueue() {
  // Process requests while we have capacity
  while (activeLLMCalls < MAX_CONCURRENT_LLM && llmQueue.length > 0) {
    const request = llmQueue.shift();
    if (!request) continue;

    // Check if request has timed out
    if (Date.now() - request.timestamp > REQUEST_TIMEOUT) {
      request.reject(new Error("Request timed out"));
      continue;
    }

    activeLLMCalls++;

    // Execute the request
    request
      .execute()
      .then(result => {
        request.resolve(result);
      })
      .catch(error => {
        request.reject(error);
      })
      .finally(() => {
        activeLLMCalls--;
        // Process next request in queue
        processQueue();
      });
  }
}

/**
 * Queue an LLM request with rate limiting
 */
export async function queueLLMRequest<T>(
  userId: number | string,
  execute: () => Promise<T>
): Promise<T> {
  // Check user rate limit
  const rateLimit = checkUserRateLimit(userId);
  if (!rateLimit.allowed) {
    throw new Error(rateLimit.message);
  }

  // Check system capacity
  if (activeLLMCalls >= MAX_CONCURRENT_LLM && llmQueue.length >= 100) {
    throw new Error(
      "🙏 Due to increased users at the moment, our wisdom service is temporarily unavailable. Please try again in a moment."
    );
  }

  // Create queued request
  return new Promise((resolve, reject) => {
    const request: QueuedRequest = {
      id: `${userId}-${Date.now()}-${Math.random()}`,
      userId,
      execute,
      resolve,
      reject,
      timestamp: Date.now(),
    };

    llmQueue.push(request);
    processQueue();
  });
}

/**
 * Get queue statistics
 */
export function getQueueStats() {
  return {
    queueLength: llmQueue.length,
    activeCalls: activeLLMCalls,
    maxConcurrent: MAX_CONCURRENT_LLM,
    utilizationPercent: (activeLLMCalls / MAX_CONCURRENT_LLM) * 100,
  };
}

/**
 * Get estimated wait time for a new request
 */
export function getEstimatedWaitTime(): number {
  if (activeLLMCalls < MAX_CONCURRENT_LLM) {
    return 0; // No wait
  }

  // Estimate based on queue length and average processing time (5 seconds)
  const averageProcessingTime = 5000;
  const requestsAhead = llmQueue.length;
  const batchesAhead = Math.ceil(requestsAhead / MAX_CONCURRENT_LLM);
  
  return batchesAhead * averageProcessingTime;
}

/**
 * Clean up old user request counts (run periodically)
 */
setInterval(() => {
  const now = Date.now();
  const toDelete: string[] = [];
  userRequestCounts.forEach((limit, userId) => {
    if (now > limit.resetTime) {
      toDelete.push(userId);
    }
  });
  toDelete.forEach(userId => userRequestCounts.delete(userId));
}, 60000); // Clean up every minute
