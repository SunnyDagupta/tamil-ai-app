import { eq, desc, and, like, or, sql } from "drizzle-orm";
import { drizzle } from "drizzle-orm/mysql2";
import { 
  InsertUser, users, thirukkural, meditations, meditationSessions, 
  bookmarks, learningPathways, userPathwayProgress, userStreaks,
  achievements, userAchievements, communityPosts, userSubscriptions,
  meditationCategories, subscriptionTiers, emailSignups
} from "../drizzle/schema";
import { ENV } from './_core/env';

let _db: ReturnType<typeof drizzle> | null = null;

// Lazily create the drizzle instance so local tooling can run without a DB.
export async function getDb() {
  if (!_db && process.env.DATABASE_URL) {
    try {
      _db = drizzle(process.env.DATABASE_URL);
    } catch (error) {
      console.warn("[Database] Failed to connect:", error);
      _db = null;
    }
  }
  return _db;
}

export async function upsertUser(user: InsertUser): Promise<void> {
  if (!user.openId) {
    throw new Error("User openId is required for upsert");
  }

  const db = await getDb();
  if (!db) {
    console.warn("[Database] Cannot upsert user: database not available");
    return;
  }

  try {
    const values: InsertUser = {
      openId: user.openId,
    };
    const updateSet: Record<string, unknown> = {};

    const textFields = ["name", "email", "loginMethod"] as const;
    type TextField = (typeof textFields)[number];

    const assignNullable = (field: TextField) => {
      const value = user[field];
      if (value === undefined) return;
      const normalized = value ?? null;
      values[field] = normalized;
      updateSet[field] = normalized;
    };

    textFields.forEach(assignNullable);

    if (user.lastSignedIn !== undefined) {
      values.lastSignedIn = user.lastSignedIn;
      updateSet.lastSignedIn = user.lastSignedIn;
    }
    if (user.role !== undefined) {
      values.role = user.role;
      updateSet.role = user.role;
    } else if (user.openId === ENV.ownerOpenId) {
      values.role = 'admin';
      updateSet.role = 'admin';
    }

    if (!values.lastSignedIn) {
      values.lastSignedIn = new Date();
    }

    if (Object.keys(updateSet).length === 0) {
      updateSet.lastSignedIn = new Date();
    }

    await db.insert(users).values(values).onDuplicateKeyUpdate({
      set: updateSet,
    });
  } catch (error) {
    console.error("[Database] Failed to upsert user:", error);
    throw error;
  }
}

export async function getUserByOpenId(openId: string) {
  const db = await getDb();
  if (!db) {
    console.warn("[Database] Cannot get user: database not available");
    return undefined;
  }

  const result = await db.select().from(users).where(eq(users.openId, openId)).limit(1);

  return result.length > 0 ? result[0] : undefined;
}

// Thirukkural functions
export async function searchThirukkural(query: string, limit = 20) {
  // Use cache for better performance
  const { searchCachedThirukkural } = await import("./cache");
  const cachedResults = searchCachedThirukkural(query, limit);
  if (cachedResults.length > 0) {
    return cachedResults;
  }
  
  // Fallback to database if cache not initialized
  const db = await getDb();
  if (!db) return [];

  // Expand query with common synonyms and related terms
  const queryTerms = [query.toLowerCase()];
  const synonymMap: Record<string, string[]> = {
    'war': ['battle', 'warfare', 'army', 'fort', 'siege', 'soldier', 'enemy', 'combat', 'fight'],
    'love': ['affection', 'desire', 'passion', 'devotion', 'attachment'],
    'wealth': ['riches', 'prosperity', 'fortune', 'money', 'treasure'],
    'wisdom': ['knowledge', 'learning', 'understanding', 'insight', 'intelligence'],
    'friend': ['friendship', 'companion', 'ally'],
    'virtue': ['goodness', 'righteousness', 'morality', 'integrity'],
    'king': ['ruler', 'monarch', 'sovereign', 'leader', 'governance'],
    'patience': ['endurance', 'perseverance', 'forbearance', 'tolerance'],
  };

  // Add synonyms if query matches
  for (const [key, synonyms] of Object.entries(synonymMap)) {
    if (query.toLowerCase().includes(key) || synonyms.some(s => query.toLowerCase().includes(s))) {
      queryTerms.push(key, ...synonyms);
    }
  }

  // Remove duplicates
  const uniqueTerms = Array.from(new Set(queryTerms));

  // Build OR conditions for all terms
  const conditions = uniqueTerms.flatMap(term => {
    const pattern = `%${term}%`;
    return [
      like(thirukkural.englishTranslation, pattern),
      like(thirukkural.explanation, pattern),
      like(thirukkural.chapterName, pattern),
      like(thirukkural.transliteration, pattern),
    ];
  });

  const results = await db
    .select()
    .from(thirukkural)
    .where(or(...conditions))
    .limit(limit * 2); // Get more results for ranking

  // Rank results by relevance (how many terms match)
  const ranked = results.map(result => {
    let score = 0;
    const searchableText = [
      result.englishTranslation,
      result.explanation,
      result.chapterName,
      result.transliteration
    ].join(' ').toLowerCase();

    uniqueTerms.forEach(term => {
      const termLower = term.toLowerCase();
      // Count occurrences
      const matches = (searchableText.match(new RegExp(termLower, 'g')) || []).length;
      score += matches;
      // Bonus for exact query match
      if (term === query.toLowerCase()) {
        score += matches * 2;
      }
    });

    return { ...result, _score: score };
  });

  // Sort by score and return top results
  return ranked
    .sort((a, b) => b._score - a._score)
    .slice(0, limit)
    .map(({ _score, ...result }) => result);
}

