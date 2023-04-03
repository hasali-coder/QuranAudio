-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 10:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quranaudio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(30) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `cover_photo` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `description`, `cover_photo`, `date_created`) VALUES
(1, 'Pop', 'Popular music', '1605745560_play.jpg', '2020-11-19 08:26:53'),
(2, 'Rock', ' Its loud and strong beats make it popular among the youths.', 'default_cover.jpg', '2020-11-19 08:29:13'),
(3, 'Country Music', 'Country Music', 'default_cover.jpg', '2020-11-19 08:59:17'),
(5, 'Surah', 'Surah', '1679699340_surah.jpeg', '2023-03-25 02:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `cover_image`, `date_created`) VALUES
(1, 1, 'Playlist 1', 'Nunc pellentesque at erat eu vulputate. Integer ornare nec mauris ac sodales. Maecenas venenatis rutrum urna at faucibus. Aenean feugiat, purus ac venenatis mollis, lectus nunc dapibus mauris, sed imperdiet erat augue eu mauris. In eu diam eleifend, accumsan massa vitae, tempor velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis imperdiet tortor lectus, et scelerisque massa efficitur a. In hendrerit felis nec gravida cursus. Suspendisse aliquet est vel lacus venenatis interdum. Vestibulum quis risus dolor. Aliquam feugiat sagittis nibh, id dignissim ipsum mollis et. Nunc nec sapien ligula. Donec laoreet leo eget velit tristique, vitae pulvinar velit hendrerit.', '1605833520_m2.jpg', '2020-11-20 08:52:36'),
(2, 2, 'Playlist 2', 'Nulla sollicitudin laoreet elit quis interdum. Nam dictum convallis suscipit. Etiam in sapien mauris. Nunc varius metus tortor, at porta tortor aliquet vel. Praesent a augue laoreet, mattis justo a, posuere nulla. Donec dictum tortor vel metus interdum dignissim. Vestibulum commodo aliquam gravida. Nulla facilisi.', 'play.jpg', '2020-11-20 08:58:35'),
(3, 2, 'My Playlist', 'Sample', '1605833940_h1.jpg', '2020-11-20 08:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_items`
--

CREATE TABLE `playlist_items` (
  `id` int(30) NOT NULL,
  `playlist_id` int(30) NOT NULL,
  `music_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_items`
--

INSERT INTO `playlist_items` (`id`, `playlist_id`, `music_id`, `date_created`) VALUES
(1, 6, 1, '2020-11-20 08:52:51'),
(2, 2, 2, '2020-11-20 08:58:44'),
(3, 3, 2, '2020-11-20 08:59:46'),
(4, 3, 1, '2020-11-20 08:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `genre_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `description` text NOT NULL,
  `upath` text NOT NULL,
  `cover_image` text NOT NULL,
  `date_created` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `genre_id`, `title`, `artist`, `description`, `upath`, `cover_image`, `date_created`) VALUES
(3, 1, 5, 'Al-Fatiha', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Al-Fatiha, is the first surah of the Quran. It consists of 7 ayah which are a prayer for guidance and mercy.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1679699520_[Download MP3 Quran] - 001 AL-Fatihah.mp3', '1679699520_al-fatiha.jpeg', 2147483647),
(4, 3, 5, 'Surah Al Baqarah', '', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;This is the second and longest chapter of the Quran. It&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;is the longest single verse in the Quran. It is concerned with agricultural futures contracts.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1679840400_Surah-Al-Baqarah-full-quick-reci.mp3', '1679840400_al baqarah.jpeg', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 2,
  `profile_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `type`, `profile_pic`, `date_created`) VALUES
(1, 'Administrator', '', 'Male', '+123546879', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-18 16:50:06'),
(2, 'John', 'Smith', 'Male', '+6948 8542 623', 'Sample address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, '1605833640_avatar.jpg', '2020-11-20 08:54:15'),
(3, 'Alli', 'Muange', 'Male', '+254746126579', '', 'alimuange@gmail.com', '7b8304f7b43d3be04cc170cf6d5b409e', 2, '1679700060_WhatsApp Image 2022-12-21 at 09.33.03.jpeg', '2023-03-25 02:21:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_items`
--
ALTER TABLE `playlist_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist_items`
--
ALTER TABLE `playlist_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
