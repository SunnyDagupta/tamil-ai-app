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