export async function getThirukkuralById(id: number) {
  // Use cache for better performance
  const { getCachedThirukkuralById } = await import("./cache");
  const cached = getCachedThirukkuralById(id);
  if (cached) {
    return cached;
  }
  
  // Fallback to database
  const db = await getDb();
  if (!db) return null;

  const result = await db.select().from(thirukkural).where(eq(thirukkural.id, id)).limit(1);
  return result[0] || null;
}

export async function getThirukkuralByChapter(chapterNumber: number) {
  // Use cache for better performance
  const { getCachedThirukkuralByChapter } = await import("./cache");
  const cached = getCachedThirukkuralByChapter(chapterNumber);
  if (cached.length > 0) {
    return cached;
  }
  
  // Fallback to database
  const db = await getDb();
  if (!db) return [];

  return await db
    .select()
    .from(thirukkural)
    .where(eq(thirukkural.chapterNumber, chapterNumber))
    .orderBy(thirukkural.coupletNumber);
}

// Bookmark functions
export async function getUserBookmarks(userId: number) {
  const db = await getDb();
  if (!db) return [];

  return await db
    .select({
      bookmark: bookmarks,
      couplet: thirukkural,
    })
    .from(bookmarks)
    .innerJoin(thirukkural, eq(bookmarks.coupletId, thirukkural.id))
    .where(eq(bookmarks.userId, userId))
    .orderBy(desc(bookmarks.createdAt));
}

export async function addBookmark(userId: number, coupletId: number, notes?: string) {
  const db = await getDb();
  if (!db) return null;

  const result = await db.insert(bookmarks).values({
    userId,
    coupletId,
    notes: notes || null,
  });

  return result;
}

export async function removeBookmark(userId: number, coupletId: number) {
  const db = await getDb();
  if (!db) return null;

  return await db
    .delete(bookmarks)
    .where(and(eq(bookmarks.userId, userId), eq(bookmarks.coupletId, coupletId)));
}

// Meditation functions
export async function getMeditations(categoryId?: number, requiredTier?: string) {
  const db = await getDb();
  if (!db) return [];

  if (categoryId) {
    return await db
      .select()
      .from(meditations)
      .where(and(eq(meditations.isActive, 1), eq(meditations.categoryId, categoryId)))
      .orderBy(desc(meditations.createdAt));
  }

  return await db
    .select()
    .from(meditations)
    .where(eq(meditations.isActive, 1))
    .orderBy(desc(meditations.createdAt));
}

export async function getMeditationById(id: number) {
  const db = await getDb();
  if (!db) return null;

  const result = await db.select().from(meditations).where(eq(meditations.id, id)).limit(1);
  return result[0] || null;
}

export async function getMeditationCategories() {
  const db = await getDb();
  if (!db) return [];

  return await db.select().from(meditationCategories);
}

