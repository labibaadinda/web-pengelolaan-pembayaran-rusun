-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2024 at 02:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

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
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1733235330),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1733235329;', 1733235330),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1733279020),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1733279020;', 1733279020);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `luas_kamar_m2` smallint UNSIGNED NOT NULL DEFAULT '0',
  `kapasitas` smallint UNSIGNED NOT NULL DEFAULT '0',
  `price` int UNSIGNED NOT NULL DEFAULT '0',
  `attachments` longtext,
  `full_support_available` smallint UNSIGNED NOT NULL DEFAULT '0',
  `mini_canteen_available` smallint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `slug`, `description`, `address`, `luas_kamar_m2`, `kapasitas`, `price`, `attachments`, `full_support_available`, `mini_canteen_available`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sawah Besar Tower 4', 'sawah-besar-tower-4', 'Rusun Sawah Besar Tower 4, yang terletak di Jl. Dempel Barat, Sawah Besar, Gayamsari, merupakan pilihan hunian nyaman dengan tarif terjangkau Rp 250.000 per malam. Berada di lantai 1 dengan tipe 36 (36 m²), kamar ini dilengkapi tempat tidur, meja, kursi, lemari, dan AC untuk kenyamanan. Gedung ini menyediakan keamanan 24 jam, area parkir luas, serta akses mudah ke fasilitas umum seperti pasar dan transportasi. Dengan lokasi strategis dan fasilitas lengkap, kamar ini cocok untuk individu atau pasangan yang mencari tempat tinggal sementara.', 'Jl. Dempel Barat, Sawah Besar Kecamatan Gayamsari 50163 GAYAMSARI, SAWAH BESAR', 36, 44, 250000, '[\"listings\\/01JE5J8GCVGW2W0XPHERSM92KY.jpg\",\"listings\\/01JE5Z9HSEH4Q658GC0KDWADD1.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 02:58:15', NULL),
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
(18, 'Pekunden', 'pekunden', 'Pekunden terletak di kawasan Semarang Tengah, tepat di belakang Balai Kota Semarang. Dibangun dan direnovasi pada tahun 1996, bangunan ini memiliki luas area 3,889 m² dan luas bangunan 2,835 m². Lokasinya yang strategis dekat dengan pusat pemerintahan memudahkan akses ke berbagai fasilitas kota.', 'Jl. Pekunden, Belakang Balai Kota Semarang Semarang Tengah, Kota Semarang 50134 SEMARANG TENGAH, PEKUNDEN', 27, 39, 70000, '[\"listings\\/01JE6DZAA4B4BSCM099AJZWHTH.jpg\"]', 0, 1, '2024-11-23 20:23:15', '2024-12-03 07:14:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_23_100421_create_listings_table', 1),
(5, '2024_11_23_144134_create_transactions_table', 1),
(6, '2024_11_23_155854_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_access_tokens`
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
(24, 'App\\Models\\User', 13, 'auth', '999ddd136d5e36f2c7159daff7fb687ecc4b105ed9b151fbe529e371b23d0bd6', '[\"*\"]', '2024-12-03 07:29:04', NULL, '2024-12-03 07:25:32', '2024-12-03 07:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `listing_id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` int UNSIGNED NOT NULL DEFAULT '0',
  `total_bulan` int UNSIGNED NOT NULL DEFAULT '0',
  `fee` int UNSIGNED NOT NULL DEFAULT '0',
  `total_price` int UNSIGNED NOT NULL DEFAULT '0',
  `status` enum('waiting','approved','canceled') NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `listing_id`, `start_date`, `end_date`, `price`, `total_bulan`, `fee`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(2, 9, 14, '2024-09-03', '2025-05-03', 715515, 8, 572412, 6296532, 'approved', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(3, 10, 9, '2024-07-25', '2025-06-25', 986729, 11, 1085402, 11939421, 'approved', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(4, 9, 14, '2024-07-05', '2024-11-05', 715515, 4, 286206, 3148266, 'waiting', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(5, 3, 5, '2024-01-28', '2024-12-28', 871463, 11, 958609, 10544702, 'canceled', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(6, 5, 11, '2024-05-07', '2025-03-07', 796913, 10, 796913, 8766043, 'waiting', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(7, 10, 11, '2024-09-02', '2025-04-02', 796913, 7, 557839, 6136230, 'waiting', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(8, 10, 2, '2024-08-08', '2025-06-08', 197210, 10, 197210, 2169310, 'approved', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(9, 3, 16, '2024-01-21', '2024-05-21', 644261, 4, 257704, 2834748, 'approved', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(10, 5, 7, '2024-09-19', '2025-08-19', 954331, 11, 1049764, 11547405, 'waiting', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
(11, 12, 3, '2024-03-12', '2024-08-23', 782514, 5, 419024, 4609260, 'waiting', '2024-11-23 21:20:25', '2024-11-23 21:20:25'),
(12, 12, 3, '2024-03-12', '2024-08-23', 782514, 5, 419024, 4609260, 'waiting', '2024-11-28 18:30:12', '2024-11-28 18:30:12'),
(16, 13, 1, '2024-12-04', '2025-01-04', 263238, 1, 26324, 289562, 'waiting', '2024-12-01 19:09:41', '2024-12-01 19:09:41'),
(19, 13, 11, '2024-12-01', '2025-01-01', 70000, 1, 7000, 77000, 'waiting', '2024-12-03 07:20:43', '2024-12-03 07:20:43'),
(20, 13, 3, '2024-12-01', '2025-01-01', 210000, 1, 21000, 231000, 'waiting', '2024-12-03 07:28:57', '2024-12-03 07:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Siparus', 'admin@siparus.com', '2024-11-23 20:23:14', 'admin', '$2y$12$slpkxEfp/x6lVp7EjYHR.uSZJcWuxOxIQ8eLbftq647mFlEzg7WSK', 'D7VyShvgbz', '2024-11-23 20:23:15', '2024-11-23 20:23:15'),
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
(13, 'Labiba Adinda Zahwana', 'labibaadinda91@gmail.com', NULL, 'user', '$2y$12$DSgRjpp2dEzbMzlSYg1Upuxhk59Whyfl8YfjB9FeDZ3KgN3DdLRT6', NULL, '2024-11-26 20:34:17', '2024-11-26 20:34:17');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listings_title_unique` (`title`),
  ADD UNIQUE KEY `listings_slug_unique` (`slug`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_listing_id_foreign` (`listing_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
