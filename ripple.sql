-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2020 at 06:38 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.0.33-29+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ripple`
--

-- --------------------------------------------------------

--
-- Table structure for table `2fa`
--

CREATE TABLE `2fa` (
  `userid` int(11) NOT NULL,
  `ip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2fa_telegram`
--

CREATE TABLE `2fa_telegram` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `2fa_totp`
--

CREATE TABLE `2fa_totp` (
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `icon` mediumtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `name`, `description`, `icon`, `version`) VALUES
(1, '500 Combo (osu!std)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
(2, '750 Combo (osu!std)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
(3, '1000 Combo (osu!std)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
(4, '2000 Combo (osu!std)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
(5, '500 Combo (osu!taiko)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
(6, '750 Combo (osu!taiko)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
(7, '1000 Combo (osu!taiko)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
(8, '2000 Combo (osu!taiko)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
(9, '500 Combo (osu!ctb)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
(10, '750 Combo (osu!ctb)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
(11, '1000 Combo (osu!ctb)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
(12, '2000 Combo (osu!ctb)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
(13, '500 Combo (osu!mania)', '500 big ones! You\'re moving up in the world!', 'osu-combo-500', 1),
(14, '750 Combo (osu!mania)', '750 big ones! You\'re moving up in the world!', 'osu-combo-750', 1),
(15, '1000 Combo (osu!mania)', '1000 big ones! You\'re moving up in the world!', 'osu-combo-1000', 1),
(16, '2000 Combo (osu!mania)', '2000 big ones! You\'re moving up in the world!', 'osu-combo-2000', 1),
(17, 'Rising Star', 'Can\'t go forward without the first steps.', 'osu-skill-pass-1', 2),
(18, 'My First Don', 'Can\'t go forward without the first steps.', 'taiko-skill-pass-1', 2),
(19, 'A Slice Of Life', 'Can\'t go forward without the first steps.', 'fruits-skill-pass-1', 2),
(20, 'First Steps', 'Can\'t go forward without the first steps.', 'mania-skill-pass-1', 2),
(21, 'Constellation Prize', 'Definitely not a consolation prize. Now things start getting hard!', 'osu-skill-pass-2', 2),
(22, 'Katsu Katsu Katsu', 'Definitely not a consolation prize. Now things start getting hard!', 'taiko-skill-pass-2', 2),
(23, 'Dashing Ever Forward', 'Definitely not a consolation prize. Now things start getting hard!', 'fruits-skill-pass-2', 2),
(24, 'No Normal Player', 'Definitely not a consolation prize. Now things start getting hard!', 'mania-skill-pass-2', 2),
(25, 'Building Confidence', 'Oh, you\'ve SO got this.', 'osu-skill-pass-3', 2),
(26, 'Not Even Trying', 'Oh, you\'ve SO got this.', 'taiko-skill-pass-3', 2),
(27, 'Zesty Disposition', 'Oh, you\'ve SO got this.', 'fruits-skill-pass-3', 2),
(28, 'Impulse Drive', 'Oh, you\'ve SO got this.', 'mania-skill-pass-3', 2),
(29, 'Insanity Approaches', 'You\'re not twitching, you\'re just ready.', 'osu-skill-pass-4', 2),
(30, 'Face Your Demons', 'You\'re not twitching, you\'re just ready.', 'taiko-skill-pass-4', 2),
(31, 'Hyperdash ON!', 'You\'re not twitching, you\'re just ready.', 'fruits-skill-pass-4', 2),
(32, 'Hyperspeed', 'You\'re not twitching, you\'re just ready.', 'mania-skill-pass-4', 2),
(33, 'These Clarion Skies', 'Everything seems so clear now.', 'osu-skill-pass-5', 2),
(34, 'The Demon Within', 'Everything seems so clear now.', 'taiko-skill-pass-5', 2),
(35, 'It\'s Raining Fruit', 'Everything seems so clear now.', 'fruits-skill-pass-5', 2),
(36, 'Ever Onwards', 'Everything seems so clear now.', 'mania-skill-pass-5', 2),
(37, 'Above and Beyond', 'A cut above the rest.', 'osu-skill-pass-6', 2),
(38, 'Drumbreaker', 'A cut above the rest.', 'taiko-skill-pass-6', 2),
(39, 'Fruit Ninja', 'A cut above the rest.', 'fruits-skill-pass-6', 2),
(40, 'Another Surpassed', 'A cut above the rest.', 'mania-skill-pass-6', 2),
(41, 'Supremacy', 'All marvel before your prowess.', 'osu-skill-pass-7', 2),
(42, 'The Godfather', 'All marvel before your prowess.', 'taiko-skill-pass-7', 2),
(43, 'Dreamcatcher', 'All marvel before your prowess.', 'fruits-skill-pass-7', 2),
(44, 'Extra Credit', 'All marvel before your prowess.', 'mania-skill-pass-7', 2),
(45, 'Absolution', 'My god, you\'re full of stars!', 'osu-skill-pass-8', 2),
(46, 'Rhythm Incarnate', 'My god, you\'re full of stars!', 'taiko-skill-pass-8', 2),
(47, 'Lord of the Catch', 'My god, you\'re full of stars!', 'fruits-skill-pass-8', 2),
(48, 'Maniac', 'My god, you\'re full of stars!', 'mania-skill-pass-8', 2),
(49, 'Totality', 'All the notes. Every single one.', 'osu-skill-fc-1', 3),
(50, 'Keeping Time', 'All the notes. Every single one.', 'taiko-skill-fc-1', 3),
(51, 'Sweet And Sour', 'All the notes. Every single one.', 'fruits-skill-fc-1', 3),
(52, 'Keystruck', 'All the notes. Every single one.', 'mania-skill-fc-1', 3),
(53, 'Business As Usual', 'Two to go, please.', 'osu-skill-fc-2', 3),
(54, 'To Your Own Beat', 'Two to go, please.', 'taiko-skill-fc-2', 3),
(55, 'Reaching The Core', 'Two to go, please.', 'fruits-skill-fc-2', 3),
(56, 'Keying In', 'Two to go, please.', 'mania-skill-fc-2', 3),
(57, 'Building Steam', 'Hey, this isn\'t so bad.', 'osu-skill-fc-3', 3),
(58, 'Big Drums', 'Hey, this isn\'t so bad.', 'taiko-skill-fc-3', 3),
(59, 'Clean Platter', 'Hey, this isn\'t so bad.', 'fruits-skill-fc-3', 3),
(60, 'Hyperflow', 'Hey, this isn\'t so bad.', 'mania-skill-fc-3', 3),
(61, 'Moving Forward', 'Bet you feel good about that.', 'osu-skill-fc-4', 3),
(62, 'Adversity Overcome', 'Bet you feel good about that.', 'taiko-skill-fc-4', 3),
(63, 'Between The Rain', 'Bet you feel good about that.', 'fruits-skill-fc-4', 3),
(64, 'Breakthrough', 'Bet you feel good about that.', 'mania-skill-fc-4', 3),
(65, 'Paradigm Shift', 'Surprisingly difficult.', 'osu-skill-fc-5', 3),
(66, 'Demonslayer', 'Surprisingly difficult.', 'taiko-skill-fc-5', 3),
(67, 'Addicted', 'Surprisingly difficult.', 'fruits-skill-fc-5', 3),
(68, 'Everything Extra', 'Surprisingly difficult.', 'mania-skill-fc-5', 3),
(69, 'Anguish Quelled', 'Don\'t choke.', 'osu-skill-fc-6', 3),
(70, 'Rhythm\'s Call', 'Don\'t choke.', 'taiko-skill-fc-6', 3),
(71, 'Quickening', 'Don\'t choke.', 'fruits-skill-fc-6', 3),
(72, 'Level Breaker', 'Don\'t choke.', 'mania-skill-fc-6', 3),
(73, 'Never Give Up', 'Excellence is its own reward.', 'osu-skill-fc-7', 3),
(74, 'Time Everlasting', 'Excellence is its own reward.', 'taiko-skill-fc-7', 3),
(75, 'Supersonic', 'Excellence is its own reward.', 'fruits-skill-fc-7', 3),
(76, 'Step Up', 'Excellence is its own reward.', 'mania-skill-fc-7', 3),
(77, 'Aberration', 'They said it couldn\'t be done. They were wrong.', 'osu-skill-fc-8', 3),
(78, 'The Drummer\'s Throne', 'They said it couldn\'t be done. They were wrong.', 'taiko-skill-fc-8', 3),
(79, 'Dashing Scarlet', 'They said it couldn\'t be done. They were wrong.', 'fruits-skill-fc-8', 3),
(80, 'Behind The Veil', 'They said it couldn\'t be done. They were wrong.', 'mania-skill-fc-8', 3),
(81, 'Finality', 'High stakes, no regrets.', 'all-intro-suddendeath', 4),
(82, 'Perfectionist', 'Accept nothing but the best.', 'all-intro-perfect', 4),
(83, 'Rock Around The Clock', 'You can\'t stop the rock.', 'all-intro-hardrock', 4),
(84, 'Time And A Half', 'Having a right ol\' time. One and a half of them, almost.', 'all-intro-doubletime', 4),
(85, 'Sweet Rave Party', 'Founded in the fine tradition of changing things that were just fine as they were.', 'all-intro-nightcore', 4),
(86, 'Blindsight', 'I can see just perfectly.', 'all-intro-hidden', 4),
(87, 'Are You Afraid Of The Dark?', 'Harder than it looks, probably because it\'s hard to look.', 'all-intro-flashlight', 4),
(88, 'Dial It Right Back', 'Sometimes you just want to take it easy.', 'all-intro-easy', 4),
(89, 'Risk Averse', 'Safety nets are fun!', 'all-intro-nofail', 4),
(90, 'Slowboat', 'You got there. Eventually.', 'all-intro-halftime', 4),
(91, 'Burned Out', 'One cannot always spin to win.', 'all-intro-spunout', 4),
(92, '5,000 Plays', 'There\'s a lot more where that came from.', 'osu-plays-5000', 5),
(93, '15,000 Plays', 'Must.. click.. circles..', 'osu-plays-15000', 5),
(94, '25,000 Plays', 'There\'s no going back.', 'osu-plays-25000', 5),
(95, '50,000 Plays', 'You\'re here forever.', 'osu-plays-50000', 5),
(96, 'A meganekko approaches', 'Congratulations, you met Maria!', 'mania-secret-meganekko', 6),
(97, 'Don\'t let the bunny distract you!', 'The order was indeed, not a rabbit.', 'all-secret-bunny', 6);

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_reports`
--

