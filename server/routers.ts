import { COOKIE_NAME } from "@shared/const";
import { getSessionCookieOptions } from "./_core/cookies";
import { systemRouter } from "./_core/systemRouter";
import { publicProcedure, protectedProcedure, router } from "./_core/trpc";
import { z } from "zod";
import * as db from "./db";

export const appRouter = router({
  system: systemRouter,
  
  auth: router({
    me: publicProcedure.query(opts => opts.ctx.user),
    logout: protectedProcedure.mutation(({ ctx }) => {
      const cookieOptions = getSessionCookieOptions(ctx.req);
      ctx.res.clearCookie(COOKIE_NAME, { ...cookieOptions, maxAge: -1 });
      return {
        success: true,
      } as const;
    }),
  }),

  // Thirukkural & Search
  thirukkural: router({
    search: publicProcedure
      .input(z.object({ query: z.string(), limit: z.number().optional() }))
      .query(async ({ input }) => {
        return await db.searchThirukkural(input.query, input.limit);
      }),
    
    getById: publicProcedure
      .input(z.object({ id: z.number() }))
      .query(async ({ input }) => {
        return await db.getThirukkuralById(input.id);
      }),
    
    getByChapter: publicProcedure
      .input(z.object({ chapterNumber: z.number() }))
      .query(async ({ input }) => {
        return await db.getThirukkuralByChapter(input.chapterNumber);
      }),
    
    getAIGuidance: publicProcedure
      .input(z.object({ 
        coupletId: z.number().optional(),
        userContext: z.string().optional() 
      }))
      .mutation(async ({ input, ctx }) => {
        const { generateThirukkuralGuidance } = await import("./gemini");
        const { queueLLMRequest, getQueueStats } = await import("./rateLimiter");
        
        // Get user ID for rate limiting (use IP if not logged in)
        const userId = ctx.user?.id || ctx.req.ip || 'anonymous';
        
        let couplet = null;
        if (input.coupletId) {
          couplet = await db.getThirukkuralById(input.coupletId);
        }
        
        // System prompt is now built into generateThirukkuralGuidance
        
        let userPrompt = input.userContext || "Please share wisdom from Thirukkural.";
        
        if (couplet) {
          userPrompt = `Here is a Thirukkural couplet:

Tamil: ${couplet.originalTamil}
Translation: ${couplet.englishTranslation}
Explanation: ${couplet.explanation}

User's situation: ${input.userContext || "How can I apply this wisdom to my life?"}

Provide personalized guidance on how to apply this wisdom.`;
        }
        
        // Queue the LLM request with rate limiting
        const guidance = await queueLLMRequest(userId, async () => {
          return await generateThirukkuralGuidance(userPrompt);
        });
        
        return {
          guidance: typeof guidance === "string" ? guidance : JSON.stringify(guidance),
          couplet
        };
      }),
  }),

  // Bookmarks
  bookmarks: router({
    list: protectedProcedure.query(async ({ ctx }) => {
      return await db.getUserBookmarks(ctx.user.id);
    }),
    
    add: protectedProcedure
      .input(z.object({ coupletId: z.number(), notes: z.string().optional() }))
      .mutation(async ({ ctx, input }) => {
        return await db.addBookmark(ctx.user.id, input.coupletId, input.notes);
      }),
    
    remove: protectedProcedure
      .input(z.object({ coupletId: z.number() }))
      .mutation(async ({ ctx, input }) => {
        return await db.removeBookmark(ctx.user.id, input.coupletId);
      }),
  }),

  // Meditations
  meditations: router({
    list: publicProcedure
      .input(z.object({ categoryId: z.number().optional() }).optional())
      .query(async ({ input }) => {
        return await db.getMeditations(input?.categoryId);
      }),
    
    getById: publicProcedure
      .input(z.object({ id: z.number() }))
      .query(async ({ input }) => {
        return await db.getMeditationById(input.id);
      }),
    
    categories: publicProcedure.query(async () => {
      return await db.getMeditationCategories();
    }),
    
    createSession: protectedProcedure
      .input(
        z.object({
          meditationId: z.number(),
          durationListenedSeconds: z.number(),
          completed: z.boolean(),
          rating: z.number().min(1).max(5).optional(),
          notes: z.string().optional(),
        })
      )
      .mutation(async ({ ctx, input }) => {
        return await db.createMeditationSession(
          ctx.user.id,
          input.meditationId,
          input.durationListenedSeconds,
          input.completed,
          input.rating,
          input.notes
        );
      }),
    
    mySessions: protectedProcedure
      .input(z.object({ limit: z.number().optional() }).optional())
      .query(async ({ ctx, input }) => {
        return await db.getUserMeditationSessions(ctx.user.id, input?.limit);
      }),
    
    myStats: protectedProcedure.query(async ({ ctx }) => {
      return await db.getUserMeditationStats(ctx.user.id);
    }),
  }),

  // User Progress & Streaks
  progress: router({
    streak: protectedProcedure.query(async ({ ctx }) => {
      return await db.getUserStreak(ctx.user.id);
    }),
    
    achievements: protectedProcedure.query(async ({ ctx }) => {
      return await db.getUserAchievements(ctx.user.id);
    }),
  }),

  // Learning Pathways
  pathways: router({
    list: publicProcedure.query(async () => {
      return await db.getLearningPathways();
    }),
    
    myProgress: protectedProcedure
      .input(z.object({ pathwayId: z.number() }))
      .query(async ({ ctx, input }) => {
        return await db.getUserPathwayProgress(ctx.user.id, input.pathwayId);
      }),
  }),

  // Lessons
  lessons: router({
    markComplete: protectedProcedure
      .input(z.object({ 
        moduleName: z.string(),
        lessonId: z.string()
      }))
      .mutation(async ({ ctx, input }) => {
        return await db.markLessonComplete(ctx.user.id, input.moduleName, input.lessonId);
      }),
    
    getCompletedLessons: protectedProcedure
      .query(async ({ ctx }) => {
        return await db.getUserCompletedLessons(ctx.user.id);
      }),
    
    isLessonComplete: protectedProcedure
      .input(z.object({ 
        moduleName: z.string(),
        lessonId: z.string()
      }))
      .query(async ({ ctx, input }) => {
        return await db.isLessonComplete(ctx.user.id, input.moduleName, input.lessonId);
      }),
  }),

  // Community
  community: router({
    posts: publicProcedure
      .input(z.object({ limit: z.number().optional() }).optional())
      .query(async ({ input }) => {
        return await db.getCommunityPosts(input?.limit);
      }),
  }),

  // Subscriptions
  subscription: router({
    current: protectedProcedure.query(async ({ ctx }) => {
      return await db.getUserSubscription(ctx.user.id);
    }),
    
    tiers: publicProcedure.query(async () => {
      return await db.getSubscriptionTiers();
    }),
  }),
});

export type AppRouter = typeof appRouter;