// Meditation session functions
export async function createMeditationSession(
  userId: number,
  meditationId: number,
  durationListenedSeconds: number,
  completed: boolean,
  rating?: number,
  notes?: string
) {
  const db = await getDb();
  if (!db) return null;

  const result = await db.insert(meditationSessions).values({
    userId,
    meditationId,
    durationListenedSeconds,
    completed: completed ? 1 : 0,
    rating: rating || null,
    notes: notes || null,
    startedAt: new Date(),
    completedAt: completed ? new Date() : null,
  });

  // Update streak
  await updateUserStreak(userId);

  // Return the created session ID
  const insertId = (result as any).insertId;
  if (!insertId) {
    return null;
  }
  
  const sessionId = Number(insertId);
  if (isNaN(sessionId)) {
    return null;
  }
  
  const sessions = await db
    .select()
    .from(meditationSessions)
    .where(eq(meditationSessions.id, sessionId))
    .limit(1);

  return sessions[0] || null;
}

export async function getUserMeditationSessions(userId: number, limit = 50) {
  const db = await getDb();
  if (!db) return [];

  return await db
    .select({
      session: meditationSessions,
      meditation: meditations,
    })
    .from(meditationSessions)
    .innerJoin(meditations, eq(meditationSessions.meditationId, meditations.id))
    .where(eq(meditationSessions.userId, userId))
    .orderBy(desc(meditationSessions.startedAt))
    .limit(limit);
}

export async function getUserMeditationStats(userId: number) {
  const db = await getDb();
  if (!db) return null;

  const sessions = await db
    .select()
    .from(meditationSessions)
    .where(eq(meditationSessions.userId, userId));

  const totalSessions = sessions.length;
  const completedSessions = sessions.filter((s) => s.completed).length;
  const totalMinutes = Math.floor(
    sessions.reduce((sum, s) => sum + s.durationListenedSeconds, 0) / 60
  );

  return {
    totalSessions,
    completedSessions,
    totalMinutes,
  };
}

// User streak functions
export async function getUserStreak(userId: number) {
  const db = await getDb();
  if (!db) return null;

  const result = await db.select().from(userStreaks).where(eq(userStreaks.userId, userId)).limit(1);
  return result[0] || null;
}

export async function updateUserStreak(userId: number) {
  const db = await getDb();
  if (!db) return;

  const today = new Date();
  today.setHours(0, 0, 0, 0);

  const streak = await getUserStreak(userId);

  if (!streak) {
    // Create new streak
    await db.insert(userStreaks).values({
      userId,
      currentStreak: 1,
      longestStreak: 1,
      lastActivityDate: new Date(),
      totalMeditationMinutes: 0,
      totalSessions: 1,
    });
    return;
  }

  const lastActivity = new Date(streak.lastActivityDate!);
  lastActivity.setHours(0, 0, 0, 0);

  const daysDiff = Math.floor((today.getTime() - lastActivity.getTime()) / (1000 * 60 * 60 * 24));

  if (daysDiff === 0) {
    // Same day, just update session count
    await db
      .update(userStreaks)
      .set({
        totalSessions: streak.totalSessions + 1,
        lastActivityDate: new Date(),
      })
      .where(eq(userStreaks.userId, userId));
  } else if (daysDiff === 1) {
    // Next day, increment streak
    const newStreak = streak.currentStreak + 1;
    await db
      .update(userStreaks)
      .set({
        currentStreak: newStreak,
        longestStreak: Math.max(newStreak, streak.longestStreak),
        lastActivityDate: new Date(),
        totalSessions: streak.totalSessions + 1,
      })
      .where(eq(userStreaks.userId, userId));
  } else {
    // Streak broken, reset
    await db
      .update(userStreaks)
      .set({
        currentStreak: 1,
        lastActivityDate: new Date(),
        totalSessions: streak.totalSessions + 1,
      })
      .where(eq(userStreaks.userId, userId));
  }
}

// Learning pathway functions
export async function getLearningPathways(requiredTier?: string) {
  const db = await getDb();
  if (!db) return [];

  return await db
    .select()
    .from(learningPathways)
    .where(eq(learningPathways.isActive, 1))
    .orderBy(learningPathways.level);
}

export async function getUserPathwayProgress(userId: number, pathwayId: number) {
  const db = await getDb();
  if (!db) return null;

  const result = await db
    .select()
    .from(userPathwayProgress)
    .where(
      and(eq(userPathwayProgress.userId, userId), eq(userPathwayProgress.pathwayId, pathwayId))
    )
    .limit(1);

  return result[0] || null;
}

// Achievement functions
export async function getUserAchievements(userId: number) {
  const db = await getDb();
  if (!db) return [];

  return await db
    .select({
      userAchievement: userAchievements,
      achievement: achievements,
    })
    .from(userAchievements)
    .innerJoin(achievements, eq(userAchievements.achievementId, achievements.id))
    .where(eq(userAchievements.userId, userId))
    .orderBy(desc(userAchievements.unlockedAt));
}

