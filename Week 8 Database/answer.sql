CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `role` varchar(255),
  `Firstname` varchar(255),
  `Lastname` varchar(255),
  `Phonenumber` varchar(255),
  `Email` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `books` (
  `id` integer PRIMARY KEY,
  `title` varchar(255),
  `author` text,
  `user_id` integer NOT NULL,
  `status` varchar(255),
  `Yearpublished` date,
  `Quantity` integer,
  `created_at` timestamp
);

CREATE TABLE `payments` (
  `id` integer PRIMARY KEY,
  `amount` integer,
  `receiptnumber` varchar(255),
  `user_id` integer,
  `book_id` integer
);

CREATE TABLE `records` (
  `id` integer PRIMARY KEY,
  `status` boolean,
  `description` varchar(255),
  `user_id` integer,
  `book_id` integer
);

ALTER TABLE `books` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

ALTER TABLE `records` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `records` ADD FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);