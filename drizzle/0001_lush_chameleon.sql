CREATE TABLE `achievements` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`description` text,
	`icon_url` text,
	`category` varchar(50),
	`unlock_criteria` text,
	`points` int NOT NULL DEFAULT 0,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `achievements_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `bookmarks` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`couplet_id` int NOT NULL,
	`notes` text,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `bookmarks_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `community_comments` (
	`id` int AUTO_INCREMENT NOT NULL,
	`post_id` int NOT NULL,
	`user_id` int NOT NULL,
	`content` text NOT NULL,
	`likes_count` int NOT NULL DEFAULT 0,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `community_comments_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `community_posts` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`content` text NOT NULL,
	`image_url` text,
	`likes_count` int NOT NULL DEFAULT 0,
	`comments_count` int NOT NULL DEFAULT 0,
	`is_featured` int NOT NULL DEFAULT 0,
	`is_active` int NOT NULL DEFAULT 1,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	`updatedAt` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT `community_posts_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `learning_pathways` (
	`id` int AUTO_INCREMENT NOT NULL,
	`title` varchar(255) NOT NULL,
	`description` text,
	`level` enum('beginner','intermediate','advanced') NOT NULL DEFAULT 'beginner',
	`total_lessons` int NOT NULL,
	`estimated_hours` int,
	`thumbnail_url` text,
	`required_tier` enum('beginner','pro','advanced') NOT NULL DEFAULT 'beginner',
	`enrollment_count` int NOT NULL DEFAULT 0,
	`is_active` int NOT NULL DEFAULT 1,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `learning_pathways_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `lessons` (
	`id` int AUTO_INCREMENT NOT NULL,
	`pathway_id` int NOT NULL,
	`lesson_order` int NOT NULL,
	`title` varchar(255) NOT NULL,
	`description` text,
	`content_type` enum('video','audio','reading','quiz') NOT NULL,
	`media_url` text,
	`content_markdown` text,
	`duration_seconds` int,
	`quiz_questions` text,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `lessons_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `meditation_categories` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(100) NOT NULL,
	`display_name` varchar(100) NOT NULL,
	`description` text,
	`icon` varchar(50),
	`color` varchar(50),
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `meditation_categories_id` PRIMARY KEY(`id`),
	CONSTRAINT `meditation_categories_name_unique` UNIQUE(`name`)
);
--> statement-breakpoint
CREATE TABLE `meditation_sessions` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`meditation_id` int NOT NULL,
	`duration_listened_seconds` int NOT NULL,
	`completed` int NOT NULL DEFAULT 0,
	`rating` int,
	`notes` text,
	`started_at` timestamp NOT NULL DEFAULT (now()),
	`completed_at` timestamp,
	CONSTRAINT `meditation_sessions_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `meditations` (
	`id` int AUTO_INCREMENT NOT NULL,
	`title` varchar(255) NOT NULL,
	`title_tamil` varchar(255),
	`description` text,
	`syllable` varchar(50),
	`syllable_tamil` varchar(50),
	`category_id` int,
	`duration_seconds` int NOT NULL,
	`audio_url` text NOT NULL,
	`thumbnail_url` text,
	`difficulty` enum('beginner','intermediate','advanced') NOT NULL DEFAULT 'beginner',
	`required_tier` enum('beginner','pro','advanced') NOT NULL DEFAULT 'beginner',
	`play_count` int NOT NULL DEFAULT 0,
	`avg_rating` int DEFAULT 0,
	`is_active` int NOT NULL DEFAULT 1,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	`updatedAt` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT `meditations_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `post_likes` (
	`id` int AUTO_INCREMENT NOT NULL,
	`post_id` int NOT NULL,
	`user_id` int NOT NULL,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `post_likes_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `subscription_tiers` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
	`display_name` varchar(100) NOT NULL,
	`description` text,
	`price` int NOT NULL,
	`features` text,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `subscription_tiers_id` PRIMARY KEY(`id`),
	CONSTRAINT `subscription_tiers_name_unique` UNIQUE(`name`)
);
--> statement-breakpoint
CREATE TABLE `thirukkural` (
	`id` int AUTO_INCREMENT NOT NULL,
	`couplet_number` int NOT NULL,
	`chapter_number` int NOT NULL,
	`chapter_name` varchar(255) NOT NULL,
	`chapter_name_tamil` varchar(255),
	`section_name` varchar(255),
	`original_tamil` text NOT NULL,
	`transliteration` text,
	`english_translation` text NOT NULL,
	`explanation` text,
	`themes` text,
	`keywords` text,
	`is_premium` int NOT NULL DEFAULT 0,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `thirukkural_id` PRIMARY KEY(`id`),
	CONSTRAINT `thirukkural_couplet_number_unique` UNIQUE(`couplet_number`)
);
--> statement-breakpoint
CREATE TABLE `user_achievements` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`achievement_id` int NOT NULL,
	`unlocked_at` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `user_achievements_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `user_lesson_progress` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`lesson_id` int NOT NULL,
	`completed` int NOT NULL DEFAULT 0,
	`quiz_score` int,
	`time_spent_seconds` int NOT NULL DEFAULT 0,
	`completed_at` timestamp,
	CONSTRAINT `user_lesson_progress_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `user_pathway_progress` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`pathway_id` int NOT NULL,
	`current_lesson_order` int NOT NULL DEFAULT 0,
	`completion_percentage` int NOT NULL DEFAULT 0,
	`enrolled_at` timestamp NOT NULL DEFAULT (now()),
	`last_accessed_at` timestamp,
	`completed_at` timestamp,
	CONSTRAINT `user_pathway_progress_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `user_streaks` (
	`user_id` int NOT NULL,
	`current_streak` int NOT NULL DEFAULT 0,
	`longest_streak` int NOT NULL DEFAULT 0,
	`last_activity_date` timestamp,
	`total_meditation_minutes` int NOT NULL DEFAULT 0,
	`total_sessions` int NOT NULL DEFAULT 0,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	`updatedAt` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT `user_streaks_user_id` PRIMARY KEY(`user_id`)
);
--> statement-breakpoint
CREATE TABLE `user_subscriptions` (
	`id` int AUTO_INCREMENT NOT NULL,
	`user_id` int NOT NULL,
	`tier_id` int NOT NULL,
	`stripe_customer_id` varchar(255),
	`stripe_subscription_id` varchar(255),
	`status` enum('active','canceled','past_due','trialing') NOT NULL DEFAULT 'active',
	`current_period_start` timestamp,
	`current_period_end` timestamp,
	`canceled_at` timestamp,
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	`updatedAt` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT `user_subscriptions_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
ALTER TABLE `bookmarks` ADD CONSTRAINT `bookmarks_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `bookmarks` ADD CONSTRAINT `bookmarks_couplet_id_thirukkural_id_fk` FOREIGN KEY (`couplet_id`) REFERENCES `thirukkural`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `community_comments` ADD CONSTRAINT `community_comments_post_id_community_posts_id_fk` FOREIGN KEY (`post_id`) REFERENCES `community_posts`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `community_comments` ADD CONSTRAINT `community_comments_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `community_posts` ADD CONSTRAINT `community_posts_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `lessons` ADD CONSTRAINT `lessons_pathway_id_learning_pathways_id_fk` FOREIGN KEY (`pathway_id`) REFERENCES `learning_pathways`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `meditation_sessions` ADD CONSTRAINT `meditation_sessions_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `meditation_sessions` ADD CONSTRAINT `meditation_sessions_meditation_id_meditations_id_fk` FOREIGN KEY (`meditation_id`) REFERENCES `meditations`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `meditations` ADD CONSTRAINT `meditations_category_id_meditation_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `meditation_categories`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `post_likes` ADD CONSTRAINT `post_likes_post_id_community_posts_id_fk` FOREIGN KEY (`post_id`) REFERENCES `community_posts`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `post_likes` ADD CONSTRAINT `post_likes_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_achievements` ADD CONSTRAINT `user_achievements_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_achievements` ADD CONSTRAINT `user_achievements_achievement_id_achievements_id_fk` FOREIGN KEY (`achievement_id`) REFERENCES `achievements`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_lesson_progress` ADD CONSTRAINT `user_lesson_progress_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_lesson_progress` ADD CONSTRAINT `user_lesson_progress_lesson_id_lessons_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lessons`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_pathway_progress` ADD CONSTRAINT `user_pathway_progress_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_pathway_progress` ADD CONSTRAINT `user_pathway_progress_pathway_id_learning_pathways_id_fk` FOREIGN KEY (`pathway_id`) REFERENCES `learning_pathways`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_streaks` ADD CONSTRAINT `user_streaks_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_subscriptions` ADD CONSTRAINT `user_subscriptions_user_id_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `user_subscriptions` ADD CONSTRAINT `user_subscriptions_tier_id_subscription_tiers_id_fk` FOREIGN KEY (`tier_id`) REFERENCES `subscription_tiers`(`id`) ON DELETE no action ON UPDATE no action;