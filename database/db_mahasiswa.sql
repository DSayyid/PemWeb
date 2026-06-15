-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2026 pada 06.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-admin@123|127.0.0.1', 'i:1;', 1781326422),
('laravel-cache-admin@123|127.0.0.1:timer', 'i:1781326422;', 1781326422);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jurusan`, `email`, `created_at`, `updated_at`) VALUES
(5, '1234567', 'Muhammad Sayyid Azzuhdi', 'Informatika', 'muhammadsayyidazzuhdi@gmail.com', '2026-05-24 23:55:38', '2026-06-08 09:58:57'),
(14, '10001', 'Muhammad Fauzi', 'informatika', 'fauzi@gmail.com', '2026-06-08 22:36:35', '2026-06-08 22:36:35'),
(16, 'goldhama', '132', 'informatika', 'hama@gmail.com', '2026-06-09 00:29:05', '2026-06-09 00:29:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_24_140058_create_mahasiswa_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0POZfOOkaBPikpCvog0sGsWoLb5OQqxx7YYo9uGW', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3RWTFFoTFA3NUxVTGFYa2Q2a0YwREhSVGFvUGRRMldYWkFRbVQ3TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780984157),
('1rLI1CMC2eAKnj4XuGPzgb92ecRMZiB7DGOQFY8v', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0UwOEkzVTFGamhqUFR2bUM0Y3hIaU5Sb1NKSWF3WkVqR2RtUXVKbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780937295),
('2J2UEipGkG4z66bzyWIXeZNYVtVFuyUlPmDvcnhv', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUZRM2JobHUybVViemxOOVM0YUxET0lsdjZlbHFzcHVFWFI0RENVcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvMTMyIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780990291),
('3i4SyX27YZ5xmF2mzqCQwCvZaDTKJ359A6qYooV4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 Edg/149.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHRMbVY1OWFaQ20yeWhHSmJDYlJKdHJIMzc5NUVlYzVhMjNlYWFmRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1780990035),
('a23Kev4VV0ZpEKwMyzb7Lk3sdQ52zVhxTNaPLedV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36 Edg/148.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlQyd2NRV09YY09MQ2xDQmNtajlXemN1cG1zVkE0YXdJTHJyNHBWayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO319', 1780556212),
('abQP1h15WxixUOwpBgeOjYOC90mFkbyt9IdHmTO5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 Edg/149.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRkpNelUxS2hrSXJVeEF4bG5ycjR6NWdtQm1OV2t2NFIybG5OZjZ2NyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9tYWhhc2lzd2EiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1780937957),
('Asw5B1RfMbBWihd2TKFR9YekHYxSyLzQJQVyN80Y', NULL, '10.10.59.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 Edg/149.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDFFd09qNWQ3OWVxbHczejV0VkxJVG5BVDN1S1JxVVZvRDF2V21SNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzQ6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9tYWhhc2lzd2EiO319', 1780983117),
('cOYa1CfL6znSHG0SVecahwoQP1msE70ygqXuoT0m', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWZRYlRaSW5nTVFicDB1VFBPeEc4dHl6VXQzbFI3YXJDMTZ4OEY3dCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780929539),
('f7uqHngMLrkAJSmrHyXZ9x1pyjoDHyAXCANgZQ4H', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.122.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWGhONWpkY2hlbGNXeUdYUnlyRHp4bUtvZ3lxWHZzQTlGdzNkN2E0SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1780558401),
('FX2Wdm1he0pRzux0g2CFEtF9tAcW6dO57TWyMQuX', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidW5iMlBjNjlpSmVsejRNZXdFaW1ybkI2NU54eVo1bERYRWVSQUpDZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780983366),
('G72TWOAPaCns9ec2tF9otoaU9MZAjNDBZiIRsB5F', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXNlUzVPU09JekZzZHBlVmRkNHY4UEhnTmRnbHN5WmhIYjQ2cHJzRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780929429),
('Ghaijz6ne6cCsrnHRkTqsIilB2gaEmw0I5HNmsVK', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkNiYVRacGpDaDhJTXA3V2JKT3V2R2hkdE1lV0VGQ05QSDloZ1Q1NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvUnVzZGkiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780937720),
('ikCn5DlLmBK2XGERR6Mrn0wf9C4b6v4EcUdPHX6u', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW9mcjhUaU5FeTFxS1c0MEhyTGNIN3o2TlRkQVNOc2lzSHZ2cVFIeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780990238),
('ikJkPyAjlcisNlhySUVB4957V4VHiXRXfdrykYMS', NULL, '192.168.1.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36 Edg/149.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWRGQ1NDOG94TWVpUUF3VjBmU3lxUHlKUE1LckR5ZG9KNWpkNmZhOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvUnVzZGkiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780937577),
('iuexkuE4DMZcNdt70x0yuIODQeeRbhj1cHm4It0Q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.123.0 Chrome/148.0.7778.97 Electron/42.2.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRm9mY0F5ZThsWlhpRzI3S1RwSE16ZnY0emdZekhzenhmTjRQRWxvMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1780924589),
('jenGa8et0ld4lqQtw4DtOFwKZ3nmATArXhVxiaIT', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmxmMXBjdVFWRm1UM2txVFF5eTVtcnREbHUxRHNZZVh6S1BWZTdXYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780984123),
('KjU3AuIs9oXq2pH4KEgyMfahXOx1C1vqvh6Jjj85', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVZSSnN2cURPNmEwUnMyU20wVGFLdGZpUEVUN2MxejltSjRhTkt5TCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvRmF1emkiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780989525),
('lq6GmmZj4FH7f736qVb9BCNLUMrSAojdOdDlMSc8', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVhad0pGNkswOVk5TzZlelNoajMxNUQ0eWxycDF4cUV3WWUzOFZUNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780983204),
('MLd8cM9cG69KjBuhF2wgLUDNsVKPoTtP1mpE9p5i', NULL, '192.168.1.13', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSzdjN21zdEhnT2xoUW10QzBEcmlpdzlOSEl2WUw5a3JSN1pYRGM4RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780937035),
('nxkoypKsh5ZN9uAkTR7xSoQJKHKuNhSKJUTNtfcc', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2dhNklWbktBYzh6Z3B0UnNINHZidmNOMWlrR2NreFlXSFU4NDVNbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780990091),
('OyCEwfNbtEc2afGcmbDbQoaIb7yr9HsHWIyB3wbr', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJvV256c1hhZDV5STltc05kbDZFN2xxT25qbXJrV1E0VEZnZjFuTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780937266),
('oZm3TwPmiwmAxDTVSnMaF20l8ZtDjy9hNCAOV1xJ', NULL, '192.168.1.13', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMVZyTVdBUUVYUXdlTHdEUmhQdWFSempYRHFKZXpXOWRaRHVaT1NzSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780937281),
('pONfERLeEBdq68jBirBGpUtnjUsXtFU9hqG7yghB', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTFRNXZ5eU9CdkhycFNIdGJhZEFpR05udDFBd1Bkd08wUXdXU2l5bCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvMTIzNDU2IjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780983330),
('pwX3aTqkOeO05VmHNWm01fYkXUWKKKkuT9HiseDX', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHJUaU53d003VHplWUVlWjI0eXNaSVRmRXlkSkNaSjgzSXZTSlNEQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780983395),
('Q0Up4v6h8KLGFl9Qt1QMO7avHUYMi0av6T1gnVIT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.122.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWVNuNGZpNjZtMlFFdXRleHptb1lqeTY2dTh5eXFSN3gzeTBkRHR1OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780558296),
('rJgFasWuZYN2AlJMN2nLpXpf9rtpzVDOyRpmGHtC', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSERyU0c1NmpHR2VPU09Jd0lqQkVtRHk2cW9FMUdick1nSlFuSnlCYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780990145),
('rJZFTsAyKeXuSyYdLKsIljcZkXErPujlP4Kc1buL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.124.0 Chrome/148.0.7778.97 Electron/42.2.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWEJlT1c4b2t3Q3JhNnBhejh2d3d3OW1CaUtobEt1eU9IV3B2QmVZbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO3M6NToicm91dGUiO3M6MTU6Im1haGFzaXN3YS5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9tYWhhc2lzd2EiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1781326389),
('SfrtOr4EiD7vNrnnmyLD1f3CNXbuC85PivU189wu', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQzdhMVVzSzZPVmgzT3FrVGU5QVp4YnRtR2JVU0VOUloxTktCOUlXaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780984081),
('TLMGs0Wh6zsHK0qxKRvIClGGW4SRHck9x2z8QzvO', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnd0dUw0ODdtTEJheFNoNVVCcDIzczF6bzFPR1JCTVVQMEo2OW1SUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780983186),
('tTNeIb0YgKYeMQfb1o6BQWzS3L1juTihNqoSunJe', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmpIQ05ETGVlUXpWczFmbTdpeDUxdHhqY1FFd1RmdVd4MVViTllxYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780983992),
('uxKQb4kcDuWDRasyQ3bJ25JgPjJLZiprl2SHjPGq', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjVJalNjeXd2dmp4TFd6Z2owaDNldEFoZjFYQWtUVDcxcG9acmFoNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvMTIzNDU2IjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780937787),
('VRuZTL9Pavy07ljUJ20lS9S9p41YN6tl5aase7yP', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2V3VjJIeFlkZXQ1NWpZWG9KZGh1YmZWSDE0T0JaQ2VnSDkyVkdmOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780984184),
('VVh2tedva1ldxIuirzWdfuGGiqkmT4QzT9gBadvS', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW9RSTM2NzZBcXVna2xVV2ZBVU9zcTZGOHpCQnhmSVJFNnV0TEtsaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780936851),
('WibeCgY9Kujw5xzoZVAB35UgMB9l1jCHFWmdBhq1', NULL, '10.10.58.160', 'n8n', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR0ZObjhJak5tUmJDTHpDZHY0dUpnZmpDSlk2WDVRTTVheHk3UmlBQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1780990212),
('wvcUvQOw8tOWYAODSAtCmfclTPirj87S2dZWFhfF', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3NabEowWVRkY09pdGlnNHhkQ0NYQWZuR2M1NVQ5VVh4TzdHVTVlZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhL2NhcmkvMTIzNDU2IjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780938775),
('xCCFm3PgZCZY797b5qaGZA136RjVR0ZhQNRKTnDA', NULL, '192.168.1.13', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDE4Rjg2c0FaRkt5UkZaeENTY245eWFGT0lUakpCUmZqUFc2U2pDNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xOTIuMTY4LjEuMTI6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780937167),
('xdJUcGIbQhSgLlMbHTf787An2IlaCsOSCVSfkqYD', NULL, '10.10.58.160', 'n8n', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemdxYXI3aFYwS1RzNmRneHJBTkNWYWQ5R092RUtoT3NTVkdwaXNXTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMC4xMC41OS4xODY6ODA4MC9hcGkvbWFoYXNpc3dhIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780990172);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2026-06-04 04:21:03', '$2y$12$pXXRS6CsySWze68lnR0vpuzuNeQqDzciIU7KH2hw9QQhkwrswiUwW', NULL, '2026-06-04 04:21:03', '2026-06-04 05:16:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
