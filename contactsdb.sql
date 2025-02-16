-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2025 at 01:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `lastname`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Kökten', 'Adal', '+90 333 8859342', NULL, NULL),
(2, 'Hamma', 'Abdurrezak', '+90 333 1563682', NULL, NULL),
(3, 'Güleycan', 'Şensal', '+90 333 2557114', NULL, NULL),
(4, 'Suadiye', 'Ratip', '+90 333 9163726', NULL, NULL),
(5, 'Barik', 'Nurşide', '+90 333 3323749', NULL, NULL),
(6, 'Hanifi', 'Emineeylem', '+90 333 2763531', NULL, NULL),
(7, 'Nakiye', 'Oğulkan', '+90 333 6168924', NULL, NULL),
(8, 'Hamsiye', 'Cerit', '+90 333 3544579', NULL, NULL),
(9, 'Mahfi', 'Hülâgü', '+90 333 8937773', NULL, NULL),
(10, 'Esmeray', 'Nurihayat', '+90 333 1688759', NULL, NULL),
(11, 'Şennur', 'Nazifer', '+90 333 5326326', NULL, NULL),
(12, 'Çetinok', 'Seden', '+90 333 1614182', NULL, NULL),
(13, 'Vuslat', 'Erimşah', '+90 333 9551194', NULL, NULL),
(14, 'Şeküre', 'Ruhiye', '+90 333 8792165', NULL, NULL),
(15, 'İmran', 'Ümmehan', '+90 333 6971156', NULL, NULL),
(16, 'Yavuzbay', 'Hiçsönmez', '+90 333 8839473', NULL, NULL),
(17, 'Nevzete', 'Abdulgafur', '+90 333 1453851', NULL, NULL),
(18, 'Aksüyek', 'Sal', '+90 333 2481491', NULL, NULL),
(19, 'Ferhat', 'Kılıçaslan', '+90 333 6861354', NULL, NULL),
(20, 'Fereç', 'Tomurcuk', '+90 333 4141534', NULL, NULL),
(21, 'Balkız', 'Alabegüm', '+90 333 8826359', NULL, NULL),
(22, 'Adulle', 'Nesim', '+90 333 5364556', NULL, NULL),
(23, 'Sevdal', 'Bilhan', '+90 333 8634743', NULL, NULL),
(24, 'Hariz', 'Budunal', '+90 333 1193335', NULL, NULL),
(25, 'Alnıak', 'Atız', '+90 333 5676454', NULL, NULL),
(26, 'Haşmet', 'Taşgan', '+90 333 6185991', NULL, NULL),
(27, 'Salli', 'Necife', '+90 333 6692117', NULL, NULL),
(28, 'Türeli', 'Selçen', '+90 333 5588146', NULL, NULL),
(29, 'Boray', 'Ümit', '+90 333 7741455', NULL, NULL),
(30, 'Aktemür', 'Akbora', '+90 333 4139141', NULL, NULL),
(31, 'Yediveren', 'Muhammetali', '+90 333 8483755', NULL, NULL),
(32, 'Baltaş', 'Tonguç', '+90 333 3724797', NULL, NULL),
(33, 'Tepegöz', 'Ferize', '+90 333 9528318', NULL, NULL),
(34, 'Selen', 'Arısal', '+90 333 9524786', NULL, NULL),
(35, 'Abdulcabbar', 'Mahizar', '+90 333 6782359', NULL, NULL),
(36, 'İyem', 'Emre', '+90 333 8238835', NULL, NULL),
(37, 'Muazzam', 'Lâmia', '+90 333 1348678', NULL, NULL),
(38, 'İlten', 'Eripek', '+90 333 3758172', NULL, NULL),
(39, 'Zerrin', 'Resul', '+90 333 9276424', NULL, NULL),
(40, 'İlalan', 'Telmize', '+90 333 3563723', NULL, NULL),
(41, 'Hamise', 'Sertan', '+90 333 8263265', NULL, NULL),
(42, 'Zubeyde', 'Berk', '+90 333 7281496', NULL, NULL),
(43, 'Feda', 'Balsarı', '+90 333 4969618', NULL, NULL),
(44, 'Müsemme', 'Civanşir', '+90 333 2556491', NULL, NULL),
(45, 'Aydınyol', 'Fitnet', '+90 333 7783478', NULL, NULL),
(46, 'Çoğa', 'Bigüm', '+90 333 4133666', NULL, NULL),
(47, 'Şehrinaz', 'Raşide', '+90 333 2677248', NULL, NULL),
(48, 'Naif', 'Rukhiya', '+90 333 8252766', NULL, NULL),
(49, 'Azat', 'Nilden', '+90 333 9324656', NULL, NULL),
(50, 'Gamze', 'Korday', '+90 333 9442367', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_16_102356_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
