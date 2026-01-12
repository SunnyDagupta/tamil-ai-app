import { describe, expect, it, beforeAll } from "vitest";
import { appRouter } from "./routers";
import type { TrpcContext } from "./_core/context";
import * as db from "./db";

type AuthenticatedUser = NonNullable<TrpcContext["user"]>;

function createMockContext(user?: AuthenticatedUser): TrpcContext {
  const ctx: TrpcContext = {
    user: user || null,
    req: {
      protocol: "https",
      headers: {},
    } as TrpcContext["req"],
    res: {
      clearCookie: () => {},
    } as TrpcContext["res"],
  };
  return ctx;
}

const mockUser: AuthenticatedUser = {
  id: 1,
  openId: "test-user",
  email: "test@example.com",
  name: "Test User",
  loginMethod: "manus",
  role: "user",
  createdAt: new Date(),
  updatedAt: new Date(),
  lastSignedIn: new Date(),
};

describe("Thirukkural Features", () => {
  it("should search Thirukkural couplets", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const results = await caller.thirukkural.search({ query: "wisdom", limit: 10 });

    expect(results).toBeDefined();
    expect(Array.isArray(results)).toBe(true);
  });

  it("should get Thirukkural by ID", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const couplet = await caller.thirukkural.getById({ id: 1 });

    expect(couplet).toBeDefined();
    if (couplet) {
      expect(couplet.coupletNumber).toBe(1);
    }
  });
});

describe("Meditation Features", () => {
  it("should list all meditations", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const meditations = await caller.meditations.list();

    expect(meditations).toBeDefined();
    expect(Array.isArray(meditations)).toBe(true);
    expect(meditations.length).toBeGreaterThan(0);
  });

  it("should get meditation categories", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const categories = await caller.meditations.categories();

    expect(categories).toBeDefined();
    expect(Array.isArray(categories)).toBe(true);
    expect(categories.length).toBeGreaterThan(0);
  });

  it("should filter meditations by category", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const categories = await caller.meditations.categories();
    if (categories.length > 0) {
      const categoryId = categories[0].id;
      const meditations = await caller.meditations.list({ categoryId });

      expect(meditations).toBeDefined();
      expect(Array.isArray(meditations)).toBe(true);
    }
  });

  it("should get meditation by ID", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const allMeditations = await caller.meditations.list();
    if (allMeditations.length > 0) {
      const meditation = await caller.meditations.getById({ id: allMeditations[0].id });

      expect(meditation).toBeDefined();
      if (meditation) {
        expect(meditation.id).toBe(allMeditations[0].id);
      }
    }
  });
});

describe("Bookmark Features", () => {
  it("should require authentication to list bookmarks", async () => {
    const ctx = createMockContext(); // No user
    const caller = appRouter.createCaller(ctx);

    await expect(caller.bookmarks.list()).rejects.toThrow();
  });

  it("should list user bookmarks when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const bookmarks = await caller.bookmarks.list();

    expect(bookmarks).toBeDefined();
    expect(Array.isArray(bookmarks)).toBe(true);
  });

  it("should add and remove bookmarks", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    // Add bookmark
    await caller.bookmarks.add({ coupletId: 1, notes: "Test note" });

    // Verify it was added
    const bookmarks = await caller.bookmarks.list();
    const hasBookmark = bookmarks.some((b) => b.bookmark.coupletId === 1);
    expect(hasBookmark).toBe(true);

    // Remove bookmark
    await caller.bookmarks.remove({ coupletId: 1 });

    // Verify it was removed
    const bookmarksAfter = await caller.bookmarks.list();
    const stillHasBookmark = bookmarksAfter.some((b) => b.bookmark.coupletId === 1);
    expect(stillHasBookmark).toBe(false);
  });
});

describe("Subscription Features", () => {
  it("should list subscription tiers", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const tiers = await caller.subscription.tiers();

    expect(tiers).toBeDefined();
    expect(Array.isArray(tiers)).toBe(true);
    expect(tiers.length).toBeGreaterThanOrEqual(3); // beginner, pro, advanced
  });

  it("should get user subscription when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const subscription = await caller.subscription.current();

    // User may or may not have a subscription
    expect(subscription === null || typeof subscription === "object").toBe(true);
  });
});

describe("Progress Features", () => {
  it("should get user streak when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const streak = await caller.progress.streak();

    expect(streak).toBeDefined();
    if (streak) {
      expect(typeof streak.currentStreak).toBe("number");
      expect(typeof streak.longestStreak).toBe("number");
    }
  });

  it("should get user achievements when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const achievements = await caller.progress.achievements();

    expect(achievements).toBeDefined();
    expect(Array.isArray(achievements)).toBe(true);
  });
});

describe("Learning Pathways", () => {
  it("should list learning pathways", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const pathways = await caller.pathways.list();

    expect(pathways).toBeDefined();
    expect(Array.isArray(pathways)).toBe(true);
    expect(pathways.length).toBeGreaterThan(0);
  });

  it("should get user pathway progress when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const pathways = await caller.pathways.list();
    if (pathways.length > 0) {
      const progress = await caller.pathways.myProgress({ pathwayId: pathways[0].id });

      expect(progress === null || typeof progress === "object").toBe(true);
    }
  });
});

describe("Community Features", () => {
  it("should list community posts", async () => {
    const ctx = createMockContext();
    const caller = appRouter.createCaller(ctx);

    const posts = await caller.community.posts({ limit: 10 });

    expect(posts).toBeDefined();
    expect(Array.isArray(posts)).toBe(true);
  });
});

describe("Meditation Session Tracking", () => {
  it("should require authentication to create session", async () => {
    const ctx = createMockContext(); // No user
    const caller = appRouter.createCaller(ctx);

    await expect(
      caller.meditations.createSession({
        meditationId: 1,
        durationListenedSeconds: 300,
        completed: true,
      })
    ).rejects.toThrow();
  });

  it("should create meditation session when authenticated", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const allMeditations = await caller.meditations.list();
    if (allMeditations.length > 0) {
      // Just verify the mutation succeeds without throwing
      await expect(
        caller.meditations.createSession({
          meditationId: allMeditations[0].id,
          durationListenedSeconds: 600,
          completed: true,
          rating: 5,
          notes: "Great meditation!",
        })
      ).resolves.toBeDefined();
    }
  });

  it("should get user meditation sessions", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const sessions = await caller.meditations.mySessions({ limit: 10 });

    expect(sessions).toBeDefined();
    expect(Array.isArray(sessions)).toBe(true);
  });

  it("should get user meditation stats", async () => {
    const ctx = createMockContext(mockUser);
    const caller = appRouter.createCaller(ctx);

    const stats = await caller.meditations.myStats();

    expect(stats).toBeDefined();
    if (stats) {
      expect(typeof stats.totalSessions).toBe("number");
      expect(typeof stats.completedSessions).toBe("number");
      expect(typeof stats.totalMinutes).toBe("number");
    }
  });
});
