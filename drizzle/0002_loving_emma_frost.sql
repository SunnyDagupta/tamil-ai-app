CREATE TABLE `email_signups` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`email` varchar(320) NOT NULL,
	`source` varchar(100) DEFAULT 'app',
	`createdAt` timestamp NOT NULL DEFAULT (now()),
	CONSTRAINT `email_signups_id` PRIMARY KEY(`id`),
	CONSTRAINT `email_signups_email_unique` UNIQUE(`email`)
);