// Community functions
export async function getCommunityPosts(limit = 50) {
  const db = await getDb();
  if (!db) return [];

  return await db
    .select({
      post: communityPosts,
      user: users,
    })
    .from(communityPosts)
    .innerJoin(users, eq(communityPosts.userId, users.id))
    .where(eq(communityPosts.isActive, 1))
    .orderBy(desc(communityPosts.createdAt))
    .limit(limit);
}

// Subscription functions
export async function getUserSubscription(userId: number) {
  const db = await getDb();
  if (!db) return null;

  const result = await db
    .select({
      subscription: userSubscriptions,
      tier: subscriptionTiers,
    })
    .from(userSubscriptions)
    .innerJoin(subscriptionTiers, eq(userSubscriptions.tierId, subscriptionTiers.id))
    .where(and(eq(userSubscriptions.userId, userId), eq(userSubscriptions.status, "active")))
    .limit(1);

  return result[0] || null;
}

export async function getSubscriptionTiers() {
  const db = await getDb();
  if (!db) return [];

  return await db.select().from(subscriptionTiers);
}

// Lesson completion tracking functions
export async function markLessonComplete(userId: number, moduleName: string, lessonId: string) {
  const db = await getDb();
  if (!db) return { success: false };

  try {
    await db.execute(sql`
      INSERT INTO user_lesson_progress (user_id, lesson_id, completed, completed_at)
      SELECT ${userId}, l.id, 1, NOW()
      FROM lessons l
      JOIN learning_pathways lp ON l.pathway_id = lp.id
      WHERE lp.title LIKE CONCAT('%', ${moduleName}, '%') AND l.title LIKE CONCAT('%', ${lessonId}, '%')
      LIMIT 1
      ON DUPLICATE KEY UPDATE completed = 1, completed_at = NOW()
    `);
    
    return { success: true };
  } catch (error) {
    console.error("[Database] Error marking lesson complete:", error);
    return { success: false, error };
  }
}

export async function getUserCompletedLessons(userId: number) {
  const db = await getDb();
  if (!db) return [];

  try {
    const result = await db.execute(sql`
      SELECT lp.title as module_name, l.title as lesson_id, ulp.completed_at
      FROM user_lesson_progress ulp
      JOIN lessons l ON ulp.lesson_id = l.id
      JOIN learning_pathways lp ON l.pathway_id = lp.id
      WHERE ulp.user_id = ${userId} AND ulp.completed = 1
      ORDER BY ulp.completed_at DESC
    `);
    
    return (result[0] as any) as Array<{ module_name: string; lesson_id: string; completed_at: Date }>;
  } catch (error) {
    console.error("[Database] Error getting completed lessons:", error);
    return [];
  }
}

export async function isLessonComplete(userId: number, moduleName: string, lessonId: string) {
  const db = await getDb();
  if (!db) return { completed: false };

  try {
    const result = await db.execute(sql`
      SELECT COUNT(*) as count
      FROM user_lesson_progress ulp
      JOIN lessons l ON ulp.lesson_id = l.id
      JOIN learning_pathways lp ON l.pathway_id = lp.id
      WHERE ulp.user_id = ${userId} 
        AND lp.title LIKE CONCAT('%', ${moduleName}, '%') 
        AND l.title LIKE CONCAT('%', ${lessonId}, '%')
        AND ulp.completed = 1
    `);
    
    const rows = (result[0] as any) as Array<{ count: number }>;
    return { completed: rows[0]?.count > 0 };
  } catch (error) {
    console.error("[Database] Error checking lesson completion:", error);
    return { completed: false };
  }
}


// Email Signup for lead capture
export async function createEmailSignup(name: string, email: string) {
  const db = await getDb();
  if (!db) {
    console.warn("[Database] Cannot create email signup: database not available");
    return { success: false, error: "Database not available" };
  }

  try {
    // Check if email already exists
    const existing = await db.execute(sql`
      SELECT id FROM email_signups WHERE email = ${email} LIMIT 1
    `);
    
    const rows = (existing[0] as any) as Array<{ id: number }>;
    if (rows.length > 0) {
      return { success: true, message: "Already signed up" };
    }

    // Insert new signup
    await db.insert(emailSignups).values({
      name,
      email,
      source: "app"
    });

    return { success: true, message: "Signed up successfully" };
  } catch (error) {
    console.error("[Database] Error creating email signup:", error);
    return { success: false, error: "Failed to save signup" };
  }
}
