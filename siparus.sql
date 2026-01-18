-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2026 pada 13.05
-- Versi server: 11.6.2-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siparus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1752374739),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1752374739;', 1752374739),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1752580789),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1752580789;', 1752580789),
('akbarmbagasjkar47@gmail.com|127.0.0.1', 'i:1;', 1752413748),
('akbarmbagasjkar47@gmail.com|127.0.0.1:timer', 'i:1752413748;', 1752413748);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `luas_kamar_m2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `kapasitas` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attachments` longtext DEFAULT NULL,
  `full_support_available` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `mini_canteen_available` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `listings`
--

INSERT INTO `listings` (`id`, `title`, `slug`, `description`, `address`, `luas_kamar_m2`, `kapasitas`, `price`, `attachments`, `full_support_available`, `mini_canteen_available`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sawah Besar Tower 4', 'sawah-besar-tower-4', 'Rusun Sawah Besar Tower 4, yang terletak di Jl. Dempel Barat, Sawah Besar, Gayamsari, merupakan pilihan hunian nyaman dengan tarif terjangkau Rp 250.000 per malam. Berada di lantai 1 dengan tipe 36 (36 m²), kamar ini dilengkapi tempat tidur, meja, kursi, lemari, dan AC untuk kenyamanan. Gedung ini menyediakan keamanan 24 jam, area parkir luas, serta akses mudah ke fasilitas umum seperti pasar dan transportasi. Dengan lokasi strategis dan fasilitas lengkap, kamar ini cocok untuk individu atau pasangan yang mencari tempat tinggal sementara.', 'Jl. Dempel Barat, Sawah Besar Kecamatan Gayamsari 50163 GAYAMSARI, SAWAH BESAR', 30, 44, 250000, '[\"listings\\/01JE5J8GCVGW2W0XPHERSM92KY.jpg\",\"listings\\/01JE5Z9HSEH4Q658GC0KDWADD1.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2025-01-06 09:50:11', NULL),
(2, 'Sawah Besar Tower 3', 'sawah-besar-tower-3', 'Rusunawa Sawah Besar Tower 3 menawarkan hunian tipe 36 yang dirancang untuk kenyamanan penghuninya. Terletak di kawasan strategis, rusunawa ini memberikan akses mudah ke berbagai fasilitas publik di Semarang.', 'Jl. Dempel Barat, Sawah Besar Kecamatan Gayamsari 50163 GAYAMSARI, SAWAH BESAR', 36, 44, 250000, '[\"listings\\/01JE5ZTR4R3WXFQ01M9DYBQ14S.jpg\",\"listings\\/01JE5ZTR5FR08K71YQX1NTD43H.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 03:59:13', NULL),
(3, 'Sawah Besar Tower I & 2', 'sawah-besar-tower-i-2', 'Rusunawa Sawah Besar adalah hunian yang dibangun pada tahun 2018 di kawasan Gayamsari, Semarang. Lokasinya yang strategis memudahkan akses ke berbagai fasilitas publik, menjadikannya pilihan tepat bagi mereka yang membutuhkan tempat tinggal terjangkau dan nyaman.', 'Jl. Dempel Barat, Sawah Besar, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50163 GAYAMSARI, SAWAH BESAR', 36, 84, 210000, '[\"listings\\/01JE64VQP3NX92145YAQNAEKBM.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 04:35:33', NULL),
(4, 'Kudu Blok H-I', 'kudu-blok-h-i', 'Rusunawa Kudu Blok H-I terletak di Kudu, Genuk, Semarang, dan dibangun pada tahun 2017. Dengan kapasitas 115 unit, rusunawa ini menyediakan hunian yang nyaman dan strategis, menawarkan kemudahan akses ke fasilitas kota dan daerah sekitarnya.', 'Jl. Ki Dalem Raya, Kudu, Kec. Genuk, Kota Semarang, Jawa Tengah 50116 GENUK, KUDU', 36, 115, 200000, '[\"listings\\/01JE65S91WZRBT0RZSGQZ80KZY.jpg\"]', 1, 1, '2024-11-23 20:23:15', '2024-12-03 04:52:26', NULL),
(5, 'Kudu Blok G', 'kudu-blok-g', 'Rusunawa Kudu Blok G terletak di kawasan Kudu, Genuk, Semarang, dan dibangun pada tahun 2016. Hunian ini menawarkan tempat tinggal yang terjangkau dan strategis, memudahkan akses ke fasilitas publik di sekitar kota Semarang.', 'Jl. Ki Dalem Raya, Kudu, Kec. Genuk, Kota Semarang, Jawa Tengah 50116 GENUK, KUDU', 36, 70, 210000, '[\"listings\\/01JE65YBSNS4SQSYCYRH20AWYH.jpg\"]', 1, 1, '2024-11-23 20:23:15', '2024-12-03 04:54:49', NULL),
(6, 'Kudu Blok A-F', 'kudu-blok-a-f', 'Rusunawa Kudu Blok A-F terletak di Kudu, Genuk, Semarang, dan dibangun pada tahun 2013. Dengan beberapa blok yang tersedia, rusunawa ini menyediakan hunian yang terjangkau dan strategis, memudahkan penghuni untuk mengakses berbagai fasilitas publik di Semarang.', 'Jl. Ki Dalem Raya, Kudu, Kec. Genuk, Kota Semarang, Jawa Tengah 50116 GENUK, KUDU', 24, 576, 100000, '[\"listings\\/01JE6654RGH5WJ9BZ253NMYBTM.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 04:58:18', NULL),
(7, 'Kaligawe Blok A-G', 'kaligawe-blok-a-g', 'Rusunawa Kaligawe Blok A-G merupakan hunian yang dibangun pada tahun 2004 dan telah direnovasi pada tahun 2009. Berlokasi di kawasan strategis Kaligawe, Gayamsari, Semarang, rusunawa ini menawarkan akses mudah ke berbagai fasilitas perkotaan dengan kenyamanan yang terjaga melalui pembaruan bangunan.', 'Jl. Sawah Besar XIII, Kaligawe, Gayamsari, Kaligawe, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50164 GAYAMSARI, KALIGAWE', 21, 675, 100000, '[\"listings\\/01JE66B3AK4HQ5P34QTARX6HVF.jpg\"]', 1, 0, '2024-11-23 20:23:15', '2024-12-03 05:02:29', NULL),
(8, 'Karangroto Blok A-D', 'karangroto-blok-a-d', 'Rusunawa Karangroto Blok A-D dibangun pada tahun 2010 di kawasan Karangroto, Genuk, Semarang. Hunian ini dirancang untuk memenuhi kebutuhan tempat tinggal yang nyaman dan strategis, dengan akses yang mudah ke berbagai fasilitas di Kota Semarang.', 'Jl. Hasanudin, Bandarharjo, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50175 GENUK, KARANG ROTO', 24, 384, 90000, '[\"listings\\/01JE66PH00A52BG3N60CP6E4WP.jpg\"]', 1, 0, '2024-11-23 20:23:15', '2024-12-03 05:08:04', NULL),
(9, 'Bandarharjo Blok A-B', 'bandarharjo-blok-a-b', 'Rusunawa Bandarharjo Blok A-B terletak di kawasan Bandarharjo, Semarang Utara, dibangun dan direnovasi pada tahun 1997. Dengan luas area 1887 m² dan luas bangunan 2592 m², rusunawa ini menawarkan hunian strategis di Semarang Utara dengan akses mudah ke fasilitas kota.', 'Jl. Hasanudin, Bandarharjo, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50175 SEMARANG UTARA, BANDARHARJO', 27, 177, 70000, '[\"listings\\/01JE66ZJR3E3N11TZQYWNT7A2D.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 05:12:37', NULL),
(10, 'Plamongan Sari', 'plamongan-sari', 'Rusunawa Plamongan Sari terletak di kawasan Plamongan Sari, Pedurungan, Semarang. Dibangun pada tahun 1996 dan direnovasi pada 2003, rusunawa ini memiliki luas area 9800 m² dan luas bangunan 5616 m², dengan kapasitas 208 unit. Lokasinya yang strategis memudahkan akses ke berbagai fasilitas di Semarang.', 'Jl. Plamongan Sari V, Plamongan Sari, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50192 PEDURUNGAN, PLAMONGANSARI', 24, 208, 100000, '[\"listings\\/01JE6B353NJSADG65N7YGNGB0D.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 06:43:12', NULL),
(11, 'Karangroto C Lama', 'karangroto-c-lama', 'Rusunawa Karangroto C Lama terletak di kawasan Karangroto, Genuk, Semarang. Dengan lokasi strategis di pusat kota, rusunawa ini memberikan kenyamanan bagi penghuninya dan memudahkan akses ke berbagai fasilitas umum di Semarang.', 'Jl. Jatimas XII RT 02 RW 06, Karangroto, Kec. Genuk, Kota Semarang, Jawa Tengah 50117 GENUK, KARANG ROTO', 27, 104, 70000, '[\"listings\\/01JE6CG9Q41BGF3Z01ZHZAZBBP.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 06:49:52', NULL),
(12, 'Rumah Deret Karangroto Blok B', 'rumah-deret-karangroto-blok-b', 'Rumah Deret Karangroto Blok B terletak di Karangroto, Genuk, Semarang. Dengan luas area 17,500 m² dan luas bangunan 1,560 m², rumah deret ini dibangun pada tahun 1991 dan telah direnovasi pada tahun yang sama. Lokasinya yang strategis membuatnya ideal untuk penghuni yang membutuhkan akses mudah ke berbagai fasilitas kota.', 'Jl. Kauman Raya, Karangroto, Kec. Genuk, Kota Semarang, Jawa Tengah 50117 GENUK, KARANG ROTO', 27, 24, 60000, '[\"listings\\/01JE6CR2QQ3EFRB0C4T6V7A2XV.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 06:53:22', NULL),
(13, 'Rumah Deret Karangroto Blok A', 'rumah-deret-karangroto-blok-a', 'Rumah Deret Karangroto Blok A terletak di kawasan Karangroto, Genuk, Semarang, dan terdiri dari 26 unit. Dengan luas area 23,000 m² dan luas bangunan 1,690 m², rumah deret ini dibangun dan direnovasi pada tahun 1991. Lokasinya yang strategis memudahkan akses ke berbagai fasilitas kota.', 'Jl. Beringin ll, Karangroto, Kec. Genuk, Kota Semarang, Jawa Tengah 50117 GENUK, KARANG ROTO', 27, 26, 60000, '[\"listings\\/01JE6CY6Y564W13D2JG1ZXE1BR.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 06:57:20', NULL),
(14, 'Bandarharjo Lama', 'bandarharjo-lama', 'Bandarharjo Lama terletak di kawasan Bandarharjo, Semarang Utara, Semarang. Dibangun dan direnovasi pada tahun 1996, bangunan ini memiliki luas area 778 m² dan luas bangunan 1,008 m². Lokasinya yang strategis membuatnya mudah dijangkau oleh berbagai fasilitas kota.', 'Jl. Hasanudin No.12, Bandarharjo, Semarang Utara, Kota Semarang 50175 SEMARANG UTARA, BANDARHARJO', 27, 30, 75000, '[\"listings\\/01JE6D5JZ0F8C5K8QYWKDFTPSA.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 07:01:11', NULL),
(15, 'Gasemsari', 'gasemsari', 'Bandarharjo Lama terletak di kawasan Bandarharjo, Semarang Utara, Semarang. Dibangun dan direnovasi pada tahun 1996, bangunan ini memiliki luas area 778 m² dan luas bangunan 1,008 m². Lokasinya yang strategis membuatnya mudah dijangkau oleh berbagai fasilitas kota.', 'Jl. Gasem Sari, Tlogomulyo, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50113', 27, 20, 65000, '[\"listings\\/01JE6DA45YRCZHQSQA15G10V2X.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 07:04:55', NULL),
(16, 'Pondok Boro', 'pondok-boro', 'Pondok Boro terletak di kawasan Trimulyo, Genuk, Semarang. Dibangun pada tahun 1991 dan direnovasi pada 2004, bangunan ini memiliki luas area 2,400 m² dan luas bangunan 285 m². Lokasinya yang strategis memudahkan akses ke kawasan industri dan pusat kota Semarang.', 'Jl. Terboyo Industri Timur, Trimulyo, Kec. Genuk, Kota Semarang GENUK, TRIMULYO', 24, 96, 60000, '[\"listings\\/01JE6DJ8VC1NZ3XTG9Q9878E67.jpg\"]', 0, 0, '2024-11-23 20:23:15', '2024-12-03 07:07:40', NULL),
(17, 'Pekerja Jerakah', 'pekerja-jerakah', 'Pekerja Jerakah terletak di kawasan Tugu, Semarang. Dibangun dan direnovasi pada tahun 2015, bangunan ini memiliki luas area 2,400 m² dan luas bangunan 285 m². Lokasinya yang dekat dengan stasiun membuat akses transportasi menjadi sangat mudah.', 'Jl. Stasiun Jrakah, Tugu, Semarang City, Kota Semarang 50151 TUGU, JERAKAH', 24, 104, 250000, '[\"listings\\/01JE6DR239EW9P6NQHEZF9BPP9.jpg\"]', 1, 1, '2024-11-23 20:23:15', '2024-12-03 07:10:50', NULL),
(18, 'Pekunden', 'pekunden', 'Pekunden terletak di kawasan Semarang Tengah, tepat di belakang Balai Kota Semarang. Dibangun dan direnovasi pada tahun 1996, bangunan ini memiliki luas area 3,889 m² dan luas bangunan 2,835 m². Lokasinya yang strategis dekat dengan pusat pemerintahan memudahkan akses ke berbagai fasilitas kota.', 'Jl. Pekunden, Belakang Balai Kota Semarang Semarang Tengah, Kota Semarang 50134 SEMARANG TENGAH, PEKUNDEN', 27, 39, 70000, '[\"listings\\/01JE6DZAA4B4BSCM099AJZWHTH.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 07:14:48', NULL),
(19, 'Rumah seni', 'rumah-seni', 'penuh dengan fitur', 'jalan tembalang selatan 1', 40, 20, 50000, '[]', 1, 1, '2025-01-06 09:48:10', '2025-01-06 09:49:33', '2025-01-06 09:49:33'),
(24, 'dummy', 'dummy', 'ini dummy', 'jalan dummy', 5, 1, 100000, '[\"listings\\/01JYDVJDH5GZ4X8DCV40GC0RR9.jpg\"]', 1, 1, '2025-06-23 00:38:15', '2025-06-23 00:38:15', NULL),
(25, 'dummy2', 'dummy2', 'ini dummy 2', 'jalan dummy', 10, 2, 100000, '[\"listings\\/01JZZFD85TWG5V8XSY0NQ2C54W.jpeg\"]', 1, 1, '2025-07-12 07:07:45', '2025-07-12 07:07:45', NULL),
(27, 'dummy3', 'dummy3', 'sebuah rusun dummy ', 'jalan dummy 3 no 47', 15, 1, 100000, '[\"listings\\/01K00TRNDWTH1MJB4Z5AD7AK6Z.jpeg\"]', 0, 0, '2025-07-12 19:45:28', '2025-07-12 19:45:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_23_100421_create_listings_table', 1),
(5, '2024_11_23_144134_create_transactions_table', 1),
(6, '2024_11_23_155854_create_personal_access_tokens_table', 1),
(7, '2025_06_23_092409_add_payment_due_at_to_transactions_table', 2),
(8, '2025_06_23_112051_rename_payment_due_at_to_due_date_in_transactions_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 12, 'auth', 'f444b5bf7d68c21c70d209bb93e554e6346f2e7d47ac8d5e4fe2d6d9dc77f048', '[\"*\"]', NULL, NULL, '2024-11-23 20:23:51', '2024-11-23 20:23:51'),
(2, 'App\\Models\\User', 12, 'auth', '0e08df69ede25c6c4b82f7c9e0becc0c71546452cdefa908c65f0f811af8453b', '[\"*\"]', NULL, NULL, '2024-11-23 20:24:13', '2024-11-23 20:24:13'),
(3, 'App\\Models\\User', 12, 'auth', 'ad29c0985dd385d6ed2d8d55d9db9e7c48cf03c463a8de9a3ce1487613f7c95a', '[\"*\"]', NULL, NULL, '2024-11-23 20:24:25', '2024-11-23 20:24:25'),
(4, 'App\\Models\\User', 12, 'auth', '26b05f36298e9fec648f7be02ff65896c718a40b958b2c997207596d5f3ab68a', '[\"*\"]', NULL, NULL, '2024-11-26 20:14:43', '2024-11-26 20:14:43'),
(5, 'App\\Models\\User', 12, 'auth', '3b8c7e525d29083a4a6dc2aafed06612508592ff01eda86bfa82169efed6d2db', '[\"*\"]', NULL, NULL, '2024-11-26 20:22:08', '2024-11-26 20:22:08'),
(6, 'App\\Models\\User', 12, 'auth', '3edffef4981b7897eb8f7e6424f1b6ecc6dff7688bef9df7864d3e025d98647e', '[\"*\"]', NULL, NULL, '2024-11-26 20:28:37', '2024-11-26 20:28:37'),
(7, 'App\\Models\\User', 13, 'auth', '976d2ba0772713eb8ad63ccfb67fe4f96f5364e14ee4db1de4261105bf3717dd', '[\"*\"]', NULL, NULL, '2024-11-26 20:34:17', '2024-11-26 20:34:17'),
(8, 'App\\Models\\User', 13, 'auth', 'a9ed469ac625204a2cb046029a27ff52e5c5b714da208f869861967a8c0acd22', '[\"*\"]', NULL, NULL, '2024-11-26 20:35:10', '2024-11-26 20:35:10'),
(9, 'App\\Models\\User', 12, 'auth', '2725eade01c7655d0fd6ee23a4369559f19985be184305994b4614ee5c1a41ed', '[\"*\"]', NULL, NULL, '2024-11-26 23:13:58', '2024-11-26 23:13:58'),
(10, 'App\\Models\\User', 12, 'auth', '8aabc1d5ab0a6affa7be4179def04c2f7a7c5d0c4e7e1ee4fd777ce05072bd9d', '[\"*\"]', NULL, NULL, '2024-11-26 23:32:12', '2024-11-26 23:32:12'),
(11, 'App\\Models\\User', 13, 'auth', 'ba2e106a679554d032a64e96d287e95b95fca7aa56fed3580633bc87f19d89d3', '[\"*\"]', NULL, NULL, '2024-11-26 23:32:34', '2024-11-26 23:32:34'),
(12, 'App\\Models\\User', 13, 'auth', 'b6fccbb53968dbd20a08890572665c1ff9c7d94dcd4e253b1db96dbc548be1f0', '[\"*\"]', NULL, NULL, '2024-11-27 00:00:34', '2024-11-27 00:00:34'),
(13, 'App\\Models\\User', 13, 'auth', '30da4bfea0d37b2c23f04baf2e4c43035a989229d6551832811e47040464416c', '[\"*\"]', NULL, NULL, '2024-11-27 02:40:22', '2024-11-27 02:40:22'),
(14, 'App\\Models\\User', 12, 'auth', 'c82b0d9235a1d4b49745ccc94c539ee94d1a73995bcadb6c16df19aad55ba52d', '[\"*\"]', NULL, NULL, '2024-11-28 18:26:34', '2024-11-28 18:26:34'),
(15, 'App\\Models\\User', 13, 'auth', 'b3bb8f27e03ef51ceeede4a1655c10e1ad5eb9bbd7281c1f9ff138fa9238844e', '[\"*\"]', '2024-11-28 22:00:58', NULL, '2024-11-28 21:59:54', '2024-11-28 22:00:58'),
(16, 'App\\Models\\User', 13, 'auth', 'c5996feabaa7c2a980691d912463e8bf7fd329a640d05d95503bc83769ba606b', '[\"*\"]', '2024-11-28 22:25:03', NULL, '2024-11-28 22:13:12', '2024-11-28 22:25:03'),
(17, 'App\\Models\\User', 13, 'auth', 'd48bc869abdd3b07924bf8ede65f03454f762d1d1cc1551dea63e3d9f88a419f', '[\"*\"]', '2024-11-29 21:05:53', NULL, '2024-11-28 22:25:28', '2024-11-29 21:05:53'),
(18, 'App\\Models\\User', 13, 'auth', '0daab84a0dd7cec020b358527dcd9d719e58eb0cd802d3d8a9dce96846be8dc1', '[\"*\"]', '2024-12-01 19:10:45', NULL, '2024-12-01 18:25:03', '2024-12-01 19:10:45'),
(19, 'App\\Models\\User', 13, 'auth', '6e7a3cdb57c79933a197c3528b4ab949b58c8d9636f3a5c9a0f30516d2edcee1', '[\"*\"]', '2024-12-03 01:43:27', NULL, '2024-12-02 23:23:09', '2024-12-03 01:43:27'),
(20, 'App\\Models\\User', 13, 'auth', '8381ed6f2b8ef516e186faeb20cd1500fc081a31c5253cec48afe719d14cd2fd', '[\"*\"]', '2024-12-03 02:03:29', NULL, '2024-12-03 01:44:39', '2024-12-03 02:03:29'),
(21, 'App\\Models\\User', 13, 'auth', 'ae29a58772c57c2af1e671ae5a041fddd983adf089afdeaeebf9470c79f118d8', '[\"*\"]', '2024-12-03 02:12:26', NULL, '2024-12-03 02:12:21', '2024-12-03 02:12:26'),
(22, 'App\\Models\\User', 13, 'auth', 'f0c441ff10a9a18225961c0e1d66b9636c8f5c0698776c24a55ef3b2cd93194b', '[\"*\"]', NULL, NULL, '2024-12-03 02:26:34', '2024-12-03 02:26:34'),
(23, 'App\\Models\\User', 13, 'auth', 'f55c958bb995378ea58a988152f8d1057b4f57417184d0188491f16c5ce22815', '[\"*\"]', '2024-12-03 07:20:53', NULL, '2024-12-03 02:30:29', '2024-12-03 07:20:53'),
(24, 'App\\Models\\User', 13, 'auth', '999ddd136d5e36f2c7159daff7fb687ecc4b105ed9b151fbe529e371b23d0bd6', '[\"*\"]', '2024-12-03 07:29:04', NULL, '2024-12-03 07:25:32', '2024-12-03 07:29:04'),
(25, 'App\\Models\\User', 14, 'auth', 'f5ccce9332bc83e69fb1449db64a81ac485cc6306ff3c42baa98fceff23a9f24', '[\"*\"]', '2025-01-06 09:59:04', NULL, '2025-01-06 09:51:13', '2025-01-06 09:59:04'),
(26, 'App\\Models\\User', 15, 'auth', '3ad785974aea912261d1fd8253a551fc98e4bedbc2a3be0c9ca7d962a0994b3d', '[\"*\"]', NULL, NULL, '2025-06-19 03:26:34', '2025-06-19 03:26:34'),
(27, 'App\\Models\\User', 14, 'auth', 'd6194c12963fe143f3242f29f89b23fea8776dd24c882aac4a51109de146f888', '[\"*\"]', '2025-06-19 03:28:07', NULL, '2025-06-19 03:28:04', '2025-06-19 03:28:07'),
(28, 'App\\Models\\User', 16, 'auth', '94b11e7e3ee43b62201cfa1b06eaf884d61896ffed755396475f52d8a6f0d387', '[\"*\"]', NULL, NULL, '2025-06-19 04:06:04', '2025-06-19 04:06:04'),
(29, 'App\\Models\\User', 14, 'auth', '6b344ea76e4bdb511ad58bf8d066826a0ffddfb479a3d991d448ba47442b549a', '[\"*\"]', '2025-06-19 05:19:02', NULL, '2025-06-19 05:15:10', '2025-06-19 05:19:02'),
(30, 'App\\Models\\User', 17, 'auth', '41c5d7ed88aa3301fde506d3e2a6adf8ba73b8a8f4250b08f893416c7a17a0f1', '[\"*\"]', '2025-06-19 05:20:30', NULL, '2025-06-19 05:19:58', '2025-06-19 05:20:30'),
(31, 'App\\Models\\User', 14, 'auth', '41833fc04e8af7c601e979d54451aee994f057c81a15476601d93fbb6760eaf2', '[\"*\"]', '2025-06-19 08:27:49', NULL, '2025-06-19 08:13:43', '2025-06-19 08:27:49'),
(32, 'App\\Models\\User', 14, 'auth', 'deb6c7853f16203e62e5b2fbe93308e6882ebc4ba73157cb870c3c97f6e676db', '[\"*\"]', '2025-06-19 09:03:00', NULL, '2025-06-19 08:31:13', '2025-06-19 09:03:00'),
(33, 'App\\Models\\User', 14, 'auth', '5db3b36a77db34ca30f22109cdee18aad4e08f3ce5ff001bf37a6d9657753d57', '[\"*\"]', '2025-06-20 14:17:52', NULL, '2025-06-19 09:10:39', '2025-06-20 14:17:52'),
(34, 'App\\Models\\User', 14, 'auth', 'bef03bb78cef2fec314e95ae62117c4ac9e66692061c377d0567bf9ec4e77f71', '[\"*\"]', NULL, NULL, '2025-06-19 10:03:30', '2025-06-19 10:03:30'),
(35, 'App\\Models\\User', 18, 'auth', 'fa41c3b349686f35d5f12dd82e979f63e391f212f5f12ebfd4fb301de74d02a2', '[\"*\"]', '2025-06-23 00:40:08', NULL, '2025-06-23 00:34:35', '2025-06-23 00:40:08'),
(36, 'App\\Models\\User', 14, 'auth', '83f4479c4c2d10181e4fb675d638d035b2254412020978f71dee93db8c5128bd', '[\"*\"]', '2025-06-23 07:27:53', NULL, '2025-06-23 00:40:54', '2025-06-23 07:27:53'),
(37, 'App\\Models\\User', 14, 'auth', '4f8c4ec13328296b438068bf4b3d85c24ff26611044e8adf8912dff5b98e3e28', '[\"*\"]', '2025-06-23 21:04:12', NULL, '2025-06-23 07:59:56', '2025-06-23 21:04:12'),
(38, 'App\\Models\\User', 14, 'auth', '46ac1c57ab4078fdd601f162d6a0753c90a2b8f668a256a6af969f99a3578fd8', '[\"*\"]', '2025-06-24 04:25:09', NULL, '2025-06-24 04:19:28', '2025-06-24 04:25:09'),
(39, 'App\\Models\\User', 18, 'auth', 'a453f5a1754030972d2d15874b3878be60f16601ccd1132fb5e811752b1da5b7', '[\"*\"]', '2025-06-24 04:26:22', NULL, '2025-06-24 04:26:04', '2025-06-24 04:26:22'),
(40, 'App\\Models\\User', 14, 'auth', 'd2ebc2da8c5e7bf1af3c52db93f68fff494bacf6d8fa2e13946d8c29f5ed89ea', '[\"*\"]', '2025-06-24 04:53:56', NULL, '2025-06-24 04:27:10', '2025-06-24 04:53:56'),
(41, 'App\\Models\\User', 14, 'auth', '7128fe854dbfb0519d76ca2f2e40f75457005add1fbcea13cf4fe097180c1e25', '[\"*\"]', '2025-06-25 19:26:35', NULL, '2025-06-25 18:26:54', '2025-06-25 19:26:35'),
(42, 'App\\Models\\User', 18, 'auth', 'd01ec886ea5646a352c75688252368c46b3f30117b06c15e165fe37239f8b5d8', '[\"*\"]', '2025-06-30 15:13:25', NULL, '2025-06-30 15:13:02', '2025-06-30 15:13:25'),
(43, 'App\\Models\\User', 14, 'auth', '601e7243f5299b7b2573889f5ee48f58437c10914b03b805f516de626edfb12f', '[\"*\"]', '2025-07-01 03:23:14', NULL, '2025-06-30 15:13:40', '2025-07-01 03:23:14'),
(44, 'App\\Models\\User', 14, 'auth', '017a15e2a23c3d7d8fbc0b9e698f8e6f3c5c1a551106c097e4aecb8a6b2fef26', '[\"*\"]', '2025-07-03 00:33:37', NULL, '2025-07-02 23:14:07', '2025-07-03 00:33:37'),
(45, 'App\\Models\\User', 14, 'auth', '81fdf2ead455b91b8834470a226223fa7c5da7e96e6e163aa1bbf75b7f34b6a4', '[\"*\"]', '2025-07-03 09:59:05', NULL, '2025-07-03 00:45:23', '2025-07-03 09:59:05'),
(46, 'App\\Models\\User', 14, 'auth', 'efd7665e503992252f26855485f938804b7f8122be931d1b087c400048aca60b', '[\"*\"]', '2025-07-03 10:48:46', NULL, '2025-07-03 10:00:08', '2025-07-03 10:48:46'),
(47, 'App\\Models\\User', 14, 'auth', '6b6b44e9ef5b395ceff135079b2eb0dd91359df7923a6383f3de116c2e213594', '[\"*\"]', '2025-07-03 15:19:56', NULL, '2025-07-03 10:53:39', '2025-07-03 15:19:56'),
(48, 'App\\Models\\User', 14, 'auth', 'bdae047ef8022eff79686b2b865d75855df94e65ed27ce9092b74b862348ab31', '[\"*\"]', NULL, NULL, '2025-07-03 15:27:17', '2025-07-03 15:27:17'),
(49, 'App\\Models\\User', 14, 'auth', '5687383e59d6a4b381cd1fed575de95c015ffdc77993fad1cb365b70fe939abf', '[\"*\"]', '2025-07-03 15:49:21', NULL, '2025-07-03 15:41:23', '2025-07-03 15:49:21'),
(50, 'App\\Models\\User', 14, 'auth', '5204c3dbce2845dac25e43c6685741cb270864b64660ca1396d4de372c4af4ef', '[\"*\"]', NULL, NULL, '2025-07-03 15:51:28', '2025-07-03 15:51:28'),
(51, 'App\\Models\\User', 14, 'auth', 'f9582f5dfb9d8bbfa080b857004d7ebc52b9e79920d702ddca9a73e84f3c1c66', '[\"*\"]', NULL, NULL, '2025-07-03 17:02:23', '2025-07-03 17:02:23'),
(52, 'App\\Models\\User', 14, 'auth', '1f48fd7dcf49e309886c3b5facf0ed361e0655961515e87fe6abc9fe805e0516', '[\"*\"]', NULL, NULL, '2025-07-03 21:10:43', '2025-07-03 21:10:43'),
(53, 'App\\Models\\User', 14, 'auth', '5eef7bcbebcfe4761c5dc86d9cecd4700348d2f204ed30355e6aed25040e32d4', '[\"*\"]', '2025-07-04 05:18:12', NULL, '2025-07-03 21:11:51', '2025-07-04 05:18:12'),
(54, 'App\\Models\\User', 14, 'auth', 'fac9c4bb21d103c3010b887317151a2e28a38159ec9d166165a579282ce0d1c6', '[\"*\"]', NULL, NULL, '2025-07-03 21:54:21', '2025-07-03 21:54:21'),
(55, 'App\\Models\\User', 14, 'auth', '710e81285c051b8b25e0c76ea4d96adffcb1340d779fee98cb4a1bd64480bd98', '[\"*\"]', NULL, NULL, '2025-07-03 21:54:57', '2025-07-03 21:54:57'),
(56, 'App\\Models\\User', 14, 'auth', 'f15f5a8f5f1fbfbe507790183fa13a5de5a9f46e62c51640de02feabb4c961e6', '[\"*\"]', NULL, NULL, '2025-07-04 04:25:01', '2025-07-04 04:25:01'),
(57, 'App\\Models\\User', 14, 'auth', '4e8c8df1e73509577c92a63c91b8793d969942732ebfa446322cf673943957d8', '[\"*\"]', NULL, NULL, '2025-07-04 04:25:23', '2025-07-04 04:25:23'),
(58, 'App\\Models\\User', 14, 'auth', 'a82eec3509dd4e984036fbdab125598d24c5f5e0bcb78b153ad1a449500af2ba', '[\"*\"]', NULL, NULL, '2025-07-04 04:25:35', '2025-07-04 04:25:35'),
(59, 'App\\Models\\User', 14, 'auth', '220ef8a95cbf2f55eae9733e9d15946e3f150f573dab3f94472877fbf385d651', '[\"*\"]', NULL, NULL, '2025-07-04 04:25:49', '2025-07-04 04:25:49'),
(60, 'App\\Models\\User', 14, 'auth', 'fee49d0bb5b2edd819ee25a33658271329c6fa5079c316ed37d4d809bd210282', '[\"*\"]', NULL, NULL, '2025-07-04 04:26:40', '2025-07-04 04:26:40'),
(61, 'App\\Models\\User', 14, 'auth', '2c7ee7b6ffe9d486af7c3dbc8f1f6398759c93bfebf2bc54910663717138bf76', '[\"*\"]', NULL, NULL, '2025-07-04 04:27:23', '2025-07-04 04:27:23'),
(62, 'App\\Models\\User', 14, 'auth', '3be1dde47f63b2ccb54e113e190eb191ee8786dda3120b883cf2c01a32946a7c', '[\"*\"]', NULL, NULL, '2025-07-04 04:27:37', '2025-07-04 04:27:37'),
(63, 'App\\Models\\User', 14, 'auth', '28aca4b5b433ca450b446480adbd6be6bf62b443e0be6fd5cd84429f6d73c909', '[\"*\"]', NULL, NULL, '2025-07-04 04:27:56', '2025-07-04 04:27:56'),
(64, 'App\\Models\\User', 14, 'auth', 'b1bc323d7e6a8d7825d9bc6c2c50b419d2c35cfb9cbc09bbaed6c484c0ce28bc', '[\"*\"]', NULL, NULL, '2025-07-04 04:28:42', '2025-07-04 04:28:42'),
(65, 'App\\Models\\User', 14, 'auth', 'c3ac1c03733ad73bd14e647db58ceb91a69aac338504a8cecfb794bd66dae942', '[\"*\"]', '2025-07-04 05:24:59', NULL, '2025-07-04 05:18:46', '2025-07-04 05:24:59'),
(66, 'App\\Models\\User', 14, 'auth', '22ffd3a1f61160a0a1dc8f2aababc40532990250e92e8a239bd310224b107bd6', '[\"*\"]', NULL, NULL, '2025-07-04 05:28:48', '2025-07-04 05:28:48'),
(67, 'App\\Models\\User', 14, 'auth', '3d38a25b21c4a6459aec7d3ef1e4ecabca7a09af1f257094e2158e4579fe5e3e', '[\"*\"]', '2025-07-06 01:40:45', NULL, '2025-07-04 05:47:31', '2025-07-06 01:40:45'),
(68, 'App\\Models\\User', 14, 'auth', '88049d4d7813ffc32ff22a25c755932a2a64adf14f0baf6f9b4c0c978dea17e7', '[\"*\"]', '2025-07-06 05:26:14', NULL, '2025-07-06 03:24:38', '2025-07-06 05:26:14'),
(69, 'App\\Models\\User', 18, 'auth', '7848aad7f8fbcf85114e7e18aa0409a8fa7c8adc335598324e94b83d1e612c52', '[\"*\"]', '2025-07-06 05:35:43', NULL, '2025-07-06 05:26:35', '2025-07-06 05:35:43'),
(70, 'App\\Models\\User', 14, 'auth', '2204ece3751a7fc06eec4c8f8830f74496878c250b871cb2560f9e9449e2e935', '[\"*\"]', '2025-07-06 05:55:19', NULL, '2025-07-06 05:36:00', '2025-07-06 05:55:19'),
(71, 'App\\Models\\User', 14, 'auth', 'd546c019ebef93c7619692dcd1fd3362be43d0f5e5097b997049838f3255d0c1', '[\"*\"]', '2025-07-06 12:09:25', NULL, '2025-07-06 06:00:59', '2025-07-06 12:09:25'),
(72, 'App\\Models\\User', 19, 'auth', '24327e71dedf22223f609ab94a145100139df851123a41c6b64453dd6e3a0033', '[\"*\"]', '2025-07-06 12:15:37', NULL, '2025-07-06 12:14:30', '2025-07-06 12:15:37'),
(73, 'App\\Models\\User', 19, 'auth', 'a995fa4d40361f8aa4d7ad508032fe5dfc077de224310f67b5117229707b53e4', '[\"*\"]', '2025-07-06 12:18:19', NULL, '2025-07-06 12:18:10', '2025-07-06 12:18:19'),
(74, 'App\\Models\\User', 19, 'auth', '57d798c8ca6dd434cc36808c127dd511ab855fd2185f2b4bf23f48ccdafcfe7e', '[\"*\"]', '2025-07-06 12:19:05', NULL, '2025-07-06 12:18:42', '2025-07-06 12:19:05'),
(75, 'App\\Models\\User', 19, 'auth', '735c49e8f263841bb3c18e92bf3cf00e37eb1921b459cea379137aed24eae7d2', '[\"*\"]', '2025-07-06 12:19:53', NULL, '2025-07-06 12:19:44', '2025-07-06 12:19:53'),
(76, 'App\\Models\\User', 19, 'auth', 'f39174e512d3c642bb2ce4d9dae99c038c9d36fc244fd4cd21d2f49c47b21583', '[\"*\"]', '2025-07-06 12:25:41', NULL, '2025-07-06 12:21:22', '2025-07-06 12:25:41'),
(77, 'App\\Models\\User', 19, 'auth', '9a3e127e8ffea553a0477c628e8580774d0937d8d1e1dcdffe4cefb104e9b773', '[\"*\"]', '2025-07-08 21:08:03', NULL, '2025-07-06 12:41:39', '2025-07-08 21:08:03'),
(78, 'App\\Models\\User', 14, 'auth', 'bfe629c00d4f04f906955c6faf960cf0dadf041b7ee1604817635201bc65d4cf', '[\"*\"]', '2025-07-10 03:08:37', NULL, '2025-07-10 03:06:07', '2025-07-10 03:08:37'),
(79, 'App\\Models\\User', 19, 'auth', 'd62ef6dc62209a7818d827b73b26c21760cda2b5b824d60b42d993042b2bd1b7', '[\"*\"]', '2025-07-10 03:23:38', NULL, '2025-07-10 03:09:05', '2025-07-10 03:23:38'),
(80, 'App\\Models\\User', 19, 'auth', '15950300d144763ce5170031d3e9910b2877c29e3604d41ef2138361ce54d3c4', '[\"*\"]', '2025-07-11 06:43:30', NULL, '2025-07-11 06:42:58', '2025-07-11 06:43:30'),
(81, 'App\\Models\\User', 14, 'auth', '62369b114e7f9b31682b7494538f5a2334167ce3756370c05925d457b6c29c2d', '[\"*\"]', '2025-07-11 06:50:43', NULL, '2025-07-11 06:43:52', '2025-07-11 06:50:43'),
(82, 'App\\Models\\User', 14, 'auth', '46ae1e3dcf2cdbd83ec607c23b79ab79a22c013cffd9b7f00d076d11955476f0', '[\"*\"]', '2025-07-12 07:14:30', NULL, '2025-07-12 07:08:09', '2025-07-12 07:14:30'),
(83, 'App\\Models\\User', 19, 'auth', '591a52c5eda19b602122b304c9851f2520e59ca0002056feeaa296fdd09bcbf0', '[\"*\"]', '2025-07-13 06:06:02', NULL, '2025-07-12 07:15:07', '2025-07-13 06:06:02'),
(84, 'App\\Models\\User', 14, 'auth', '6cbd265366117416718bfcdb744ce4dd0c82b0a46a8ea19da812e661f1d1d093', '[\"*\"]', '2025-07-13 06:30:30', NULL, '2025-07-13 06:07:44', '2025-07-13 06:30:30'),
(85, 'App\\Models\\User', 20, 'auth', '2b2ac631762b127c14edcbe1395b2ae6b2b1f90df06eb073fcf8183e17c8d7ee', '[\"*\"]', '2025-07-13 06:31:43', NULL, '2025-07-13 06:31:16', '2025-07-13 06:31:43'),
(86, 'App\\Models\\User', 14, 'auth', '743b4f404962f0a0f1f3dc46c99e43a10f34e8407e77e2ece9df22f403dbd610', '[\"*\"]', '2025-07-13 06:47:23', NULL, '2025-07-13 06:38:47', '2025-07-13 06:47:23'),
(87, 'App\\Models\\User', 14, 'auth', 'd02bcfb82263dd5d4c27b330770442dd0111724903cf127f04b67617ddca09f6', '[\"*\"]', '2025-07-13 19:00:41', NULL, '2025-07-13 18:57:54', '2025-07-13 19:00:41'),
(88, 'App\\Models\\User', 19, 'auth', '4f8acd4307afcbed9d6765ed2dc794bf33bacd70145bb8e303616815996c172c', '[\"*\"]', '2025-07-13 19:02:09', NULL, '2025-07-13 19:01:07', '2025-07-13 19:02:09'),
(89, 'App\\Models\\User', 21, 'auth', '6c597633ec2f7689bd47f0f60dfef02e12a636eaa36203873d1acbcec2353cd0', '[\"*\"]', '2025-07-13 21:33:22', NULL, '2025-07-13 21:25:12', '2025-07-13 21:33:22'),
(90, 'App\\Models\\User', 21, 'auth', '3538ebda78c9e76c15591aa2e7cb9112bbb3a535ed1475c932c7b0b89ff8b127', '[\"*\"]', '2025-07-14 05:46:57', NULL, '2025-07-13 21:37:08', '2025-07-14 05:46:57'),
(91, 'App\\Models\\User', 21, 'auth', '8514bce30db5e17f3feaa929739e96ee5624a02b8ad09d1e98c9ad12f5db4a14', '[\"*\"]', '2025-07-15 05:03:16', NULL, '2025-07-15 05:00:28', '2025-07-15 05:03:16'),
(92, 'App\\Models\\User', 14, 'auth', '357ad9482e43779eaca578020dac39bc719dffc3d220c234ca0ff32b862ce7a3', '[\"*\"]', '2025-07-15 05:52:23', NULL, '2025-07-15 05:03:29', '2025-07-15 05:52:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_bulan` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('waiting','approved','canceled') NOT NULL DEFAULT 'waiting',
  `due_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `listing_id`, `start_date`, `end_date`, `price`, `total_bulan`, `fee`, `total_price`, `status`, `due_date`, `created_at`, `updated_at`) VALUES
(2, 9, 14, '2024-09-03', '2025-05-03', 715515, 8, 572412, 6296532, 'approved', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(3, 10, 9, '2024-07-25', '2025-06-25', 986729, 11, 1085402, 11939421, 'approved', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(4, 9, 14, '2024-07-05', '2024-11-05', 715515, 4, 286206, 3148266, 'waiting', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(5, 3, 5, '2024-01-28', '2024-12-28', 871463, 11, 958609, 10544702, 'canceled', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(6, 5, 11, '2024-05-07', '2025-03-07', 796913, 10, 796913, 8766043, 'waiting', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(7, 10, 11, '2024-09-02', '2025-04-02', 796913, 7, 557839, 6136230, 'waiting', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(8, 10, 2, '2024-08-08', '2025-06-08', 197210, 10, 197210, 2169310, 'approved', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(9, 3, 16, '2024-01-21', '2024-05-21', 644261, 4, 257704, 2834748, 'approved', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(10, 5, 7, '2024-09-19', '2025-08-19', 954331, 11, 1049764, 11547405, 'waiting', NULL, '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(11, 12, 3, '2024-03-12', '2024-08-23', 782514, 5, 419024, 4609260, 'waiting', NULL, '2024-11-23 21:20:25', '2024-11-23 21:20:25'),
(16, 13, 1, '2024-12-04', '2025-01-04', 263238, 1, 26324, 289562, 'approved', NULL, '2024-12-01 19:09:41', '2025-06-24 04:37:27'),
(19, 13, 11, '2024-12-01', '2025-01-01', 70000, 1, 7000, 77000, 'canceled', NULL, '2024-12-03 07:20:43', '2025-06-24 04:35:37'),
(20, 13, 3, '2024-12-01', '2025-01-01', 210000, 1, 21000, 231000, 'canceled', NULL, '2024-12-03 07:28:57', '2025-06-24 04:35:31'),
(69, 14, 10, '2025-06-26', '2025-07-26', 100000, 1, 10000, 110000, 'approved', '2025-06-25 04:45:28', '2025-06-24 04:45:28', '2025-06-24 04:46:24'),
(70, 14, 24, '2025-06-27', '2025-08-27', 100000, 2, 20000, 220000, 'canceled', '2025-06-25 04:53:17', '2025-06-24 04:53:17', '2025-06-24 04:53:52'),
(81, 14, 7, '2025-07-10', '2025-08-10', 100000, 1, 10000, 110000, 'canceled', '2025-07-03 10:09:45', '2025-07-03 10:08:45', '2025-07-03 10:09:02'),
(88, 19, 24, '2025-09-08', '2025-10-08', 100000, 1, 10000, 110000, 'canceled', '2025-07-07 13:58:31', '2025-07-06 13:58:31', '2025-07-06 13:58:37'),
(97, 21, 14, '2025-07-14', '2025-08-14', 75000, 1, 7500, 82500, 'approved', '2025-07-14 21:26:10', '2025-07-13 21:26:10', '2025-07-13 21:27:58'),
(98, 21, 14, '2025-08-15', '2025-09-15', 75000, 1, 7500, 82500, 'canceled', '2025-07-14 21:29:05', '2025-07-13 21:29:05', '2025-07-13 21:29:16'),
(100, 21, 25, '2025-07-15', '2025-08-15', 100000, 1, 10000, 110000, 'waiting', '2025-07-16 05:01:08', '2025-07-15 05:01:08', '2025-07-15 05:01:08'),
(101, 21, 24, '2025-07-15', '2025-08-15', 100000, 1, 10000, 110000, 'waiting', '2025-07-16 05:03:13', '2025-07-15 05:03:13', '2025-07-15 05:03:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Siparus', 'admin@siparus.com', '2024-11-23 20:23:14', 'admin', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'xwlXq5CaSADDM6n2siRaYqEGfirwjHqabQg6UXNR5vW29mZ9Q2OMeePA7uS2', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(2, 'Edna Gulgowski Jr.', 'ross.ohara@example.com', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'sHPjVBjlcB', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(3, 'Khalid Kovacek', 'rodger28@example.net', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'D9Q5o0relu', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(4, 'Miss Cassandre Muller DVM', 'wehner.samanta@example.net', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'H1fnEK0plV', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(5, 'Prof. Dovie Lubowitz', 'marlene.predovic@example.net', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'JnSpV48Jso', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(6, 'Prof. Shad Williamson IV', 'maya.collins@example.org', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'GELg0vHTEP', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(7, 'Marianne DuBuque', 'imarks@example.net', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'Mm7EllihEb', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(8, 'Liliane VonRueden DDS', 'ywilkinson@example.com', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'RNN4QxbFgw', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(9, 'Dr. Jamaal Raynor I', 'gerlach.shanel@example.org', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', '8lEtFx8Cih', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(10, 'Eladio Marquardt', 'weissnat.carlos@example.org', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'VMLAB1IJHH', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(11, 'Kaleb Bogan', 'pauline.wehner@example.com', '2024-11-23 20:23:15', 'user', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'mJ5vYq5Pah', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(12, 'Labiba Adinda', 'labibaadinda11@gmail.com', NULL, 'user', '$2y$12$gEJYp3.Q4LwxhXRfengWSuNBrXfn9olfuSBSiKJLOoEFo7Mjo4nRO', NULL, '2024-11-23 20:23:51', '2024-11-23 20:23:51'),
(13, 'Labiba Adinda Zahwana', 'labibaadinda91@gmail.com', NULL, 'user', '$2y$12$DSgRjpp2dEzbMzlSYg1Upuxhk59Whyfl8YfjB9FeDZ3KgN3DdLRT6', NULL, '2024-11-26 20:34:17', '2024-11-26 20:34:17'),
(14, 'Akbar Maryan B', 'akbarmbagaskara@gmail.com', NULL, 'user', '$2y$12$zjXEpN3inYi6n1PCURAFO.I50HbwHSgQfIVr4WmV5j2G86pY5EQT.', NULL, '2025-01-06 09:51:13', '2025-07-04 23:34:16'),
(19, 'Akbar Maryan', 'akbarmbagaskara58@gmail.com', NULL, 'user', '$2y$12$qnimZVy51VWV1dLyr1h/WO8RGrBrbDVQAD6o1GdMChcmj5.GVHhpm', NULL, '2025-07-06 12:14:30', '2025-07-06 13:45:19'),
(21, 'Soulcatcher584', 'akbarmbagaskara47@gmail.com', NULL, 'user', '$2y$12$.nsQQwNfgJrHIgAC/Y7a6OCT6YRtXA8iOjq5PNaiohPLc.pqU4iy2', NULL, '2025-07-13 21:25:12', '2025-07-13 21:33:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indeks untuk tabel `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listings_title_unique` (`title`),
  ADD UNIQUE KEY `listings_slug_unique` (`slug`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_listing_id_foreign` (`listing_id`);

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
-- AUTO_INCREMENT untuk tabel `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