CREATE TABLE `anticheat_reports` (
  `id` int(11) NOT NULL,
  `anticheat_id` int(11) NOT NULL,
  `score_id` int(11) NOT NULL,
  `severity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(11) NOT NULL,
  `name` varchar(21485) NOT NULL,
  `icon` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `name`, `icon`) VALUES
(2, 'Developers', 'teal blind'),
(3, 'Bug Hunter', 'bug icon'),
(4, 'Community Manager', 'user secret'),
(5, 'Beatmap Nominators', 'chart line'),
(10, 'SUSPICIOUS - WAITING FOR CHECK', 'red window close outline'),
(30, 'Chat Moderators', 'envelope outline'),
(999, 'FP', 'fa-plane'),
(1000, 'Thumbnail Maker', 'fa-thumbs-o-up'),
(1001, 'Marathon Runner', 'yellow hourglass outline'),
(1002, 'Donor', 'yellow heart'),
(1003, 'UA', 'universal access'),
(1004, 'Vanilla God (Certified by Kingkong)', 'yellow fa-check'),
(1005, 'Bot', 'blue shield alternate'),
(1006, '#1 Relax #Weekly (osu!)', 'fa-fighter-jet'),
(1007, '#1 Relax #Weekly (Catch The Beat)', 'fa-fighter-jet'),
(1009, '#1 Relax #Weekly (Taiko)', 'fa-fighter-jet'),
(1010, '#1 Vanilla #Weekly (osu!)', 'fa-fighter-jet'),
(1011, '#1 Vanilla #Weekly (Mania)', 'fa-fighter-jet'),
(1012, '#1 Vanilla #Weekly (Catch The Beat)', 'fa-fighter-jet'),
(1013, '#1 Vanilla #Weekly (Taiko)', 'fa-fighter-jet'),
(1014, '', ''),
(1035, 'Gay Ass Furry', 'fa-paw'),
(1036, 'Lolicon', 'fa-check-circle');

-- --------------------------------------------------------

--
-- Table structure for table `bancho_channels`
--

CREATE TABLE `bancho_channels` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(127) NOT NULL,
  `public_read` tinyint(4) NOT NULL,
  `public_write` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `temp` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bancho_channels`
--

INSERT INTO `bancho_channels` (`id`, `name`, `description`, `public_read`, `public_write`, `status`, `temp`, `hidden`) VALUES
(1, '#osu', 'Windows global chat', 1, 1, 1, 0, 0),
(2, '#announce', 'Announce channel', 1, 0, 1, 0, 0),
(3, '#Spanish', 'Spanish community', 1, 1, 1, 0, 0),
(4, '#english', 'English community', 1, 1, 1, 0, 0),
(5, '#admin', 'Are you admin?', 1, 1, 1, 0, 1),
(6, '#lobby', 'This is the lobby where you find games to play with others!', 1, 1, 1, 0, 1),
(7, '#ranked', 'Rank requests maps will be posted here! (If it\'s ranked.)', 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bancho_messages`
--

CREATE TABLE `bancho_messages` (
  `id` int(11) NOT NULL,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) NOT NULL,
  `msg_to` varchar(32) NOT NULL,
  `msg` varchar(127) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_private_messages`
--

CREATE TABLE `bancho_private_messages` (
  `id` int(11) NOT NULL,
  `msg_from_userid` int(11) NOT NULL,
  `msg_from_username` varchar(30) NOT NULL,
  `msg_to` varchar(32) NOT NULL,
  `msg` varchar(127) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_settings`
--

CREATE TABLE `bancho_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bancho_settings`
--

INSERT INTO `bancho_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'bancho_maintenance', 0, ''),
(2, 'free_direct', 0, ''),
(3, 'menu_icon', 0, 'https://i.ppy.sh/logo.png | https://ripple.moe'),
(4, 'login_messages', 1, ''),
(5, 'restricted_joke', 0, 'You\'re banned from the server.'),
(6, 'login_notification', 1, 'Welcome to Aya!'),
(7, 'osu_versions', 0, ''),
(8, 'osu_md5s', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bancho_stats`
--

CREATE TABLE `bancho_stats` (
  `id` int(11) NOT NULL,
  `users_osu` int(11) NOT NULL DEFAULT '0',
  `multiplayer_matches` int(11) NOT NULL DEFAULT '0',
  `registered_users` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bancho_tokens`
--

CREATE TABLE `bancho_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(16) NOT NULL,
  `osu_id` int(11) NOT NULL,
  `latest_message_id` int(11) NOT NULL,
  `latest_private_message_id` int(11) NOT NULL,
  `latest_packet_time` int(11) NOT NULL,
  `latest_heavy_packet_time` int(11) NOT NULL,
  `joined_channels` varchar(512) NOT NULL,
  `game_mode` tinyint(4) NOT NULL,
  `action` int(11) NOT NULL,
  `action_text` varchar(128) NOT NULL,
  `kicked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `beatmaps`
--

CREATE TABLE `beatmaps` (
  `id` int(11) NOT NULL,
  `rankedby` varchar(32) NOT NULL DEFAULT 'Bancho',
  `beatmap_id` int(11) NOT NULL DEFAULT '0',
  `beatmapset_id` int(11) NOT NULL DEFAULT '0',
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `song_name` longtext NOT NULL,
  `file_name` text,
  `ar` float NOT NULL DEFAULT '0',
  `od` float NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '10',
  `difficulty_std` float NOT NULL DEFAULT '0',
  `difficulty_taiko` float NOT NULL DEFAULT '0',
  `difficulty_ctb` float NOT NULL DEFAULT '0',
  `difficulty_mania` float NOT NULL DEFAULT '0',
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `hit_length` int(11) NOT NULL DEFAULT '0',
  `bpm` bigint(11) NOT NULL DEFAULT '0',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `passcount` int(11) NOT NULL DEFAULT '0',
  `ranked` tinyint(4) NOT NULL DEFAULT '0',
  `latest_update` int(11) NOT NULL DEFAULT '0',
  `ranked_status_freezed` tinyint(1) NOT NULL DEFAULT '0',
  `pp_100` int(11) NOT NULL DEFAULT '0',
  `pp_99` int(11) NOT NULL DEFAULT '0',
  `pp_98` int(11) NOT NULL DEFAULT '0',
  `pp_95` int(11) NOT NULL DEFAULT '0',
  `disable_pp` tinyint(4) NOT NULL DEFAULT '0',
  `artist` text NOT NULL,
  `creator` text NOT NULL,
  `title` text NOT NULL,
  `version` text NOT NULL,
  `cs` int(11) NOT NULL,
  `hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `beatmaps_names`
--

CREATE TABLE `beatmaps_names` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `beatmap_name` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `beatmaps_rating`
--

CREATE TABLE `beatmaps_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beatmaps_rating`
--

INSERT INTO `beatmaps_rating` (`id`, `user_id`, `beatmap_md5`, `rating`) VALUES
(1, 1003, 'f4fab5732e27c204de4563fefbf994ea', 10);

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `tag` varchar(6) NOT NULL,
  `mlimit` int(11) NOT NULL DEFAULT '16'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clans_invites`
--

CREATE TABLE `clans_invites` (
  `id` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `invite` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) NOT NULL DEFAULT '0',
  `beatmapset_id` int(11) NOT NULL DEFAULT '0',
  `score_id` int(11) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `who` varchar(11) NOT NULL,
  `special_format` varchar(2556) DEFAULT 'FFFFFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(11) UNSIGNED NOT NULL,
  `doc_name` varchar(255) NOT NULL DEFAULT 'New Documentation File',
  `doc_contents` longtext NOT NULL,
  `public` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `old_name` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hw_user`
--

CREATE TABLE `hw_user` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `mac` varchar(32) NOT NULL,
  `unique_id` varchar(32) NOT NULL,
  `disk_id` varchar(32) NOT NULL,
  `occurencies` int(11) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `identity_tokens`
--

CREATE TABLE `identity_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_user`
--

CREATE TABLE `ip_user` (
  `userid` int(11) NOT NULL,
  `ip` mediumtext NOT NULL,
  `occurencies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `irc_tokens`
--

CREATE TABLE `irc_tokens` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_ctb`
--

CREATE TABLE `leaderboard_ctb` (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_mania`
--

CREATE TABLE `leaderboard_mania` (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_std`
--

CREATE TABLE `leaderboard_std` (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard_taiko`
--

CREATE TABLE `leaderboard_taiko` (
  `position` int(10) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `v` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_menu_icons`
--

CREATE TABLE `main_menu_icons` (
  `id` int(11) NOT NULL,
  `is_current` int(11) NOT NULL,
  `file_id` varchar(128) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_menu_icons`
--

INSERT INTO `main_menu_icons` (`id`, `is_current`, `file_id`, `name`, `url`) VALUES
(1, 1, 'logo', 'Ripple!', 'https://ripple.moe/');

-- --------------------------------------------------------

--
-- Table structure for table `osin_access`
--

CREATE TABLE `osin_access` (
  `scope` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `client` int(11) NOT NULL DEFAULT '0',
  `extra` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `osin_client`
--

CREATE TABLE `osin_client` (
  `id` int(11) NOT NULL,
  `secret` varchar(64) NOT NULL DEFAULT '',
  `extra` varchar(127) NOT NULL DEFAULT '',
  `redirect_uri` varchar(127) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `osin_client_user`
--

CREATE TABLE `osin_client_user` (
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_recovery`
--

CREATE TABLE `password_recovery` (
  `id` int(11) NOT NULL,
  `k` varchar(80) NOT NULL,
  `u` varchar(30) NOT NULL,
  `t` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privileges_groups`
--

CREATE TABLE `privileges_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `privileges` int(11) NOT NULL,
  `color` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privileges_groups`
--

INSERT INTO `privileges_groups` (`id`, `name`, `privileges`, `color`) VALUES
(1, 'Banned', 0, ''),
(2, 'BAT', 267, ''),
(3, 'Chat Moderators', 2883911, 'success'),
(4, 'Admin', 1048575, 'danger'),
(5, 'Developer', 1043995, 'info'),
(6, 'Donor', 7, 'warning'),
(7, 'God', 1048575, 'info'),
(8, 'Normal User', 3, 'primary'),
(9, 'Pending', 1048576, 'default'),
(10, 'Restricted', 2, ''),
(11, 'Beatmap Nominator', 267, 'primary'),
(12, 'Full Perms', 3145727, 'info'),
(13, 'Community Manager', 918015, 'success'),
(14, 'New Privilege Group', 33039, 'info'),
(15, 'Omega Perms', 15728639, 'danger');

-- --------------------------------------------------------

--
-- Table structure for table `profile_backgrounds`
--

CREATE TABLE `profile_backgrounds` (
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rank_requests`
--

CREATE TABLE `rank_requests` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `type` varchar(8) NOT NULL,
  `time` int(11) NOT NULL,
  `blacklisted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rap_logs`
--

CREATE TABLE `rap_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `text` text NOT NULL,
  `datetime` int(11) NOT NULL,
  `through` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `remember`
--

CREATE TABLE `remember` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `series_identifier` int(11) DEFAULT NULL,
  `token_sha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `chatlog` text NOT NULL,
  `time` int(11) NOT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rx_beatmap_playcount`
--

CREATE TABLE `rx_beatmap_playcount` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) DEFAULT NULL,
  `game_mode` int(11) DEFAULT NULL,
  `playcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rx_rank`
--

CREATE TABLE `rx_rank` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `XH_std` int(11) NOT NULL DEFAULT '0',
  `X_std` int(11) NOT NULL DEFAULT '0',
  `SH_std` int(11) NOT NULL DEFAULT '0',
  `S_std` int(11) NOT NULL DEFAULT '0',
  `A_std` int(11) NOT NULL DEFAULT '0',
  `XH_taiko` int(11) NOT NULL DEFAULT '0',
  `X_taiko` int(11) NOT NULL DEFAULT '0',
  `SH_taiko` int(11) NOT NULL DEFAULT '0',
  `S_taiko` int(11) NOT NULL DEFAULT '0',
  `A_taiko` int(11) NOT NULL DEFAULT '0',
  `XH_ctb` int(11) NOT NULL DEFAULT '0',
  `X_ctb` int(11) NOT NULL DEFAULT '0',
  `SH_ctb` int(11) NOT NULL DEFAULT '0',
  `S_ctb` int(11) NOT NULL DEFAULT '0',
  `A_ctb` int(11) NOT NULL DEFAULT '0',
  `XH_mania` int(11) NOT NULL DEFAULT '0',
  `X_mania` int(11) NOT NULL DEFAULT '0',
  `SH_mania` int(11) NOT NULL DEFAULT '0',
  `S_mania` int(11) NOT NULL DEFAULT '0',
  `A_mania` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rx_stats`
--

CREATE TABLE `rx_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `username_aka` varchar(32) NOT NULL DEFAULT '',
  `user_color` varchar(16) NOT NULL DEFAULT 'black',
  `user_style` varchar(128) NOT NULL DEFAULT '',
  `favourite_mode` int(11) NOT NULL DEFAULT '0',
  `level_std` int(11) NOT NULL DEFAULT '1',
  `level_taiko` int(11) NOT NULL DEFAULT '1',
  `level_mania` int(11) NOT NULL DEFAULT '1',
  `level_ctb` int(11) NOT NULL DEFAULT '1',
  `total_score_std` int(11) NOT NULL DEFAULT '0',
  `total_score_taiko` int(11) NOT NULL DEFAULT '0',
  `total_score_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_std` int(11) NOT NULL DEFAULT '0',
  `playtime_taiko` int(11) NOT NULL DEFAULT '0',
  `playtime_mania` int(11) NOT NULL DEFAULT '0',
  `playtime_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_std` bigint(11) NOT NULL DEFAULT '0',
  `ranked_score_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` double NOT NULL DEFAULT '0',
  `avg_accuracy_taiko` double NOT NULL DEFAULT '0',
  `avg_accuracy_mania` double NOT NULL DEFAULT '0',
  `avg_accuracy_ctb` double NOT NULL DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT '0',
  `ppboard` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rx_stats`
--

INSERT INTO `rx_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `favourite_mode`, `level_std`, `level_taiko`, `level_mania`, `level_ctb`, `total_score_std`, `total_score_taiko`, `total_score_mania`, `total_score_ctb`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `playtime_std`, `playtime_taiko`, `playtime_mania`, `playtime_ctb`, `ranked_score_std`, `ranked_score_taiko`, `ranked_score_mania`, `ranked_score_ctb`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_mania`, `avg_accuracy_ctb`, `playcount_std`, `playcount_taiko`, `playcount_mania`, `playcount_ctb`, `pp_std`, `pp_mania`, `pp_ctb`, `pp_taiko`, `country`, `unrestricted_pp`, `ppboard`) VALUES
(999, 'Realm Watcher', '', 'black', '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'JP', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(11) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0',
  `rank` varchar(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scores_relax`
--

CREATE TABLE `scores_relax` (
  `id` int(11) NOT NULL,
  `beatmap_md5` varchar(32) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `max_combo` int(11) NOT NULL DEFAULT '0',
  `full_combo` tinyint(1) NOT NULL DEFAULT '0',
  `mods` int(11) NOT NULL DEFAULT '0',
  `300_count` int(11) NOT NULL DEFAULT '0',
  `100_count` int(11) NOT NULL DEFAULT '0',
  `50_count` int(11) NOT NULL DEFAULT '0',
  `katus_count` int(11) NOT NULL DEFAULT '0',
  `gekis_count` int(11) NOT NULL DEFAULT '0',
  `misses_count` int(11) NOT NULL DEFAULT '0',
  `time` varchar(18) NOT NULL DEFAULT '',
  `play_mode` tinyint(4) NOT NULL DEFAULT '0',
  `completed` tinyint(11) NOT NULL DEFAULT '0',
  `accuracy` float(15,12) DEFAULT NULL,
  `pp` double DEFAULT '0',
  `playtime` int(11) NOT NULL DEFAULT '0',
  `rank` varchar(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value_int` int(11) NOT NULL DEFAULT '0',
  `value_string` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `value_int`, `value_string`) VALUES
(1, 'website_maintenance', 0, ''),
(2, 'game_maintenance', 0, ''),
(3, 'website_global_alert', 0, 'The website is still being worked on as well as custom graphics!'),
(4, 'website_home_alert', 0, ''),
(5, 'registrations_enabled', 1, ''),
(6, 'ccreation_enabled', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user` varchar(31) NOT NULL,
  `privileges` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `token` varchar(127) NOT NULL,
  `private` tinyint(4) NOT NULL,
  `last_updated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `osuver` varchar(256) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `username_safe` varchar(30) NOT NULL,
  `ban_datetime` varchar(30) NOT NULL DEFAULT '0',
  `password_md5` varchar(127) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `email` varchar(254) NOT NULL,
  `register_datetime` int(10) NOT NULL,
  `rank` tinyint(1) NOT NULL DEFAULT '1',
  `allowed` tinyint(1) NOT NULL DEFAULT '1',
  `latest_activity` int(10) NOT NULL DEFAULT '0',
  `silence_end` int(11) NOT NULL DEFAULT '0',
  `silence_reason` varchar(127) NOT NULL DEFAULT '',
  `password_version` tinyint(4) NOT NULL DEFAULT '1',
  `privileges` bigint(11) NOT NULL,
  `donor_expire` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `achievements_version` int(11) NOT NULL DEFAULT '4',
  `achievements_0` int(11) NOT NULL DEFAULT '1',
  `achievements_1` int(11) NOT NULL DEFAULT '1',
  `notes` mediumtext,
  `last_session` varchar(1024) NOT NULL DEFAULT 'check',
  `always_online` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `osuver`, `username`, `username_safe`, `ban_datetime`, `password_md5`, `salt`, `email`, `register_datetime`, `rank`, `allowed`, `latest_activity`, `silence_end`, `silence_reason`, `password_version`, `privileges`, `donor_expire`, `flags`, `achievements_version`, `achievements_0`, `achievements_1`, `notes`, `last_session`, `always_online`) VALUES
(999, NULL, 'Realm Watcher', 'realm_watcher', '0', '$2a$10$pBgU874luaYxgm0OAplLi.mxiNMIPBHGYkpfh2HZNtQml68VsoyCS', '5e/AceVLS7jJtxTJA1U6rmVqrWREYg==', 'fo@kab.ot', 1566228790, 4, 1, 1569775752, 0, '', 1, 3145727, 2147483647, 0, 0, 1, 1, '', 'check', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_achievements`
--

CREATE TABLE `users_achievements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_beatmap_playcount`
--

CREATE TABLE `users_beatmap_playcount` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beatmap_id` int(11) DEFAULT NULL,
  `game_mode` int(11) DEFAULT NULL,
  `playcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_rank`
--

CREATE TABLE `users_rank` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `XH_std` int(11) NOT NULL DEFAULT '0',
  `X_std` int(11) NOT NULL DEFAULT '0',
  `SH_std` int(11) NOT NULL DEFAULT '0',
  `S_std` int(11) NOT NULL DEFAULT '0',
  `A_std` int(11) NOT NULL DEFAULT '0',
  `XH_taiko` int(11) NOT NULL DEFAULT '0',
  `X_taiko` int(11) NOT NULL DEFAULT '0',
  `SH_taiko` int(11) NOT NULL DEFAULT '0',
  `S_taiko` int(11) NOT NULL DEFAULT '0',
  `A_taiko` int(11) NOT NULL DEFAULT '0',
  `XH_ctb` int(11) NOT NULL DEFAULT '0',
  `X_ctb` int(11) NOT NULL DEFAULT '0',
  `SH_ctb` int(11) NOT NULL DEFAULT '0',
  `S_ctb` int(11) NOT NULL DEFAULT '0',
  `A_ctb` int(11) NOT NULL DEFAULT '0',
  `XH_mania` int(11) NOT NULL DEFAULT '0',
  `X_mania` int(11) NOT NULL DEFAULT '0',
  `SH_mania` int(11) NOT NULL DEFAULT '0',
  `S_mania` int(11) NOT NULL DEFAULT '0',
  `A_mania` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_relationships`
--

CREATE TABLE `users_relationships` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_stats`
--

CREATE TABLE `users_stats` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `username_aka` varchar(32) NOT NULL DEFAULT '',
  `user_color` varchar(16) NOT NULL DEFAULT 'black',
  `user_style` varchar(128) NOT NULL DEFAULT '',
  `ranked_score_std` bigint(20) DEFAULT '0',
  `playcount_std` int(11) NOT NULL DEFAULT '0',
  `total_score_std` bigint(20) DEFAULT '0',
  `replays_watched_std` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ranked_score_taiko` bigint(20) DEFAULT '0',
  `playcount_taiko` int(11) NOT NULL DEFAULT '0',
  `total_score_taiko` bigint(20) DEFAULT '0',
  `replays_watched_taiko` int(11) NOT NULL DEFAULT '0',
  `ranked_score_ctb` bigint(20) DEFAULT '0',
  `playcount_ctb` int(11) NOT NULL DEFAULT '0',
  `total_score_ctb` bigint(20) DEFAULT '0',
  `replays_watched_ctb` int(11) NOT NULL DEFAULT '0',
  `ranked_score_mania` bigint(20) DEFAULT '0',
  `playcount_mania` int(11) NOT NULL DEFAULT '0',
  `total_score_mania` bigint(20) DEFAULT '0',
  `replays_watched_mania` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_hits_std` int(11) NOT NULL DEFAULT '0',
  `total_hits_taiko` int(11) NOT NULL DEFAULT '0',
  `total_hits_ctb` int(11) NOT NULL DEFAULT '0',
  `total_hits_mania` int(11) NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT 'XX',
  `unrestricted_pp` int(11) NOT NULL DEFAULT '0',
  `ppboard` int(11) NOT NULL DEFAULT '0',
  `show_country` tinyint(4) NOT NULL DEFAULT '1',
  `level_std` int(11) NOT NULL DEFAULT '1',
  `level_taiko` int(11) NOT NULL DEFAULT '1',
  `level_ctb` int(11) NOT NULL DEFAULT '1',
  `level_mania` int(11) NOT NULL DEFAULT '1',
  `playtime_std` int(11) NOT NULL DEFAULT '0',
  `playtime_taiko` int(11) NOT NULL DEFAULT '0',
  `playtime_ctb` int(11) NOT NULL DEFAULT '0',
  `playtime_mania` int(11) NOT NULL DEFAULT '0',
  `avg_accuracy_std` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_taiko` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_ctb` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `avg_accuracy_mania` float(15,12) NOT NULL DEFAULT '0.000000000000',
  `pp_std` int(11) NOT NULL DEFAULT '0',
  `pp_taiko` int(11) NOT NULL DEFAULT '0',
  `pp_ctb` int(11) NOT NULL DEFAULT '0',
  `pp_mania` int(11) NOT NULL DEFAULT '0',
  `badges_shown` varchar(24) NOT NULL DEFAULT '1,0,0,0,0,0',
  `safe_title` tinyint(4) NOT NULL DEFAULT '0',
  `userpage_content` longtext,
  `play_style` smallint(6) NOT NULL DEFAULT '0',
  `favourite_mode` tinyint(4) NOT NULL DEFAULT '0',
  `prefer_relax` int(11) NOT NULL DEFAULT '0',
  `custom_badge_icon` varchar(32) NOT NULL DEFAULT '',
  `custom_badge_name` varchar(256) NOT NULL DEFAULT '',
  `can_custom_badge` tinyint(1) NOT NULL DEFAULT '0',
  `show_custom_badge` tinyint(1) NOT NULL DEFAULT '0',
  `current_status` varchar(20000) NOT NULL DEFAULT 'Offline'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_stats`
--

INSERT INTO `users_stats` (`id`, `username`, `username_aka`, `user_color`, `user_style`, `ranked_score_std`, `playcount_std`, `total_score_std`, `replays_watched_std`, `ranked_score_taiko`, `playcount_taiko`, `total_score_taiko`, `replays_watched_taiko`, `ranked_score_ctb`, `playcount_ctb`, `total_score_ctb`, `replays_watched_ctb`, `ranked_score_mania`, `playcount_mania`, `total_score_mania`, `replays_watched_mania`, `total_hits_std`, `total_hits_taiko`, `total_hits_ctb`, `total_hits_mania`, `country`, `unrestricted_pp`, `ppboard`, `show_country`, `level_std`, `level_taiko`, `level_ctb`, `level_mania`, `playtime_std`, `playtime_taiko`, `playtime_ctb`, `playtime_mania`, `avg_accuracy_std`, `avg_accuracy_taiko`, `avg_accuracy_ctb`, `avg_accuracy_mania`, `pp_std`, `pp_taiko`, `pp_ctb`, `pp_mania`, `badges_shown`, `safe_title`, `userpage_content`, `play_style`, `favourite_mode`, `prefer_relax`, `custom_badge_icon`, `custom_badge_name`, `can_custom_badge`, `show_custom_badge`, `current_status`) VALUES
(999, 'Realm Watcher', '', 'black', '', 0, 26956, 237228316533, 6228506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'JP', 1, 0, 1, 102, 1, 1, 1, 0, 0, 0, 0, 0.000000000000, 0.000000000000, 0.000000000000, 0.000000000000, 0, 0, 0, 0, '3,4,11,0,0,0', 0, '', 0, 0, 0, '', '', 1, 1, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `badge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_clans`
--

CREATE TABLE `user_clans` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `clan` int(11) NOT NULL,
  `perms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2fa`
--
ALTER TABLE `2fa`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `2fa_telegram`
--
ALTER TABLE `2fa_telegram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2fa_totp`
--
ALTER TABLE `2fa_totp`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anticheat_reports`
--
ALTER TABLE `anticheat_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_messages`
--
ALTER TABLE `bancho_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_private_messages`
--
ALTER TABLE `bancho_private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beatmaps`
--
ALTER TABLE `beatmaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `beatmaps_names`
--
ALTER TABLE `beatmaps_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beatmaps_rating`
--
ALTER TABLE `beatmaps_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans_invites`
--
ALTER TABLE `clans_invites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hw_user`
--
ALTER TABLE `hw_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `identity_tokens`
--
ALTER TABLE `identity_tokens`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `ip_user`
--
ALTER TABLE `ip_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `irc_tokens`
--
ALTER TABLE `irc_tokens`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `leaderboard_ctb`
--
ALTER TABLE `leaderboard_ctb`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_mania`
--
ALTER TABLE `leaderboard_mania`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_std`
--
ALTER TABLE `leaderboard_std`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `leaderboard_taiko`
--
ALTER TABLE `leaderboard_taiko`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `main_menu_icons`
--
ALTER TABLE `main_menu_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `osin_client`
--
ALTER TABLE `osin_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_recovery`
--
ALTER TABLE `password_recovery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges_groups`
--
ALTER TABLE `privileges_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `profile_backgrounds`
--
ALTER TABLE `profile_backgrounds`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `rank_requests`
--
ALTER TABLE `rank_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bid` (`bid`);

--
-- Indexes for table `rap_logs`
--
ALTER TABLE `rap_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remember`
--
ALTER TABLE `remember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rx_beatmap_playcount`
--
ALTER TABLE `rx_beatmap_playcount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playcount_index` (`user_id`,`beatmap_id`);

--
-- Indexes for table `rx_stats`
--
ALTER TABLE `rx_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores_relax`
--
ALTER TABLE `scores_relax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_achievements`
--
ALTER TABLE `users_achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_beatmap_playcount`
--
ALTER TABLE `users_beatmap_playcount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `playcount_index` (`user_id`,`beatmap_id`);

--
-- Indexes for table `users_relationships`
--
ALTER TABLE `users_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_stats`
--
ALTER TABLE `users_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_clans`
--
ALTER TABLE `user_clans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2fa_telegram`
--
ALTER TABLE `2fa_telegram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `anticheat_reports`
--
ALTER TABLE `anticheat_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bancho_channels`
--
ALTER TABLE `bancho_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bancho_messages`
--
ALTER TABLE `bancho_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bancho_private_messages`
--
ALTER TABLE `bancho_private_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bancho_settings`
--
ALTER TABLE `bancho_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bancho_tokens`
--
ALTER TABLE `bancho_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beatmaps`
--
ALTER TABLE `beatmaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `beatmaps_names`
--
ALTER TABLE `beatmaps_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beatmaps_rating`
--
ALTER TABLE `beatmaps_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `clans_invites`
--
ALTER TABLE `clans_invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hw_user`
--
ALTER TABLE `hw_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `main_menu_icons`
--
ALTER TABLE `main_menu_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `osin_client`
--
ALTER TABLE `osin_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `password_recovery`
--
ALTER TABLE `password_recovery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `privileges_groups`
--
ALTER TABLE `privileges_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rank_requests`
--
ALTER TABLE `rank_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `rap_logs`
--
ALTER TABLE `rap_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `remember`
--
ALTER TABLE `remember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rx_beatmap_playcount`
--
ALTER TABLE `rx_beatmap_playcount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `rx_stats`
--
ALTER TABLE `rx_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `scores_relax`
--
ALTER TABLE `scores_relax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000000;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `users_achievements`
--
ALTER TABLE `users_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users_beatmap_playcount`
--
ALTER TABLE `users_beatmap_playcount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users_relationships`
--
ALTER TABLE `users_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users_stats`
--
ALTER TABLE `users_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `user_clans`
--
ALTER TABLE `user_clans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
