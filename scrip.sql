-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 20, 2019 at 01:16 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ApiContactos`
--
CREATE DATABASE IF NOT EXISTS `ApiContactos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ApiContactos`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `calle` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_interior` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_exterior` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_postal` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_contact_id_foreign` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `numero_telefono` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `edad`, `numero_telefono`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Eld', 'Aut Ea', 'Illo E', 12, '4444555', '2019-12-09 01:58:32', '2019-12-19 12:35:18', 3),
(3, 'Verona', 'Quas ea modi quas.', 'Quos temporibus a quidem et.', 773, 'Aliquid ut.', '2019-12-09 01:58:32', '2019-12-19 10:46:18', 3),
(10, 'Simeon Carroll III', 'Dolores omnis repellat error.', 'In iure officiis est aut sed.', 14, 'Cupiditate.', '2019-12-09 02:01:29', '2019-12-09 02:01:29', 5),
(12, 'Minnie Bauch', 'Nisi est laborum beatae.', 'Est commodi qui sed dolores.', 86, 'Dolores sunt.', '2019-12-09 02:01:29', '2019-12-09 02:01:29', 6),
(13, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:06:40', '2019-12-09 14:06:40', 3),
(14, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:07:13', '2019-12-09 14:07:13', 3),
(15, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:20:19', '2019-12-09 14:20:19', 3),
(16, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:20:31', '2019-12-09 14:20:31', 3),
(17, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:20:33', '2019-12-09 14:20:33', 3),
(18, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:21:26', '2019-12-09 14:21:26', 3),
(19, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:21:33', '2019-12-09 14:21:33', 3),
(20, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:38:32', '2019-12-09 14:38:32', 3),
(21, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:38:55', '2019-12-09 14:38:55', 3),
(22, 'xiyccc', 'yendoza', 'u', 34, '028919', '2019-12-09 14:43:13', '2019-12-09 14:43:13', 3),
(23, 'zincri', 'yendoza', 'u', 34, '028919', '2019-12-09 14:43:26', '2019-12-09 14:43:26', 3),
(24, 'zincri', 'nuevo', 'nuevo', 34, '96178373321', '2019-12-09 14:49:23', '2019-12-09 14:49:23', 3),
(25, 'a', 'a', 'a', 13, 'aaaa', '2019-12-09 17:48:05', '2019-12-09 17:48:05', 3),
(26, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:25', '2019-12-09 17:53:25', 3),
(27, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:28', '2019-12-09 17:53:28', 3),
(28, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:30', '2019-12-09 17:53:30', 3),
(29, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 3),
(30, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 3),
(31, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 3),
(32, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 3),
(33, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 3),
(34, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 3),
(35, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 3),
(36, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 3),
(37, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 3),
(38, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 3),
(39, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 3),
(40, 'Zincri Nuevo', 'Mendoza Nuevo', 'Lopez Nuevo', 13, 'aaaa', '2019-12-09 17:53:35', '2019-12-09 17:53:35', 3),
(41, 'z', 'x', 'x', 33, '242342', '2019-12-11 09:47:35', '2019-12-11 09:47:35', 3),
(42, 'Zincri', 'Mendoza Nuevo', 'Lopez Nuevo', 13, '56767', '2019-12-20 06:56:31', '2019-12-20 06:56:31', 3),
(43, 'Zincri T', 'Mendoza Nuevo', 'Lopez Nuevo', 13, '56767', '2019-12-20 06:56:55', '2019-12-20 06:56:55', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact_references`
--

CREATE TABLE IF NOT EXISTS `contact_references` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_references_reference_id_foreign` (`reference_id`),
  KEY `contact_references_contact_id_foreign` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_references`
--

INSERT INTO `contact_references` (`id`, `created_at`, `updated_at`, `reference_id`, `contact_id`) VALUES
(2, '2019-12-09 04:26:26', '2019-12-09 04:26:26', 3, 1),
(3, '2019-12-09 04:26:38', '2019-12-09 04:26:38', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_contact_id_foreign` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `created_at`, `updated_at`, `contact_id`) VALUES
(1, 'esta es una url', '2019-12-09 02:04:50', '2019-12-09 02:04:50', 1),
(2, 'esta es una url', '2019-12-09 02:05:00', '2019-12-09 02:05:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_07_021823_create_phones_types_table', 1),
(5, '2019_12_07_025921_create_contacts_table', 1),
(6, '2019_12_07_030343_create_phones_table', 1),
(7, '2019_12_07_042427_create_contact_references_table', 1),
(8, '2019_12_07_043714_create_addresses_table', 1),
(9, '2019_12_07_043813_create_galleries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `telefono` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phones_type_id_foreign` (`type_id`),
  KEY `phones_contact_id_foreign` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `telefono`, `created_at`, `updated_at`, `type_id`, `contact_id`) VALUES
