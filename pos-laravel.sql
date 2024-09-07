-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 09:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2024-08-21 23:26:52', '2024-08-21 23:26:52'),
(2, 'Minuman', '2024-08-21 23:28:52', '2024-08-21 23:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `detail_sales`
--

CREATE TABLE `detail_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_sales`
--

INSERT INTO `detail_sales` (`id`, `sales_id`, `product_id`, `qty`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 20000, '2024-08-26 22:54:01', '2024-08-26 22:54:01'),
(2, 2, 3, 2, 30000, '2024-08-26 22:58:23', '2024-08-26 22:58:23'),
(3, 3, 1, 1, 20000, '2024-08-26 23:22:07', '2024-08-26 23:22:07'),
(4, 4, 3, 2, 30000, '2024-08-27 00:21:07', '2024-08-27 00:21:07'),
(5, 5, 1, 2, 40000, '2024-08-27 20:25:47', '2024-08-27 20:25:47'),
(6, 6, 1, 1, 20000, '2024-08-27 21:08:58', '2024-08-27 21:08:58'),
(7, 7, 1, 1, 20000, '2024-08-27 21:26:17', '2024-08-27 21:26:17'),
(8, 8, 1, 2, 40000, '2024-08-27 21:37:36', '2024-08-27 21:37:36'),
(9, 9, 4, 2, 30000, '2024-08-27 21:56:04', '2024-08-27 21:56:04'),
(10, 10, 1, 1, 20000, '2024-08-27 23:25:25', '2024-08-27 23:25:25');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_08_21_034614_create_categories_table', 2),
(6, '2024_08_21_034527_create_products_table', 3),
(7, '2024_08_26_072701_create_sales_table', 4),
(8, '2024_08_26_073646_create_detail_sales_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_qty`, `product_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ketoprak', 20, 20000, NULL, '2024-08-21 23:28:11', '2024-08-25 23:04:35'),
(2, 2, 'Es Lemon Tea', 20, 10000, NULL, '2024-08-21 23:29:19', '2024-08-21 23:29:19'),
(3, 1, 'Mie Ayam', 50, 15000, NULL, '2024-08-25 23:02:46', '2024-08-25 23:02:56'),
(4, 2, 'Jus Mangga', 66, 15000, NULL, '2024-08-25 23:03:51', '2024-08-25 23:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_code` varchar(50) NOT NULL,
  `trans_date` date NOT NULL,
  `trans_total_price` bigint(20) NOT NULL,
  `trans_paid` bigint(20) NOT NULL,
  `trans_change` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `trans_code`, `trans_date`, `trans_total_price`, `trans_paid`, `trans_change`, `created_at`, `updated_at`) VALUES
(1, 'SL27082024001', '2024-08-27', 20000, 30000, 10000, '2024-08-26 22:54:01', '2024-08-26 22:54:01'),
(2, 'SL27082024002', '2024-08-27', 30000, 50000, 20000, '2024-08-26 22:58:23', '2024-08-26 22:58:23'),
(3, 'SL27082024003', '2024-08-27', 20000, 50000, 30000, '2024-08-26 23:22:07', '2024-08-26 23:22:07'),
(4, 'SL27082024004', '2024-08-27', 30000, 50000, 20000, '2024-08-27 00:21:07', '2024-08-27 00:21:07'),
(5, 'SL28082024005', '2024-08-28', 40000, 50000, 10000, '2024-08-27 20:25:47', '2024-08-27 20:25:47'),
(6, 'SL28082024006', '2024-08-28', 20000, 25000, 5000, '2024-08-27 21:08:58', '2024-08-27 21:08:58'),
(7, 'SL28082024007', '2024-08-28', 20000, 50000, 30000, '2024-08-27 21:26:17', '2024-08-27 21:26:17'),
(8, 'SL28082024008', '2024-08-28', 40000, 50000, 10000, '2024-08-27 21:37:36', '2024-08-27 21:37:36'),
(9, 'SL28082024009', '2024-08-28', 30000, 50000, 20000, '2024-08-27 21:56:04', '2024-08-27 21:56:04'),
(10, 'SL28082024010', '2024-08-28', 20000, 30000, 10000, '2024-08-27 23:25:25', '2024-08-27 23:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Pr1DoRHubockLeIJTuIhkXkzNwZvXnl7QvNM5Vz', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiczdDdGlmS2NsNHJKZlJPQnlNUzlFQ1lKMEM2T1RkVFFESFhlTm9jbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcmludC8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo1OiJhbGVydCI7YTowOnt9fQ==', 1724826491),
('4gVI4ZMt5WgUvATvLrC6I8jCbpMGWRFlemjudRGO', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3d3eW56ZzdVMGdqNDBVYk56dFdZTHRueTBJWEp4WmE2MzdleGlLZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1724830345);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$o/dO.Ql.daNpS6/OboEcdeIJ2Ct14DYyk8alfTcXE8iJLJUlZcVz2', NULL, '2024-08-21 23:10:12', '2024-08-21 23:10:12'),
(3, 'udin', 'udin@gmail.com', NULL, '$2y$12$Gfo5eQ8kZYHxgLDR536GTeBKFyi.Oc/NX0uiuBjnKstC7o09RHoVG', NULL, '2024-08-26 23:57:35', '2024-08-26 23:57:35'),
(4, 'asep', 'asep@gmail.com', NULL, '$2y$12$sjaMou267FBvPaxeovAlr.ZO.2fr8D7gUbRDPWYII37cIEpeBU44y', NULL, '2024-08-26 23:59:30', '2024-08-26 23:59:30'),
(5, 'Nasim Marbun S.H.', 'hesti88@yahoo.com', NULL, '$2y$12$LTtzfl3KBt.wA1fiClxRVun624BtznNBHkKIOJC4WWRw.memRDJ4C', NULL, NULL, NULL),
(6, 'Wadi Ibun Wacana S.E.', 'palastri.humaira@gmail.co.id', NULL, '$2y$12$h4yH2tCINvNKv/7C92A/ceGPNBUIKirMsXbMpfgl4qla9W9URdjz6', NULL, NULL, NULL),
(7, 'Kezia Pertiwi', 'mangunsong.ibrani@anggriawan.in', NULL, '$2y$12$sQnUwCxukSHk4Gh1PzfiIuUViKL2NvbZ.gNx9WqE/lmCsKvL23E9u', NULL, NULL, NULL),
(8, 'Bakianto Gunawan', 'titi27@gmail.com', NULL, '$2y$12$C1.ELVZUgaNNNjqyWbbm2.I07ZKgX3CHgxv0RYeR8C5LEw/OtDzy6', NULL, NULL, NULL),
(9, 'Juli Dinda Sudiati S.Sos', 'kani54@riyanti.desa.id', NULL, '$2y$12$YNxJX8V0Tvrg3hBQKDmk4uOeMa4qNSv.Ric4IBfXMxxrooHBvbnGW', NULL, NULL, NULL),
(10, 'Marsito Gunarto S.Sos', 'qramadan@yahoo.com', NULL, '$2y$12$Po7JyAKz8.mRe1DLiGCgKu8kWqis01UX/.Pmt/2zNTCwIP.njaiIu', NULL, NULL, NULL),
(11, 'Paramita Hasanah', 'kamaria.lestari@mardhiyah.ac.id', NULL, '$2y$12$FWevV2mzoMM1IGyV5jESHOUrCxGGlxI0lIT8GTfo73N804rpjZaRK', NULL, NULL, NULL),
(12, 'Digdaya Carub Napitupulu M.Farm', 'mursita00@siregar.co', NULL, '$2y$12$c7kTlnjdtsqgzIAzxwqou.EckxCUslkiWLiPWkBOUKYRVE36ailH.', NULL, NULL, NULL),
(13, 'Prima Panca Santoso S.Ked', 'reza.tarihoran@namaga.ac.id', NULL, '$2y$12$qEDW4Fcp0BRlLse7ZwEy0uAZvZB3IuwiXgou6ib6u1r3.GaWLhyra', NULL, NULL, NULL),
(14, 'Uchita Kasiyah Agustina S.Psi', 'andriani.maryadi@sinaga.my.id', NULL, '$2y$12$jPwyAAOsxOooIVQHvMdL0eew.Us76Gd1QlfYa6gGVRNdvewOlvulG', NULL, NULL, NULL),
(15, 'Ratna Laksita', 'wani81@gmail.co.id', NULL, '$2y$12$.f9T0Chh99Meo95tvPN/gOgJEK.xbEI1.60utwOfIJDBA4PQndrX.', NULL, NULL, NULL),
(16, 'Karja Ramadan', 'samiah97@laksita.net', NULL, '$2y$12$xG8HldeoC9nz.wVxBpW1B.GcT6bbylKQjZxYITkc6jfjCePTU7jUy', NULL, NULL, NULL),
(17, 'Lidya Suryatmi', 'sabar.pudjiastuti@mahendra.go.id', NULL, '$2y$12$R.YZXO9B3xISOZmUWEO1MeUPa9t3RN84xpFcdJtplMNIX0FbmfK66', NULL, NULL, NULL),
(18, 'Ani Nasyiah', 'darmaji.pangestu@gmail.co.id', NULL, '$2y$12$030KVqrgQgv3EX3CtJX2KOMytPEoTdMYViwEZU2uMlxFZW3P4MF2C', NULL, NULL, NULL),
(19, 'Bagas Hutapea', 'prastuti.nova@yahoo.co.id', NULL, '$2y$12$AnaMIyRoT9uqoVenyeQhq.z2Xp5HR12Zm8oc0fp4wzkLqSrX0G5Vi', NULL, NULL, NULL),
(20, 'Gina Agustina', 'asuartini@yahoo.co.id', NULL, '$2y$12$gZDsOKeoz4LWemTW92stiOGWVb7Silo0nKD3MTD1VhvGMyo0kA8fe', NULL, NULL, NULL),
(21, 'Ulya Nurdiyanti', 'ddongoran@yahoo.com', NULL, '$2y$12$90I6Z5olG/7/VI/QCZyrhe4gGG6j/cV/VRI6KC0hHzHl/c.oZzjxm', NULL, NULL, NULL),
(22, 'Intan Permata', 'hyuliarti@gmail.com', NULL, '$2y$12$.AqOl4j68djeZRCKML1jzeglhc4SdXvOJpO6sBf50VxyzLu3A7N4O', NULL, NULL, NULL),
(23, 'Xanana Prabawa Marpaung', 'yance.pradana@yahoo.co.id', NULL, '$2y$12$BGw98mm3wB7fRyZyylJP5u.p11RoAbQ2Geb.A6jYfS25THBbBhME2', NULL, NULL, NULL),
(24, 'Cornelia Purnawati', 'hwijaya@nainggolan.my.id', NULL, '$2y$12$/sduHhgyTHFhgvcVQsmeGeZyuiNGuIuYoK7nYvtRhHCj8RhUG3wN.', NULL, NULL, NULL),
(25, 'Jayadi Kala Hardiansyah S.Farm', 'amarpaung@gmail.com', NULL, '$2y$12$0veo5.BNF1OIBfniNcY/mOuYYm.TeKFspZVbWsVQ.mRXNRAn95DHS', NULL, NULL, NULL),
(26, 'Rachel Halimah', 'wirda.napitupulu@gmail.com', NULL, '$2y$12$5974LilHxi.zbVDXGWcDYu0I2UJ30RveOJNixqawCrVC6bq.v7M32', NULL, NULL, NULL),
(27, 'Enteng Balapati Nugroho M.M.', 'bwastuti@dongoran.tv', NULL, '$2y$12$PjgNCIsbNrLF5ljwkbmpVOW5XHgwTQYNdQW1WLhIsQkqEARXIwpY.', NULL, NULL, NULL),
(28, 'Ella Kusmawati', 'nainggolan.kamaria@yahoo.com', NULL, '$2y$12$nOcU3ikGdm2g2Zi5r2MqvO0ZJvnqZwkfXoNp9xr67e2X3g8z4poMK', NULL, NULL, NULL),
(29, 'Salimah Pratiwi', 'cemeti.hutapea@yahoo.com', NULL, '$2y$12$R9qGcPci76WH3RXOL7bftuvG2HnqWNI0oA8gzMxGxFA5abir5J/wK', NULL, NULL, NULL),
(30, 'Sari Rahmawati', 'salsabila13@winarsih.info', NULL, '$2y$12$uoNkqWSKxYoe9fXfa3aHFObQx1hyZ81TqHRlkSxNUAFZxRxD2ebIu', NULL, NULL, NULL),
(31, 'Ophelia Wastuti M.Ak', 'dabukke.winda@gmail.com', NULL, '$2y$12$08jPq0Zt4ixEGKPK7DcmY.ctOs18dHZZx.g.Ynvcrl6oOfhOAPPbm', NULL, NULL, NULL),
(32, 'Umi Hassanah M.Ak', 'dabukke.timbul@hariyah.biz', NULL, '$2y$12$btA4h3wudHyie3OLdelVieIZ45jV83SagsWmcb2SOuUwArYON67tW', NULL, NULL, NULL),
(33, 'Dalima Anggraini M.Farm', 'vinsen.damanik@yahoo.com', NULL, '$2y$12$Ai5WQ5YHq.7SC1ma6Ks9ZOuAXMchhtGVJArrhPcgh6njnS9whfQt2', NULL, NULL, NULL),
(34, 'Cahyono Latupono', 'ihutapea@namaga.asia', NULL, '$2y$12$ATjAUBALxhTVCZFmo8CLkeyqVJjEvYC4egpnl50BEkwz8llElkPa.', NULL, NULL, NULL),
(35, 'Natalia Melinda Susanti', 'tina25@rahimah.web.id', NULL, '$2y$12$uWPob4DD5fIdY.vJln6r/unIDOYbFAPQOJ6F4EGkfdnB6xPwK9Wii', NULL, NULL, NULL),
(36, 'Daru Saputra M.Ak', 'tarihoran.ajimin@hariyah.net', NULL, '$2y$12$2JjCf.AqBON6gBmMMbLpw.c0dcKxDgJNx2zMDNl8UITkY32UXpjYa', NULL, NULL, NULL),
(37, 'Martaka Hasan Hutapea', 'bagus.winarno@hasanah.in', NULL, '$2y$12$0dD6v7bGxPfY7rhflc73MuqHfFLKAcB/HF45A0kPV7yN.llcQdyb6', NULL, NULL, NULL),
(38, 'Gangsar Tasdik Widodo', 'pangeran.sihombing@wibisono.tv', NULL, '$2y$12$CrZVZ1Nz.NAibFcBjNgfLe3RC.PjSFDxT9fqlrxvCXWjbrs/vJjji', NULL, NULL, NULL),
(39, 'Hendri Nugroho S.E.I', 'tirtayasa.farida@mustofa.go.id', NULL, '$2y$12$3OP3Ku1LMo3ofJUpdW6xq.izZBOHmf5/aLKYMt3rINPtcWEWN6Tyu', NULL, NULL, NULL),
(40, 'Wakiman Hidayat', 'ratih.yolanda@rahayu.co', NULL, '$2y$12$lsYiaVD1oez9ft2sTdzw2uY2QSrSLwxhNBPULV4m2YJOJS3eKHRpK', NULL, NULL, NULL),
(41, 'Yunita Hastuti', 'gkurniawan@gmail.co.id', NULL, '$2y$12$iJWQhTvN1Fwwr4A/GRY9G.bZZldNW/i1MuLD.HHj71zZR635ToqIu', NULL, NULL, NULL),
(42, 'Abyasa Natsir', 'tthamrin@gmail.com', NULL, '$2y$12$E/cX1vyoeXpycEcJKny.3etg6fs8L1VvDZfCjT07UF9hv9qchbpdi', NULL, NULL, NULL),
(43, 'Karen Ami Hassanah S.Ked', 'puspita.amelia@damanik.biz', NULL, '$2y$12$7bxNaz/tiiky1LtVss4/f.GetSBkuWwRBcX96xYJvYT2C4KyQiIoC', NULL, NULL, NULL),
(44, 'Ellis Hastuti S.IP', 'irfan81@rahimah.desa.id', NULL, '$2y$12$Vjzq397A.9O/rW1DC1dKs.VyO0G5yyJJFdiT0vv4/l7Pr.Ifir00W', NULL, NULL, NULL),
(45, 'Cawisadi Nashiruddin', 'wijayanti.rachel@hastuti.co.id', NULL, '$2y$12$iFWzwqbquysXhGon2/hJRe8GrMSZX/U7mpu13hcPReDQwmniO8XuS', NULL, NULL, NULL),
(46, 'Victoria Maryati S.IP', 'hastuti.bagas@sihotang.go.id', NULL, '$2y$12$FMPTxcgj7zMsMZP2alTYO.K9FCtnTGyljzmJ0fnwdxcQOhJE5nZb6', NULL, NULL, NULL),
(47, 'Hari Bancar Kurniawan S.E.', 'lasmono90@gmail.com', NULL, '$2y$12$WaRHVpPPRT1ZEZPuHoXZKulm/fIxbMMXa99Qnxg.F77urVtSV1sRe', NULL, NULL, NULL),
(48, 'Gasti Hassanah', 'amalia.yuliarti@kusmawati.biz.id', NULL, '$2y$12$RbN/7aaRHZeqOm7UGfmEKOk3Wu9juxhBaBBoXRNlzz7JMTi5GUkLy', NULL, NULL, NULL),
(49, 'Asirwada Nashiruddin', 'yessi49@gmail.com', NULL, '$2y$12$Q.9qpjPk4ygGZ4vaZS9yWeq1YCE5XvbklyAKwI7YN9qp.g0PcJFd6', NULL, NULL, NULL),
(50, 'Lidya Rahimah', 'lala54@wasita.biz.id', NULL, '$2y$12$72v0m8jxK9y/wTQiJDzYaOAnXzuiW4gC9uJ2OCe90mCxY7vVYbjVq', NULL, NULL, NULL),
(51, 'Fathonah Kusmawati', 'andriani.kusuma@gmail.co.id', NULL, '$2y$12$S2i.dHaJikDpbzLR1I.VV.iOuH8CjuO7UtndZxyW41XtdUwrFJOue', NULL, NULL, NULL),
(52, 'Bagya Gunawan', 'zsuartini@yahoo.com', NULL, '$2y$12$EU7GuWd7TsvvTO5YjxlVtOuXrUpTVBOCCxIjHJjhrWlzVTrMD4B/O', NULL, NULL, NULL),
(53, 'Carla Nilam Rahmawati M.Ak', 'aaryani@novitasari.name', NULL, '$2y$12$A0F7Wn0gpJ0ryZhpKuxu.O9ryMupupB.KizIV/VOXUcVgbbTylVDm', NULL, NULL, NULL),
(54, 'Galak Wibisono', 'sihombing.alika@yahoo.com', NULL, '$2y$12$y80EU2ZBMmDNI1MKt5kyLudHs3AFY5cL97ppJgrCTpZ6oo2UD7T.y', NULL, NULL, NULL),
(55, 'Martani Joko Firgantoro M.M.', 'karna.kusumo@siregar.go.id', NULL, '$2y$12$XNYR401ifoeIT5wuTADzKuUWPif5K7N4Gz0vCPLuhuS.JpiqrLqsK', NULL, NULL, NULL),
(56, 'Kajen Ramadan S.Sos', 'vera.saefullah@gmail.com', NULL, '$2y$12$WQ6BI4oDeCKzeMGshCoZv.QkNDij5B6qFH2fQEhZ4h5KFcNj5T3S6', NULL, NULL, NULL),
(57, 'Erik Setiawan S.Pd', 'kiandra14@oktaviani.tv', NULL, '$2y$12$iU/e.C6aliU/wvO7EjMyQO/7qW6HYxvoMGcn.d5sU4D12U/v6zQnW', NULL, NULL, NULL),
(58, 'Anom Gunawan', 'anita.farida@suwarno.asia', NULL, '$2y$12$h1IAUN2I87lYWKVCs.ZxbuZlVgtADONq2T8lp4sa8gGIoPPO8M3de', NULL, NULL, NULL),
(59, 'Mujur Gaduh Najmudin M.Ak', 'jagaraga89@gmail.co.id', NULL, '$2y$12$cfpkW1gx0e4RPgknxGnj0.OoYsW5QEpRj01BxqGZ0lFna/w8G0QMa', NULL, NULL, NULL),
(60, 'Icha Maryati', 'citra52@novitasari.com', NULL, '$2y$12$d8M6y6TUPxgyOpftpug4JuBGoRxJySsb1Wk1rE142C6aO.rsfNlfi', NULL, NULL, NULL),
(61, 'Ciaobella Ana Hasanah', 'kartika.zulaika@yahoo.com', NULL, '$2y$12$V10BcKWtJJ/pcDBPvvFUCOj2/m8IgCHkI0vabsJZQgGhwU5wpnFyO', NULL, NULL, NULL),
(62, 'Ilyas Uwais', 'nrima94@yahoo.co.id', NULL, '$2y$12$OzSQJnFYzH/gnvtIwSPj5u0iGzclwCUSDFQGckBompy2sn.sNBEAW', NULL, NULL, NULL),
(63, 'Cindy Purwanti', 'jamil.suryatmi@samosir.ac.id', NULL, '$2y$12$vDjhInLsdTNWNMqnoGj0QOH2QvNF7Yo/vqUfI0Vr7V97v2fRMobWG', NULL, NULL, NULL),
(64, 'Jane Tina Pertiwi', 'vinsen97@agustina.or.id', NULL, '$2y$12$SBFR.gwUXkPZwRU1PIpsyOz0NWxXihqNzQTF8C0lGLdkH3SynIb3u', NULL, NULL, NULL),
(65, 'Ratna Mardhiyah', 'zprastuti@purwanti.co.id', NULL, '$2y$12$u8PCwbRb5i/KCbSNnG4AAe/rfWpccexVR9NifGzYGvAUFeoTR61Mu', NULL, NULL, NULL),
(66, 'Lalita Riyanti S.Sos', 'diah48@gmail.co.id', NULL, '$2y$12$.YhtP5qiyrmWvpkcvB.hSuQKqlBPLgfglxYoqM..TjPbVF/Fqvh56', NULL, NULL, NULL),
(67, 'Wulan Lidya Nasyidah', 'laksita.lutfan@gmail.com', NULL, '$2y$12$DDubnUSA24GQ/5SFsoomsevAXFUzn1W.Bm7VPGDoxx3XhlS3nX7Wu', NULL, NULL, NULL),
(68, 'Gaduh Galang Prabowo S.E.I', 'waluyo.umar@gmail.com', NULL, '$2y$12$glZ7iLCZ2YrPkVvxBWZPZuSMku1e5M8D8zslQOGnUy3OAy/5eKrKm', NULL, NULL, NULL),
(69, 'Ira Mandasari', 'najmudin.cakrabirawa@gmail.co.id', NULL, '$2y$12$5MnRKoa9y0gul1KhX6IWDu/VO3/PvlG.Uha4KqA6gChSF7a74fU/m', NULL, NULL, NULL),
(70, 'Prabawa Permadi', 'padmi.padmasari@safitri.my.id', NULL, '$2y$12$KrRcVYI3Lh8edUoUiBjd1.LXabir/12IXbXmmwqk9MsqMsHYNo7r.', NULL, NULL, NULL),
(71, 'Tami Hartati S.Pt', 'ratna.wijaya@maryati.tv', NULL, '$2y$12$Ub0E4t.sHwolAacCobsWweOZbvBQDDfCVLXtGLbTbPYxpyU1qGK6a', NULL, NULL, NULL),
(72, 'Cindy Suryatmi M.Ak', 'jane.usada@maryadi.co.id', NULL, '$2y$12$xh6pbj2Z51OgjIYW5.21wO/6g.llUNKEwjgXBdn3kxVDelgvbo3IG', NULL, NULL, NULL),
(73, 'Prasetyo Bakti Wacana M.Pd', 'nasyiah.sadina@safitri.sch.id', NULL, '$2y$12$2sTQ/YvUtY3dDrO/.Ln7sOD9tm4vdppSXuONYIjET9Jo6o2/E2kfe', NULL, NULL, NULL),
(74, 'Irma Dina Mandasari S.Farm', 'viman16@yahoo.com', NULL, '$2y$12$u4ZAXzN5sH82H802h4PAp.TzcJrxOZu4U3j4.Dfbk45Jb1kiTyGYy', NULL, NULL, NULL),
(75, 'Tira Mandasari', 'arta57@yolanda.in', NULL, '$2y$12$9CCpbijh52YL5liu5CBr5.CMFFeSvt3HwYxT6Oyu89Bq71wJ.tWb.', NULL, NULL, NULL),
(76, 'Yunita Usyi Nasyiah', 'ikin.natsir@gmail.co.id', NULL, '$2y$12$5.1XEWeA1/VWqJ9z9EasTeFhdKTaaRB4S5hcoAgoQdDZzJMsC58WW', NULL, NULL, NULL),
(77, 'Galak Cawisono Prabowo S.Ked', 'iardianto@gmail.co.id', NULL, '$2y$12$G9g.S1dKXu2Cwsz.sGYnG.ztbTQD6T8/2HZjgRf/T/ylpfDdgcLie', NULL, NULL, NULL),
(78, 'Salsabila Rahayu Yolanda', 'jagaraga.hasanah@kusmawati.biz.id', NULL, '$2y$12$C3MsEQk8aKRQAseSi6EDHuBfU/4gHHIO/tjBEWpxIIBOV3JZSOh4a', NULL, NULL, NULL),
(79, 'Mila Rahimah', 'jais.puspita@napitupulu.asia', NULL, '$2y$12$FNW.bOUJWcFccHmxser2xuELrSTZFW8zlIK5apqnTSA8lP5bEwlRC', NULL, NULL, NULL),
(80, 'Prabowo Lazuardi', 'sabrina.puspasari@salahudin.sch.id', NULL, '$2y$12$cWgAI9qzDE1AA.PFLi9F7uV85tLT285jnFfDCVY30awa9u5RPUc/2', NULL, NULL, NULL),
(81, 'Ikhsan Pradana', 'prabowo.cakrabuana@aryani.tv', NULL, '$2y$12$wuEBA9UmjaY5NsIfMSKieucwHH52zWrqDaphlq7PWysw4NZrD3OXy', NULL, NULL, NULL),
(82, 'Emong Maheswara', 'mitra.gunawan@yahoo.co.id', NULL, '$2y$12$xSjJKYc.4E5EXTeniL2YDuuubtWAxBBS.CmUEGiZgQbO2cAw/dsq.', NULL, NULL, NULL),
(83, 'Gasti Siti Puspita', 'fhutasoit@mandasari.name', NULL, '$2y$12$eWGsxYR4ZYdTt98udHUTGOMaq4YM4u2lNhFiv7FuqLtUj9dcNZBGC', NULL, NULL, NULL),
(84, 'Nasrullah Uwais', 'xnugroho@hariyah.org', NULL, '$2y$12$/3TyqMwU0zoHVgklyi7pTuzqivC6MTx44Swi3cwbyn2jO5nDEUCsO', NULL, NULL, NULL),
(85, 'Lanang Pranowo', 'wulandari.tantri@winarno.asia', NULL, '$2y$12$K0Lnt8T3ECN.nwIA5CcUGu/tUhyRQr5VxbYqU4Ruvf2hmI9Cog0ki', NULL, NULL, NULL),
(86, 'Amalia Yuliana Puspita S.Pd', 'puspita.maras@gmail.co.id', NULL, '$2y$12$1KfHqQWYpXH0wkefJ23GqeG6X57NM49kkBzbQL18/lfGDwIoChnce', NULL, NULL, NULL),
(87, 'Fathonah Usada', 'fwijaya@yahoo.co.id', NULL, '$2y$12$CrAHYnLMSN519qpINsAFVewfppB1ZtPps7cAc4VsQqYjWj50zJIr2', NULL, NULL, NULL),
(88, 'Digdaya Galiono Sinaga S.Gz', 'thamrin.hesti@wahyudin.or.id', NULL, '$2y$12$sKgVT5MiktpcT9oXyyPPjuEnbkiUZ/aT.p1WeRicXy4HLLqZGJU1W', NULL, NULL, NULL),
(89, 'Anggabaya Natsir', 'dalima.dongoran@gmail.co.id', NULL, '$2y$12$J.qqm3XkcvKlOx.TCkT1F.lcp4DinNJLJY3BKImh7tceDDvYKTqya', NULL, NULL, NULL),
(90, 'Murti Eman Gunarto', 'tanggriawan@mulyani.biz.id', NULL, '$2y$12$RbfLCAa6CEr/RzfOWlHNZ.uFiJcc3X2QapffFsPy9nWLSGk.EbKui', NULL, NULL, NULL),
(91, 'Dalimin Gunarto S.E.', 'gnainggolan@gmail.co.id', NULL, '$2y$12$nTrYgmaonycbNXdu8xV/pejxRjTLygL0qw7hy9sZYCFqaech5U0.W', NULL, NULL, NULL),
(92, 'Pranata Prabowo', 'oktaviani.eka@gmail.com', NULL, '$2y$12$pm7NNroem28HKdcAO0jBgeIYbyqGVU1V04QFdpdWhUl8jnaMd3I6K', NULL, NULL, NULL),
(93, 'Kezia Wahyuni', 'rsetiawan@utama.ac.id', NULL, '$2y$12$joEBMHiX1mGeWQaMeShwj.Y2ErkGyORJFUlwJoBRDgMVzj.hrGt6a', NULL, NULL, NULL),
(94, 'Okta Hidayanto S.Kom', 'bagya02@yahoo.com', NULL, '$2y$12$W/2ryYTeXbKwawcU8Uw7I.rio02UNGvIGeBKVDE9pwVeKiS79IO6O', NULL, NULL, NULL),
(95, 'Ghaliyati Wulandari', 'gaman90@suryatmi.co', NULL, '$2y$12$7wWZlIPjdeilIZavVInlH.ZNxI.wF46w2ELRtprlPwO8g9rvZJ4OS', NULL, NULL, NULL),
(96, 'Taufan Prasasta', 'jasmani.oktaviani@yahoo.co.id', NULL, '$2y$12$ac4Y2Dt9OT/L7FuW3N1QhuUcY99woxB9YvmWtY2BRy8q/k4UmW0BW', NULL, NULL, NULL),
(97, 'Galih Halim', 'suryatmi.cawisono@gmail.com', NULL, '$2y$12$CELa1s.1f5ulGgYQJwh6PuxF/Iezr8PQJW6BnfhMqTgY6r3rJWPE.', NULL, NULL, NULL),
(98, 'Slamet Firmansyah S.Sos', 'bwulandari@mustofa.asia', NULL, '$2y$12$ddyjqquKPLn81e2KrSkaFuXNUg0r7fcCjB0OUtmk62Uu0q7nwow1S', NULL, NULL, NULL),
(99, 'Zamira Hassanah', 'gilang16@sihombing.ac.id', NULL, '$2y$12$.wnq.2a/3cptLNM5nuYeO.jEwoNAif/nrBhWugLHMJM79iBezC/j.', NULL, NULL, NULL),
(100, 'Jumari Raden Jailani', 'yolanda.lutfan@yahoo.co.id', NULL, '$2y$12$Lhlr1xNCStkSmmcW.hvmHelapG84s.IIuQMEuCGbiegTh5Mn1.A82', NULL, NULL, NULL),
(101, 'Cici Riyanti', 'handayani.cinthia@gmail.com', NULL, '$2y$12$QHIuvuWU4B2XvHKJuvqEFe3X/79hjyzcfYcqLgjzpac9RUccWW63S', NULL, NULL, NULL),
(102, 'Mursinin Prayoga', 'karen.farida@gmail.co.id', NULL, '$2y$12$K9181uvBQHCKzpN/2Q4JluQN5e4fwwmG8h9sKtF0fAlkKrT/hHb.O', NULL, NULL, NULL),
(103, 'Dian Olivia Uyainah S.Ked', 'rini98@yahoo.com', NULL, '$2y$12$1r.zKqHkTSv7BhFr8/EB7OqyyhsUXxydP6/GIkjZ4cYWZw5aeF.w.', NULL, NULL, NULL),
(104, 'Putri Pudjiastuti S.E.I', 'diana.purnawati@yuniar.my.id', NULL, '$2y$12$tPbxCoKqaqQtyErqnWVauuvXrmNplPVciSwzgNm4U4zyzDZ1FqkKe', NULL, NULL, NULL),
(105, 'Bahuwirya Kenes Marbun', 'pia.simanjuntak@permadi.net', NULL, '$2y$12$ynrs16we9h9h/Ena6bKbW.J9XfRwrKGhMe.MwxfliWUFUFQNKGFn.', NULL, NULL, NULL),
(106, 'Umi Paramita Rahimah M.Farm', 'prayoga.lutfan@gmail.co.id', NULL, '$2y$12$ckoICptQp3QePOedXVuFOeEcDAekgKgKIT8FPVJsr9TemBr7y8wni', NULL, NULL, NULL),
(107, 'Bakianto Dongoran S.Gz', 'winarsih.harjo@nasyidah.co.id', NULL, '$2y$12$FEsMvx.F8V2Qz1L2SxOr8.My1enPzou6W2ImTB8GHj7QKm3oLcil.', NULL, NULL, NULL),
(108, 'Lasmono Cahyanto Hakim M.Ak', 'swaskita@januar.web.id', NULL, '$2y$12$iDU8nWsdbaxLpZ1Yw6Ulku.IStNzU0FnFL/QfFpvVrxp/XP.JLRGa', NULL, NULL, NULL),
(109, 'Mursinin Putra', 'pzulkarnain@gmail.com', NULL, '$2y$12$LMVgOBPT0F7eLj56pCsEAO7ec69AxIDSsV3t1CxwvWhr2ZIebVC9y', NULL, NULL, NULL),
(110, 'Tami Hastuti S.Pt', 'atmaja07@gmail.co.id', NULL, '$2y$12$aM2CGbg1nqX568017ehalOvGh7jrl8DtmAXghfzkEkANExycjtpOm', NULL, NULL, NULL),
(111, 'Oliva Yuniar', 'cutami@sitorus.my.id', NULL, '$2y$12$qBhYsZ7hAO2oOqcAR18PXeAm0aEn2Zu4cNABNqtwkYAZD.EaOLcOC', NULL, NULL, NULL),
(112, 'Lukita Koko Mandala', 'atarihoran@prabowo.in', NULL, '$2y$12$IT.dv0j6f3WchwuJLzCg..f2BvaHvHfGNc/fmX3vCLXBOU99G8ese', NULL, NULL, NULL),
(113, 'Raina Intan Zulaika', 'halim.pangestu@prasasta.co.id', NULL, '$2y$12$ithKIziuesV5r1i9TNIok.Zfu6dIcDEWY3ECdqe0LkOuDXneEEfXO', NULL, NULL, NULL),
(114, 'Diah Nurdiyanti', 'jnuraini@gmail.com', NULL, '$2y$12$uM7PPkoQz.OmtPuO3mXksO6hb3GZDc.1teUQG6PEypL5mKfPiuW76', NULL, NULL, NULL),
(115, 'Ida Uyainah', 'umanullang@gmail.com', NULL, '$2y$12$BTJD02rQjIocHGek0.MPFeOQlRk72Yi4WXXuZOW6a8WYtKUwh8h0i', NULL, NULL, NULL),
(116, 'Jelita Usamah', 'damar46@yahoo.com', NULL, '$2y$12$OIjHmybDvu2rs61vsnteiuM4zun.T5zrT/6fPer6U/BBcMEBKE2MS', NULL, NULL, NULL),
(117, 'Cornelia Laksmiwati', 'permata.puti@saptono.desa.id', NULL, '$2y$12$2C./V9h0tpdKI1/dOIrFW.9GL3.wSSOHM.2rdq7fNAZtL.c2.i8Ci', NULL, NULL, NULL),
(118, 'Ajiman Hendri Situmorang', 'suryono.aurora@yahoo.co.id', NULL, '$2y$12$qjRXkd46O2F0StOvIYB2XeYvo7.mPkYaxBI3WVcQN4OrP6OvCDRi.', NULL, NULL, NULL),
(119, 'Enteng Prasasta', 'napitupulu.suci@marpaung.net', NULL, '$2y$12$FPObK8.AoGtqFWu47ETqx.K8iXwBg7dNLldDQm6FFAv3P2mtu886a', NULL, NULL, NULL),
(120, 'Banara Megantara S.E.', 'rlatupono@handayani.mil.id', NULL, '$2y$12$xryrLp59W1Ye/snGIRpMvOgAVFo/LZy0TKM41t43jGmEYi8KGYx5u', NULL, NULL, NULL),
(121, 'Ajimin Permadi S.H.', 'zelaya.hariyah@prasetya.in', NULL, '$2y$12$t5mrHNZNNOo3mRpqD9LWmOAVJR/pLpLIEYmGvtO.aNnL2esLnZ/Cm', NULL, NULL, NULL),
(122, 'Widya Mayasari M.Farm', 'sarah.mayasari@hartati.mil.id', NULL, '$2y$12$KQGnQJwZqNw5uFzKK7XcZuboieHBwp0nUYsp6xkksthLYrVbT1a.C', NULL, NULL, NULL),
(123, 'Lega Kurniawan', 'qmangunsong@padmasari.id', NULL, '$2y$12$W5phfOyZE86jkWQnezdHMeP1nwmtB9gJqHpIOJfhVh37sezij3NSu', NULL, NULL, NULL),
(124, 'Kani Laksita', 'pratiwi.aurora@setiawan.name', NULL, '$2y$12$6jXwcOxsZDDT3qkCjYOXpOCugt88D2IM.ZCxuneI6mj0e4GF/Zuhi', NULL, NULL, NULL),
(125, 'Rina Suartini', 'galar.saputra@gmail.co.id', NULL, '$2y$12$UZVky8m7W2kuB1QbCbzyKuaV1yo39OFP.uk4DvwxT2YJk9/piARme', NULL, NULL, NULL),
(126, 'Vanya Riyanti M.Kom.', 'kani.dabukke@yahoo.co.id', NULL, '$2y$12$GTRQ33nLcrfYrcYkUkdnpOpP8ftEc7.tUrqRtCm0SEPAFdeQLFZe6', NULL, NULL, NULL),
(127, 'Gada Garda Kusumo S.H.', 'natalia10@gmail.co.id', NULL, '$2y$12$F4BFA8GKpHEmPdu5rUWDI.SJHVSVCk7nr7jxZj7.IMQ1MSN3f35.u', NULL, NULL, NULL),
(128, 'Kadir Purwadi Maheswara M.Ak', 'alika.thamrin@wijayanti.or.id', NULL, '$2y$12$XBnbYqeN/3.rzcCAnpvSSu0wXmjSWuPBzmxzbC9PDdOpWLXjJunBK', NULL, NULL, NULL),
(129, 'Yusuf Langgeng Permadi S.E.I', 'zizi77@saputra.org', NULL, '$2y$12$OPV8M0a/v8wVAXU4jVEnWe3nXsoDwHzix.8HmiyhvEtNAhobk.OjC', NULL, NULL, NULL),
(130, 'Umi Agustina S.Sos', 'jrajasa@dabukke.biz.id', NULL, '$2y$12$MtEo.jCjLTUhgKTBvSwqQOnaqS1.wNWe/uLIemxqF65Tyo5W7pgI.', NULL, NULL, NULL),
(131, 'Labuh Gunarto', 'devi80@hakim.co.id', NULL, '$2y$12$p.h1xdq9b5Np.sU6EvncIOQ0/Vkt0zbzAihN7N.u2wOZyRR7mERIa', NULL, NULL, NULL),
(132, 'Oni Dina Susanti', 'dsaefullah@gmail.com', NULL, '$2y$12$ZKP3Revb6sGNKVE5bQY73.UZF9nzGnhOIl3PqtdZpyHhdtmQndewi', NULL, NULL, NULL),
(133, 'Timbul Saputra', 'wibisono.yoga@yahoo.co.id', NULL, '$2y$12$qNCqI7M6JOOPVVYvlZhWGuorYBwqrF5Whm9jRfY6Aj28mnc2akzWW', NULL, NULL, NULL),
(134, 'Natalia Agustina', 'dongoran.caket@gmail.com', NULL, '$2y$12$0LLFvAgaPTDLZzuMUeSraexcZCDyYmyWqBjp4Q98tiPIbwUL8822i', NULL, NULL, NULL),
(135, 'Jaga Winarno', 'belinda.rahmawati@yahoo.com', NULL, '$2y$12$XnEoB.4YDShugZaObr5aeOkSubgCV3C/3IRSPgvA/rYxOUmczJ8CS', NULL, NULL, NULL),
(136, 'Cindy Syahrini Mardhiyah', 'calista89@aryani.biz', NULL, '$2y$12$CvEbUJn2RJ6y.WPg9vaHsuSSNUkMNpEmsl77.FBVe7NqBC7ZoME8G', NULL, NULL, NULL),
(137, 'Dina Agustina', 'pertiwi.zizi@usada.com', NULL, '$2y$12$tub1txsOMBUZmTMO12MnW..XGRezYNHJF7NUW9W1H4VuENMXgkO3G', NULL, NULL, NULL),
(138, 'Baktianto Dono Prasetyo', 'galuh.susanti@budiman.biz', NULL, '$2y$12$HTQU8RKWWZqZYgNcr1ciYu/CNhBCBBaV162lagVQ/XveU1f2PbHaO', NULL, NULL, NULL),
(139, 'Prabu Karma Sihombing S.Kom', 'setiawan.chelsea@siregar.in', NULL, '$2y$12$FDYDPrjECC2h3SxD.43QLuVllMZ9pDE9KgdDlvWzGNwwvh2F945X2', NULL, NULL, NULL),
(140, 'Cager Dariati Nababan S.Farm', 'fharyanto@hidayat.org', NULL, '$2y$12$bOtKOw925gjOyCKJde8MEOwFm99rEV5IksN3vv0HiyZ8FnsxAStzO', NULL, NULL, NULL),
(141, 'Ade Situmorang', 'anggriawan.latika@andriani.my.id', NULL, '$2y$12$AovxJfKSjgliTjulPnpWpeksWVtvNO0rb.OHRxGgNvZmb6ttQ8/cq', NULL, NULL, NULL),
(142, 'Darimin Hidayanto S.Pd', 'nilam49@yahoo.com', NULL, '$2y$12$6V6K1wvhFdk.DQ2SUdbBp.WKy1dMcyCWLjwG83Ka/XYAC62ICJuSW', NULL, NULL, NULL),
(143, 'Garan Pratama S.H.', 'opalastri@riyanti.org', NULL, '$2y$12$w98CvNeYGIJcq.B2Vc8vpOD7.Ffc3L8YaLYWgsR/4Eyc/PbkV6uG6', NULL, NULL, NULL),
(144, 'Gilda Gabriella Laksmiwati M.Farm', 'nadine.thamrin@zulaika.com', NULL, '$2y$12$dhMIxU3KxYFjYIQnLGk98enerPFvKrz1meTqOCJTNAJ2Mr4Tjaoze', NULL, NULL, NULL),
(145, 'Hairyanto Halim', 'nurul.saputra@hassanah.desa.id', NULL, '$2y$12$bv.oH4PnFs/O59bXPKL/8O4hFj5Sd/dMiV3lpKgAvbu4dqtuimebu', NULL, NULL, NULL),
(146, 'Laila Puji Halimah', 'eli74@maryadi.org', NULL, '$2y$12$iAEjnlz8UlfoO7NfAmFfueLUNtqGe/xJFWPMJb6jvjaSAK30aVa7u', NULL, NULL, NULL),
(147, 'Setya Siregar', 'narji73@padmasari.web.id', NULL, '$2y$12$qEtfrmXWTXjw2cCQXWSzReyLttZ/tcZkc93nmm1vN5dvfbxa8t3RC', NULL, NULL, NULL),
(148, 'Kani Safitri', 'lmandasari@aryani.co.id', NULL, '$2y$12$1/TjDatIksJ.4ABk16yggu/.HpIRnoVzAhR3dvTbZkybMDzTH8auW', NULL, NULL, NULL),
(149, 'Hasna Tania Hasanah', 'isuwarno@gmail.co.id', NULL, '$2y$12$4Z7lEZXU8Hd11GVxytSqo.j.DnbipiOrmkbcVES6DKD3Rxf/9jKuS', NULL, NULL, NULL),
(150, 'Adika Firmansyah', 'candrakanta.mardhiyah@winarsih.info', NULL, '$2y$12$TDE7DhTUrh6M997razrkgO10WBYqOx.czb.afNMSm2g61edcdWTIe', NULL, NULL, NULL),
(151, 'Tugiman Lazuardi S.I.Kom', 'mayasari.rachel@yahoo.co.id', NULL, '$2y$12$DAmZ68by78QcQcJeb7FHgepgIHO6wfVUyKJK23LguGFroAs0.OiJ6', NULL, NULL, NULL),
(152, 'Mariadi Putra', 'spranowo@mandasari.web.id', NULL, '$2y$12$vLvM96HM3D7Du1rljUjeye/F4smTFxSnjH0w37ZluZPAzhuRsSxO6', NULL, NULL, NULL),
(153, 'Sarah Puput Rahayu S.E.', 'rosman.agustina@gmail.co.id', NULL, '$2y$12$kCztiwdABnMfLPQmZFSRcO2M5keVZg3Xcc8Z/NcWlTiZMIP6zpE7y', NULL, NULL, NULL),
(154, 'Anastasia Zelaya Nurdiyanti', 'kayun.tampubolon@yahoo.com', NULL, '$2y$12$1WJS2pMCJhxhkfLwQxP84eCDO6bzDG.MO9.3df6laA0n67rzeKhHy', NULL, NULL, NULL),
(155, 'Hasna Susanti S.E.', 'ridwan.nurdiyanti@andriani.my.id', NULL, '$2y$12$xH3.kQQ0IhVAzKZdbdDKEOdEljMtXYPaeXLJz/fx/6j/EH/VWaO0G', NULL, NULL, NULL),
(156, 'Wirda Diana Zulaika S.T.', 'lprastuti@gmail.com', NULL, '$2y$12$Wi3hk9qDyWG5gXHMB7oXWebvnMs6wN7I70ENjcZnDvV6pX9.uIl/e', NULL, NULL, NULL),
(157, 'Laras Handayani', 'thamrin.hardana@nasyiah.co.id', NULL, '$2y$12$Odv/73ba/IEx9dj8P0tQ4.f.9wCqgZF8a2KHQu6rljruOAUtqNh0O', NULL, NULL, NULL),
(158, 'Jayadi Taufik Winarno S.E.', 'carla55@yahoo.com', NULL, '$2y$12$6Olq9CO840lHygkzx01W3.aEqTmM91xi2Sk8bH1Hmd.pyK6FKSZ4O', NULL, NULL, NULL),
(159, 'Aisyah Oktaviani', 'ellis.maheswara@prastuti.org', NULL, '$2y$12$/2vFQPLPSzu8fUckKYYoFOKgA4YAu7PNHPGwd9Sbw4e10ZsKX50c.', NULL, NULL, NULL),
(160, 'Warsita Wasita', 'okto.wahyuni@yahoo.co.id', NULL, '$2y$12$0FPoss0vdel3FApBedSufuEeux9PIyZ9bB1OSVoIVDv/.1OFcf3CW', NULL, NULL, NULL),
(161, 'Queen Nasyidah', 'saragih.nova@laksmiwati.tv', NULL, '$2y$12$.COP8Gi7uFh508LuYGF/Fu4QcXkhzVo0xYeElxXBZPVgeeyNOHDli', NULL, NULL, NULL),
(162, 'Zalindra Puspita', 'natsir.ella@susanti.ac.id', NULL, '$2y$12$Fryw0FWyDsPkPiKPdXAWIOuL8LgxQGuRNJa3zafGFODFxGeXXEhoW', NULL, NULL, NULL),
(163, 'Saiful Sinaga', 'lestari.mutia@gmail.com', NULL, '$2y$12$Ibd2oCHqgnrzXNKqdW/jFujOkArKppM/vqEpfDupomhHXqdnYJGAO', NULL, NULL, NULL),
(164, 'Ayu Putri Puspasari S.Farm', 'mprasetya@gmail.com', NULL, '$2y$12$y9dZ0muS.OXiZ2ZaElPZmObMknq..FK6YqR1ignruWfUJF29gJHuW', NULL, NULL, NULL),
(165, 'Bahuwirya Pranowo', 'vega.suryono@gmail.co.id', NULL, '$2y$12$OPOX5e8mZ6kjZQ8vlV5lfO.doYu69V3OyC2AQgWwKQBD27V9wo8HW', NULL, NULL, NULL),
(166, 'Yunita Farida', 'sirait.widya@puspasari.co', NULL, '$2y$12$iSo.S0rbYc3gOv82gHvhY.TUnQdB0..IPLnSwlIJLkm3EUZU5THkC', NULL, NULL, NULL),
(167, 'Sari Maryati S.E.', 'bagya35@yahoo.com', NULL, '$2y$12$BWCKxotnf.83s2B13TzBpOqmIo0RVaMu/aQhbiuOPCfAKW90Nf2Um', NULL, NULL, NULL),
(168, 'Hendra Gaiman Wibowo S.Ked', 'wjailani@purnawati.org', NULL, '$2y$12$JONGrb9IzYoCPB5ebI.NKe22DdYUJBJYiJe.1Wpi/zMTVkGBVrzt2', NULL, NULL, NULL),
(169, 'Jagapati Catur Firgantoro S.Ked', 'safina.napitupulu@yahoo.co.id', NULL, '$2y$12$q/P7VuA0zBjBZLLzGlztouyamTryhXPpIxyo8LXBbVdHDTr810CYi', NULL, NULL, NULL),
(170, 'Cawuk Erik Saputra', 'khutagalung@permadi.co.id', NULL, '$2y$12$kvcG2ZV8Axy7R1CfFn7/KuT8cWxPc/TRRoJba0KXqsG6BGGEsG20y', NULL, NULL, NULL),
(171, 'Karna Maheswara', 'kairav.najmudin@gmail.co.id', NULL, '$2y$12$3Kx85hl5deWRDPsTaO5jfu6Qwv8oswNRN5Z9Rh92.xBttXgCBYUva', NULL, NULL, NULL),
(172, 'Anastasia Suartini M.Ak', 'pratiwi.yance@gmail.co.id', NULL, '$2y$12$itoRZXZPROuUBeUl6CfEQOcG7iCG2ysH1CgoGF3/7WX5/01ktk29S', NULL, NULL, NULL),
(173, 'Zulaikha Utami', 'gatot50@novitasari.biz', NULL, '$2y$12$i6FdQcXJYAIZMkF8WctLIOItoPkuXOgOpqFf4H6.L8pA0z2Ge5Ule', NULL, NULL, NULL),
(174, 'Zalindra Usamah S.Pd', 'zpermata@yahoo.co.id', NULL, '$2y$12$ZNr9EzTVXJ9iJoTGYO3XvefIF/8/MBEsFBZFNmCM3XPMiK0kWSdPa', NULL, NULL, NULL),
(175, 'Tari Aryani S.IP', 'fsaefullah@adriansyah.sch.id', NULL, '$2y$12$5lKrw4fPERkF4CT7/L7YoeHI.GDhrldLq7gyv0YEclyJhPdvsOOwe', NULL, NULL, NULL),
(176, 'Najam Warsa Prabowo', 'hariyah.janet@hutagalung.go.id', NULL, '$2y$12$wLKaxt2lAZZxm06btWdHgey1BN73d1gENqintlveI62P/lN3R5iMm', NULL, NULL, NULL),
(177, 'Nova Ajeng Rahimah', 'agnes.sirait@kuswandari.co.id', NULL, '$2y$12$OR4.sEKc.mAFoe.64mUOv.vjV6oy1LIVCHgClnjfgNjkmZCVjWnC.', NULL, NULL, NULL),
(178, 'Nasim Jail Mansur', 'lestari.febi@gmail.co.id', NULL, '$2y$12$Eq2C6M7whtGk.cdCykaEZOGAdmSe3GKjLwsNpiwmgTMEDWnss9uC6', NULL, NULL, NULL),
(179, 'Gandi Cemplunk Tampubolon', 'hutasoit.febi@gmail.co.id', NULL, '$2y$12$MPqMRbyveh7hhlFOxeLhXOnCRzbLLif7z89cBejClOUgrGpJHUSRi', NULL, NULL, NULL),
(180, 'Kezia Puspasari', 'tampubolon.ellis@yahoo.com', NULL, '$2y$12$yGwgghupKqZiMk1hrLCVreWwtp7/rrs6XT1POG6DsvUMZHhU.xpvy', NULL, NULL, NULL),
(181, 'Putu Nababan', 'situmorang.vivi@halim.tv', NULL, '$2y$12$CovCRBwpE6u11Z0MNPtZkuIT0lecE/HO1PdbFNXaAZi0gfTeaVmri', NULL, NULL, NULL),
(182, 'Silvia Wijayanti', 'mandasari.marsito@gmail.com', NULL, '$2y$12$8l3iueRpbsoG2.YCZgsOYuaPHVqOKWuKpIhbmrzE1uFzRX2tV7W/u', NULL, NULL, NULL),
(183, 'Nabila Winarsih', 'siti02@pranowo.com', NULL, '$2y$12$OWNSjHx.TymIT1MC.gyx6eEONORVnuibngv04rqTByoF.UJaG/iDe', NULL, NULL, NULL),
(184, 'Mutia Hassanah M.Kom.', 'lestari.anom@pratiwi.id', NULL, '$2y$12$BbtCNtPU9iBUWTeqPRdBnOxyHkOpKMH1od9GG29gYCyZCe5tJUDH6', NULL, NULL, NULL),
(185, 'Widya Laksita', 'raihan.setiawan@mulyani.co', NULL, '$2y$12$/StIA1w.7fw6aweMcr.ched6sDfEnCDW.QWscEz4qNdS2ZE/Tltz6', NULL, NULL, NULL),
(186, 'Siska Usada', 'padma03@hutasoit.tv', NULL, '$2y$12$FmwZ/TH6sa9Htgfgdyetw.DNo.Qij1cEy/PSuAnkzVYa9x.DsYpN6', NULL, NULL, NULL),
(187, 'Abyasa Nababan', 'cahyadi.prastuti@salahudin.web.id', NULL, '$2y$12$3HiSpu2J0F/lPOPeqMGa.OuAI5yQW5/6irW88B4UBk5/hIBq/DSBy', NULL, NULL, NULL),
(188, 'Kayla Usada S.T.', 'novitasari.yessi@aryani.web.id', NULL, '$2y$12$fLVgWZKcVP09HmEi4DsSd.1XswiCQiaoSUhqFx7QTjo2qOoj.dUra', NULL, NULL, NULL),
(189, 'Restu Yuni Yuniar', 'tzulaika@laksita.go.id', NULL, '$2y$12$ORzQb21wrYELkYUI3CF/bu8iq654Bb9TTl4GCNHjgJKtpF1991gDe', NULL, NULL, NULL),
(190, 'Gara Wibowo', 'yosef.anggraini@gmail.co.id', NULL, '$2y$12$NRvqJp1EOTFmX27NpI2P9.Xvqg8.kpehw3R04cgMHRwHP59S0lbBa', NULL, NULL, NULL),
(191, 'Syahrini Nuraini', 'budiyanto.kunthara@gmail.com', NULL, '$2y$12$RRw6XFt5E4Kyz2VcqB9xfubIcmG906yZYwg.V2qwtXd5lPiBHR2k6', NULL, NULL, NULL),
(192, 'Sadina Yolanda S.Psi', 'vsuryono@rajasa.sch.id', NULL, '$2y$12$97b2CMV9gEPRvABzcmAjEesnRvUtfVop7MhIZVCtmKTc/Na9CE8zm', NULL, NULL, NULL),
(193, 'Jamalia Farah Widiastuti', 'yani.simanjuntak@gmail.com', NULL, '$2y$12$bukcfnSh25PuecMDU46ot.7W2QkVKn/T6QsElHXxau/Vrzg7EaapS', NULL, NULL, NULL),
(194, 'Kamila Purwanti S.T.', 'surya.natsir@thamrin.name', NULL, '$2y$12$szoPzDKDOfGVz.i7a3JRHexgo0ayB8Nk6OMxuM9/dogpZShPjZVg6', NULL, NULL, NULL),
(195, 'Bella Uyainah S.Kom', 'sadina.marbun@gmail.co.id', NULL, '$2y$12$HHh0sXd.Rr90SZnZmUGxi.YsiHcIfO8nNCmEMIhL1AutzMSb1q.Si', NULL, NULL, NULL),
(196, 'Tasdik Marpaung S.H.', 'salsabila55@yahoo.com', NULL, '$2y$12$9MVE2j54kbv1mNSxc7m9ROzDGFtF1IyFJtJ/B/s5fcregvfYI3d/2', NULL, NULL, NULL),
(197, 'Restu Novitasari', 'suryatmi.talia@hariyah.in', NULL, '$2y$12$H15HdAQsiP5utIZ3x5eeTeqn.4GT.gR5COiVQP4g4Y4TEhi5pr2uS', NULL, NULL, NULL),
(198, 'Asmianto Ade Saragih', 'sadina37@gmail.co.id', NULL, '$2y$12$A5TSxpcW7zcg358Yf/2LaevowK4LdZA5NMgLBXlTRSH9jeQAQfkYm', NULL, NULL, NULL),
(199, 'Baktiono Budiyanto', 'purwanto06@hariyah.tv', NULL, '$2y$12$6CvRzzFDx1pdnl2GPdpOi.vU//nejOX.D9aCHwnxtcJmFE.gI.nb2', NULL, NULL, NULL),
(200, 'Oliva Kasiyah Prastuti', 'unjani.saragih@mayasari.id', NULL, '$2y$12$YggtLx26NI9TMRSvYT8R8e4WYliyzArQXeVAMv4hBSA4ftLxkrFnC', NULL, NULL, NULL),
(201, 'Ibrahim Balijan Rajasa S.Pt', 'fsalahudin@rahayu.desa.id', NULL, '$2y$12$FrmT9DHRfRqV.RSa4xZhpe0LCx/UMR.6IVVSfLaDBoFsWgMdMyklm', NULL, NULL, NULL),
(202, 'Aswani Dabukke', 'cawisadi.anggraini@ardianto.sch.id', NULL, '$2y$12$sBnXg1D1fJaHOjp6HKFT1.Z7kKibv6/I5/TYAt1nLrk0SJJdKkI5S', NULL, NULL, NULL),
(203, 'Titin Uyainah', 'maryadi.bahuwirya@yahoo.com', NULL, '$2y$12$YnLqcLZCQ5MtUnbGnsbB3urZIFy.puSUKb8NwBCd0Otz2GAZAsoey', NULL, NULL, NULL),
(204, 'Pangestu Sihotang S.H.', 'diah72@gmail.com', NULL, '$2y$12$6EeIAWL1eDbXBeJU0cECm.sN3iqJ13MrYZ1q3Y1nwRk5n4DgJHVYi', NULL, NULL, NULL),
(205, 'Mila Nurdiyanti', 'gadang47@hutasoit.net', NULL, '$2y$12$udnd4A52dEwpzUActQ9wLuOI.2BC16qJ3Y/nfxEm6ecQGFS6ehtWi', NULL, NULL, NULL),
(206, 'Luwes Edi Putra', 'yunita30@maryati.in', NULL, '$2y$12$thSSjCxb4RVzU0prya1XUexfAFm.JxodO0Z8o2/8DFnDkWA8gQx8q', NULL, NULL, NULL),
(207, 'Wakiman Prayoga', 'pangestu.safitri@gmail.co.id', NULL, '$2y$12$nDllYyFcZ1lPOvPJBQrzheMsmNahsDhz3ozk.RqibfnEYeVODY0U2', NULL, NULL, NULL),
(208, 'Tania Wijayanti S.E.', 'qharyanto@mulyani.or.id', NULL, '$2y$12$YVjRp/.tTExrmyM68f7xzupe91mxlc1QTGMT3WJNUm5fS0w5BLDPe', NULL, NULL, NULL),
(209, 'Clara Nadine Uyainah S.E.', 'ibrani33@puspasari.tv', NULL, '$2y$12$iiDqE8jS07YnfFjDABun3eOrapHJXeiStvc2qvxM0FF2BExWvRydq', NULL, NULL, NULL),
(210, 'Cecep Suwarno', 'rahayu.lanjar@wibowo.my.id', NULL, '$2y$12$MSkniYt2z.6wtwf0k5VgSubqaKKaUunfTACZL60vlsyxoyaEM/xia', NULL, NULL, NULL),
(211, 'Galak Karsa Uwais', 'wakiman.oktaviani@maheswara.co', NULL, '$2y$12$8s/k9p3HSdnBVgMdTLBuueu9toKYJs1cgRY7A.ZxvvD/P78IDixfS', NULL, NULL, NULL),
(212, 'Michelle Laksmiwati', 'uprastuti@widiastuti.tv', NULL, '$2y$12$l1X3ZUj6CTgUB4.BecnoWuf85pk/skKhmdFGDy/wWhjnp2evO927G', NULL, NULL, NULL),
(213, 'Okto Sinaga', 'psiregar@ramadan.com', NULL, '$2y$12$1BnMl/9iUVOIJTSqyZlf5uH9PPdXmHyKgaZiXYA64LNqHPK1/Zjcm', NULL, NULL, NULL),
(214, 'Amelia Usamah', 'lmarpaung@nababan.asia', NULL, '$2y$12$35Gi3JpSYHaUVoMx9aZ/9Oc5HB31ePupTKFZY8XGlU.YhG0Hjgh6i', NULL, NULL, NULL),
(215, 'Paris Novitasari', 'ganep.zulaika@yahoo.com', NULL, '$2y$12$rFgA26AqrSonRsRwgFP2je5nAQwsYav0MgZaZ6D6IpR3/vpfEf8H.', NULL, NULL, NULL),
(216, 'Suci Zelda Purnawati', 'fprayoga@yahoo.co.id', NULL, '$2y$12$u2nDy57pSbzBWvATlWkRb.AXW78tgerlR5Be62dRct6/Tm5UimE9S', NULL, NULL, NULL),
(217, 'Nilam Unjani Winarsih M.TI.', 'jyuniar@sitompul.desa.id', NULL, '$2y$12$ZZ4hVaKvu4Syb//OkzHCHuVsrOpl5RBSLhacrmv0MhjC0NBdFWxRq', NULL, NULL, NULL),
(218, 'Yulia Permata', 'harimurti10@mandasari.co.id', NULL, '$2y$12$P.nuP0lEY/DgiqsCxqtW8uxNZvfEgtD/nQk4vu4dZxzA7piXHm8oC', NULL, NULL, NULL),
(219, 'Indra Bakda Sihombing', 'kairav.aryani@gmail.com', NULL, '$2y$12$14GoVfU45wPMFCZ1TgPd1OtHY2aanfPMStAm7ex3/iZexbMDuqQaG', NULL, NULL, NULL),
(220, 'Prabu Gunarto', 'salsabila08@wacana.my.id', NULL, '$2y$12$dFNDjusKVnShr7CwtVYzfeFkbag.eMwUdIFT8y3j9tZOzCUDhJI4a', NULL, NULL, NULL),
(221, 'Septi Oktaviani', 'kartika53@winarno.name', NULL, '$2y$12$3C.QPFwReEUF9Yau32xwS.q3xPn/jNvF2kPUVRj6v7uWNKS79P8A.', NULL, NULL, NULL),
(222, 'Prayogo Dariati Budiyanto', 'siregar.cahyo@gmail.com', NULL, '$2y$12$Zzzxzg63DWWS.pVpFfYp1OqIMoyLSStzwkExH9ejHPyv8gK6a1Z6C', NULL, NULL, NULL),
(223, 'Tari Hasanah S.E.', 'yahya.natsir@gmail.com', NULL, '$2y$12$.ui3Ftq4xCVd6tBHpm.Da.EibE5x9bYYSVU3tqojSHWxpR2lLz/Xy', NULL, NULL, NULL),
(224, 'Eko Kurniawan', 'esitompul@puspasari.or.id', NULL, '$2y$12$mCfbvA4bq.hzMGdLNrbEWeCV6MpEoRlZ6kTYln.tZ1aEusgcepbxe', NULL, NULL, NULL),
(225, 'Raina Laksita', 'balapati.andriani@gmail.com', NULL, '$2y$12$SWHZ0D30kY4MMV.DUp9GAet5AH.azEjXBZQAj71WSLQq7kE0qadiW', NULL, NULL, NULL),
(226, 'Kayla Sarah Padmasari', 'chelsea.agustina@yahoo.co.id', NULL, '$2y$12$.o4jyXP2.sPwUE0JPES51uy2z2vw69L/Eid7EfMa58IQiDy7QuS7e', NULL, NULL, NULL),
(227, 'Jasmani Bahuraksa Nainggolan', 'rama.melani@rahmawati.go.id', NULL, '$2y$12$eFRATQClDJotI9AzXOyAP.TLWUmWR2mfzu049vI9IIz2VNoP8QDwW', NULL, NULL, NULL),
(228, 'Vivi Maida Uyainah', 'endah80@gmail.co.id', NULL, '$2y$12$yZycuaBD5HXaEBrEwzkdyOkGaMd.Vo.QYJcl0zv0dwUgCUmX8WKN6', NULL, NULL, NULL),
(229, 'Luwar Ajiman Marpaung S.Pd', 'pandu.safitri@kusmawati.info', NULL, '$2y$12$ZUZaiqhfnyfQchtP0ioP4.8Y5jH9ViabKgA3SUtH.KimxcFnxf3By', NULL, NULL, NULL),
(230, 'Cahyadi Nababan S.H.', 'bakiono25@pradana.com', NULL, '$2y$12$1gGO0CTh/hmdshOmEVVqaeqMMlzX3q9Q7ZfnOHYOJioqsBbrrZ5R.', NULL, NULL, NULL),
(231, 'Paramita Pratiwi', 'ymanullang@jailani.co', NULL, '$2y$12$3XESfgzl1KMdQKNGL2whZeQqR7.raOZFkyuwyqXkN9Ija94VSWnrC', NULL, NULL, NULL),
(232, 'Lasmono Hidayanto', 'nadine.mangunsong@fujiati.net', NULL, '$2y$12$iMq97F8KI50ao3jcgOeAneDiFBiUVrRZVyo9XBV/K01ri3dxwr/WK', NULL, NULL, NULL),
(233, 'Puput Yolanda', 'safina.mahendra@winarno.co.id', NULL, '$2y$12$OWNJRFnj2jmyV5a6s0p8ye19PAY3o3sDopLIp8ICYDQJq8OtnAkwu', NULL, NULL, NULL),
(234, 'Jaeman Suryono S.Pd', 'sakura.sitorus@sihombing.my.id', NULL, '$2y$12$rZEKnEduuymuOcVRNBYHP.YupAxVNEHlFcOxK6MCNBre3kf4P.Wsm', NULL, NULL, NULL),
(235, 'Marsito Firgantoro', 'rajata.artawan@puspasari.or.id', NULL, '$2y$12$/rHjvAtSpYrh2vlWJcVoSeO9Y.L8lNuExTh6Ln6zIBOpR5IeRukHe', NULL, NULL, NULL),
(236, 'Ratih Fujiati', 'yani83@gmail.co.id', NULL, '$2y$12$XcjCJuitevD06v/2SrQe5OBYL.dhfMCj6QZdqSjHGHBLOqaCvAbyW', NULL, NULL, NULL),
(237, 'Gaiman Habibi', 'paryani@prasetya.biz.id', NULL, '$2y$12$qWFS9AXK3z8li4rHrZG0AOp2h9P69JEtZPu5/nrwmexphIpQOUmX2', NULL, NULL, NULL),
(238, 'Gilda Ina Suartini', 'oktaviani.elvina@gmail.co.id', NULL, '$2y$12$5q69rYQweChSnZBsDWUWqei5m9EbfiEitC.RvPJ6/087KFmZVVV.S', NULL, NULL, NULL),
(239, 'Dina Hariyah', 'digdaya.rahayu@gmail.com', NULL, '$2y$12$JaRqRliCoHNjb2PcU/S4KuJDueNMnHKMJj5kaTQ9iCIBE.uq5P8cO', NULL, NULL, NULL),
(240, 'Winda Kiandra Nasyidah', 'jnashiruddin@nainggolan.id', NULL, '$2y$12$wSCVHMQr2XR.uuQ0yHUgi.YoWNzLaMvyHtbhUZdbmf1C6u9J/hspu', NULL, NULL, NULL),
(241, 'Malik Habibi', 'samiah95@yahoo.co.id', NULL, '$2y$12$9l7TS0FgCujU4eaQ3rfLFeg6cvgo4iLfoyAC3fK31Havx73R8/aGm', NULL, NULL, NULL),
(242, 'Sari Fujiati', 'amelia60@jailani.sch.id', NULL, '$2y$12$e8MlYJQmpCleBawMueMbuen52x8VvmvzgRQCnMUB835xqIm2XbNbK', NULL, NULL, NULL),
(243, 'Dian Laksmiwati S.Sos', 'dongoran.wira@sihombing.co.id', NULL, '$2y$12$gjVW.PC1HkoKkBYVQ3Iz6eAsvHft8bQ8CRSZLz3vXCefk/MygxsBy', NULL, NULL, NULL),
(244, 'Cengkir Wasita', 'wulan.aryani@gmail.co.id', NULL, '$2y$12$3Mvr1tN9yqw5xSfO6IYvnugYIA6W4arr5wgXNlGNgnnxtN.yic/1m', NULL, NULL, NULL),
(245, 'Hendra Yusuf Pangestu', 'wadi.pertiwi@yahoo.co.id', NULL, '$2y$12$Cqu0joxUtzWeiGcwrvCmQeXtiih1ZWfXOg1Trz5bggi53yAEMv63C', NULL, NULL, NULL),
(246, 'Luis Kunthara Marbun', 'citra42@yahoo.co.id', NULL, '$2y$12$JzOoIkW5J0RiDftaldmSMO4uPzQo4BO79yISFxqawFm89wlR7qqxe', NULL, NULL, NULL),
(247, 'Wisnu Bala Salahudin', 'sihombing.gasti@gmail.co.id', NULL, '$2y$12$5JmBKErBg62g3dhIBChRqODsVXtgZkiX1/VEw/PWNz5MZTNlZD8e.', NULL, NULL, NULL),
(248, 'Kenzie Marsudi Mandala', 'ajimin35@yahoo.co.id', NULL, '$2y$12$DOzuDXGmtqIp3KpHp.JU9O1YeQkQSAGQ8p/eJPegzPV6wG88cmRqe', NULL, NULL, NULL),
(249, 'Ani Jane Andriani', 'pratiwi.lili@kuswandari.net', NULL, '$2y$12$VwIsT33msJsF/sUKiUzqxemJTlTqBWTwd77yD8tF4oWf/TG1pQ3Iq', NULL, NULL, NULL),
(250, 'Ajeng Haryanti S.Psi', 'hani65@wulandari.com', NULL, '$2y$12$QRjbOMObwCZ5dvRVvlv12e6IUMcz96mGov/XVCN2l7eeaJhs9vOsm', NULL, NULL, NULL),
(251, 'Rini Nasyidah', 'ganep.susanti@yahoo.co.id', NULL, '$2y$12$/ezQNGwAfEoa8ppB4geG7eQ7l/vhSKHgXVbB33Mne2d4UnHTR4Njq', NULL, NULL, NULL),
(252, 'Jamalia Mandasari', 'ida47@gmail.co.id', NULL, '$2y$12$uNz1/p0x1ZC89pi6QIfwf.nxDV9SwnIqJF/JcABhLdrqWT0TgK5HW', NULL, NULL, NULL),
(253, 'Carla Wijayanti', 'jaiman.prasetya@wastuti.co', NULL, '$2y$12$euYoQj6/rfCj4escwILFmeVSXzMUWpHwrh5v0MIhEbT01PSESOTQy', NULL, NULL, NULL),
(254, 'Taufan Hutapea', 'baktiono88@yahoo.com', NULL, '$2y$12$FlViiVI9GqlYh33pWxNVneU3U6e7NmGFKYjaTaezWNdhxty0m5/Ve', NULL, NULL, NULL),
(255, 'Ibun Gunarto', 'pradana.raisa@narpati.info', NULL, '$2y$12$taqPC4J9PD8Ox9.s1FOFU.M0CkcQrLnmUabTikcJEbrxmE9w/lLVy', NULL, NULL, NULL),
(256, 'Amelia Ella Wastuti', 'uhastuti@purwanti.go.id', NULL, '$2y$12$G8IAfuHryLtLifdIfIfkPOb.awBCLVHb/pzVcYnYcxdxLKrkuuNBi', NULL, NULL, NULL),
(257, 'Danang Adriansyah', 'shastuti@yahoo.com', NULL, '$2y$12$GEfTrErZMGx.Pxlrkm0w7OYTINxNw.zjXlZb.u4vL2mr47InyIXAS', NULL, NULL, NULL),
(258, 'Kiandra Kamila Nasyidah M.Kom.', 'sirait.kezia@adriansyah.tv', NULL, '$2y$12$IkigS/TbyxAz3PHLz33nuedP/rj1bQykZcKdxo1hA9VVtpTpF30w.', NULL, NULL, NULL),
(259, 'Yessi Yuniar S.IP', 'ramadan.kania@saputra.org', NULL, '$2y$12$kVSV3A3F9G28FNWS0aX9MuwgtNycHvZ9mUc76K.RBDiSjNXHVb3qm', NULL, NULL, NULL),
(260, 'Karya Hutagalung M.Kom.', 'simbolon.jaya@yahoo.com', NULL, '$2y$12$85n8NbcsmfI5rERyuUuLUOV9HZt4aQFgC2KZ9G5IderpHOGfcnenS', NULL, NULL, NULL),
(261, 'Wira Permadi', 'rahayu02@yahoo.co.id', NULL, '$2y$12$zj/TrW5ZdsOE2gXq3jboiOQYfW2fh.4aP.IsuHy/o.lE1elwL.Fq.', NULL, NULL, NULL),
(262, 'Ibun Sitorus S.Psi', 'bahuwarna01@gmail.com', NULL, '$2y$12$NDaq7gh4PZzumiUz6p3rPuZ1MTAfnSh5xwDOP03X9d8lVVwbm11Zq', NULL, NULL, NULL),
(263, 'Rachel Vivi Aryani', 'cnamaga@gmail.com', NULL, '$2y$12$vUhy66aPqi04/oPY7Iv/c.QFY23rKZSIkj0exovJbf2kKXwDLabP2', NULL, NULL, NULL),
(264, 'Yuliana Lestari', 'gilda85@gmail.co.id', NULL, '$2y$12$tdkDxFkKo/L5JOv1brKAO.DgtjqMkdOxh4dEq1EPX26FnG43rGIqq', NULL, NULL, NULL),
(265, 'Putri Wulandari', 'osiregar@saragih.org', NULL, '$2y$12$H3ZZga8Gk2Ap4wYgoPpza.Qus7KfvTI0lwoxC/Xxy0qlQhmJtN0pi', NULL, NULL, NULL),
(266, 'Omar Hutapea', 'koko.namaga@rahmawati.or.id', NULL, '$2y$12$OcrRlfSbRbrrCRKDBWWJnO.gv9VOltd.twW2/.DYLA8OSCVTpIB46', NULL, NULL, NULL),
(267, 'Kartika Mulyani', 'fathonah12@hasanah.name', NULL, '$2y$12$EwtM7isWMNpKEq69eUVdAeviRhG4q.tH1fnkPgE7PNLstHaVsmbSe', NULL, NULL, NULL),
(268, 'Ifa Lestari', 'jagaraga.suwarno@adriansyah.desa.id', NULL, '$2y$12$KMgXewufzPvwlPJU0QaDk.xhgMxVwezvG/4QK0hIN7DQ0Si9BbAUW', NULL, NULL, NULL),
(269, 'Mahdi Jailani', 'gunawan.parman@gmail.co.id', NULL, '$2y$12$l2.o.plLRG/4ZWFOCpseuuVBEGlCfaffX.gJurIJKyU5b.WgGGteS', NULL, NULL, NULL),
(270, 'Kusuma Jinawi Prasetya M.Ak', 'winarsih.eluh@gmail.co.id', NULL, '$2y$12$oEAAgOkB6QLt2CDMMucsY.pKN8xdl3YJ3p2oT2O7RBIISTmORvSpa', NULL, NULL, NULL),
(271, 'Caturangga Saputra', 'rhartati@yahoo.com', NULL, '$2y$12$izhr/nAzSOuEh0n3JR7oHuuVl5xIRkdWTpzByDKXKCdE0Y6HCh/dW', NULL, NULL, NULL),
(272, 'Dinda Rahimah', 'laksita.drajat@yahoo.com', NULL, '$2y$12$htCYyjeVyHbk90j69e/XtOLaCKzhDVIA3Y3xFLTOVT84QNVQGPuf2', NULL, NULL, NULL),
(273, 'Ajeng Betania Nasyiah S.Pd', 'prasasta.ana@laksita.name', NULL, '$2y$12$7sPk3bWZeKZ8FJvcalSdS.C9DVd0BfnKnEibmdTAbXYUKamvYayoS', NULL, NULL, NULL),
(274, 'Zahra Sadina Usada S.Sos', 'apuspita@pranowo.go.id', NULL, '$2y$12$etyN9klt15aV73DCoa56Ye2GVl5OHqxA626e/4IDBiyJXnW45q4Xi', NULL, NULL, NULL),
(275, 'Cinta Nuraini M.Farm', 'faizah.zulaika@namaga.biz', NULL, '$2y$12$eVruirRiywBoikiUdwfETO1zsqcS9ac4352iBaXXIxgrzuRG5BqJm', NULL, NULL, NULL),
(276, 'Paulin Puspasari', 'uandriani@gmail.co.id', NULL, '$2y$12$NMCBi82oahXGW2/4Nq4toef1NhP7zNOqKGXepXjeRZJ225zLW62YC', NULL, NULL, NULL),
(277, 'Respati Situmorang', 'rsaefullah@yahoo.com', NULL, '$2y$12$aH1J5wUCQZL12AnuxFFV1.AbjJCTL.4OXnXGMbUQpSS53qy4bnr0W', NULL, NULL, NULL),
(278, 'Putri Rini Usada', 'byuliarti@maheswara.co', NULL, '$2y$12$n7WjiSock6/Ebe8dU1tVeecFJ0NqbuKtZjRaYXIfo057zcPydlrF6', NULL, NULL, NULL),
(279, 'Putu Warji Damanik', 'lala.yuniar@haryanto.mil.id', NULL, '$2y$12$FY6pqDCrQAS3bAGsezI5quWQNnhkfIg6qJGMBZSfjYdj218L3GR6S', NULL, NULL, NULL),
(280, 'Hasna Hariyah', 'dasa92@firmansyah.web.id', NULL, '$2y$12$wTOTqF4KFe7UKTSF/8O5zO68ovlNvOjue6vdTVzyCTO0bhw9Eh.wa', NULL, NULL, NULL),
(281, 'Mitra Tarihoran', 'aaryani@gmail.com', NULL, '$2y$12$kt.wkPOEm07WvQOrYo33a.X/l/sZeEap7XBN1zb/x7FxWYjCk1MEW', NULL, NULL, NULL),
(282, 'Hilda Suryatmi S.E.I', 'zkusmawati@yahoo.co.id', NULL, '$2y$12$OHd.MIge2FoSk6TMMhhCXeyDPXCymy5A7G8UQesQyyULCCM90wG8i', NULL, NULL, NULL),
(283, 'Pangeran Pranowo', 'kuswandari.jamil@gmail.com', NULL, '$2y$12$cwI8SxpNKIMWIPmWSqT8te.an1xJQXaPU0P1GHdB62Q8RWEj2LO6e', NULL, NULL, NULL),
(284, 'Cahya Nababan S.Pt', 'rramadan@yahoo.co.id', NULL, '$2y$12$UdnMq8AZ3GKqkIwfaE/pMezGpB.08GFnV260/fv1Yl.p2MsBriV42', NULL, NULL, NULL),
(285, 'Limar Adinata Salahudin', 'osimbolon@yahoo.co.id', NULL, '$2y$12$sx0XIBQwsfgCOHsASh5q/eVk9QtYlWVLNjtsu3FfeCQvtmiT22kKu', NULL, NULL, NULL),
(286, 'Jamalia Jasmin Agustina M.Ak', 'ukurniawan@yahoo.co.id', NULL, '$2y$12$jgM9GEBDn8IoJ1Wr1fs77.PLZrQ1axHn7lcJWuuuNu9gKghHjFH7C', NULL, NULL, NULL),
(287, 'Sabrina Pudjiastuti', 'rosman26@yahoo.co.id', NULL, '$2y$12$TrUgUUtIUY.PzcsOnDyCHOy4wSasMNHmN01WiDttXO1fWU6U8uDMq', NULL, NULL, NULL),
(288, 'Siska Farhunnisa Utami', 'odabukke@mardhiyah.mil.id', NULL, '$2y$12$iFOEnWWAMjGlrPOmotyAjeHqpMf9xel1.wJRCGa8SPjIPawcDFyei', NULL, NULL, NULL),
(289, 'Cinta Shakila Maryati', 'tina27@wastuti.sch.id', NULL, '$2y$12$ZaPzzCRQKY5v91DkFPfsleCEcMLAywyjFFlorsRJW0ONMqd4liDZ.', NULL, NULL, NULL),
(290, 'Febi Hartati', 'lpurwanti@yahoo.co.id', NULL, '$2y$12$os1c.TSPcVvVXk.uGsB/XOE06fTzpCiZIsvCmDBrcLLZVgxtsn.gm', NULL, NULL, NULL),
(291, 'Iriana Usada', 'citra61@puspasari.ac.id', NULL, '$2y$12$v80ZawkPLWviaLIA3DY6WOiG4y9AERdpEgvsQfaRYVsQEN2uROZwa', NULL, NULL, NULL),
(292, 'Salwa Rahayu', 'mandasari.slamet@gmail.co.id', NULL, '$2y$12$ywkluNX9q6lEzzXs1UrKMe.G/MwdHkbpi9DVBLEV1ohi14X/5tZ9O', NULL, NULL, NULL),
(293, 'Karimah Hasanah', 'rmardhiyah@sitorus.asia', NULL, '$2y$12$Wox3BLVemxXyscygP3JI8udG4cPK3JDqrY6ZIVieUiBsEM.LCl6wy', NULL, NULL, NULL),
(294, 'Jarwa Anggriawan', 'juli51@yahoo.co.id', NULL, '$2y$12$/Y0q9fonFQEsMeOonr4gXuJbsFBDdyg.DqSsUzggCVOVjFLFEQ.mm', NULL, NULL, NULL),
(295, 'Sarah Mardhiyah', 'unjani.latupono@yahoo.com', NULL, '$2y$12$o54xcQWpWSy9XLKBSve0re66IkDAD1JAYZJxSL55YkGseDVgScefO', NULL, NULL, NULL),
(296, 'Maria Wulandari', 'laila35@hutagalung.biz', NULL, '$2y$12$uolKdzNXe9jUYEg0bpZPBO0p33eLPpq5uErC61oEXxvt7nGMkqhDe', NULL, NULL, NULL),
(297, 'Dewi Aryani', 'gading.firgantoro@sihotang.desa.id', NULL, '$2y$12$it4/GggoYvv3R2AKPaTsKe.uYM8hYe1jzBVUah6Qvsdpc03QfGGcq', NULL, NULL, NULL),
(298, 'Zulaikha Yance Andriani', 'ira.astuti@gmail.com', NULL, '$2y$12$gIsAJAmmVo6AMHrM8TlxWO9zpQ.Vz..18nXPGZaIuoNL9wU6294B2', NULL, NULL, NULL),
(299, 'Jessica Padmasari S.T.', 'wuyainah@yahoo.co.id', NULL, '$2y$12$2HZj/5g60WqkeDhh4J03D.o5KnVbVCNaK3PqS/m6/m2ZXw0Y3QjQC', NULL, NULL, NULL),
(300, 'Cengkir Widodo', 'nfirmansyah@hasanah.web.id', NULL, '$2y$12$XwUNUw0U.nTSMi2ZO0.J.es.7XUs/ERoyXgOCkn.uVI3WZJ.c94JO', NULL, NULL, NULL),
(301, 'Widya Anggraini', 'adhiarja64@yahoo.co.id', NULL, '$2y$12$q8cxhIltY4YKE4UOyD7mdO3fiOQgfa7mVuud9V/OKG28f.4XKi0kS', NULL, NULL, NULL),
(302, 'Kadir Maryanto Mandala S.T.', 'mahendra.rahayu@yahoo.co.id', NULL, '$2y$12$76yTEUSfrVtEQJMTN3Di9udfxiPvzIXe8D0XJ0GM509wtrqfH1GWi', NULL, NULL, NULL),
(303, 'Vera Safitri', 'xwinarno@safitri.or.id', NULL, '$2y$12$Iz45GwVMLzqyBu/qvsKIKeezUonTf7nXRUdqqHnhSg9waRA/drnkK', NULL, NULL, NULL),
(304, 'Belinda Puspasari', 'salman.wastuti@gmail.co.id', NULL, '$2y$12$8Jcve5OCukyIaOnYde7r8udwUyGD7hNVshAlU4B.mD7H3aQGDAery', NULL, NULL, NULL),
(305, 'Faizah Haryanti', 'adika.yulianti@yahoo.com', NULL, '$2y$12$mk5tzvmqkODoHrBYbYTZXegrBHkru8bmZl5Mwe0SagoqyufbVg7cu', NULL, NULL, NULL),
(306, 'Jamalia Sudiati', 'parman21@yahoo.com', NULL, '$2y$12$eQe31wtVd5GGBm8ZjqKS3.o0D8K7pMJpYSv9dIuyDFYm30AAstdwW', NULL, NULL, NULL),
(307, 'Nadia Anggraini S.Psi', 'zamira88@pangestu.asia', NULL, '$2y$12$PHohax9NRkrh0w8rtmL2UOKZrvcfkAuXbIOjce8XLLWi2AR7UM66C', NULL, NULL, NULL),
(308, 'Anastasia Hasanah', 'bramadan@gmail.com', NULL, '$2y$12$XExcYf.6PcvUjYC1VFonKuxyJm5BCgV94iExUM4/UwEA40aegBYAy', NULL, NULL, NULL),
(309, 'Tira Nuraini', 'kharyanti@yahoo.co.id', NULL, '$2y$12$jJivPaIJytBVp.gjamtnLuPbI04rawTZuqj//iDWkqVMDMNfm6qTG', NULL, NULL, NULL),
(310, 'Mustofa Samosir', 'adiarja55@sirait.asia', NULL, '$2y$12$HKzCINHmH0nRTw22oiTKlOMtDbD2f9WAo60ufiUqyN239COJesdBK', NULL, NULL, NULL),
(311, 'Digdaya Sitompul S.H.', 'bnashiruddin@yahoo.com', NULL, '$2y$12$I.m4/lmlTqaElqDMq7wxSuVR2SG2YVR5an5XX2Rgd.kIkf4L8oWXO', NULL, NULL, NULL),
(312, 'Ulva Zulaika', 'riyanti.nugraha@lestari.com', NULL, '$2y$12$3vz36kLKpRb/HKrb1ZbDZeZUBEP6n1NVl/0tQCHQrgWbOCXSrt2z2', NULL, NULL, NULL),
(313, 'Ellis Yulia Puspita S.E.', 'jnashiruddin@pratiwi.in', NULL, '$2y$12$7S7oSqH63W0SlOyjfqtTp.Xx/IowKkVbag4tfCYj.ZJTPoNnKGOWq', NULL, NULL, NULL),
(314, 'Karya Thamrin S.E.I', 'pudjiastuti.hardi@gmail.co.id', NULL, '$2y$12$RsX6QqJHD0StjdwgcHZo1e/tIsP4WkF40h2QSmHa0Da.Su7QFtOE.', NULL, NULL, NULL),
(315, 'Rahayu Hartati', 'balapati46@zulaika.in', NULL, '$2y$12$nhA2Ocf67Qb8B0VXNnLkvegjtXBAW5aRBRe3pm8cfV/A3/kxbUh6y', NULL, NULL, NULL),
(316, 'Mulya Sihotang', 'opertiwi@gmail.co.id', NULL, '$2y$12$HmLn0samByFBlQlu61RaIOzVID4ffx7vUq6GjQA1mutG0x2nO28lq', NULL, NULL, NULL),
(317, 'Olga Lazuardi', 'mutia00@winarno.biz', NULL, '$2y$12$kX84s63xbV4nkK4gFzw8teYimjeasOeQPCy/CQ4u2t6ly3vPk4GGe', NULL, NULL, NULL),
(318, 'Nilam Ellis Farida S.I.Kom', 'tedi26@gmail.com', NULL, '$2y$12$tyAatjzAQgt//mqUslix8eWgFXLwckwMnLgKp0odveL6DW4aT4TRu', NULL, NULL, NULL),
(319, 'Elisa Utami', 'inababan@gmail.com', NULL, '$2y$12$5ApgAb35uWJTUoIh/Ym8NuyeYVvPd0j8MrQN0vGSzgHCD6KSJQRre', NULL, NULL, NULL),
(320, 'Jasmin Melani', 'uchita94@budiyanto.co.id', NULL, '$2y$12$6YdCj2Lc4oSVgpNoNGnS8.BMkPR42ITx8MzunOmxQFXa5WpLBhEMG', NULL, NULL, NULL),
(321, 'Kezia Julia Hasanah M.M.', 'iwibowo@yahoo.com', NULL, '$2y$12$5hs4JwHCOzQ0EWTChMobR.kOBL1WCTlUN5dPlJEVmz4LByLZbdXKO', NULL, NULL, NULL),
(322, 'Ika Kusmawati S.Gz', 'ibrahim24@hassanah.co', NULL, '$2y$12$.e2z82pWcnhLM91DgWYKB.sHDs4UhX7nEF/mRFFXhhsR3Y5gCXNTG', NULL, NULL, NULL),
(323, 'Hasim Bagus Nashiruddin', 'karsa.latupono@yulianti.biz.id', NULL, '$2y$12$U8nCcjp5tHhqGaie80nSU.toO2cb4LdBxc74A4h5pOfQ4Fn6aEPF.', NULL, NULL, NULL),
(324, 'Titin Devi Safitri S.Pt', 'vanya.jailani@mustofa.tv', NULL, '$2y$12$erZ7A/wAeNYflVgbcMDWLe5b9ULZSIJTT3jRok0L/Q5n0LYXqhyRW', NULL, NULL, NULL),
(325, 'Febi Handayani', 'vmarbun@gmail.com', NULL, '$2y$12$BYfGLsZ8TnyWkR1qusGIbukike9m1l92HcXcNfL8H2QjL7e0raP3q', NULL, NULL, NULL),
(326, 'Oskar Tampubolon S.Kom', 'ami02@gmail.co.id', NULL, '$2y$12$RZj7AT23cbG6hAjcYx9gfeuK.VbwO0t1unyksAO/ELnKX4pb3EKOu', NULL, NULL, NULL),
(327, 'Ikin Iswahyudi', 'titin81@kusumo.go.id', NULL, '$2y$12$rLi6jtJdlXlIhTd6dt.h8Ofu15nhJet8PlapROwQskhIJXtBoEcxm', NULL, NULL, NULL),
(328, 'Gaman Rajasa S.IP', 'anita19@ramadan.biz', NULL, '$2y$12$cg8ruf9t5nyRJtu/zyxWgey5ulbpKl8DcRY8KPKNA0wvNtUT0xAWi', NULL, NULL, NULL),
(329, 'Faizah Pudjiastuti', 'kadir75@gmail.com', NULL, '$2y$12$739wP6BiCJsDRg10c6IhZOZCLTjgi84.IHAN5WSqdFHSFyj3Whke.', NULL, NULL, NULL),
(330, 'Yosef Marpaung', 'vyuniar@yahoo.co.id', NULL, '$2y$12$5w9veDJ5vrBEhjVPXhqB0uCLEWwXFZpoq/0smaLIXrEuZSliW2gx.', NULL, NULL, NULL),
(331, 'Eka Irawan S.Pd', 'lwulandari@putra.web.id', NULL, '$2y$12$C0jMZs92Z5z7FbDEBeVDS.qzCheAPjZpvt.7ia5uM/mHAq4HPTOge', NULL, NULL, NULL),
(332, 'Ani Hartati S.Pd', 'dimaz14@yahoo.co.id', NULL, '$2y$12$tNrEl9Zs3ZaLzuee0m6WBe6UabVr8.vSS6WBPMyykRf2VN.bil/fu', NULL, NULL, NULL),
(333, 'Hafshah Wahyuni S.H.', 'hutasoit.gawati@usada.desa.id', NULL, '$2y$12$5ZY3yJ.9USs1iokAia/RRePpbpSaj10l0RfVVDiGaU8khpU/ZPQ7S', NULL, NULL, NULL),
(334, 'Hartaka Sihombing', 'putri.maryati@yahoo.co.id', NULL, '$2y$12$7gmAAwYSQIUFWqE.6x/VheqV6i6n0W1JfKWbkvO14FNo7KfqEDnHW', NULL, NULL, NULL),
(335, 'Harsaya Cemani Megantara S.H.', 'yuliarti.almira@gmail.co.id', NULL, '$2y$12$7NnhKR7A2L/.V/hlv4De6egdaJT5meTI01Z.H0YJYq.xUt5njyYze', NULL, NULL, NULL),
(336, 'Sari Elvina Safitri', 'mutia15@yahoo.co.id', NULL, '$2y$12$n0MdGRXuxRGeg6/WtMujCO3mZUZRMrRHg5aAlcvjqK1CKTPMPJyD6', NULL, NULL, NULL),
(337, 'Zahra Kuswandari S.Psi', 'rendy42@gmail.co.id', NULL, '$2y$12$NjsRc6aPY54r77.RnuwbmunBoh4XsDf4.tXvdaofcT1PgnMMPtiGa', NULL, NULL, NULL),
(338, 'Darijan Hardiansyah', 'ywinarsih@gmail.com', NULL, '$2y$12$SVoeDyCIEwd6HzGLnD31dORiZe1tUudTCxSWZkj5Mm8f6sYoWuvP6', NULL, NULL, NULL),
(339, 'Elisa Susanti', 'upranowo@novitasari.or.id', NULL, '$2y$12$ylsfCZQIZk3EHhg7CB3sNulYSjH3qOgHUdh1VGhGMilcR/BFmxrEq', NULL, NULL, NULL),
(340, 'Adhiarja Nababan S.Psi', 'pangeran.aryani@samosir.id', NULL, '$2y$12$BIJS9jYNwodQX8mQV4AiSOFu.LWJ0U7j2f//7TC8XFnBYiSQvGRCu', NULL, NULL, NULL),
(341, 'Yessi Namaga', 'zelda58@gmail.co.id', NULL, '$2y$12$8OXwD.XI7CgfXKNNKpKuJO00am6l9/yDhm5StN6HU1e3YEbihrd0q', NULL, NULL, NULL),
(342, 'Ajiono Samosir S.Sos', 'slamet.winarsih@siregar.id', NULL, '$2y$12$tocU5mC544mh6huPS35DzOlcuAXMQCN0VtHKMTBO.zEM28uvtnWqi', NULL, NULL, NULL),
(343, 'Ajiman Santoso M.M.', 'vicky70@yahoo.co.id', NULL, '$2y$12$V.z0mVfXrXR1nxnXPZ0EXOuEcK34ySpEQb1OkKYyv6I6lOx9Umkmi', NULL, NULL, NULL),
(344, 'Karen Nasyidah', 'bakiono.novitasari@andriani.go.id', NULL, '$2y$12$iXRpwkqgsYJLIDWbw/g/wucZSbcq5kl.KNWN5yKMp98MFsUJ16H2W', NULL, NULL, NULL),
(345, 'Maya Lailasari S.Farm', 'dalimin72@rahimah.in', NULL, '$2y$12$hbrHlZ2UO.t/q/6oK0Wirecb5tdYFzti1Jl/srgmS/w.k9sYiXGQ.', NULL, NULL, NULL),
(346, 'Cakrajiya Najib Hidayanto S.T.', 'smelani@natsir.name', NULL, '$2y$12$J78hgzmLmpLMg9cncVPyvuiMvlJXXEiro.n4Eb.aAokfaBChy.S0G', NULL, NULL, NULL),
(347, 'Maimunah Palastri', 'hesti.pudjiastuti@wijayanti.my.id', NULL, '$2y$12$zOm5J6nvQSW2oFrEbhb4j.DxVxs.GRaRpcaLqJuaZVC32Ow1H9wGG', NULL, NULL, NULL),
(348, 'Eman Prabawa Januar', 'tarihoran.vera@suwarno.co', NULL, '$2y$12$UHMnEs2bgfrTBF2oNVXKNOdnZaA2pCsiA/vSh.OG8jSvn9XHGCE1e', NULL, NULL, NULL),
(349, 'Yoga Slamet Maulana', 'gilda63@aryani.net', NULL, '$2y$12$ob0DAKdHF7a9k8NBoIvcYe0tasESgA3F82D2JVJX9w94vuROESCWK', NULL, NULL, NULL),
(350, 'Gabriella Raisa Anggraini', 'frahmawati@yahoo.com', NULL, '$2y$12$tOxZj7y.nKd5KUp79FxUVeBtl5T2JfqBDcKzsoKSF.X2jnReL6TDG', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(351, 'Sabri Dadap Sirait S.Farm', 'capa90@nasyidah.tv', NULL, '$2y$12$mo0/v/58Pwh1IRB3oMbWmOHu6YKp5GnWweJNhGNYAJYFOh.YddMhu', NULL, NULL, NULL),
(352, 'Martani Iswahyudi', 'kadir.damanik@gmail.co.id', NULL, '$2y$12$gSK5uRwdIWz1sI1X2e8wLO0eZVXxvf2KfzOW7cqbZjGNAzfLuzjJK', NULL, NULL, NULL),
(353, 'Zulaikha Nuraini', 'hpratiwi@yahoo.co.id', NULL, '$2y$12$C0HTsb5d6k1Z72zouJLrYeb8i1hy/M492DJz3tMsCI/4p9ABW8EsK', NULL, NULL, NULL),
(354, 'Kambali Jail Damanik S.Pt', 'jaswadi.utami@gmail.co.id', NULL, '$2y$12$kkbyKIXuSCNZ80hSDo3kgOm/2ZeGcLRUQH.EjEkuzunpAydlJD9/2', NULL, NULL, NULL),
(355, 'Cemani Sirait', 'daryani.winarno@mandasari.desa.id', NULL, '$2y$12$CKpVEX09S03IrJ0miwga3OqgIwdmlCRwdTLfhYEeIaeAVZ7RJGBIe', NULL, NULL, NULL),
(356, 'Hamzah Wacana', 'gunawan.harto@gmail.com', NULL, '$2y$12$sjPAObabua0447Nv8IGXqOUp6rEyS4.W3Ix8gU45Sg6Ti3DN/dde.', NULL, NULL, NULL),
(357, 'Gangsar Hutasoit', 'patricia17@yahoo.co.id', NULL, '$2y$12$K5yHf6CIZhPnNWHyXEO6FuyfGcCH0LrV197lARtv/Q41Xal2LxcX2', NULL, NULL, NULL),
(358, 'Ivan Maheswara M.Farm', 'nugroho.hasta@yahoo.com', NULL, '$2y$12$b5FdH09Y9NbrSeY2qoOPVeY4RZWC5qIWuxFtHQvCJ4Oa9cdumDVH2', NULL, NULL, NULL),
(359, 'Hamzah Daruna Utama S.T.', 'mhastuti@yahoo.co.id', NULL, '$2y$12$SAvl6bPkCle91GzapYWbsOHrc7Mzd8sEkz4PD.LayO6kvI1z3glhe', NULL, NULL, NULL),
(360, 'Vivi Wulandari', 'jamil36@gmail.com', NULL, '$2y$12$Btp9hmNH.koPn1U0RNZM2e.ZkmHGs5/ba6EoZnhpV/Eo5Zoc6wvtq', NULL, NULL, NULL),
(361, 'Patricia Yance Nurdiyanti', 'rahayu.prayitna@gmail.co.id', NULL, '$2y$12$FlDMOmBfqLC84SyKTn75C.D2088ezmVS7sGMBeslfFLwpaGM9sZCS', NULL, NULL, NULL),
(362, 'Patricia Cinta Novitasari', 'mujur74@gmail.co.id', NULL, '$2y$12$f4b9H0UmyjigvNt.nyKNxehgVZkuvY4oClA.ALexqFpgSPx8.FqGW', NULL, NULL, NULL),
(363, 'Dadi Lutfan Firgantoro', 'nadine.pradana@gmail.co.id', NULL, '$2y$12$LBEasGnioX7gqYMNM82HWezNLmvJb2d22BnNrkFYg5Ix4X.1kpATi', NULL, NULL, NULL),
(364, 'Ida Widiastuti', 'putu.prasetyo@gmail.com', NULL, '$2y$12$lzKnqLAU.A2sG62Pgtgr8OTbxp83oYk3kS89wT2Pir6oiMIKHbTEi', NULL, NULL, NULL),
(365, 'Wardaya Caturangga Najmudin', 'latika.hutapea@marpaung.id', NULL, '$2y$12$nYz.L3F2ksBnJlWjVlVdVeHZUjqGKRrWMbUk5IM5Cr9WJxK.oqytW', NULL, NULL, NULL),
(366, 'Mulya Gunarto M.Farm', 'mandasari.ellis@yahoo.com', NULL, '$2y$12$gsG/syUf1e6FZVYVF/45q.I/0LdSOzhLbMynXIwbS2t2MUsoHTC8u', NULL, NULL, NULL),
(367, 'Genta Rahayu', 'coktaviani@rahmawati.org', NULL, '$2y$12$.f1I.LrGHtsP4.wPNaaoJOnAWvo0//AoXO8elBJn9/h8MDY19W3/G', NULL, NULL, NULL),
(368, 'Elon Gunawan', 'ika.usada@waskita.my.id', NULL, '$2y$12$JsO9f.l5NxCKAdDTBJKjpuWWPLD3vUWyX.P0LnT3wtinqUmi7zxuK', NULL, NULL, NULL),
(369, 'Rahmi Maryati', 'pratiwi.radika@maulana.name', NULL, '$2y$12$0JJNIWSsKyk9MBgw6sQTO.JcMr64Df9XhhQSvCiQ67gV9dIFl.5XW', NULL, NULL, NULL),
(370, 'Wisnu Gaduh Maulana M.Pd', 'nashiruddin.shania@prastuti.id', NULL, '$2y$12$ndDxDaY8zMMgxdYghjek2Ob0CmRmLyEv4ybxpHBW6W291KFJDfV/y', NULL, NULL, NULL),
(371, 'Jaka Galiono Rajasa M.Ak', 'wmaheswara@hassanah.asia', NULL, '$2y$12$.M9sDgyevJ/noMk2SGVU5.J/sbpeprmtKw.477szBnppnkUp5rxuW', NULL, NULL, NULL),
(372, 'Bagiya Sinaga', 'ikin.ramadan@gmail.com', NULL, '$2y$12$eijBTxTzhs3JGeMepv85m./UoZ.1TZddXfOcDzfBcbrt2agYcOcFK', NULL, NULL, NULL),
(373, 'Mila Rahmi Mulyani M.Kom.', 'ohariyah@suryatmi.biz', NULL, '$2y$12$QKqSjoWtmV5bBWO8N4rO1OGXF8lLuM4TekBCkCKiFUoG00B5ewtJ6', NULL, NULL, NULL),
(374, 'Ida Victoria Fujiati S.Farm', 'hardiansyah.restu@maryati.co.id', NULL, '$2y$12$l8CTZI4LNyOAH5dHsYx3UeKBQ33IdrypnzrzaE48xVqhZkbC7JU5.', NULL, NULL, NULL),
(375, 'Kemal Nrima Hutasoit', 'othamrin@yahoo.co.id', NULL, '$2y$12$mHGzoJQUrIWAFPSxbCXbVO/IBmaz8TsutG3sJrDOxGxxetj1z4Ixe', NULL, NULL, NULL),
(376, 'Mila Suartini', 'hadi.saefullah@maryati.go.id', NULL, '$2y$12$UeePVO/kJQyL0QCoJgZITeN6TL8tG6cPNc.YW2BY2A2GGAvYXElsu', NULL, NULL, NULL),
(377, 'Silvia Ami Nasyiah', 'wijaya.gamanto@gmail.co.id', NULL, '$2y$12$tEQKh9MbA9TpLwBJdRyZCeuUu1rW48mHUcj.motkzMCkzdPgBmRM6', NULL, NULL, NULL),
(378, 'Tami Uyainah S.E.', 'gunawan.yuliana@yahoo.com', NULL, '$2y$12$XhVigCLLeZn3NdHSlPY.1.oX7r7S5oPQNHqNh/1WlrDbqrvhOsMXS', NULL, NULL, NULL),
(379, 'Paiman Pranowo', 'astuti.yuliana@safitri.co.id', NULL, '$2y$12$NjOS1spqkiG//MlH14PhSeOMTSYTuZwao2izc7KmxFE6L6NEixUBm', NULL, NULL, NULL),
(380, 'Marsito Dono Saefullah S.T.', 'citra.kurniawan@pratama.in', NULL, '$2y$12$FVFBc7ltgBrIuxkSUE8tZORTkDVhbKN.UPFALdOTWxw2NHKaGXdSO', NULL, NULL, NULL),
(381, 'Leo Zulkarnain S.E.', 'susanti.gara@gmail.co.id', NULL, '$2y$12$2sD3zuhiT8gLiW5jgk7nW.J7iOqfCDJ4GxaRo6Nd9vC8yV4yjmSJW', NULL, NULL, NULL),
(382, 'Safina Purwanti', 'tari45@gmail.com', NULL, '$2y$12$lGvx65EWEwpodMQUUiTwDezW8UYVeIfpTAGbmxrPqaGCoydd3N2ve', NULL, NULL, NULL),
(383, 'Okta Prakasa', 'leo14@yahoo.co.id', NULL, '$2y$12$KzzrNHXQUe6bN.RV32BAAeVR1C0JHYWV1nXOEJosVMrYp53t1Zt/S', NULL, NULL, NULL),
(384, 'Alika Handayani', 'tkuswandari@yahoo.com', NULL, '$2y$12$MJRg/rkHUEnrxrzxcdJZsOfvYZEvxFs9XVW6YRU15K1Mkz1wmUR.2', NULL, NULL, NULL),
(385, 'Indah Novitasari', 'citra11@sitorus.id', NULL, '$2y$12$1Ju.8yGBq0LUZ6NW6CliSO1VVcRyDOGdCvnvN635f2cw/LYB1Tn/K', NULL, NULL, NULL),
(386, 'Wage Abyasa Firmansyah M.Ak', 'tantri.hasanah@kurniawan.web.id', NULL, '$2y$12$QAZRlcfBX1n/PrjVrAErruhj/pnBi5FJkpBrOduK.ShRy7u5Yekju', NULL, NULL, NULL),
(387, 'Nrima Dimas Gunarto S.Kom', 'harimurti02@thamrin.id', NULL, '$2y$12$9M2AHsZDY2ACbyPI.RcKjOt/6qHYtc7sY1/gqEWTT4FfDClcc2vou', NULL, NULL, NULL),
(388, 'Bala Gunarto', 'osaputra@gmail.com', NULL, '$2y$12$gSPsV7jl2g0eah/zxlNY8.JBuaEP8xTqnn.F.bDbK0/uqVMHdMUmW', NULL, NULL, NULL),
(389, 'Sabri Kurniawan', 'nainggolan.naradi@gmail.co.id', NULL, '$2y$12$6LT2S7xp2B6HPsXcOH1g3OavdtyLeBgQbaPu4qJa1H.BQQ2OxC2fe', NULL, NULL, NULL),
(390, 'Lukita Wibowo', 'fathonah.namaga@yahoo.com', NULL, '$2y$12$MjKc2XewgGtywYiAxr1FL.pzqBSCWJHWjlzkAwo/7q7ORU9ERcOb.', NULL, NULL, NULL),
(391, 'Galih Niyaga Mansur S.E.I', 'clara25@yahoo.com', NULL, '$2y$12$AB4sdSjxf20BiHEJeIys/u4fn.Falqh.tgl/5x47ulsKY9BrMEIF2', NULL, NULL, NULL),
(392, 'Ika Gina Widiastuti', 'alika26@yahoo.co.id', NULL, '$2y$12$2o6fptvjq/vqVsvyLdoc6el9UVGoQijsZOJo7UFhIL3z1pP2IGkSG', NULL, NULL, NULL),
(393, 'Taufan Prasasta', 'uwais.pia@yahoo.co.id', NULL, '$2y$12$JNG8Vn/hbXZo5/50CUEDcug.FVVid3m3o90nVfnfhZU88uMQQISiW', NULL, NULL, NULL),
(394, 'Farhunnisa Handayani', 'saptono.jane@hakim.or.id', NULL, '$2y$12$h5EpFn2uE8OGHEcw1ZUFe.Zbzze.I8z3ov0UT77YhAufRJrsSi/NG', NULL, NULL, NULL),
(395, 'Jaiman Sinaga', 'iusada@zulkarnain.co', NULL, '$2y$12$jviTQ8wE.MfBPIT2ifrkOe6cC2HxcM1XGAGhR2UsQrnDQR77PTClu', NULL, NULL, NULL),
(396, 'Restu Astuti S.Psi', 'candrakanta.maulana@nainggolan.web.id', NULL, '$2y$12$0gFHp.ygnTV3Gl.4/O/zv.tEJHwodNzKbd7nbczz1PDtdjHXITbrW', NULL, NULL, NULL),
(397, 'Elma Susanti', 'kusuma22@yahoo.com', NULL, '$2y$12$c/Lv3d/vOwk4VxiHp7QTN.V1t7.EeX87w96Q026DxrTFXUmN.iYGi', NULL, NULL, NULL),
(398, 'Septi Usamah', 'ijanuar@gmail.co.id', NULL, '$2y$12$g0j83C/hI7D45Y6SnNpV1.ScfD5ZJ0FEaaET6IbV9mqb7Qg1TD24W', NULL, NULL, NULL),
(399, 'Yessi Mayasari M.TI.', 'danuja.fujiati@andriani.web.id', NULL, '$2y$12$syWJjJnUeKekxR153ATEW.TNtNT1khdxYx34YeL2CG53adHD/nyb2', NULL, NULL, NULL),
(400, 'Yani Rahmawati', 'jmandala@yahoo.com', NULL, '$2y$12$3mqBz66UteCcgfPeaz4Gpe0r6mtUE3s7Hc5C4stKr8sjZcaDG0O86', NULL, NULL, NULL),
(401, 'Ibrahim Nyoman Tampubolon', 'halim.yosef@yahoo.co.id', NULL, '$2y$12$9EKqiA2pSfUjLuPUPr31cu7eRsGGTg8X5dHXBqPaJTSvyD6O1RLNW', NULL, NULL, NULL),
(402, 'Balidin Natsir', 'bmelani@suryono.my.id', NULL, '$2y$12$3dV5eHU5xD98uOJ56mfUG.fFVdRsD/oYNBZq1jJHC3xiOP8rYYOyW', NULL, NULL, NULL),
(403, 'Jail Warsita Pangestu', 'wirda.astuti@gmail.co.id', NULL, '$2y$12$HMdlzbBdmRXSvrVQNKAz3ujONLc1hCV/BmnGvMPRUQSIkyXTM.Wx6', NULL, NULL, NULL),
(404, 'Hilda Rahayu', 'zsiregar@gmail.com', NULL, '$2y$12$1nzdh162i5lklBNj2hxtJeUA4czPMkMg/uP0Rmb5cNnBveTgS9aJK', NULL, NULL, NULL),
(405, 'Violet Humaira Wulandari', 'saiful75@gmail.com', NULL, '$2y$12$Ca4erWZUbLECyls9RQyTH.x2jtHfE1lRfA049Q9wIc8IhDrs3..Wi', NULL, NULL, NULL),
(406, 'Mahesa Salahudin', 'sihombing.cahyadi@gmail.com', NULL, '$2y$12$9mz3jbrIfTV8gc1HB6CcaOc7x7w1kR8UD4xrd4.TxqJZeYZiZRaji', NULL, NULL, NULL),
(407, 'Hasan Rajata', 'firmansyah.luwes@yahoo.co.id', NULL, '$2y$12$gA7bSxWF/Fuoufqxxw/W1e8Y4m1QPfbIjLOXA28AFN8P4OQpQbjsO', NULL, NULL, NULL),
(408, 'Xanana Labuh Permadi M.Ak', 'aisyah.pranowo@prayoga.go.id', NULL, '$2y$12$yT4GjiFYJarwBiG7LuDIKOHgLS9dZV37Wa1KVp1mx1AYecyyguCje', NULL, NULL, NULL),
(409, 'Mulyono Dirja Maulana', 'asmuni70@nurdiyanti.desa.id', NULL, '$2y$12$RpFLxwLkGJ.ld7UZvT0pb.NHCsYpy.dQ8BSNWjuPsr1HZnXFNLHVC', NULL, NULL, NULL),
(410, 'Dian Hasanah S.IP', 'namaga.tina@gmail.com', NULL, '$2y$12$xvAHszYVZAwzMBimNV0bZOq94p6rxDFl6l1QZKj0FBzDuP4L7Gmt2', NULL, NULL, NULL),
(411, 'Mujur Hutapea', 'zaenab75@yahoo.com', NULL, '$2y$12$ZkC29T5pJdTtZTVLTfmh5uyffSgrZPHB25ZJ5Q.YuD/.b0B4Ic7sC', NULL, NULL, NULL),
(412, 'Vicky Yuni Pudjiastuti', 'osusanti@gmail.com', NULL, '$2y$12$J1KQzk0sukN0X7W/Zk.YVeci7oSZ2ggcKokdLZLjPcikx2/sWUe5O', NULL, NULL, NULL),
(413, 'Xanana Iswahyudi', 'kusuma31@mahendra.mil.id', NULL, '$2y$12$lWCHwTS11EBSvefR0mzflO00QV5GPKcpCwCpFy5HYRKvsvQSY6sLi', NULL, NULL, NULL),
(414, 'Hesti Tantri Puspita', 'ratih.thamrin@gmail.com', NULL, '$2y$12$oh78X/3nK4cpXwmmdKiFuO8FuSGBf.PSRd/QfTXriXP7tHOhKFFBC', NULL, NULL, NULL),
(415, 'Rahmi Juli Safitri S.Pt', 'kayla.andriani@gmail.co.id', NULL, '$2y$12$ruEz6sxHpyI3pY80lmDwkulcpVR0lsMEgyVn/NxSQ67CvRGNZsGi2', NULL, NULL, NULL),
(416, 'Emong Prayoga', 'kanda36@gmail.co.id', NULL, '$2y$12$YmioMhFybou3BVARyLUjxejPcHHsv7baRC02FNgKS30r/yq3GNu3m', NULL, NULL, NULL),
(417, 'Zelda Namaga', 'ehartati@gmail.co.id', NULL, '$2y$12$/0CJ1GYiIUeLzrEBd7xvzueysF79BhuZsrz8NNqf719QWDV51bWh6', NULL, NULL, NULL),
(418, 'Ophelia Andriani', 'wibisono.jamalia@gmail.com', NULL, '$2y$12$NviyrpxuAUOgTiueYWKltuBwRDg.7yZVJ6QulR/h3DClZUF9IrD5K', NULL, NULL, NULL),
(419, 'Tugiman Hutasoit', 'melani.wadi@pangestu.net', NULL, '$2y$12$4BGEWKAOlBu9iMXPQlInEO3fJWcH8SPdopFwTFp3FboY8Q6xhzZ4C', NULL, NULL, NULL),
(420, 'Maya Hassanah', 'praba.megantara@siregar.co', NULL, '$2y$12$uXhE0wIZlNZFLyEiwIS3f.VQ7.NcBhk8CNemYasbBbL33MDINpSau', NULL, NULL, NULL),
(421, 'Irwan Haryanto M.Ak', 'dalimin.haryanto@yulianti.name', NULL, '$2y$12$RzjQ.6aT0EenVr9S.oYWye5o2ko6tdKrSW/AwI7nRygiDd4gRP5WC', NULL, NULL, NULL),
(422, 'Taufan Hardiansyah', 'saputra.edward@narpati.name', NULL, '$2y$12$pgxQP9qZDikprL4O5lvni.kEeJTnnxm8PKGxK.qb2Kp7jT7hj3WBO', NULL, NULL, NULL),
(423, 'Uli Oliva Wahyuni', 'winarsih.kayla@yahoo.co.id', NULL, '$2y$12$mVSapKp.PkASBgbLQsgU/O7A6ZGVerwzhlJpKE/1v3rRmNk3Vnjx2', NULL, NULL, NULL),
(424, 'Ratna Hastuti S.Sos', 'mwijayanti@simanjuntak.org', NULL, '$2y$12$XOe6xpKlWwi2.FNAZnJ2/OK3ZcvMnuC2y7WCFN/Kmt1ybj4L5pJYm', NULL, NULL, NULL),
(425, 'Dian Rahmi Lestari S.Pd', 'qori30@yahoo.co.id', NULL, '$2y$12$tLUu.5rxNmnDA29/JExLyuZlQ4RISIiO3REoMNyUHaKoZY7O3SCJq', NULL, NULL, NULL),
(426, 'Tira Suryatmi', 'hpuspasari@yahoo.com', NULL, '$2y$12$uK0qxfELXQpVTGhORzgICuVPRJHTj8eg8w0kun/b4D2bKn4c7WEJm', NULL, NULL, NULL),
(427, 'Bahuwirya Cager Nugroho', 'jsafitri@gmail.co.id', NULL, '$2y$12$ILuD7m2Nl7L8qQmkRbUYJua20Aq067xqXuER0SNycS8WOu6FzodwC', NULL, NULL, NULL),
(428, 'Karta Natsir', 'skusmawati@yahoo.com', NULL, '$2y$12$khjcZJ3Wd/f.btM6z0ckve7xFlJvDbZD8nTlSW235NqpgMmvizwBS', NULL, NULL, NULL),
(429, 'Ayu Sudiati', 'ivan33@winarsih.biz.id', NULL, '$2y$12$oezCnrbdNwg05YmwnWAKNO/WPneNh7Zs5BpGJUKnWZF6vVzC4mHJu', NULL, NULL, NULL),
(430, 'Tasdik Prayoga S.E.I', 'adhiarja.prasetyo@gunawan.net', NULL, '$2y$12$s/vxMaYMLqIIX5wl1aT4VuPdiewrls8OsxAzVY6tnZ5KnLfK8U01a', NULL, NULL, NULL),
(431, 'Faizah Paramita Utami S.E.I', 'labuh.yolanda@yahoo.co.id', NULL, '$2y$12$N/2l3SZF6cdmSbQ5DJ6H3.mxCIiFbGRUmpk.GFovtNTA6TS8htpb.', NULL, NULL, NULL),
(432, 'Silvia Mardhiyah', 'hidayanto.iriana@yahoo.co.id', NULL, '$2y$12$ZkLSKdCdPJrSMqsjTvGntOIkFP6z0E4Z1aEN.TwNuCRjEU0nKI5ra', NULL, NULL, NULL),
(433, 'Silvia Ilsa Hariyah', 'daliman22@yahoo.com', NULL, '$2y$12$e63.uTHdpIcWH9yNTRjfwefaaszqe67BUgNGM2BKcITxQeXW29pXa', NULL, NULL, NULL),
(434, 'Chandra Alambana Tamba S.H.', 'wani.andriani@mahendra.biz', NULL, '$2y$12$vXrv4Xh4sIzrndABsWTcpe6JmTgGhqGYmLwXs4y0wNdK4.bEt.ei2', NULL, NULL, NULL),
(435, 'Padma Wijayanti', 'qwastuti@palastri.or.id', NULL, '$2y$12$2vHlFdYScy5jSU5a9KZ5le7xFekDhbevba7HfYvwdtK6CxtavRSuC', NULL, NULL, NULL),
(436, 'Warta Hakim', 'vbudiyanto@mayasari.desa.id', NULL, '$2y$12$9LMWQenOvAIUXcZ/JCzYM.F3SwDhmvCRGvxX0Rj/oN1Wa1QYsE3pm', NULL, NULL, NULL),
(437, 'Rina Rahmi Nuraini', 'efirgantoro@hakim.or.id', NULL, '$2y$12$DWz77rErjX1i863j00x/ZuiTUTEch75mf6e0D07weAen4oPRRovFa', NULL, NULL, NULL),
(438, 'Pardi Widodo', 'maras35@gmail.com', NULL, '$2y$12$.45d3JcYJNKWEKaydinpY.cMED5WJ0oCP9UrIlcCivtV3F1VQEvam', NULL, NULL, NULL),
(439, 'Vega Empluk Winarno S.T.', 'khakim@aryani.biz', NULL, '$2y$12$sUKRvM4vgRTIw0ML8GKNm.0mRJMUixn90q6nbsLohcBUKZNjiXT2K', NULL, NULL, NULL),
(440, 'Daruna Catur Wibowo M.Kom.', 'ghutasoit@sudiati.asia', NULL, '$2y$12$O8awgR2oTLeYXF6tcVSPVO9vrTE/ZYMqFkJzUw3Ic37/mCz0OhQUK', NULL, NULL, NULL),
(441, 'Harsaya Sinaga', 'rriyanti@gmail.com', NULL, '$2y$12$e/shjkVLotITWI6W5WelIOpYUCJ/b0i.moeXKqmQ9KhAaK4aA9ZLe', NULL, NULL, NULL),
(442, 'Irnanto Nababan', 'kanda.utami@firmansyah.net', NULL, '$2y$12$yc7r6SN/jMU9FTy0cAe8.eNLOGJZ3s9zux7fVHTpODFM1TyxKnG1G', NULL, NULL, NULL),
(443, 'Erik Bala Budiyanto', 'ulva76@gmail.co.id', NULL, '$2y$12$pbKjSk7khni1NaCPQdX97eMhBlm.UVF0oaEYtFGe2BGvJ6CA66Ara', NULL, NULL, NULL),
(444, 'Kamila Restu Suryatmi S.E.', 'vivi.haryanti@purnawati.tv', NULL, '$2y$12$33ffvROp78I4mpQlEWlA/.hjagQWUTXkU4C5Gfg08FYjNB6f.QlKi', NULL, NULL, NULL),
(445, 'Kairav Januar', 'januar.cagak@safitri.asia', NULL, '$2y$12$/Lh471s5kJ5gHxrCpKP2K.wQmWDBTlVyd1pTFFudShAeYCviDcot.', NULL, NULL, NULL),
(446, 'Hasim Firmansyah', 'vwidiastuti@gmail.com', NULL, '$2y$12$lOHTX8a3wUzqJwplbkZUgOeljnjzZGkOB1EoIJUSVtKIzat3vO4sO', NULL, NULL, NULL),
(447, 'Mursita Mandala S.E.', 'tania.halimah@waluyo.ac.id', NULL, '$2y$12$dqeGar7zG4XnzUVLMr0cMO0KS/CbvbxVXmtXOn6njuMuFIqvZ4mhq', NULL, NULL, NULL),
(448, 'Dwi Lukman Saputra', 'palastri.daru@gmail.co.id', NULL, '$2y$12$qshNLCpDM7TFJD6Fow7IK.8JqXD5PlpvUEt/Wf.sSNilWL825sIT6', NULL, NULL, NULL),
(449, 'Amelia Aryani', 'nuraini.aditya@gmail.co.id', NULL, '$2y$12$.rm.CtXKlhLpqjbiKvxthelrkFOIWOMAjmLCW88WWV4TIkNo0jfWa', NULL, NULL, NULL),
(450, 'Liman Prasetya S.IP', 'gabriella64@yahoo.com', NULL, '$2y$12$qy717B6gYeWUxndZHQ0yy.PyLZd16BxDnx1sznKRLL.Ft2DHZq7S2', NULL, NULL, NULL),
(451, 'Cengkir Hakim', 'dabukke.kamidin@yahoo.co.id', NULL, '$2y$12$p357uzZxxfqtuZ2eyN81pevLp4fhj2xitsLXCnQfDm4.uI/dkjtae', NULL, NULL, NULL),
(452, 'Balapati Marbun M.Kom.', 'dinda38@latupono.in', NULL, '$2y$12$5m92m4IQaNo.yY/6oWAqzO6ZYzLxztJzSKL3KCsO.ELssvddVTbRK', NULL, NULL, NULL),
(453, 'Satya Situmorang S.Ked', 'prastuti.iriana@thamrin.tv', NULL, '$2y$12$jQiViIVykdxSD4f8vvSHM.RDl65l68zCyIb.AYIDQ0urYFug6t3zO', NULL, NULL, NULL),
(454, 'Dasa Indra Situmorang', 'handayani.kasiyah@widiastuti.id', NULL, '$2y$12$9PuZPTJj7ZZa/.SO0bYRtufVGE933PlvfMxT.xUmeWxEWRG09z70K', NULL, NULL, NULL),
(455, 'Asmuni Jasmani Siregar', 'putri47@pradipta.my.id', NULL, '$2y$12$7pP4uwHemAJ956irAbPZ2u9ou8Gp4fYy6wmnUU.jiRVowiUNzrZem', NULL, NULL, NULL),
(456, 'Baktianto Maryadi', 'gwacana@gmail.com', NULL, '$2y$12$Hc8xUqT8zYlbjgMgSBr3peIs9dM0CRdJSIJsHBSDg9SSJqrYcsoPu', NULL, NULL, NULL),
(457, 'Sarah Paramita Padmasari S.Psi', 'sihombing.ami@rahmawati.my.id', NULL, '$2y$12$0tkou8UUYpjsazg9UGDDi.piT8fR7HOhw1RWQ9XTMoAWHrDnVPV/q', NULL, NULL, NULL),
(458, 'Indra Hutagalung', 'diah.suryono@puspasari.asia', NULL, '$2y$12$KC4egabSxvQymHwTwNqkWOsVzXbhrmULragv.Q5e7hMkVLY3i471O', NULL, NULL, NULL),
(459, 'Garang Warsita Sihombing', 'anggriawan.tantri@yahoo.co.id', NULL, '$2y$12$2q49097EYOSIvn3xt9nA.uFSNrjhFYgVEiaHniQ4dnrH/J0c6.ADa', NULL, NULL, NULL),
(460, 'Carub Mulyono Gunawan S.Sos', 'wahyuni.dina@maulana.org', NULL, '$2y$12$aW9.v9fjRVFt7VnpwzCXFueh8ctmgRvxP5P0JyFBR/JMKITaU0F3y', NULL, NULL, NULL),
(461, 'Janet Halimah', 'amalia35@yahoo.com', NULL, '$2y$12$vt8wXeHy9QsoNpEqD/PUMu0EzUcsLevrrs0SrOlE1ETYNikiD23La', NULL, NULL, NULL),
(462, 'Mursinin Mandala S.H.', 'rachel85@suwarno.com', NULL, '$2y$12$XNkvy6Wu8K9FcN2ZXG4rre43pOIMQOKjTu7xtSk1MSWisZRhTmITK', NULL, NULL, NULL),
(463, 'Mariadi Daliono Prasasta M.Kom.', 'fujiati.viktor@gmail.co.id', NULL, '$2y$12$Yy8nAO74GX6XIewOULg1neqDakckTDEkHv2eDQCxnTvjKwjHGjP1K', NULL, NULL, NULL),
(464, 'Baktiono Cahyono Mustofa S.Kom', 'xanana85@santoso.biz', NULL, '$2y$12$ljSNyHqtdH6TmGydLLgJ0OB.yr61wE5eaYhI.dS8zj1m/2k/n9yJy', NULL, NULL, NULL),
(465, 'Maimunah Hassanah', 'warsita.usada@yahoo.com', NULL, '$2y$12$3D1fpXhTIOx0pGSGzSGF6eZFIPAflu/t3VWwza1dXNIo9zc8sZAEq', NULL, NULL, NULL),
(466, 'Langgeng Saptono S.E.', 'yessi86@yahoo.com', NULL, '$2y$12$GcAhlYj3q2fCq2turildcOg5wtoq1yVLlwIC/aqmczE8tA1t0Rkzi', NULL, NULL, NULL),
(467, 'Zalindra Purwanti', 'bakianto79@sirait.co.id', NULL, '$2y$12$2NWF9uWpjsIcYVpBYCa0IOqRuU3lnmtyrcV.v/yvKNKXL3nZUDleS', NULL, NULL, NULL),
(468, 'Vanesa Agustina', 'nababan.gaduh@budiman.org', NULL, '$2y$12$7QKi5IDaCVoLEft7A4uCZOk3fEC/xksS6IrB6ol.5t3TsVo9DDah2', NULL, NULL, NULL),
(469, 'Dalima Winarsih', 'utami.rina@yahoo.co.id', NULL, '$2y$12$pZxSBHEV/lYBnahlwDPHJ.Kr7Dqp3YwR.eogUQWqEhTg15CqFh/Fy', NULL, NULL, NULL),
(470, 'Wira Adhiarja Nababan S.Farm', 'jwijayanti@yahoo.com', NULL, '$2y$12$FMU3nbZtsyqP6idbM.V2KOR6U7snqn/mU3DUE0DWk0KoUofwQrkjS', NULL, NULL, NULL),
(471, 'Chelsea Tira Wulandari', 'jasmin.nasyidah@gmail.co.id', NULL, '$2y$12$CckrHe.h3dYQarBF5JgGm.zHu8UQ/GwVNPHB5Yq3N9lFdAyWpbGK.', NULL, NULL, NULL),
(472, 'Salman Wahyudin', 'mandasari.samiah@yahoo.com', NULL, '$2y$12$XOSOE.6cMrO/QEVIjXr/Mu8vlyCQVp6IH/Mr4diSrzR5ml/hter/2', NULL, NULL, NULL),
(473, 'Fathonah Suryatmi', 'anggraini.luhung@gmail.com', NULL, '$2y$12$cEA.v8LZeTeercbdCp/mG.U7EqAw377vW37rwNOW4BE25j5EDjfFS', NULL, NULL, NULL),
(474, 'Maryadi Wahyudin', 'ssudiati@yahoo.co.id', NULL, '$2y$12$J7qwU04QYMXMUcEV0.H2q.eADVvX8XcSoBL6ItTErmHDipnUG0GZC', NULL, NULL, NULL),
(475, 'Panji Nababan', 'jarwadi.purnawati@narpati.asia', NULL, '$2y$12$OGaND8C/vDJhfTghQtmdKu6YG0scMZKttnKQ773AlS.Ew/W0370qi', NULL, NULL, NULL),
(476, 'Cawuk Budi Winarno M.M.', 'wasita.mahdi@utama.co', NULL, '$2y$12$5JsAkCZB63ZJDL43yYLBQ.sL3OEj0j3U51rhEx1I0LneDM2gR4BJi', NULL, NULL, NULL),
(477, 'Mahdi Saadat Hidayat', 'ysantoso@gmail.com', NULL, '$2y$12$S1/dJXqfVDrcvz.Ao4b09OIhdynqi8taJ1EYb8x.msxbht05i1K4S', NULL, NULL, NULL),
(478, 'Betania Kusmawati', 'prasetyo.galar@gmail.com', NULL, '$2y$12$DRGTaEF70/Pv0JK2MTvj/usadbSw/ZtJo2SgXw6/Iz3sx8Ox7KQce', NULL, NULL, NULL),
(479, 'Iriana Yulianti S.Psi', 'ida73@rahmawati.web.id', NULL, '$2y$12$iucE8VYHhnUDv2QE510/W.sqQn2y5JED28OcCXlDAvPO/TmPjEYIu', NULL, NULL, NULL),
(480, 'Faizah Usamah', 'lanang97@yahoo.com', NULL, '$2y$12$EbFIGJmitIvfRSk6C57rZuE92ZIiAQj4qnASYDkwOoEhO1O/Ib60q', NULL, NULL, NULL),
(481, 'Warsa Suryono', 'paris78@andriani.net', NULL, '$2y$12$BAew/GZpIliUNxn8IL6kW.n4J01vXqb/77TJappilcMsMHtPJ5NEW', NULL, NULL, NULL),
(482, 'Asmianto Tamba S.I.Kom', 'dtarihoran@yahoo.co.id', NULL, '$2y$12$aqR5ZC18KhUGIL3GCp3olOWS744lks/.xXiN45SZukGAMhGRwvlsW', NULL, NULL, NULL),
(483, 'Jagapati Damanik', 'uyainah.teddy@gmail.com', NULL, '$2y$12$LZ7TtreM74m4225DjAzBOuPxrDcIzLjlxcynAfLPoNhoQfhnST7Wm', NULL, NULL, NULL),
(484, 'Tasdik Habibi M.Ak', 'vmandala@namaga.co', NULL, '$2y$12$QoBvKTdTx.kSv8nFHWEBLuPFDZriL2wnCcil.oT91B8bl07oSJUam', NULL, NULL, NULL),
(485, 'Asmadi Januar', 'asirwanda21@gmail.co.id', NULL, '$2y$12$RjaW1BVa8wh/ypmKCadCF.l7CaxmG1ihYKuSrIMKHv.rUA0Rc7FrC', NULL, NULL, NULL),
(486, 'Galak Januar S.Pt', 'hilda26@padmasari.mil.id', NULL, '$2y$12$sGd.ckTc2/v4SpvbSfaRmebjpdD.kX4zJKyYis2/Rf1Mu7r62mZDm', NULL, NULL, NULL),
(487, 'Ikhsan Aslijan Thamrin', 'anggriawan.candra@nainggolan.name', NULL, '$2y$12$BZ0t9ZVn149wLD9PmHFfeuwTK02nRbY1b.bU8XzdPxACV6697W7e.', NULL, NULL, NULL),
(488, 'Amelia Wani Nurdiyanti M.Farm', 'gunarto.ilsa@yahoo.com', NULL, '$2y$12$VwFgsFfaNS/q9652yEBwa.2zhw2ZHS8EpRx7KXOPZszizXjT/GcVW', NULL, NULL, NULL),
(489, 'Koko Okto Sihotang S.Gz', 'budi29@gmail.com', NULL, '$2y$12$1YiVhuXJgzwn.q8NWW9qr.9G8Q6NDQU9XUv6HRRmAEV0SyvXE9HrG', NULL, NULL, NULL),
(490, 'Ratih Maimunah Yuniar S.Pd', 'znatsir@mardhiyah.net', NULL, '$2y$12$z.j01IwyjbXIwbDr92El5.pNS3LZd7fxyvjTcDwMgf8mAyz99B2w.', NULL, NULL, NULL),
(491, 'Oni Andriani', 'paiman.halimah@gmail.co.id', NULL, '$2y$12$s1aNapQACKaYdIHFRyW29uOpvo8WaaqbSznebOq9CG5gfJiaxcK5a', NULL, NULL, NULL),
(492, 'Aslijan Cemplunk Siregar M.TI.', 'jasmin68@halimah.desa.id', NULL, '$2y$12$3kRWNVeQU3rVgpDIXQ2ctupShhg2kzIwGATYxOkU474iSJiVvff9C', NULL, NULL, NULL),
(493, 'Oliva Umi Wijayanti S.Pt', 'aryani.nabila@yahoo.com', NULL, '$2y$12$0I1WrdQixQu8HP49qtA4AutlL6QHwjkNEy7HSm7.838TdYPag9NSa', NULL, NULL, NULL),
(494, 'Zahra Mandasari S.IP', 'rini.hidayat@putra.id', NULL, '$2y$12$ybZO0ev8hdGyoVb776tzL.eKLI4olQXRAZN6PeiDK.w6/6KqLRBMu', NULL, NULL, NULL),
(495, 'Halim Sitompul', 'wastuti.prima@nurdiyanti.ac.id', NULL, '$2y$12$71Ubaww7uUEinz3yn0fYWepEdukAchrIpF9gJWPemFpJkby36dGtO', NULL, NULL, NULL),
(496, 'Hasna Lailasari', 'salwa88@siregar.web.id', NULL, '$2y$12$uhXWR3KGhEAeQ07P47QIaefJUFCAuZJAualpK0e/i0/pZss8sNOSy', NULL, NULL, NULL),
(497, 'Iriana Silvia Palastri', 'vicky.namaga@gmail.com', NULL, '$2y$12$khILbI1vHo5NIrgBWzg6YuY2QtpTR5acWCgcoMVwMDCeadcXp05Uq', NULL, NULL, NULL),
(498, 'Cinta Wulan Namaga', 'asmuni.prabowo@yahoo.com', NULL, '$2y$12$904hw38YJj6so/QGK/dZfuKPdPtHt.1PEwLX4n9rZSKivsgXgrdgm', NULL, NULL, NULL),
(499, 'Cemeti Balangga Gunawan', 'surya23@mayasari.org', NULL, '$2y$12$9ZytqdO8BlkV1Xc13CmKqubYKE0iaZ2ARQdwDt6PEZ2C0G5iO5Yvq', NULL, NULL, NULL),
(500, 'Wirda Icha Winarsih', 'tampubolon.jarwadi@astuti.or.id', NULL, '$2y$12$oxfHfTcJVR6MpsEJ5NaFpurQD7z4Wqgee6mJ8cFYs1gVWSzdedK0S', NULL, NULL, NULL),
(501, 'Genta Maryati', 'alambana26@yahoo.com', NULL, '$2y$12$N5t/oEt.Cb7dgYb/0/4GLeIeFa9pJrOORAlR7/d1.wO/nPDx2wAPy', NULL, NULL, NULL),
(502, 'Tasdik Mustika Pradana S.IP', 'balidin.firgantoro@astuti.co.id', NULL, '$2y$12$mdX04vvn3SgqA71594QsYeuqgRT5PpqAd28Ihpi0duMn6VlUuQxaq', NULL, NULL, NULL),
(503, 'Puspa Pertiwi', 'melani.jaka@gmail.co.id', NULL, '$2y$12$wTxkVtfknhDmguxHDrk7uuVOKTPYK9V9YPteG8URh99TPXKZBMqX2', NULL, NULL, NULL),
(504, 'Sakti Saptono', 'wisnu91@hariyah.tv', NULL, '$2y$12$JIJxsfP6r6hpwAS4qPxWuep2nM/JJ5Ls8vpJ6s.FrCf9X6nod6/Pq', NULL, NULL, NULL),
(505, 'Lili Novi Riyanti', 'farida.ellis@gmail.com', NULL, '$2y$12$OTifRl1Z0OQWD1nhZ6O3K.Bbccp7pLC15GjwqjoBvsHNOUpZ3TB7i', NULL, NULL, NULL),
(506, 'Hasan Firgantoro', 'chandra06@gmail.com', NULL, '$2y$12$WJcc/iHL2blgDYQjqDnAde8BU7ObqV5WeaQ3yedAlUjGXBhHbvbhC', NULL, NULL, NULL),
(507, 'Harjaya Simbolon', 'ellis.pertiwi@zulaika.ac.id', NULL, '$2y$12$NsM6kousAvxSxIL74vodkehj.CUYdHSBdiFUpMFtceyIe8gzfTFXK', NULL, NULL, NULL),
(508, 'Salwa Mulyani', 'jessica.pratama@widiastuti.in', NULL, '$2y$12$xsE4ggzy1sQKQP1CaSXJueb9p3o1lE5mA1x9FrijUUwfiB595In7u', NULL, NULL, NULL),
(509, 'Rahman Saptono', 'qsitorus@gmail.co.id', NULL, '$2y$12$M8ZHo3ko/Drif.Kg5pk28.X2x0l0KROtXDRUw1oG/ln4ajKqdAwVe', NULL, NULL, NULL),
(510, 'Zulfa Ina Suartini M.Farm', 'dalima.saragih@salahudin.desa.id', NULL, '$2y$12$F1.ccgCaNbZ/IRW7hrDSnueMySAOS4QtdB.VO7g.sdi1zlNRzwOQW', NULL, NULL, NULL),
(511, 'Harsana Hutasoit S.Ked', 'cjailani@dabukke.name', NULL, '$2y$12$DsOLWjQji78WIwaqXP0MZObBd/BdF3hVZ6Ghg/l8FbHSb31h5IAom', NULL, NULL, NULL),
(512, 'Patricia Padmasari', 'uchita.padmasari@fujiati.biz.id', NULL, '$2y$12$kRMnCs6vzf6TrBpirodw5uvjwN2.hMDnRukcuzSGSpH.cxR09DPbW', NULL, NULL, NULL),
(513, 'Bagiya Vinsen Permadi S.Psi', 'jnovitasari@yahoo.com', NULL, '$2y$12$4y80oKE6FQzLB3RRyUgSSu2UzNmkKwYwHrGibhjoJbyFdq.xDbw8y', NULL, NULL, NULL),
(514, 'Rangga Zulkarnain', 'viman02@hastuti.info', NULL, '$2y$12$J.72zj23XTIdeU5wiSc0GevreZnS6wToB9Q.3lwjmoEFT4TpG04ie', NULL, NULL, NULL),
(515, 'Elvina Wijayanti S.Ked', 'qmangunsong@gmail.com', NULL, '$2y$12$xMj6MCRRbcIYwU3J.2.Si.ZVWvOB7OXkFmo0mE0tQKbmn9t8xkfEe', NULL, NULL, NULL),
(516, 'Farah Gasti Puspita', 'doktaviani@saefullah.sch.id', NULL, '$2y$12$7NbnZ2mTy0I785QontTX0OZw.9GgnsKcb6DUJ5BJQx6T2snhAWe4m', NULL, NULL, NULL),
(517, 'Nyana Kenari Maulana', 'ipratama@nurdiyanti.org', NULL, '$2y$12$sgpMi9j87uIB3efv4tQwVu3t3XP7X3oPgqwiqHcWIVTDZdNDupc9W', NULL, NULL, NULL),
(518, 'Fitria Nasyidah', 'ufujiati@winarno.co', NULL, '$2y$12$jQeLKrVDtUt3xgmkdbQuier1sH3zgFyfx0pF9a6MzYNgaFT25KWsi', NULL, NULL, NULL),
(519, 'Novi Hariyah', 'rahmi.handayani@hutagalung.biz', NULL, '$2y$12$p1si4JmXt.oIKd0dYL/0MO2JUDSqG/h9S5YVjoRJYLCPtNEGT9dnO', NULL, NULL, NULL),
(520, 'Maya Jane Wastuti', 'ojanuar@gmail.com', NULL, '$2y$12$/o6z69KBF/Q/0qaIu9twdOVexYcoRWN0zpIqbu4l91thVCEGbWiOG', NULL, NULL, NULL),
(521, 'Raina Nuraini', 'nurdiyanti.lukman@hakim.in', NULL, '$2y$12$dUxzSjBYVpZF9eelMBO0oOFpQmac895IMl572nL9f67dPUzJknzbq', NULL, NULL, NULL),
(522, 'Lintang Yunita Nuraini M.Pd', 'olivia24@yahoo.com', NULL, '$2y$12$2rMXecwFmC/OAfFaUwv/0OAy8KFtZfMBQCR5HSm.orp5mEKlCf92a', NULL, NULL, NULL),
(523, 'Ophelia Amalia Purnawati S.Kom', 'edi94@yahoo.co.id', NULL, '$2y$12$3ewYMXDBZa2sNcCwHlWkAepIYC2ads2H26vnDI8HVigZqvLcqUuhO', NULL, NULL, NULL),
(524, 'Kiandra Kusmawati S.T.', 'wulandari.lasmanto@hardiansyah.go.id', NULL, '$2y$12$WD7oKByK9rDHWqlj2L6Pg.z32YX.RbGs4GvfkD4YnQla8tVfhFMLS', NULL, NULL, NULL),
(525, 'Patricia Yuliarti', 'sihotang.jefri@winarno.or.id', NULL, '$2y$12$E9eOG7g56yid/Y7JWvSOTuiStthRYwG5TRWiR6cG5st7AEWFviO5y', NULL, NULL, NULL),
(526, 'Umay Adiarja Prayoga S.Gz', 'puti10@yahoo.com', NULL, '$2y$12$kmwroF/gdskIQETnNZwiGOQv3qZiJJ9GIREuZUEzZVQ7iAWcE2P5S', NULL, NULL, NULL),
(527, 'Luluh Marpaung', 'ida32@gmail.com', NULL, '$2y$12$Q.p3lj6FK60VdC2s3bBnfe3ixaHWb2zgZUXsqPW65.381ymGUFlhu', NULL, NULL, NULL),
(528, 'Padmi Fujiati', 'endah.siregar@yahoo.com', NULL, '$2y$12$tFg8G2WstSuGKCMHhv.1FeMSsY5BoCmRCLlF2/B.H/Jx/0L2mYzhm', NULL, NULL, NULL),
(529, 'Siska Mardhiyah S.Farm', 'jane.salahudin@pangestu.in', NULL, '$2y$12$HjTWDusMhsltC9UnxAlDluW4aWHWksrL9Ij5jbc1JSnaom1YVSexq', NULL, NULL, NULL),
(530, 'Kacung Raharja Prasetya', 'najwa.wijaya@winarsih.sch.id', NULL, '$2y$12$6VTtBVMCem0S7N961E0Glurk7rQo8/EAJ.wFsKDABnfXzwF4RmXo2', NULL, NULL, NULL),
(531, 'Farhunnisa Wulandari S.T.', 'epratiwi@mulyani.sch.id', NULL, '$2y$12$dVgYxDGLHsYyUK8Fd8dk.OL40gGd3iE9z1iHaVpIfYRI0Zh.59rbC', NULL, NULL, NULL),
(532, 'Nadine Padmasari M.M.', 'hprasetyo@yulianti.go.id', NULL, '$2y$12$dyxSuPbhRIm7/Z/zKMLCM.ZzwgjJwL0szS327dea8RHs6CM2g32LC', NULL, NULL, NULL),
(533, 'Puput Farida', 'vnasyidah@yahoo.com', NULL, '$2y$12$oK091CPH7IzvmyJGWm6vzuqqxwUjwi5na4DElCZBREmjRK4/ckyUy', NULL, NULL, NULL),
(534, 'Ana Winarsih M.Farm', 'lutama@gmail.com', NULL, '$2y$12$kFkC.bWe2MM29r9hgluQrufV65vvlL3VCTpkUbOdSZtSvNS.i7Ady', NULL, NULL, NULL),
(535, 'Rama Sitompul', 'lailasari.jarwi@mayasari.id', NULL, '$2y$12$XcNVKMr4rFP90pHmgWwu4OUGIW98buTtZlWTqG.Q.Oi1KusJRoeRO', NULL, NULL, NULL),
(536, 'Bahuwarna Reza Kurniawan M.Kom.', 'briyanti@halimah.co.id', NULL, '$2y$12$8kq8N9JTFD7gmTucumBoi.pWVJ9zg.i0cprayE2BgO3AN3CCYjPVO', NULL, NULL, NULL),
(537, 'Rachel Nasyiah', 'griyanti@yahoo.co.id', NULL, '$2y$12$yKHc0Z4.v1kEURyOqI0VFuawIZusLHmQoD2GNze27nr1EPothppg2', NULL, NULL, NULL),
(538, 'Kawaya Budiman', 'dmaheswara@yahoo.co.id', NULL, '$2y$12$WGx369vxGze35HIV6eFRjeHnq7NKNefaJ4h9kbQMsEPAmH153UHXy', NULL, NULL, NULL),
(539, 'Cakrajiya Warsa Prabowo S.Sos', 'opan87@prastuti.sch.id', NULL, '$2y$12$dLH2cLmFQt2pMAF3VbMQ9.4xMpRue2tGfmzP/B8UfSwtBtK4jK5iC', NULL, NULL, NULL),
(540, 'Caturangga Sihombing', 'parman80@uwais.id', NULL, '$2y$12$SacpsX6beUiZfBsulbV9Je22XRKouk5nLTX1LYu5fNr41Okrs2NhS', NULL, NULL, NULL),
(541, 'Cahya Utama', 'olga97@firgantoro.web.id', NULL, '$2y$12$aHvc37Buo65xBeVol33Hn.27y2U4.1M40ZB3YYTanzse2I6LHrW8e', NULL, NULL, NULL),
(542, 'Dasa Warji Pranowo', 'nilam.andriani@maryadi.desa.id', NULL, '$2y$12$.1L4CAxNxq4.QhW/3q4x9uEhlHYhDPcVAJ1eol1DVevya9M8sM5Vq', NULL, NULL, NULL),
(543, 'Rahayu Palastri', 'srahmawati@rahmawati.name', NULL, '$2y$12$W6d2u66uWm31wsUF5RXPfe7jlDtR/eu28TWq6vs2TX8G0VIkeip2q', NULL, NULL, NULL),
(544, 'Dimaz Nababan', 'septi.hidayat@yahoo.co.id', NULL, '$2y$12$e5PrtzFRCmwAPGzIYBjpbOusAROYWURHsB22Jm62qorQpovClcAta', NULL, NULL, NULL),
(545, 'Chelsea Rahimah', 'uanggraini@ramadan.net', NULL, '$2y$12$yz.0Ph2Ud7XzMyVMgtfxl.SA7Yl3cx3Ag697Cab.HfU3zzOx3OX/u', NULL, NULL, NULL),
(546, 'Hasan Saputra', 'lkusmawati@gmail.co.id', NULL, '$2y$12$6s4jum.MAqQrEP/BNx9DQeJ42/jJS0rumn3QshJpHFRVnVU8TVJzu', NULL, NULL, NULL),
(547, 'Tami Halimah S.H.', 'lestari.candrakanta@gunarto.biz', NULL, '$2y$12$L.WIjR/Lfjw6KZf4asW83.8kvbDHbqIlIS1.SqZvIl2KNhKcEt/5a', NULL, NULL, NULL),
(548, 'Ika Astuti', 'rahimah.citra@gmail.co.id', NULL, '$2y$12$7p6H0CxP8W4y5Dqd1Yb7n.YH4AT4xwCW0b0V31N0Zy2.zWxtF5tpO', NULL, NULL, NULL),
(549, 'Salimah Suartini S.Psi', 'hamima47@puspasari.asia', NULL, '$2y$12$yqrB4ZpfVW0Jr/kfcGM7HOpScfzpgY1iH4Q0KW6fEptzwXiVp0KEe', NULL, NULL, NULL),
(550, 'Sabar Ramadan', 'mahendra.hana@pudjiastuti.mil.id', NULL, '$2y$12$S22xXY07uh/jMqVV.SIfEeoo8eIUczwiF9devPoeiUkhWA84TpJsG', NULL, NULL, NULL),
(551, 'Fitriani Safitri', 'cindy82@yahoo.co.id', NULL, '$2y$12$nzDPAdpFFAu.nfRbcZhWmOrJZFIhC5gJ4rKCB3YeejQ/poBXiv.OG', NULL, NULL, NULL),
(552, 'Shakila Pertiwi', 'simbolon.cemeti@yahoo.co.id', NULL, '$2y$12$awVS/JTLs27DhIPWT23/j.9uV2gyIs6cqekVZJVa7oVWL5VyFG/oq', NULL, NULL, NULL),
(553, 'Langgeng Sihombing', 'naradi.tarihoran@nurdiyanti.ac.id', NULL, '$2y$12$FsRCJgi1n.7bRZaig/YJK.0MegRpHxll3YRlXzo3xaj4INw5zZiVK', NULL, NULL, NULL),
(554, 'Karta Sitorus', 'yusuf98@pratama.info', NULL, '$2y$12$M95rxE0QxhKmgFhNT8kAC.54Mb9cPWU/.xl3r7FM.96r00gWmna7C', NULL, NULL, NULL),
(555, 'Wulan Mandasari', 'gmayasari@yahoo.com', NULL, '$2y$12$y4P6FL.z9/XM2EtarKMSXeY2Zncq2vwVD5lgs2s.H5eGAegz431xS', NULL, NULL, NULL),
(556, 'Koko Pangestu', 'dirja01@yahoo.com', NULL, '$2y$12$4gbuCC6i.R.BC93G5ZFF5OfiX8jWlTv6sPwMbuNgqnopVtgnG7.Ra', NULL, NULL, NULL),
(557, 'Vanesa Yuliarti', 'nnainggolan@hutapea.id', NULL, '$2y$12$RqTbe2/RGMEuveA0kHJuXeZTveqZdr76Y65jeXHYdtoyK817J5Ugu', NULL, NULL, NULL),
(558, 'Amelia Karen Haryanti M.M.', 'pertiwi.wasis@gmail.co.id', NULL, '$2y$12$3WMNV.iiXumDkyaX4gzIC.KVx1rY.HC.bi5pTg8X.3nJhTLCHcYC6', NULL, NULL, NULL),
(559, 'Bagus Latupono', 'suci50@yahoo.com', NULL, '$2y$12$Ysz2WTUTDd8x0JbRSOM4cuQxOyHtqEEmw0KQPtiDd29WcHJo87/V2', NULL, NULL, NULL),
(560, 'Adikara Tarihoran S.E.I', 'harto.halimah@permata.net', NULL, '$2y$12$wkW0WxD/4qm/gYB2FCRxOeD3AKVU8Cu7lGDCGBLedjWiyyuXI2Qzu', NULL, NULL, NULL),
(561, 'Caket Cawisono Hutagalung', 'mahfud.setiawan@haryanti.com', NULL, '$2y$12$HfzEfaLTRfonMP75q1FETuiml1mYtM2w67Xk/ms5W1O1fp9tlCeGK', NULL, NULL, NULL),
(562, 'Bakidin Kurniawan', 'hakim.nadia@gmail.co.id', NULL, '$2y$12$UsMbifliTqBJdn36SJtsS.k3BNmUR0xY5eUE2QfmnZFSQoWExzL1e', NULL, NULL, NULL),
(563, 'Widya Rahmawati M.Pd', 'plestari@adriansyah.web.id', NULL, '$2y$12$Whb/S5k.tqmCQ0G5YfBl/.V.ZkkI1p.pq4utoIBKspJB2Y4E.bFqu', NULL, NULL, NULL),
(564, 'Kamila Yulianti', 'anggraini.adinata@nugroho.web.id', NULL, '$2y$12$0R3hJC1cRLU6Aejez4ypU.Ea318YK6ZWUM2BKKTB9nqgq0a5Q7xaG', NULL, NULL, NULL),
(565, 'Tania Ira Hariyah', 'sudiati.novi@purwanti.or.id', NULL, '$2y$12$TydO8sCiwbRaw18G2EFrP.UurBescZcLaQ/54VGLzySgieOO2y8XC', NULL, NULL, NULL),
(566, 'Winda Riyanti', 'warsa.widodo@gmail.co.id', NULL, '$2y$12$v//ahEyq7y1QEuCt1IeQXeil5y.FAMoI9e7.S7s0npfe9FesNgE0q', NULL, NULL, NULL),
(567, 'Eli Purnawati', 'zyulianti@gmail.com', NULL, '$2y$12$sx6SZZua5vSrpO1LOG1p9.al6UWE7cJyP69zJJLwqjjo5kwKmeT12', NULL, NULL, NULL),
(568, 'Gantar Lurhur Pranowo', 'lmustofa@yahoo.com', NULL, '$2y$12$ehqIuXAo/Y5AiMv2LvHo5e6BPjQecnXkAvlKrVxPKJq3T7VgHuGdm', NULL, NULL, NULL),
(569, 'Kasiyah Hassanah', 'zizi83@gmail.co.id', NULL, '$2y$12$KPcjZ05C4TKw3tjYrzM5CecfdnHy1tj651ng3wLEEHssIcdbkiVQO', NULL, NULL, NULL),
(570, 'Opung Sirait S.Ked', 'cpertiwi@utami.or.id', NULL, '$2y$12$sDCmuLoo2yv605n.tryiEuX38n.AuhHJEgSApwqjoHVgamzAafZhi', NULL, NULL, NULL),
(571, 'Mumpuni Halim', 'bhidayanto@yahoo.co.id', NULL, '$2y$12$gYtRTZ10unVy.m5II1Ccde5rlLAeZZHJfmAHn7faGpk.7VmpqQ60.', NULL, NULL, NULL),
(572, 'Ika Hassanah', 'dalima.kuswandari@yahoo.co.id', NULL, '$2y$12$WsNjgcxE/oHzm7APfBEfOepw4Z7745Nqlkc1dJnxrQTafrqJ1q70a', NULL, NULL, NULL),
(573, 'Panca Adriansyah', 'fnasyidah@yahoo.co.id', NULL, '$2y$12$5kwdlmAR5EHIX..bP1pSZ.f/t7XxSte6k5X81cJyTm2OgnVWepODW', NULL, NULL, NULL),
(574, 'Nurul Lestari', 'maryati.calista@wacana.asia', NULL, '$2y$12$n.8Pi054ZiHgsMZafFlTcOsPNMW86Xb4MGqmwMvl96xRDPndop3sK', NULL, NULL, NULL),
(575, 'Prabowo Wibisono', 'kusamah@manullang.my.id', NULL, '$2y$12$21j//n3g9aslr8D5LxrjMOil84uQRIQBvuNoAt/gQjF9md0EHgXii', NULL, NULL, NULL),
(576, 'Eja Dabukke', 'gilda14@padmasari.go.id', NULL, '$2y$12$Qcyd08Kl74Wdfx5OGNf6PuB9vfSfLfexyTf1iy.Y1RexgvCWZpYH6', NULL, NULL, NULL),
(577, 'Zahra Laksmiwati', 'icha.andriani@yahoo.com', NULL, '$2y$12$UCyWjqdKGTEWvSR0jOlVruPBdHYaH.8Q6R5WiasZhuOL.QdkCZMde', NULL, NULL, NULL),
(578, 'Siti Widiastuti', 'ahasanah@hartati.net', NULL, '$2y$12$dTe3I0JDiCmMb0V9J28jROo7PKKbmXw5FCOOHF4ZA3pNsZke4hqUK', NULL, NULL, NULL),
(579, 'Vanya Prastuti M.Pd', 'usyi90@haryanti.tv', NULL, '$2y$12$GVZHA9kA04UlhYq3eX1M8OULh0UqAvZq6THH95GJ2MuIY7hGAn1rO', NULL, NULL, NULL),
(580, 'Nalar Gunawan', 'syahrini66@yahoo.com', NULL, '$2y$12$we9kpirZBgon.zx9Fp1usulY.H.BT.gBCa9HjuR5W6Y0qR6DG1WBy', NULL, NULL, NULL),
(581, 'Gabriella Violet Nasyiah', 'swinarno@mandasari.net', NULL, '$2y$12$bpmGSG8gVo5NukanccRlIuHaL0YCGBotFqY5YDQOCDp0J/aVBg3eG', NULL, NULL, NULL),
(582, 'Tira Yulianti', 'gadang.firgantoro@natsir.web.id', NULL, '$2y$12$b.mrzqPOVxtzo/m5311w7ur2ftAN.oWaNwux6PsxvKEmATNmQCgTu', NULL, NULL, NULL),
(583, 'Endra Adriansyah S.Sos', 'septi.rajasa@yahoo.co.id', NULL, '$2y$12$vbysGtfnISkYnQs/xcf./.4IAKx3oq6gLz1wltZvOJsdhd076QYOS', NULL, NULL, NULL),
(584, 'Cahya Putra', 'bakianto62@yahoo.com', NULL, '$2y$12$em2.t1fUxonrNRZR6VXMkuNmW83OKbgnG3hk.dq20NPhzHEPq70X.', NULL, NULL, NULL),
(585, 'Puspa Belinda Susanti S.T.', 'lailasari.zulaikha@yahoo.co.id', NULL, '$2y$12$txAWFKMerdsR1yigYebAhe3IgCjS4Cs4rq7uj5Zvj/9Jftd/Zpezm', NULL, NULL, NULL),
(586, 'Puji Pratiwi', 'nugraha.yuniar@fujiati.or.id', NULL, '$2y$12$JlbgbQoueJBYeTcD6H2xLOP2wHRv73ER5Pwm1WWyma6rwEA6sdYkS', NULL, NULL, NULL),
(587, 'Lurhur Saputra S.Farm', 'usamah.hani@yahoo.com', NULL, '$2y$12$maxk69fUknaNNPBc4JlMQ.STKmyNK/My6AzXCFi9C08H5EAJTJmda', NULL, NULL, NULL),
(588, 'Bagiya Wibowo M.Ak', 'situmorang.zulaikha@yahoo.com', NULL, '$2y$12$Bh32N2qh72urMwE/pceyieY1rd6K1z0K2bRqWBYpp5qX5w.2er39e', NULL, NULL, NULL),
(589, 'Perkasa Sihotang', 'hassanah.capa@tarihoran.in', NULL, '$2y$12$0t/YbiAT5bEHYRADC4jOkuhwk.1N/BC1ns.G9VJrzRml3q8AvZYdi', NULL, NULL, NULL),
(590, 'Setya Saadat Suryono', 'vinsen81@hariyah.sch.id', NULL, '$2y$12$GutkOeBUXLAi7YcuBDt7ReOjPa3ZFVr1lnhAEGsuYptUWwR/3oXfW', NULL, NULL, NULL),
(591, 'Najwa Nasyidah', 'silvia.jailani@halimah.tv', NULL, '$2y$12$0Gf.vwh/eUvFWYQc68PPsueFgsR5ucakz8vxmOZ6LKGuwiGUQaEQq', NULL, NULL, NULL),
(592, 'Eka Natsir', 'kalim72@firgantoro.sch.id', NULL, '$2y$12$ZdIOEa..2cz.mciHhbDZvuuvyaiYRCKwx7QBbujtC7iB0YEZh3Ac.', NULL, NULL, NULL),
(593, 'Diana Lailasari S.Farm', 'tsimanjuntak@yahoo.com', NULL, '$2y$12$sCsKmevd.alyhQnmyz2O5eXOz8zFz5XFGeQC/yPDAes/L9YCfnfhq', NULL, NULL, NULL),
(594, 'Kasiyah Hilda Puspita', 'hesti10@yahoo.co.id', NULL, '$2y$12$Y/k9vXYhXjUUrezoynffme99RXOHnVkGVDiAyxlPoUxOzwtYF2Bmq', NULL, NULL, NULL),
(595, 'Ayu Prastuti', 'dewi.widodo@kuswandari.in', NULL, '$2y$12$IMPrf2DO6mcHiNBxy623I.6OSu9JCX.OXEMSd2IpV/Qh/ypjLk/Q6', NULL, NULL, NULL),
(596, 'Lidya Wijayanti S.T.', 'dinda.handayani@yuliarti.my.id', NULL, '$2y$12$72BB4dU85kDFrEbuTjP./uiwqNLD8kQm/rahFvAzwnYZyjbRUcp3.', NULL, NULL, NULL),
(597, 'Dewi Nurdiyanti', 'pertiwi.tugiman@yuliarti.go.id', NULL, '$2y$12$p102lCqAb6elBsPPF8jb2u7OiixJxLjcWMp2.rN3XTVi5gU4KdgFC', NULL, NULL, NULL),
(598, 'Umi Puspasari', 'pertiwi.maya@habibi.tv', NULL, '$2y$12$pKDUK2Uc5RWrJGuOQbwWkuyfQv//YcX2Rb4bxB/UfY3hwYEmi4i0a', NULL, NULL, NULL),
(599, 'Gabriella Salwa Purwanti M.Kom.', 'rizki52@kusmawati.in', NULL, '$2y$12$mCtkBkk82Me5p30i7MxeZuLB3vK.3ZHotHyBOp5nocfNM9pqubvca', NULL, NULL, NULL),
(600, 'Karsa Dabukke S.I.Kom', 'fitriani.samosir@yahoo.co.id', NULL, '$2y$12$qKjxx10wW8GqbzM2hcyAq.fMBi2WYo3/8c74ftJOazHK./q2d9ohS', NULL, NULL, NULL),
(601, 'Cawisadi Hakim M.Farm', 'hnamaga@gmail.com', NULL, '$2y$12$OuQkDG2wKQM.LuLHMKKJVeQWHO2SpiBLZCoWe3NfsJ/tVuCWYxCg6', NULL, NULL, NULL),
(602, 'Wasis Prakasa', 'utama.prastuti@rahmawati.biz.id', NULL, '$2y$12$xBeBTiuzGQKIzwhp18.9D.zmnUxMzr.okS7jsVB5LHmwSAPBFCtNK', NULL, NULL, NULL),
(603, 'Yuni Mandasari S.T.', 'ranggraini@siregar.info', NULL, '$2y$12$TakA6cwkR8QRn9SQwGP8d.cZjQTt7rmBL22MYFDs7jgjMrmYSvVVW', NULL, NULL, NULL),
(604, 'Mujur Sinaga', 'rusman.napitupulu@gmail.co.id', NULL, '$2y$12$bSzuhkt4N2QYOG/lNDB8p.JsX/2B6V6etISP7mQrQU1aDtGMV7AHK', NULL, NULL, NULL),
(605, 'Jono Gada Saefullah', 'twahyudin@gmail.com', NULL, '$2y$12$lF5QE4xeryvpu7ulOapdAOkCjkvJxYlwA1kcl.aL1rGVi7V9mliue', NULL, NULL, NULL),
(606, 'Luwar Saragih', 'hidayanto.latif@gmail.co.id', NULL, '$2y$12$xlKqQJ0fFR2ITROVcSdL9Oo.m6zhdQdhfp8R1wm3P4JnxxmUX67mi', NULL, NULL, NULL),
(607, 'Ani Hartati', 'muhammad60@santoso.sch.id', NULL, '$2y$12$aEbxaC3c1ikZKqABFqGDhu7D0ssxUyz5h5f6O21Ti0tW.6PAFEwvG', NULL, NULL, NULL),
(608, 'Rafid Prayoga', 'laksmiwati.dimaz@gmail.com', NULL, '$2y$12$FMnmjnzaUP2b9DdYODDxY.O0MnzkEhLFDooqN.MR3Svt5JXUxzeGK', NULL, NULL, NULL),
(609, 'Radit Budi Adriansyah M.Pd', 'estiono53@situmorang.asia', NULL, '$2y$12$CWl2st8LCX2fGawDOsdx8OtNRWeTvnLmtYisHTGqnzim1nHjbp242', NULL, NULL, NULL),
(610, 'Gilda Yulianti', 'galih.purnawati@melani.info', NULL, '$2y$12$iQMAT2fZgoxCgav0XCIVK.azBV7S0kuKDl4PUhtxu8vc9mfn6MSLe', NULL, NULL, NULL),
(611, 'Tari Hariyah', 'xpratama@nainggolan.org', NULL, '$2y$12$2cN5Zowwvbi6puqIpE13weB1mnnTzKfdLZDdWAEgT0CgjzLKe5XC2', NULL, NULL, NULL),
(612, 'Arta Latupono', 'galiono.lailasari@nuraini.co', NULL, '$2y$12$7efTWZ1QdTjk6HfmjIRQ2.GOSChQt4xdo4NjwQ3vW4PT9HOIc4w8i', NULL, NULL, NULL),
(613, 'Siska Lestari', 'gyuliarti@halimah.id', NULL, '$2y$12$hZb3C7GnPmlSSngd7ZAnw.6tT2igclbxDFXGgSEqdGonldcXQshc6', NULL, NULL, NULL),
(614, 'Kairav Sihombing S.Pt', 'apermata@hutasoit.web.id', NULL, '$2y$12$qLLgDYGVOEwz49eMRRHI1ugM3LWqfI/rgOCVq71wnWJg1Y43/lN1O', NULL, NULL, NULL),
(615, 'Malik Panca Widodo S.IP', 'talia07@yahoo.com', NULL, '$2y$12$oaxg18UR4UURJCnBCFJQWeTxbYjlQKG94uLjKKBMOva4Mpaxao4vS', NULL, NULL, NULL),
(616, 'Silvia Dian Laksita S.E.I', 'habibi.enteng@yahoo.co.id', NULL, '$2y$12$4lRL9nEiKRNtqXx9MIu4i.2rsel1Mpxk3Pm3sXaTq8M/XedoyC5VW', NULL, NULL, NULL),
(617, 'Luwar Wibisono', 'wirda34@gmail.co.id', NULL, '$2y$12$RoM0Cqd4gLofQy.ui6WieOETw.AuhfFmtl8H.rwtx0AFDkLy4fpb2', NULL, NULL, NULL),
(618, 'Laras Farida', 'rahimah.puti@gmail.co.id', NULL, '$2y$12$pKMPPsh6Cy6jEjnvITczi.O1swzLYOuLM/nFPsUcMmEk81.GeT5Ry', NULL, NULL, NULL),
(619, 'Titin Melinda Safitri', 'firgantoro.wawan@gmail.com', NULL, '$2y$12$2wKSykdeuxykIazF2G5xnOWtJ41Df6aS6o9QfwK9srH/orfMk0UZ2', NULL, NULL, NULL),
(620, 'Harsana Hutagalung', 'mulyono94@andriani.or.id', NULL, '$2y$12$rS5FlBpr1WsnkUdYM0K1wOgUMGCSOATnqBX1bjBB3klBhXF95tKjy', NULL, NULL, NULL),
(621, 'Gilda Hasanah', 'patricia.hidayat@gmail.co.id', NULL, '$2y$12$J0imcUf6LBybVRfIbyZU3ujAAgIzZNbT6MKE4/rqd5RCaKDUQeOIe', NULL, NULL, NULL),
(622, 'Ida Lestari S.Pt', 'zuwais@kuswoyo.web.id', NULL, '$2y$12$v0P9MIrJgbTRp1xVTXThSO71PxtbhnZvz7Ytw0S5m09JKEnEz.jR2', NULL, NULL, NULL),
(623, 'Dina Uyainah', 'ade27@yahoo.com', NULL, '$2y$12$Dcw.YWUzoo2P7cyeFrRL/u3OH2JYWIQjsEW.d56AH8.I0y/0A3kkG', NULL, NULL, NULL),
(624, 'Emil Mangunsong', 'agustina.setya@nasyidah.web.id', NULL, '$2y$12$PfWK5P5s8K0IFq0s3/vpi.5zEaxi.3YYMbkwYMqvqVc.wcxrQXRQW', NULL, NULL, NULL),
(625, 'Puti Wijayanti', 'victoria.thamrin@putra.id', NULL, '$2y$12$.Ge0b05bCry9.2xEns2EsO2aeeyi4I0pBdjTbKI1w0/AKlBf5RPAu', NULL, NULL, NULL),
(626, 'Jarwi Damanik S.Gz', 'ina.mandasari@yahoo.co.id', NULL, '$2y$12$g2WRmbFmkKYf8fDj3UEVyeRdT/GT.Sxayg1GW9WBfSvhZ6ExPivpy', NULL, NULL, NULL),
(627, 'Ida Pudjiastuti S.Pt', 'hesti.mayasari@namaga.in', NULL, '$2y$12$Al5bJt3w6/7HGz5dX/3MrejsPTgXKduJ.1E2YGXpFtLSOodeoaG0i', NULL, NULL, NULL),
(628, 'Marsudi Najib Suryono S.IP', 'rachel.padmasari@yahoo.com', NULL, '$2y$12$rekELNzwkcnBYb8/ZUqsa.A/8YJAPm.BHdAvozIgMJVtjsmLb0DVC', NULL, NULL, NULL),
(629, 'Kiandra Ratna Nurdiyanti', 'ida13@yahoo.com', NULL, '$2y$12$1LA/Xzp5nCBEq3060XiyNO2dmVdJ0jp8nl3YiuoxbUi04FM6vUJWe', NULL, NULL, NULL),
(630, 'Rahmi Wahyuni', 'siregar.mila@prastuti.info', NULL, '$2y$12$rcOCCZKQfQJ9PIWxpVTJP.cEjGIXu5hV3ibCYqI.dwI0pmTEvvVpC', NULL, NULL, NULL),
(631, 'Jayeng Jailani', 'novitasari.yance@yahoo.co.id', NULL, '$2y$12$yLIG/lysMlgzVWuJzbRDNeXIM96S99nFEwUPTJ9XsIbXDxVJIqLoO', NULL, NULL, NULL),
(632, 'Paris Mala Nasyiah S.T.', 'hartaka.jailani@yahoo.com', NULL, '$2y$12$Bvk/fDVCYv6r3nkmN4R/Q.eKXIpNE5t7ryhF2H0iI5fgFNlMOYkRC', NULL, NULL, NULL),
(633, 'Kajen Emas Santoso M.Pd', 'cornelia64@prasetyo.info', NULL, '$2y$12$xpmJCxNzfRarPvN19FgfaOZO.9kvsNvanP.vRGTekGsjfglhnLxTa', NULL, NULL, NULL),
(634, 'Kartika Paulin Purwanti S.Psi', 'mustika.utami@napitupulu.web.id', NULL, '$2y$12$ZrZHyqOwJ6HmdybskjZT.eSJ91QVt/7abt0YVjDK7rMiy1mrZc.Oy', NULL, NULL, NULL),
(635, 'Hendri Prabowo', 'oni.wijaya@megantara.in', NULL, '$2y$12$k80KQvXp8gibrTQ1z5a8XOtLDQkb3otTbcyeY0j20t8acetlU9MqO', NULL, NULL, NULL),
(636, 'Icha Sabrina Uyainah S.Pd', 'carla73@pranowo.in', NULL, '$2y$12$0t/HkXmsvKYSMrRaq/xrDOgcgKNw3YmQ5wHirlck11mD6ifqUNLES', NULL, NULL, NULL),
(637, 'Septi Widiastuti S.H.', 'mulyani.ira@yahoo.co.id', NULL, '$2y$12$IKB2T/FQdihZ9W.jg5YCWO3G6bggzX0klKVOG09Ch1q6x2R07deVu', NULL, NULL, NULL),
(638, 'Jagapati Pradana', 'garan03@gmail.com', NULL, '$2y$12$aJlrUEZDlhREjr8diqLimecdXNuTVuOLddrUWUZeRRbbVVQipkihW', NULL, NULL, NULL),
(639, 'Cahyanto Wibisono S.Pt', 'nasyidah.kania@permadi.ac.id', NULL, '$2y$12$s.SJ9acPUDDhGjPEkhb2xOwR6rN4AQ1yFtfyG.8x1rbjqLhO6nYb6', NULL, NULL, NULL),
(640, 'Praba Cahyadi Suryono', 'nova.nasyidah@yahoo.co.id', NULL, '$2y$12$NVlHTvT54Y/ypNf4wzjRqe1liXJAI.ogNbMgXDrV3Wu.TyxL3O0rK', NULL, NULL, NULL),
(641, 'Hamima Palastri', 'bakijan.namaga@yahoo.com', NULL, '$2y$12$LcLqP9V/vMNNdsUNa9pfvO3KA8OAYmkcjw6xV.AY/HoSnnOrzOXQu', NULL, NULL, NULL),
(642, 'Usyi Susanti', 'prabowo.michelle@yahoo.co.id', NULL, '$2y$12$afU7LD2P5ZjU.WQKzzZUpOVj0g81nCnlghC5emxl9swNg8MEZw0ni', NULL, NULL, NULL),
(643, 'Lintang Pertiwi', 'hutasoit.jelita@gmail.com', NULL, '$2y$12$qHXFYfxl1sxFdo2V47clAOSS76vvJPd98Ybfm/50z4duruDCprv56', NULL, NULL, NULL),
(644, 'Iriana Zulaika', 'widya.winarsih@wulandari.ac.id', NULL, '$2y$12$u26iJE6NxsLR1UzhJ7yvhOJxZ0HQbrnChiiYl5Fyt0RBsxpFu2YR.', NULL, NULL, NULL),
(645, 'Zizi Oktaviani', 'novi.melani@natsir.or.id', NULL, '$2y$12$0NYyzEueRcqXdrSfgtfjHucRUPq3CRIyQOSNwxG0naNVYkrKvzw0e', NULL, NULL, NULL),
(646, 'Oni Susanti', 'atampubolon@gmail.com', NULL, '$2y$12$JC8vXaEpC1KIomEaFX.0auvWSqj1H81F7pYg4tN1eGI69uYHAKNde', NULL, NULL, NULL),
(647, 'Harjaya Jati Ardianto S.I.Kom', 'kunthara.firgantoro@saputra.my.id', NULL, '$2y$12$RE5ADR2v5dP/30Q6pUVCXurnLT5USDYiBVYjQMGK5C9EHzm2tHYba', NULL, NULL, NULL),
(648, 'Tirta Hidayanto S.H.', 'hakim.lamar@yahoo.com', NULL, '$2y$12$JFexS5VqU1SW9OQk25aQ5OMRBDs6vV9iAEILCfTkbjlJd0zZ8xtLm', NULL, NULL, NULL),
(649, 'Ade Bakiadi Adriansyah S.I.Kom', 'gmelani@wastuti.co', NULL, '$2y$12$j3u5uFUsMswTb2wlUYz84eWFH5skVgOG.vlK2DCM08w.tLOBem9N.', NULL, NULL, NULL),
(650, 'Bahuwirya Mandala', 'eja.suryatmi@gmail.com', NULL, '$2y$12$5LcTbzG5x4Xk06SLHLWf8.2KDF8dYDHkzg7AK3T4NZflh.aKGu/K.', NULL, NULL, NULL),
(651, 'Irma Siska Suryatmi', 'sfirgantoro@gmail.com', NULL, '$2y$12$pnUFXjQhRVyCse7QGnxVweP6LA/KpqygUw7lZ0hgm0HIb/Q/rcQAS', NULL, NULL, NULL),
(652, 'Elvin Santoso', 'kuswandari.nasim@yahoo.com', NULL, '$2y$12$FC5HKkjPcC3u1JBVRtiYEOTAzikNoMDDA0AoQS6jTYUTgD38hHJlq', NULL, NULL, NULL),
(653, 'Febi Yuliana Uyainah', 'tamba.asmadi@santoso.or.id', NULL, '$2y$12$2zsN5HYmcWUTiw3OIaANheFzz1iuXc3fncaERySvPk6ceL46odlAi', NULL, NULL, NULL),
(654, 'Kariman Vega Waskita', 'pangestu.putri@yahoo.co.id', NULL, '$2y$12$lkwKBuz1TU.DQj1eJWCgj.twUYvUgyKsyOkl/.DCDAAzTOCj9xfdG', NULL, NULL, NULL),
(655, 'Ilyas Sihombing S.Gz', 'awulandari@laksmiwati.asia', NULL, '$2y$12$S6Hpn05m5J547570g9lEYOsdr6fpa4IuJVgsUsR7VX8Hb5jj8Y4qy', NULL, NULL, NULL),
(656, 'Aurora Yuniar S.Kom', 'daruna.wibowo@pertiwi.mil.id', NULL, '$2y$12$NdpvxNts99HiPW0IalYzGeZeGffQRJ/W8nHiBuKFeDnJ9JYLI3HES', NULL, NULL, NULL),
(657, 'Malika Suartini S.T.', 'vgunarto@gmail.com', NULL, '$2y$12$KA9Ver1aX.CkAhROBoCss.TdQyBjamMbx/Lw8YGHC0d0PiCPpg2xi', NULL, NULL, NULL),
(658, 'Rina Melani S.E.I', 'nprasasta@permadi.ac.id', NULL, '$2y$12$v4iuehcpk.uYkCyWXgpZiuk19C6N9KjGPgfAJcnxDrxBmKwFb/wvC', NULL, NULL, NULL),
(659, 'Victoria Paulin Widiastuti', 'hasanah.rahmi@gmail.co.id', NULL, '$2y$12$qiP4RISBs7FMEgkSXUppNewrKHfZn3k6ce01GN2a6kFPPb/qfgVbq', NULL, NULL, NULL),
(660, 'Cemani Opung Wahyudin', 'msamosir@kuswandari.in', NULL, '$2y$12$BztTKWExpZ1b90aTdQz9X.UDzB.vZN.I3VEXEvHkCBmizElV58h.2', NULL, NULL, NULL),
(661, 'Rika Melani', 'bnamaga@yolanda.co', NULL, '$2y$12$S5Izyh7oyqSzJ8EVGLITCuzqtTxhL87uEmaaqELOb3OUzOu/XlqBq', NULL, NULL, NULL),
(662, 'Paramita Riyanti', 'pandu.novitasari@safitri.in', NULL, '$2y$12$5279rIBXyqhVMoQHA75LAudFdFlLOa5ObtQeXRQP07g6XNx4H5ut.', NULL, NULL, NULL),
(663, 'Victoria Elvina Melani M.Pd', 'karimah87@gmail.com', NULL, '$2y$12$4ue3KADbSvFwZbNI6HAJTOFM1oiAekGqkgpUJqXvz6IHC9w2x9LWi', NULL, NULL, NULL),
(664, 'Qori Suryatmi', 'rajata.mustofa@budiman.info', NULL, '$2y$12$nc.o4Cg.zOZgInApOFsTweHrVOqBQkYunzLHHp9aGAXzleVyhlMV.', NULL, NULL, NULL),
(665, 'Elma Palastri', 'zalindra.habibi@yahoo.com', NULL, '$2y$12$r8ZI61xAKn6CSy9kV4XE0e2oGARCnx88WKTx9iT6K5udB1hi69ghW', NULL, NULL, NULL),
(666, 'Diah Uyainah', 'hamzah16@gmail.com', NULL, '$2y$12$scaszzABXqE5iMrVVcMpTeHDmHOzHSyZNdWK3/4R8DfXREQLYGFse', NULL, NULL, NULL),
(667, 'Cayadi Mariadi Sitompul', 'amelia52@pradana.biz', NULL, '$2y$12$Rc2T2pTRjHlR40GY/qHBquIxOYFQR/RU/DJYKGBIlSdI3il99Sr6m', NULL, NULL, NULL),
(668, 'Oni Aryani', 'susanti.tami@sihombing.net', NULL, '$2y$12$INnwSJC2kNqUY0E97AbFo.S1Y0CSlzneDNbcSM2YXO/FQPIGexkHi', NULL, NULL, NULL),
(669, 'Maria Haryanti', 'heru.farida@yahoo.co.id', NULL, '$2y$12$TVGE6bK1s8VRO8PQr14YEO9.pffuk04QVQw5IIymZ/SQgCAACVcEa', NULL, NULL, NULL),
(670, 'Bakianto Latupono S.Sos', 'lasmanto.hartati@laksita.name', NULL, '$2y$12$ikvGV1LhyvNaGrGyzZxC7eQWXSVRRoXcgFDMqSDDdFN5i9zNydU8e', NULL, NULL, NULL),
(671, 'Jumadi Harto Narpati', 'pwulandari@damanik.tv', NULL, '$2y$12$hsdi4dPQfNppIMW5Nkry7enqWS0uRIo9dw6iyuiDOqfqwVvcpBhym', NULL, NULL, NULL),
(672, 'Karya Maulana M.Pd', 'sbudiman@uyainah.mil.id', NULL, '$2y$12$347fRP3hH7o1I.1CHNeE2el7mwMnkQ0ywqACz9I1FxN7HV9ADqf9m', NULL, NULL, NULL),
(673, 'Kania Zulaika', 'maheswara.ellis@wahyuni.asia', NULL, '$2y$12$0J.3SnBP5S7Okm1um4CiXeFZC.56Ifty7igvb.Z9vKFHen7TqARGi', NULL, NULL, NULL),
(674, 'Gawati Puspita', 'bhidayat@gmail.co.id', NULL, '$2y$12$fWf6hZW0zSSzO0P1knN9/eKuwCExaiAzWL0uMJBJwZC3UxSZS6Cha', NULL, NULL, NULL),
(675, 'Ophelia Wijayanti S.I.Kom', 'hasna.mandasari@gmail.com', NULL, '$2y$12$GsGdIvjoYoH5YyQQxnNEcu/mHRs5r72rPvz3/QiesB0uiU5WQe2IO', NULL, NULL, NULL),
(676, 'Kani Lailasari', 'vega.setiawan@rajata.info', NULL, '$2y$12$DqcuRXOgRHbcpbrQafacH.sg2./FZH2ZNkiKILWeG5YBYWAJZ/lOW', NULL, NULL, NULL),
(677, 'Dina Yulianti', 'nasyidah.satya@wacana.in', NULL, '$2y$12$IEi70ph/uBJImBlCJRjo3e2.LfZFXrgKZoOGgCW289TbbQLBsLxgy', NULL, NULL, NULL),
(678, 'Bakiadi Widodo M.TI.', 'gaiman.prasetyo@aryani.biz.id', NULL, '$2y$12$RHH2xPh4QbUOs6rjy5nVM.j0mVb/eGXa1hLTUc999sLevzeiqQ.0e', NULL, NULL, NULL),
(679, 'Tirta Kacung Ramadan', 'nmayasari@novitasari.biz', NULL, '$2y$12$6m7e1PhrU.rk4PPB2/VuCeIN8jtey90cCWhwG7Pat1..enztW7Vwq', NULL, NULL, NULL),
(680, 'Kala Damanik', 'anastasia61@yahoo.com', NULL, '$2y$12$TpPZUmoBlOcscZ3cbB8DD.NWCPND.m9.fQsklm42sdBRSX5tV1/sa', NULL, NULL, NULL),
(681, 'Vera Rahayu', 'jamil.dabukke@yuniar.co.id', NULL, '$2y$12$SffgX68/kNaBeF/x35hu/uiVyGmTYVeAUUZcA94XtbHkxY5pocCKW', NULL, NULL, NULL),
(682, 'Ajimin Adriansyah S.Pd', 'siti.thamrin@maryadi.net', NULL, '$2y$12$6m8sbRwYyWvA1X2nYdUVReZs8Jw5ewr8K/zSDUY4uTXJdrwwyvlxC', NULL, NULL, NULL),
(683, 'Tiara Palastri S.H.', 'eli.kurniawan@rahayu.com', NULL, '$2y$12$a5JxZWXtqPlc84dDHG1kuuuyPsG/qLBDzuzp8yqcWWrTW9I0mn.ZW', NULL, NULL, NULL),
(684, 'Latika Halimah', 'ajimin23@firgantoro.ac.id', NULL, '$2y$12$.ItTDefH7sJZj6iVoVg2P.il.UphQEr73b9G0EWOlMBW//UxOpH1i', NULL, NULL, NULL),
(685, 'Ganjaran Zulkarnain M.Farm', 'tedi14@yahoo.com', NULL, '$2y$12$DHJAoxPBd6n3DiRr6VT2k.s29BVs2654CZoQB7bxF/KaYhc5rXpVG', NULL, NULL, NULL),
(686, 'Sidiq Raditya Widodo S.Ked', 'mmandasari@yahoo.com', NULL, '$2y$12$QzfBStI3XCY5rAUMEZu/NuJNtOzFw.85ohRshMR1qjxofBm5nobS2', NULL, NULL, NULL),
(687, 'Lidya Ifa Hassanah S.IP', 'qyuniar@santoso.tv', NULL, '$2y$12$tZlBW92gpsOV2Btjy.s27uZJlv3LCmRdZzFzlkksWsie8f6247CfO', NULL, NULL, NULL),
(688, 'Victoria Elvina Usamah M.Kom.', 'zalindra67@yahoo.com', NULL, '$2y$12$rGTXiGrblyg70ZKeFm5Hg.gv9mLWnSs5Z7y5p02YWTyFN399A8vgS', NULL, NULL, NULL),
(689, 'Restu Yani Farida', 'zsitumorang@gmail.com', NULL, '$2y$12$9AmAP2QdRV7mgPyk1aabK.LsmtvWI7T4xPIgsCCsNNT4pV8SKl9u6', NULL, NULL, NULL),
(690, 'Vicky Nasyiah', 'titi.usada@yahoo.com', NULL, '$2y$12$N8KrkX8Pb17jmEiSkVZPVO.5yPD8QItu56gmRTtEvyNr1j6F9daPu', NULL, NULL, NULL),
(691, 'Dariati Uwais', 'usuwarno@lestari.sch.id', NULL, '$2y$12$NLNCvwFDfNiO.XSltOKxoua.feAXkJdQsoq2A09cMqAHZzxhYLSYC', NULL, NULL, NULL),
(692, 'Kasiyah Nasyiah', 'najwa30@gmail.co.id', NULL, '$2y$12$aBBHkiqnmGz0VSkmwBwnfeUIpEf8XmqKhq0DSkqslL1xLWcBCpyYK', NULL, NULL, NULL),
(693, 'Gambira Hamzah Suwarno', 'mangunsong.dasa@sihombing.info', NULL, '$2y$12$jt2dFsp9V4IX6ptj/sXNI.qWJl6TwIwPwETJXA9xsEoWsUbDbGBB.', NULL, NULL, NULL),
(694, 'Raharja Rafi Napitupulu', 'yulianti.nova@yahoo.co.id', NULL, '$2y$12$N49dnDP/ajsNzeqlGvvLcOLRoqAVQPKg66DxkdS1Vo/YPmz09jpbm', NULL, NULL, NULL),
(695, 'Langgeng Luhung Mandala', 'jefri38@yahoo.com', NULL, '$2y$12$X0k/b/88Br4YToO3T7eFRuDEOSHncGL9jMYqgf//gWUaspWHXkK6K', NULL, NULL, NULL),
(696, 'Aditya Siregar', 'kemba44@hutapea.in', NULL, '$2y$12$lfE1noT0z/6MoaOjlmrlhOwFX7UxuR1AiJGyHl6AE7xYwpV4ofS7S', NULL, NULL, NULL),
(697, 'Rina Aryani S.Gz', 'jindra.habibi@yahoo.co.id', NULL, '$2y$12$VW7aE5ytA2nmTQrl.9H99.xSZ1DABWtJatJgq9m/VmcjGB8ZBtq/W', NULL, NULL, NULL),
(698, 'Vicky Rahimah', 'rini74@yahoo.co.id', NULL, '$2y$12$65rEqO81BvULKuvbKUSmleKJlOpyVCP6ETqRYyMrZsKrIubOl6Rzm', NULL, NULL, NULL),
(699, 'Ade Oni Zulaika S.IP', 'gtarihoran@yahoo.co.id', NULL, '$2y$12$Kn9wv.fYh1QQ3.RXhdjwze0xVtjVrPg7v2z.Sh/KoZU8BaAzodknu', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(700, 'Bala Saragih', 'zlaksita@gmail.co.id', NULL, '$2y$12$P/mqHXYytwHbzT6Q3.VJkOwePbym99nDhVB1ES1cWSIhgmhs1vcXq', NULL, NULL, NULL),
(701, 'Zelaya Patricia Hasanah S.Farm', 'raihan.anggriawan@gmail.co.id', NULL, '$2y$12$FUxBPa1QERCYMOiRgmgbrOAf/IB46DJ7oex.HoNqeoQNklnHTTZN.', NULL, NULL, NULL),
(702, 'Nova Yuniar', 'mpadmasari@pertiwi.mil.id', NULL, '$2y$12$8/C4cfepxMqIJHixsqpZM.j0v8n6Ol78P2vtX/lsTXXmVr9v0jdVe', NULL, NULL, NULL),
(703, 'Qori Yolanda', 'hairyanto.purwanti@gmail.com', NULL, '$2y$12$xMr3ucb7ODqiGIzz.zdrge9hUa9hTqXWdNkcDpavx0xMnkbx9WA2K', NULL, NULL, NULL),
(704, 'Tira Prastuti', 'anasyidah@yahoo.com', NULL, '$2y$12$P1S/UERZVT9a9Et8I6DoieUrUiJDiq73E3FhY5xKe2BhFLe7RF9yW', NULL, NULL, NULL),
(705, 'Ajeng Tira Wahyuni', 'hastuti.hasna@yahoo.co.id', NULL, '$2y$12$ytVW//q7Qoxa4xpXR/y7lOgVLENLC/i8khzkThGSfGdu1byB.qLVK', NULL, NULL, NULL),
(706, 'Tami Anastasia Handayani', 'drajat.suryono@gmail.com', NULL, '$2y$12$z.XiX5tXaMlmvTEJuMb2QuWcB0J0Ak0G5mtcsOOgGRloy5OPxeCBW', NULL, NULL, NULL),
(707, 'Lintang Najwa Uyainah M.Kom.', 'dalima.wahyudin@yahoo.com', NULL, '$2y$12$asXVrqNc8kcfOTlH6hfdXORnLmgLqomFKKWdJRPfLT6LRv885xmUO', NULL, NULL, NULL),
(708, 'Dewi Cornelia Handayani', 'aisyah.mardhiyah@yahoo.co.id', NULL, '$2y$12$ktt1aJrjorYpAb8la6zAJ.tWkArnf4sWWbQ6VeCMmIFNfpOVcO1s6', NULL, NULL, NULL),
(709, 'Malik Dabukke', 'bakiadi.mayasari@waskita.in', NULL, '$2y$12$YWk9r7yY1/1Sv2/B171DpeMqJKdIsBUQjpxkAMYeWoTj8Js3XHsGK', NULL, NULL, NULL),
(710, 'Karen Zahra Maryati M.M.', 'hakim.imam@mustofa.co.id', NULL, '$2y$12$4V1veGLMazJgHZs4MpJDo.V1vTqeLuaMLWLLea250d2.BjXIadcne', NULL, NULL, NULL),
(711, 'Citra Sari Pertiwi', 'harsana68@gmail.co.id', NULL, '$2y$12$jr01u2pg48pysczntQ62geNQk5LH5zUqvcwYsTHP/COJHMEyiLBAu', NULL, NULL, NULL),
(712, 'Edi Ismail Sihombing S.Ked', 'adriansyah.dimas@gmail.com', NULL, '$2y$12$AOoQQYh86p9g26McwUq7qeAy29Qu6xRuHOBuKTYwmxkf9jB9r5rWa', NULL, NULL, NULL),
(713, 'Maida Usada', 'winarno.prayogo@yahoo.co.id', NULL, '$2y$12$jWozdAkeno9tKfsvtmOMe.TInC9d840R/RKu0eh.VHmfFYGoifi5q', NULL, NULL, NULL),
(714, 'Bagya Sinaga', 'darmaji.simanjuntak@suwarno.biz.id', NULL, '$2y$12$3sdWU4mt6IkaX5JzpFkL0OovFyI79VaYhvVnyVZXFOiMrppb2/t0S', NULL, NULL, NULL),
(715, 'Septi Yolanda M.Kom.', 'hakim.almira@mayasari.info', NULL, '$2y$12$Lvvev0C8aicirsrWjjf7iu7nrrapjmfDaigL3YGVueIDMCu3w92Lq', NULL, NULL, NULL),
(716, 'Calista Lalita Hastuti S.IP', 'vrajasa@yahoo.com', NULL, '$2y$12$9vyXwD/kKF8qHalEN.0qme/lwGtjim69Y9R7It5ZJUNL1iOuq7kBe', NULL, NULL, NULL),
(717, 'Melinda Yulia Wijayanti S.H.', 'pangestu.irma@rahimah.go.id', NULL, '$2y$12$pDBN1rbzVgR8u/ShpCkJJum0kXlaxkaBWbwvwRcH9cOTTGGhXiUOO', NULL, NULL, NULL),
(718, 'Chelsea Usada', 'dongoran.lalita@palastri.mil.id', NULL, '$2y$12$ysL8uU1d6RoqoOy2FUDaH.i/mkBGgtLZcR260liou8ZW/SbmJw3D.', NULL, NULL, NULL),
(719, 'Imam Hidayanto M.Farm', 'puti.tamba@melani.biz.id', NULL, '$2y$12$6s7TS4Gk5NDzl6mSenajRenZqFXmrOoyVmiFPAFq/5r00ZTYgUxgu', NULL, NULL, NULL),
(720, 'Nrima Gadang Ardianto S.Sos', 'tina.wulandari@iswahyudi.biz', NULL, '$2y$12$SQVJ2pKCFB.novlyfVNGMO./YzwDBz4aoGKHQ2VSTZ4aRLEZKsBKy', NULL, NULL, NULL),
(721, 'Farah Melani', 'puput.aryani@wastuti.com', NULL, '$2y$12$C3slC6XoCItO3sHDLRwxhOXEEH5OrVoEUvRhM5ei8EsEzlcG.dWw6', NULL, NULL, NULL),
(722, 'Lidya Oktaviani M.Farm', 'tamba.cici@yahoo.com', NULL, '$2y$12$zcASH0sJhPKlQNGpnrS6neXv7qFpgru.aOaVlHDNvAO64ktwWV0YK', NULL, NULL, NULL),
(723, 'Puti Fujiati', 'karma.rahmawati@hariyah.info', NULL, '$2y$12$pmV/UJCjlsoHi/JJJ7tq4eQoPB0e/hn8yoG5ci4OMyFe7P4pJmNB.', NULL, NULL, NULL),
(724, 'Restu Andriani M.Farm', 'laila.prakasa@yahoo.com', NULL, '$2y$12$Fgczg5.RZqiqwhNIITL0z.5u1/23zqnvtgg609d2F7..BpGpbxZsG', NULL, NULL, NULL),
(725, 'Lidya Malika Rahimah S.Sos', 'rafi52@purnawati.web.id', NULL, '$2y$12$gxHBp7f1qBf29Hdsvpd9HuDKhUGu4.BVoCyOsnUZb1GPfGwE7qPFO', NULL, NULL, NULL),
(726, 'Calista Mandasari', 'unggul77@purnawati.biz', NULL, '$2y$12$/A2.XIO6geijn1xCVC5HAOg7lSTxtK.qPLtDb9XbVn5efWVwKAmTC', NULL, NULL, NULL),
(727, 'Luluh Lazuardi', 'bnurdiyanti@gmail.com', NULL, '$2y$12$XHSPADZbPD7SU36Q57gkFen3I2Z1aG8sFlrKG/nRTgpesO5EhYgBa', NULL, NULL, NULL),
(728, 'Daruna Saragih', 'haryanto.baktiono@wibisono.ac.id', NULL, '$2y$12$/IdzRSzbxOPATC1.AcAh/uL2NRo/o2V42XbIaNWorBgTPYKnwcIJy', NULL, NULL, NULL),
(729, 'Gaman Hakim', 'winarno.jasmani@sitorus.asia', NULL, '$2y$12$YBI310zkRUXnHYyOaPFqr.kqhcnUsqOi4WeRRgNwKujetgO7.xPN2', NULL, NULL, NULL),
(730, 'Jane Sudiati', 'kusuma.tampubolon@pangestu.asia', NULL, '$2y$12$4u4dfoIe2I.hq3BZmvpRwejk1UuuWeyJf1R5ws4Km5Y9AE.6.kTD6', NULL, NULL, NULL),
(731, 'Pangestu Wahyudin', 'sdamanik@prasetya.asia', NULL, '$2y$12$JoDkeOT0ykECXQvwUIfHxeek9PyX4HJZccPnI/8wkdYl4ZnPPp/q.', NULL, NULL, NULL),
(732, 'Sakura Karen Suartini M.M.', 'wibisono.kawaya@widodo.org', NULL, '$2y$12$xurFickU7.90.zjRwpoTeOVqHzvpabHY0kbNyjoiZK82pdX2pUz26', NULL, NULL, NULL),
(733, 'Yessi Cindy Lailasari', 'jailani.hardi@yahoo.com', NULL, '$2y$12$DGE7yaV93ilUA3uYi1mn5uo.J9EBJgoVD7mlvbaHEzeAIziRplqNa', NULL, NULL, NULL),
(734, 'Hafshah Safina Permata', 'saragih.mustika@sinaga.desa.id', NULL, '$2y$12$MFN.LiU2lwZ.KcnsJviC9evIzgU2t1EmzjAhyhUsovuoHCDfuPY9O', NULL, NULL, NULL),
(735, 'Oliva Zulaika', 'waskita.abyasa@yahoo.com', NULL, '$2y$12$0Fe.x1KjUnHC0U70aniR6.3FtBvOT92J6dhc18iXAtFF4uwZsNcBa', NULL, NULL, NULL),
(736, 'Zelda Hartati S.E.I', 'maheswara.puspa@yahoo.co.id', NULL, '$2y$12$Kf4EvFwkrYi/HglePWlKNO2DWuDhOsGLJSJMCwJlD7iPsVsWS86xe', NULL, NULL, NULL),
(737, 'Yessi Hesti Utami S.Gz', 'tami.palastri@januar.biz.id', NULL, '$2y$12$7apCMCZnKYI.xk4UXspuYOkHP/F7NwVKCZHFEl8g7NPfXqCOoYwhi', NULL, NULL, NULL),
(738, 'Yani Kartika Prastuti', 'dmaheswara@pratiwi.com', NULL, '$2y$12$UwRudYn6hdZgcx0FCOd6weHaKlrrZOVGBktPMBqKsLyWujKRTz.Hy', NULL, NULL, NULL),
(739, 'Zelda Laksita', 'ynamaga@gmail.co.id', NULL, '$2y$12$q3BCVNOCmAReD/8ZcuBlAOwuliWMMhztSEYRKw9UUNCN8DyANbpwO', NULL, NULL, NULL),
(740, 'Hani Purnawati M.Farm', 'hani43@rajasa.in', NULL, '$2y$12$ejDxxGEaekw3FKGt6O9.O.LySa41incZmlchYNMhJSYTeyqvCnTdi', NULL, NULL, NULL),
(741, 'Puti Mayasari', 'asirwada.mansur@gmail.co.id', NULL, '$2y$12$hQE3V2s1t5i/ZG40QWH9nuGzHDn/maWntCJVBrFHWcqYeJ8vQUHwS', NULL, NULL, NULL),
(742, 'Fathonah Tari Wijayanti', 'fmaheswara@budiman.tv', NULL, '$2y$12$8.y1KP6RHyj8Yox94iIn3ukQiH6iysCY0Tb/OO1/bw9UPLD0rlO/C', NULL, NULL, NULL),
(743, 'Dinda Widiastuti S.T.', 'eva03@utama.mil.id', NULL, '$2y$12$D75sR0zV6Mt6UH31HBggaOKFppR7pyUGfOKv0HOvu6yKBi2yH/qqy', NULL, NULL, NULL),
(744, 'Jono Saragih', 'qriyanti@yahoo.co.id', NULL, '$2y$12$cJM8nB/c4g7NSU0YXPbZb.jEpLq4bwncPESlPyJOystnV5nJrjiTq', NULL, NULL, NULL),
(745, 'Jaswadi Saptono M.Ak', 'hanggraini@yahoo.co.id', NULL, '$2y$12$1.o.7XbQ52xwEBDZIU3HM.7N2YfVS0Bn./9PjcmB.6VfQPczCyBHS', NULL, NULL, NULL),
(746, 'Bakiman Hidayat', 'almira70@yahoo.com', NULL, '$2y$12$OLf6ufD4DIyguWl8fmfMKeV.vuG6VvgvKzSlqouiqGSkPMlA9lVcG', NULL, NULL, NULL),
(747, 'Ani Keisha Winarsih S.E.', 'gading49@yahoo.com', NULL, '$2y$12$VYcP5pxgaqNKxfT/NWvKQubNK15xDJjOA76iqQdEbyesdwAiHAS3y', NULL, NULL, NULL),
(748, 'Banara Prasetyo S.Farm', 'paiman96@yahoo.com', NULL, '$2y$12$6yedChXRJxAt9tWUtrQJzeqnvJKPg3mk1X1S3ll4Twb1mXsO.taPa', NULL, NULL, NULL),
(749, 'Vicky Prastuti', 'elvina.pratiwi@purnawati.name', NULL, '$2y$12$CvOfa9S4FOyA8Ooku79I3eMjHBeSwYD4VhQCE00S5fGF70tJUmtQG', NULL, NULL, NULL),
(750, 'Saadat Siregar', 'ymulyani@megantara.mil.id', NULL, '$2y$12$PfIHcE4MNbV5IQDHnb2laOEe7ixqSg.XTod7rswSzMp/rptY/mR8.', NULL, NULL, NULL),
(751, 'Gamblang Asmadi Wahyudin', 'laksita.ulva@yahoo.com', NULL, '$2y$12$xN6sVkazVcku8Ea/8m7ejeklDu7bLpMdWzAxfgxo6rQHuPMqmI9H6', NULL, NULL, NULL),
(752, 'Zizi Gabriella Lestari S.E.', 'sihombing.mulyanto@permadi.org', NULL, '$2y$12$11EEVBtZ6vBG4Fl6u0M5GOgqWgC.5TFqwlkOwR9UykJ7ES2nRsERe', NULL, NULL, NULL),
(753, 'Kemba Januar S.Pd', 'nrima10@aryani.biz.id', NULL, '$2y$12$tvvMtpVXUsb3dvR9bJUd8Om0TMHaU7uswjeCLFpn8AptQZ1/1.VAS', NULL, NULL, NULL),
(754, 'Edison Mustofa M.Farm', 'narji41@prasasta.id', NULL, '$2y$12$h2x2rrTEXSRUYKpU2iPmK.25cot2Nf9uygIDCBwjTe9nR8K.uC61a', NULL, NULL, NULL),
(755, 'Cahyadi Ozy Santoso S.Farm', 'cagustina@gmail.co.id', NULL, '$2y$12$9sfxqW2kEvzE3VjvodS0kew2sAT4gBuJqbXhoOLGX4Wcf.BqmS5rC', NULL, NULL, NULL),
(756, 'Ihsan Saptono', 'btarihoran@yahoo.com', NULL, '$2y$12$0kUahR3R4QL3zysbON3q6OkX06M757eZ/3LXyFyb6AQJAriny9DhG', NULL, NULL, NULL),
(757, 'Nyoman Atma Adriansyah', 'yolanda.nrima@yahoo.co.id', NULL, '$2y$12$fSfTW.VVK2ZBIbNCQwq60uB9agoyVQItYp4s/0Y69fxiUSOSiyGou', NULL, NULL, NULL),
(758, 'Michelle Purnawati', 'osuryatmi@yahoo.com', NULL, '$2y$12$QaeLVIWlqFOsMIVUDR81Aed3Hc.JizTgN2Ocmb/xFLhxbYBFRzDUe', NULL, NULL, NULL),
(759, 'Manah Januar', 'ysimbolon@nasyidah.mil.id', NULL, '$2y$12$3ytdWAi2U80twRlXSBi8U.Ohpi8OeS5b6TRx6mzEoMR.R5apRXVl2', NULL, NULL, NULL),
(760, 'Lanjar Dipa Wahyudin', 'gusada@yahoo.co.id', NULL, '$2y$12$/rfxm/RuKgBKUXQxpdG74.YOQzM35k6vWnNymbGFvp2P1WfSLt99a', NULL, NULL, NULL),
(761, 'Usyi Safitri', 'makara77@yahoo.com', NULL, '$2y$12$Bzf.F/I9PAFPa7IGie0xOeVUBWYZamTYv80xJ0YyXy4j1p2wvUyHC', NULL, NULL, NULL),
(762, 'Gatra Wijaya S.I.Kom', 'umaya10@yahoo.co.id', NULL, '$2y$12$DWPI8GHlA7rbfUcBl.UT3.5P6qAeLCHvKQRavrn8l.nZrbZY49Opu', NULL, NULL, NULL),
(763, 'Intan Suartini', 'ajeng.nurdiyanti@gmail.co.id', NULL, '$2y$12$.PjihjKVbFji.POzYXdii.XgCjZPkTwXNnsnS1wvVk8bK9xbZPK.G', NULL, NULL, NULL),
(764, 'Jaka Sihombing', 'rusman90@gmail.co.id', NULL, '$2y$12$xNiS2EkuJJNC0RS83vAqeuA1PIx/NESCRyygoY8Vj4GStvu.zAYwC', NULL, NULL, NULL),
(765, 'Paulin Haryanti S.T.', 'ltampubolon@kuswandari.my.id', NULL, '$2y$12$1F4sTYpPH96jbuXp7hdTeOtVpcaDaPWq7LocSQmhdE5SYlano2sdm', NULL, NULL, NULL),
(766, 'Victoria Rini Uyainah', 'belinda.nainggolan@hassanah.sch.id', NULL, '$2y$12$g6WVcrK9MvqgAr7Cd/8rU.Ej4ElUnmn2mXrGh8JE0X7Le757CbYAS', NULL, NULL, NULL),
(767, 'Ika Fujiati M.Farm', 'mahendra.okta@yahoo.com', NULL, '$2y$12$0j6gar.k2i8z/xmMVdhnIuA33Y4K9u4tFYGI9PKCCDvNnxjViIUlS', NULL, NULL, NULL),
(768, 'Maras Marbun', 'prasetya.zulaikha@firmansyah.my.id', NULL, '$2y$12$jEkS2jBSBV6M/eKBtU2AVeFsUi6KovFo6yMvawr.bHdLcHPeiRn2u', NULL, NULL, NULL),
(769, 'Dartono Putra', 'fwijayanti@wibisono.my.id', NULL, '$2y$12$jrLg1DErSXtxW2fo4qUAuurCPC2m/lJikMap3owKGvKb7Q6B6m8Fi', NULL, NULL, NULL),
(770, 'Yulia Yunita Zulaika', 'prabowo.darmana@gmail.com', NULL, '$2y$12$LHERWrDJBO3bus.X8duQNOnVDeMcIrF25A8uopVzjQNXYDtFM9gvu', NULL, NULL, NULL),
(771, 'Devi Alika Mulyani M.Pd', 'hardi.wulandari@gmail.com', NULL, '$2y$12$9lvh8XTXHeqpzQFP3OQHOeXBLb1t/LCkNU1FPAePZV6ogxw5ze2/2', NULL, NULL, NULL),
(772, 'Rahmi Sudiati M.TI.', 'yoga.santoso@gmail.co.id', NULL, '$2y$12$Ys3jxsRqUv4bWUmxUeB9c.TnP5PH9KhoNbz9CL9rn2muMr9D60TSC', NULL, NULL, NULL),
(773, 'Putri Nasyidah', 'keisha81@gmail.com', NULL, '$2y$12$tWUAjA4evjcHxjL4lgi8l.aE1RDv9jkM68pThqqs9cQgtnsHhiA32', NULL, NULL, NULL),
(774, 'Jati Halim', 'xrajata@gmail.com', NULL, '$2y$12$NZxFHOzxGZXk4U/MhWEENu9EtkJwxop3qoaVY2lGoSO9AqDN8jN.q', NULL, NULL, NULL),
(775, 'Humaira Rahayu S.Pt', 'ynovitasari@novitasari.desa.id', NULL, '$2y$12$fWd4LkWS9.3Sb6GOWy09dOFBeW2Cw/TNycoUuvtXZle/c/4KVopAi', NULL, NULL, NULL),
(776, 'Okta Manullang', 'jwaluyo@yahoo.com', NULL, '$2y$12$pzLWDuYoIjRR/ia2NUrUg.siPoZOnjVNZG1nBY5XxfNR5zBG8H2Lu', NULL, NULL, NULL),
(777, 'Unggul Salahudin S.Sos', 'amalia.zulaika@gmail.co.id', NULL, '$2y$12$VtX6kjj0.Wj0m.Qb.lj7Z.W//9G0nGULtRu/e.bY09v9/dxsw66HK', NULL, NULL, NULL),
(778, 'Ratna Safitri M.TI.', 'kriyanti@yahoo.com', NULL, '$2y$12$LXanTqQpE8n5K/DlMnqiAOA2dGsggOMgfJc9pnEr4MdipKCf5r1U.', NULL, NULL, NULL),
(779, 'Mahfud Kuswoyo', 'diah.marbun@wijayanti.org', NULL, '$2y$12$T3.fLzfhBD4hVJhaFIijAeOWai3WiZpuKFx8diyFLoLynnTi3og3u', NULL, NULL, NULL),
(780, 'Cahyanto Harsana Halim S.Pt', 'fprasetyo@gmail.com', NULL, '$2y$12$LbduLGViT0LA1MNxDImkwOIIFe/NLkU68it2yaon0/0FGxVNPSBnm', NULL, NULL, NULL),
(781, 'Zaenab Suryatmi', 'kadir.nababan@gmail.com', NULL, '$2y$12$7PJlRwGqzANncBowg3hzuewGpdb2Zz6j44sYzy1btZ1QtG6G2Uw.m', NULL, NULL, NULL),
(782, 'Ajimat Prakasa', 'wijayanti.gatra@gmail.com', NULL, '$2y$12$jLd0hOokZq17TV8kp8Lxfe7NDjgwZ6rKOGjCaeZ4/FpOPqKsgdP3O', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_sales_sales_id_foreign` (`sales_id`),
  ADD KEY `detail_sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_sales`
--
ALTER TABLE `detail_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_sales`
--
ALTER TABLE `detail_sales`
  ADD CONSTRAINT `detail_sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_sales_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
