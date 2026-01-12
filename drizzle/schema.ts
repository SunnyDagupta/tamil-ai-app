import { int, mysqlEnum, mysqlTable, text, timestamp, varchar } from "drizzle-orm/mysql-core";

/**
 * Core user table backing auth flow.
 * Extend this file with additional tables as your product grows.
 * Columns use camelCase to match both database fields and generated types.
 */
export const users = mysqlTable("users", {
  /**
   * Surrogate primary key. Auto-incremented numeric value managed by the database.
   * Use this for relations between tables.
   */
  id: int("id").autoincrement().primaryKey(),
  /** Manus OAuth identifier (openId) returned from the OAuth callback. Unique per user. */
  openId: varchar("openId", { length: 64 }).notNull().unique(),
  name: text("name"),
  email: varchar("email", { length: 320 }),
  loginMethod: varchar("loginMethod", { length: 64 }),
  role: mysqlEnum("role", ["user", "admin"]).default("user").notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
  updatedAt: timestamp("updatedAt").defaultNow().onUpdateNow().notNull(),
  lastSignedIn: timestamp("lastSignedIn").defaultNow().notNull(),
});

export type User = typeof users.$inferSelect;
export type InsertUser = typeof users.$inferInsert;

// Subscription tiers enum
export const subscriptionTiers = mysqlTable("subscription_tiers", {
  id: int("id").autoincrement().primaryKey(),
  name: varchar("name", { length: 50 }).notNull().unique(), // 'beginner', 'pro', 'advanced'
  displayName: varchar("display_name", { length: 100 }).notNull(),
  description: text("description"),
  price: int("price").notNull(), // in cents
  features: text("features"), // JSON array of features
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// User subscriptions
export const userSubscriptions = mysqlTable("user_subscriptions", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  tierId: int("tier_id").notNull().references(() => subscriptionTiers.id),
  stripeCustomerId: varchar("stripe_customer_id", { length: 255 }),
  stripeSubscriptionId: varchar("stripe_subscription_id", { length: 255 }),
  status: mysqlEnum("status", ["active", "canceled", "past_due", "trialing"]).default("active").notNull(),
  currentPeriodStart: timestamp("current_period_start"),
  currentPeriodEnd: timestamp("current_period_end"),
  canceledAt: timestamp("canceled_at"),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
  updatedAt: timestamp("updatedAt").defaultNow().onUpdateNow().notNull(),
});

// Thirukkural couplets
export const thirukkural = mysqlTable("thirukkural", {
  id: int("id").autoincrement().primaryKey(),
  coupletNumber: int("couplet_number").notNull().unique(),
  chapterNumber: int("chapter_number").notNull(),
  chapterName: varchar("chapter_name", { length: 255 }).notNull(),
  chapterNameTamil: varchar("chapter_name_tamil", { length: 255 }),
  sectionName: varchar("section_name", { length: 255 }),
  originalTamil: text("original_tamil").notNull(),
  transliteration: text("transliteration"),
  englishTranslation: text("english_translation").notNull(),
  explanation: text("explanation"),
  themes: text("themes"), // JSON array
  keywords: text("keywords"), // JSON array for search
  isPremium: int("is_premium").default(0).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// User bookmarks for Thirukkural
export const bookmarks = mysqlTable("bookmarks", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  coupletId: int("couplet_id").notNull().references(() => thirukkural.id, { onDelete: "cascade" }),
  notes: text("notes"),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// Meditation categories
export const meditationCategories = mysqlTable("meditation_categories", {
  id: int("id").autoincrement().primaryKey(),
  name: varchar("name", { length: 100 }).notNull().unique(),
  displayName: varchar("display_name", { length: 100 }).notNull(),
  description: text("description"),
  icon: varchar("icon", { length: 50 }),
  color: varchar("color", { length: 50 }),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// Meditations
export const meditations = mysqlTable("meditations", {
  id: int("id").autoincrement().primaryKey(),
  title: varchar("title", { length: 255 }).notNull(),
  titleTamil: varchar("title_tamil", { length: 255 }),
  description: text("description"),
  syllable: varchar("syllable", { length: 50 }),
  syllableTamil: varchar("syllable_tamil", { length: 50 }),
  categoryId: int("category_id").references(() => meditationCategories.id),
  durationSeconds: int("duration_seconds").notNull(),
  audioUrl: text("audio_url").notNull(),
  thumbnailUrl: text("thumbnail_url"),
  difficulty: mysqlEnum("difficulty", ["beginner", "intermediate", "advanced"]).default("beginner").notNull(),
  requiredTier: mysqlEnum("required_tier", ["beginner", "pro", "advanced"]).default("beginner").notNull(),
  playCount: int("play_count").default(0).notNull(),
  avgRating: int("avg_rating").default(0),
  isActive: int("is_active").default(1).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
  updatedAt: timestamp("updatedAt").defaultNow().onUpdateNow().notNull(),
});

// Meditation sessions (user progress)
export const meditationSessions = mysqlTable("meditation_sessions", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  meditationId: int("meditation_id").notNull().references(() => meditations.id, { onDelete: "cascade" }),
  durationListenedSeconds: int("duration_listened_seconds").notNull(),
  completed: int("completed").default(0).notNull(),
  rating: int("rating"),
  notes: text("notes"),
  startedAt: timestamp("started_at").defaultNow().notNull(),
  completedAt: timestamp("completed_at"),
});

// Learning pathways
export const learningPathways = mysqlTable("learning_pathways", {
  id: int("id").autoincrement().primaryKey(),
  title: varchar("title", { length: 255 }).notNull(),
  description: text("description"),
  level: mysqlEnum("level", ["beginner", "intermediate", "advanced"]).default("beginner").notNull(),
  totalLessons: int("total_lessons").notNull(),
  estimatedHours: int("estimated_hours"),
  thumbnailUrl: text("thumbnail_url"),
  requiredTier: mysqlEnum("required_tier", ["beginner", "pro", "advanced"]).default("beginner").notNull(),
  enrollmentCount: int("enrollment_count").default(0).notNull(),
  isActive: int("is_active").default(1).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// Lessons
export const lessons = mysqlTable("lessons", {
  id: int("id").autoincrement().primaryKey(),
  pathwayId: int("pathway_id").notNull().references(() => learningPathways.id, { onDelete: "cascade" }),
  lessonOrder: int("lesson_order").notNull(),
  title: varchar("title", { length: 255 }).notNull(),
  description: text("description"),
  contentType: mysqlEnum("content_type", ["video", "audio", "reading", "quiz"]).notNull(),
  mediaUrl: text("media_url"),
  contentMarkdown: text("content_markdown"),
  durationSeconds: int("duration_seconds"),
  quizQuestions: text("quiz_questions"), // JSON
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// User pathway progress
export const userPathwayProgress = mysqlTable("user_pathway_progress", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  pathwayId: int("pathway_id").notNull().references(() => learningPathways.id, { onDelete: "cascade" }),
  currentLessonOrder: int("current_lesson_order").default(0).notNull(),
  completionPercentage: int("completion_percentage").default(0).notNull(),
  enrolledAt: timestamp("enrolled_at").defaultNow().notNull(),
  lastAccessedAt: timestamp("last_accessed_at"),
  completedAt: timestamp("completed_at"),
});

// User lesson progress
export const userLessonProgress = mysqlTable("user_lesson_progress", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  lessonId: int("lesson_id").notNull().references(() => lessons.id, { onDelete: "cascade" }),
  completed: int("completed").default(0).notNull(),
  quizScore: int("quiz_score"),
  timeSpentSeconds: int("time_spent_seconds").default(0).notNull(),
  completedAt: timestamp("completed_at"),
});

// User streaks
export const userStreaks = mysqlTable("user_streaks", {
  userId: int("user_id").primaryKey().references(() => users.id, { onDelete: "cascade" }),
  currentStreak: int("current_streak").default(0).notNull(),
  longestStreak: int("longest_streak").default(0).notNull(),
  lastActivityDate: timestamp("last_activity_date"),
  totalMeditationMinutes: int("total_meditation_minutes").default(0).notNull(),
  totalSessions: int("total_sessions").default(0).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
  updatedAt: timestamp("updatedAt").defaultNow().onUpdateNow().notNull(),
});

// Achievements
export const achievements = mysqlTable("achievements", {
  id: int("id").autoincrement().primaryKey(),
  name: varchar("name", { length: 255 }).notNull(),
  description: text("description"),
  iconUrl: text("icon_url"),
  category: varchar("category", { length: 50 }),
  unlockCriteria: text("unlock_criteria"), // JSON
  points: int("points").default(0).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// User achievements
export const userAchievements = mysqlTable("user_achievements", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  achievementId: int("achievement_id").notNull().references(() => achievements.id, { onDelete: "cascade" }),
  unlockedAt: timestamp("unlocked_at").defaultNow().notNull(),
});

// Community posts
export const communityPosts = mysqlTable("community_posts", {
  id: int("id").autoincrement().primaryKey(),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  content: text("content").notNull(),
  imageUrl: text("image_url"),
  likesCount: int("likes_count").default(0).notNull(),
  commentsCount: int("comments_count").default(0).notNull(),
  isFeatured: int("is_featured").default(0).notNull(),
  isActive: int("is_active").default(1).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
  updatedAt: timestamp("updatedAt").defaultNow().onUpdateNow().notNull(),
});

// Community comments
export const communityComments = mysqlTable("community_comments", {
  id: int("id").autoincrement().primaryKey(),
  postId: int("post_id").notNull().references(() => communityPosts.id, { onDelete: "cascade" }),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  content: text("content").notNull(),
  likesCount: int("likes_count").default(0).notNull(),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

// Post likes
export const postLikes = mysqlTable("post_likes", {
  id: int("id").autoincrement().primaryKey(),
  postId: int("post_id").notNull().references(() => communityPosts.id, { onDelete: "cascade" }),
  userId: int("user_id").notNull().references(() => users.id, { onDelete: "cascade" }),
  createdAt: timestamp("createdAt").defaultNow().notNull(),
});

export type SubscriptionTier = typeof subscriptionTiers.$inferSelect;
export type UserSubscription = typeof userSubscriptions.$inferSelect;
export type Thirukkural = typeof thirukkural.$inferSelect;
export type Bookmark = typeof bookmarks.$inferSelect;
export type MeditationCategory = typeof meditationCategories.$inferSelect;
export type Meditation = typeof meditations.$inferSelect;
export type MeditationSession = typeof meditationSessions.$inferSelect;
export type LearningPathway = typeof learningPathways.$inferSelect;
export type Lesson = typeof lessons.$inferSelect;
export type UserPathwayProgress = typeof userPathwayProgress.$inferSelect;
export type UserLessonProgress = typeof userLessonProgress.$inferSelect;
export type UserStreak = typeof userStreaks.$inferSelect;
export type Achievement = typeof achievements.$inferSelect;
export type UserAchievement = typeof userAchievements.$inferSelect;
export type CommunityPost = typeof communityPosts.$inferSelect;
export type CommunityComment = typeof communityComments.$inferSelect;
export type PostLike = typeof postLikes.$inferSelect;