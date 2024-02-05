-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 12:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$9KeIXeiiYRUfYGpIuAoLBeov33EDl854tT6SPhmCWuy3IaK/TehvS', NULL, NULL);

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
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_paket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2022_06_22_105357_create_paket_wedding_table', 1),
(6, '2022_06_23_075622_create_paket_wedding_foto_table', 1),
(7, '2022_06_29_100953_create_admin_table', 1),
(8, '2022_06_29_113731_create_keranjang_table', 1),
(9, '2022_06_30_105430_create_pemesanan_table', 1),
(10, '2022_06_30_125649_create_web_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket_wedding`
--

CREATE TABLE `paket_wedding` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `harga_paket` varchar(255) NOT NULL,
  `deskripsi_paket` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wedding`
--

INSERT INTO `paket_wedding` (`id`, `nama_paket`, `harga_paket`, `deskripsi_paket`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Wedding Celebration Package by Andfinally - Alila Villas Uluwatu', '35000000', '<ol>\r\n	<li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a t', 'wedding-celebration-package-by-andfinally-alila-villas-uluwatu', '2023-10-29 22:35:18', '2024-01-30 05:15:41'),
(3, 'Paket 3', '30000000', '<ul>\r\n	<li>a</li>\r\n	<li>b</li>\r\n	<li>v</li>\r\n</ul>', 'paket-3', '2024-01-30 05:01:13', '2024-01-30 05:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `paket_wedding_foto`
--

CREATE TABLE `paket_wedding_foto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paket_wedding_foto`
--

INSERT INTO `paket_wedding_foto` (`id`, `paket_wedding_id`, `name`, `size`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload-0LRa900Gq.jpg', '39644', '1698647718_upload-0LRa900Gq.jpg', '2023-10-29 22:35:19', '2023-10-29 22:35:19'),
(2, 1, 'upload-gHgKygDhM.jpg', '14056', '1698647719_upload-gHgKygDhM.jpg', '2023-10-29 22:35:19', '2023-10-29 22:35:19'),
(3, 1, 'upload-KfMJF4m52.jpg', '20456', '1698647719_upload-KfMJF4m52.jpg', '2023-10-29 22:35:19', '2023-10-29 22:35:19'),
(7, 3, 'upload-oMVxtff9n.jpg', '28394', '1706619673_upload-oMVxtff9n.jpg', '2024-01-30 05:01:13', '2024-01-30 05:01:13'),
(8, 3, 'upload-QJSgu__Vw.jpg', '32174', '1706619673_upload-QJSgu__Vw.jpg', '2024-01-30 05:01:13', '2024-01-30 05:01:13'),
(9, 3, 'upload-scOsE_uAL.jpg', '23154', '1706619673_upload-scOsE_uAL.jpg', '2024-01-30 05:01:13', '2024-01-30 05:01:13'),
(10, 1, 'upload-QJSgu__Vw.jpg', '243', '1706620392_upload-QJSgu__Vw.jpg', '2024-01-30 05:13:12', '2024-01-30 05:13:12'),
(11, 1, 'upload-scOsE_uAL.jpg', '243', '1706620541_upload-scOsE_uAL.jpg', '2024-01-30 05:15:41', '2024-01-30 05:15:41');

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
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_wedding_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_paket` varchar(255) NOT NULL,
  `tempat_acara` varchar(255) NOT NULL,
  `tanggal_acara` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `paket_wedding_id`, `user_id`, `jumlah_paket`, `tempat_acara`, `tanggal_acara`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1', 'jakarta', '2023-11-11', 'sudah', '2023-10-29 23:35:06', '2023-10-30 18:04:06'),
(5, 1, 3, '1', 'jakarta', '2024-03-01', 'belum', '2024-02-01 06:49:07', '2024-02-01 06:49:07'),
(6, 1, 4, '1', 'jl bunga mawar no 10', '2024-03-01', 'sudah', '2024-02-02 06:31:25', '2024-02-02 06:32:50');

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
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email_verified_at`, `password`, `email`, `no_telp`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user', NULL, '$2y$10$NJmgZ2r77PhuK.tv.4mdSuFJDgCoKg.pZ5KuZsuIZgPNyeHmNdetS', 'user@gmail.com', '', '', NULL, NULL, NULL),
(2, 'Yuda', 'yuda', NULL, '$2y$10$udQNdjdvXiNb7siJjVXjTeCE2iz0cFq4OEfmhhpC1GseUFDUgo6iW', 'yuda@mail.com', '', 'jl Bunga', NULL, '2023-10-29 22:51:35', '2023-10-29 22:51:35'),
(3, 'Liza', 'liza', NULL, '$2y$10$NgkYdr.RWHNWgKG2suUafOhyRzWw4HinAxI0CmefY82CZx5CX8IV2', 'liza@mail.com', '', 'Mataram', NULL, '2024-01-30 05:05:00', '2024-01-30 05:05:00'),
(4, 'Kevin', 'kevin', NULL, '$2y$10$d5GJy9E/Yn9jweKDA8Y3XuN9IdMv8xCj6n5q6oaGlkJU3cEPsowsq', 'kevin@mail.com', '', 'Jakarta', NULL, '2024-02-02 06:30:00', '2024-02-02 06:30:00'),
(5, 'asd', 'asd', NULL, '$2y$10$8deZiTAN684qKiebHxhZheTSDpIM0ARbG/Rzl8CEW5mtZRlFSWeHe', 'asd@asd.com', '', 'saasd', NULL, '2024-02-02 09:20:21', '2024-02-02 09:20:21'),
(6, 'ty', 'ty', NULL, '$2y$10$9DYilXB.bP5Knei/NKmPLehgBQ.8HnAcoRFVsAmEgRD2gHhyXiCKy', 'ty@ty', '345345', 'rtr', NULL, '2024-02-02 09:22:53', '2024-02-02 09:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `logo`, `name`, `description`, `address`, `email`, `facebook`, `instagram`, `youtube`, `twitter`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, '1706788804_OW-Logo.jpg', 'Wedding Org', 'melayani wo', 'Jl Panorama, Jakpus', NULL, NULL, NULL, NULL, NULL, '628272632632', '2024-02-01 04:00:04', '2024-02-01 04:00:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjang_paket_wedding_id_foreign` (`paket_wedding_id`),
  ADD KEY `keranjang_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wedding`
--
ALTER TABLE `paket_wedding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_wedding_foto_paket_wedding_id_foreign` (`paket_wedding_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanan_paket_wedding_id_foreign` (`paket_wedding_id`),
  ADD KEY `pemesanan_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paket_wedding`
--
ALTER TABLE `paket_wedding`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keranjang_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `paket_wedding_foto`
--
ALTER TABLE `paket_wedding_foto`
  ADD CONSTRAINT `paket_wedding_foto_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_paket_wedding_id_foreign` FOREIGN KEY (`paket_wedding_id`) REFERENCES `paket_wedding` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