(1, '9577393', '2019-12-09 02:31:11', '2019-12-09 02:31:11', 3, 1),
(2, '9577393667', '2019-12-09 02:31:26', '2019-12-09 02:31:26', 2, 1),
(3, '9577777777', '2019-12-09 14:09:22', '2019-12-09 14:09:22', 2, 1),
(4, '028919', '2019-12-09 14:21:26', '2019-12-09 14:21:26', 2, 18),
(5, '028919', '2019-12-09 14:21:33', '2019-12-09 14:21:33', 2, 19),
(6, '028919', '2019-12-09 14:38:55', '2019-12-09 14:38:55', 2, 21),
(7, '028919', '2019-12-09 14:43:13', '2019-12-09 14:43:13', 2, 22),
(8, '028919', '2019-12-09 14:43:26', '2019-12-09 14:43:26', 2, 23),
(9, '96178373321', '2019-12-09 14:49:23', '2019-12-09 15:01:25', 3, 24),
(10, 'aaaa', '2019-12-09 17:48:05', '2019-12-09 17:48:05', 2, 25),
(11, 'aaaa', '2019-12-09 17:53:25', '2019-12-09 17:53:25', 2, 26),
(12, 'aaaa', '2019-12-09 17:53:28', '2019-12-09 17:53:28', 2, 27),
(13, 'aaaa', '2019-12-09 17:53:30', '2019-12-09 17:53:30', 2, 28),
(14, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 2, 29),
(15, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 2, 30),
(16, 'aaaa', '2019-12-09 17:53:32', '2019-12-09 17:53:32', 2, 31),
(17, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 2, 32),
(18, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 2, 33),
(19, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 2, 34),
(20, 'aaaa', '2019-12-09 17:53:33', '2019-12-09 17:53:33', 2, 35),
(21, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 2, 36),
(22, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 2, 37),
(23, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 2, 38),
(24, 'aaaa', '2019-12-09 17:53:34', '2019-12-09 17:53:34', 2, 39),
(25, 'aaaa', '2019-12-09 17:53:35', '2019-12-09 17:53:35', 2, 40),
(26, '242342', '2019-12-11 09:47:35', '2019-12-11 09:47:35', 3, 41),
(27, '56767', '2019-12-20 06:56:31', '2019-12-20 06:56:31', 2, 42),
(28, '56767', '2019-12-20 06:56:55', '2019-12-20 06:56:55', 2, 43);

-- --------------------------------------------------------

--
-- Table structure for table `phones_types`
--

CREATE TABLE IF NOT EXISTS `phones_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones_types`
--

INSERT INTO `phones_types` (`id`, `nombre_tipo`, `created_at`, `updated_at`) VALUES
(1, 'casa', '2019-12-09 02:04:50', '2019-12-09 02:04:50'),
(2, 'movil', '2019-12-09 02:04:50', '2019-12-09 02:04:50'),
(3, 'De la calle soy', '2019-12-09 15:00:13', '2019-12-09 15:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Salvador Paucek', 'alisha55@example.net', '2019-12-09 01:58:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g6kNvoOtsL', '2019-12-09 01:58:32', '2019-12-09 01:58:32'),
(4, 'Ransom Bergnaum PhD', 'eli06@example.net', '2019-12-09 01:58:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'omFrCsju8H', '2019-12-09 01:58:32', '2019-12-09 01:58:32'),
(5, 'Mariela Armstrong', 'chanel.lemke@example.net', '2019-12-09 02:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qxJlqyfpbG', '2019-12-09 02:01:29', '2019-12-09 02:01:29'),
(6, 'Tiara Braun', 'mertie19@example.com', '2019-12-09 02:01:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm0FTSidVSU', '2019-12-09 02:01:29', '2019-12-09 02:01:29'),
(7, 'zincri', 'zincri@gmail.com', NULL, '$2y$10$1orsyCpOqjcpwLf1HPlvWeTlA2MDteW6aau96qIZNzQAkXMUOxIkC', NULL, '2019-12-20 01:33:32', '2019-12-20 01:33:32');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_references`
--
ALTER TABLE `contact_references`
  ADD CONSTRAINT `contact_references_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_references_reference_id_foreign` FOREIGN KEY (`reference_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `phones_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `phones_types` (`id`) ON DELETE CASCADE;
