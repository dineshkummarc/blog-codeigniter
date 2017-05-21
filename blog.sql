-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 02:24 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `time`) VALUES
(1, 'Sport', '2017-04-09 21:09:04'),
(2, 'Games', '2017-04-09 21:09:04'),
(3, 'Cooking', '2017-04-10 09:59:37'),
(4, 'Makeup', '2017-04-10 14:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `time`) VALUES
(1, 11, 'Greg', 'greg@gmail.com', 'Nice post!', '2017-04-10 14:01:40'),
(2, 11, 'Peter', 'peter@gmail.com', 'And I don\'t like this post!', '2017-04-10 14:15:14'),
(3, 12, 'Iaro', 'iaro@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa, so cool!!! I want to eat it! please prepare it for me!', '2017-04-10 14:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `time`) VALUES
(9, 2, 1, 'test', 'test', '<p>test</p>\r\n', 'tylerhayes_24609708604080_small.png', '2017-04-09 21:48:39'),
(10, 2, 1, 'no', 'no', '<p>no</p>\r\n', 'noimage.png', '2017-04-09 21:56:08'),
(11, 3, 1, 'Lazania', 'Lazania', '<p>The first rule of making a perfect Lazania is...</p>\r\n', 'noimage.png', '2017-04-10 10:21:40'),
(12, 3, 1, 'Classic lazania', 'Classic-lazania', '<ul>\r\n	<li>\r\n	<p>Prep 25&nbsp;m</p>\r\n	</li>\r\n	<li>\r\n	<p>Cook 1&nbsp;h</p>\r\n	</li>\r\n	<li>\r\n	<p>Ready In 1&nbsp;h&nbsp;35&nbsp;m</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>Preheat oven to 350 degrees F (175 degrees C).</li>\r\n	<li>Fill a large pot with lightly salted water and bring to a rolling boil over high heat. Once the water is boiling, add the lasagna noodles a few at a time, and return to a boil. Cook the pasta uncovered, stirring occasionally, until the pasta has cooked through, but is still firm to the bite, about 10 minutes. Remove the noodles to a plate.</li>\r\n	<li>Place the ground beef into a skillet over medium heat, add the garlic, garlic powder, oregano, salt, and black pepper to the skillet. Cook the meat, chopping it into small chunks as it cooks, until no longer pink, about 10 minutes. Drain excess grease.</li>\r\n	<li>In a bowl, mix the cottage cheese, eggs, and Parmesan cheese until thoroughly combined.</li>\r\n	<li>Place 4 noodles side by side into the bottom of a 9x13-inch baking pan; top with a layer of the tomato-basil sauce, a layer of ground beef mixture, and a layer of the cottage cheese mixture. Repeat layers twice more, ending with a layer of sauce; sprinkle top with the mozzarella cheese. Cover the dish with aluminum foil.</li>\r\n	<li>Bake in the preheated oven until the casserole is bubbling and the cheese has melted, about 30 minutes. Remove foil and bake until cheese has begun to brown, about 10 more minutes. Allow to stand at least 10 minutes before serving.</li>\r\n</ol>\r\n', 'noimage.png', '2017-04-10 14:34:53'),
(13, 3, 2, 'hehehe', 'hehehe', '<p>checking <strong>ck edito</strong>r, so wazazap??</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>gogogogogoogoghiiiiii</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>gergergerg</h1>\r\n', 'noimage.png', '2017-05-06 17:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Iaroslav', '1111', 'iaro@gmail.com', 'Iaro', '$2y$10$OeOq9GkAstcbvweanKQ.9uh4sflkQvwbf/ilezhXsSYvkHdLGKYva', '2017-04-18 12:14:23'),
(2, 'qwe', '00000002', 'qwe@qwe.com', 'qweqwe', '$2y$10$T3nvl5gK0ZEmfHf1X6JE7el7v8mXSSaubNTMPpINd89/DaTTCk1rq', '2017-05-06 17:49:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
