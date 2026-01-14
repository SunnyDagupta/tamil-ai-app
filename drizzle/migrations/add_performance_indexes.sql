-- Performance indexes for scalability (50K-100K users)
-- Created for launch optimization

-- Thirukkural search optimization
CREATE INDEX IF NOT EXISTS idx_thirukkural_chapter ON thirukkural(chapter_number);
CREATE INDEX IF NOT EXISTS idx_thirukkural_couplet ON thirukkural(couplet_number);
CREATE INDEX IF NOT EXISTS idx_thirukkural_premium ON thirukkural(is_premium);

-- Full-text search for Thirukkural (much faster than LIKE queries)
CREATE FULLTEXT INDEX IF NOT EXISTS idx_thirukkural_search 
ON thirukkural(original_tamil, english_translation, explanation, keywords);

-- User activity indexes (foreign keys)
CREATE INDEX IF NOT EXISTS idx_bookmarks_user ON bookmarks(user_id);
CREATE INDEX IF NOT EXISTS idx_bookmarks_couplet ON bookmarks(couplet_id);
CREATE INDEX IF NOT EXISTS idx_bookmarks_created ON bookmarks(createdAt DESC);

-- Meditation session indexes
CREATE INDEX IF NOT EXISTS idx_meditation_sessions_user ON meditation_sessions(user_id);
CREATE INDEX IF NOT EXISTS idx_meditation_sessions_meditation ON meditation_sessions(meditation_id);
CREATE INDEX IF NOT EXISTS idx_meditation_sessions_started ON meditation_sessions(started_at DESC);

-- User pathway progress indexes
CREATE INDEX IF NOT EXISTS idx_user_pathway_progress_user ON user_pathway_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_user_pathway_progress_pathway ON user_pathway_progress(pathway_id);
CREATE INDEX IF NOT EXISTS idx_user_pathway_progress_enrolled ON user_pathway_progress(enrolled_at DESC);

-- User lesson progress indexes
CREATE INDEX IF NOT EXISTS idx_user_lesson_progress_user ON user_lesson_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_user_lesson_progress_lesson ON user_lesson_progress(lesson_id);

-- Community posts indexes (for feed performance)
CREATE INDEX IF NOT EXISTS idx_community_posts_created ON community_posts(createdAt DESC);
CREATE INDEX IF NOT EXISTS idx_community_posts_user ON community_posts(user_id);
CREATE INDEX IF NOT EXISTS idx_community_posts_active ON community_posts(is_active, createdAt DESC);

-- Community comments indexes
CREATE INDEX IF NOT EXISTS idx_community_comments_post ON community_comments(post_id);
CREATE INDEX IF NOT EXISTS idx_community_comments_user ON community_comments(user_id);
CREATE INDEX IF NOT EXISTS idx_community_comments_created ON community_comments(createdAt DESC);

-- Post likes indexes
CREATE INDEX IF NOT EXISTS idx_post_likes_post ON post_likes(post_id);
CREATE INDEX IF NOT EXISTS idx_post_likes_user ON post_likes(user_id);

-- User subscriptions indexes
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_user ON user_subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_status ON user_subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_user_subscriptions_stripe_customer ON user_subscriptions(stripe_customer_id);

-- Meditations indexes
CREATE INDEX IF NOT EXISTS idx_meditations_category ON meditations(category_id);
CREATE INDEX IF NOT EXISTS idx_meditations_difficulty ON meditations(difficulty);
CREATE INDEX IF NOT EXISTS idx_meditations_tier ON meditations(required_tier);
CREATE INDEX IF NOT EXISTS idx_meditations_active ON meditations(is_active);

-- Learning pathways indexes
CREATE INDEX IF NOT EXISTS idx_learning_pathways_level ON learning_pathways(level);
CREATE INDEX IF NOT EXISTS idx_learning_pathways_tier ON learning_pathways(required_tier);
CREATE INDEX IF NOT EXISTS idx_learning_pathways_active ON learning_pathways(is_active);

-- Lessons indexes
CREATE INDEX IF NOT EXISTS idx_lessons_pathway ON lessons(pathway_id);
CREATE INDEX IF NOT EXISTS idx_lessons_order ON lessons(pathway_id, lesson_order);

-- User achievements indexes
CREATE INDEX IF NOT EXISTS idx_user_achievements_user ON user_achievements(user_id);
CREATE INDEX IF NOT EXISTS idx_user_achievements_achievement ON user_achievements(achievement_id);
CREATE INDEX IF NOT EXISTS idx_user_achievements_unlocked ON user_achievements(unlocked_at DESC);
