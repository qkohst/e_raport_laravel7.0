-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 05:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_raport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `email`, `nomor_hp`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADMIN', 'L', '1998-05-30', 'admin@mail.com', '085232077932', 'profile_admin.jpg', '2021-10-29 02:27:37', '2022-01-06 10:05:20'),
(2, 2, 'Qkoh St', 'L', '2021-10-05', 'qkohst19@gmail.com', '0852312654021', 'default.png', '2021-10-31 08:30:07', '2021-10-31 08:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_ekstrakulikuler`
--

CREATE TABLE `anggota_ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_ekstrakulikuler`
--

INSERT INTO `anggota_ekstrakulikuler` (`id`, `anggota_kelas_id`, `ekstrakulikuler_id`, `created_at`, `updated_at`) VALUES
(119, 128, 2, NULL, NULL),
(120, 129, 2, NULL, NULL),
(121, 130, 2, NULL, NULL),
(122, 131, 2, NULL, NULL),
(123, 132, 2, NULL, NULL),
(124, 133, 2, NULL, NULL),
(125, 134, 2, NULL, NULL),
(126, 135, 2, NULL, NULL),
(127, 136, 2, NULL, NULL),
(128, 137, 2, NULL, NULL),
(129, 138, 2, NULL, NULL),
(130, 139, 2, NULL, NULL),
(131, 140, 2, NULL, NULL),
(132, 141, 2, NULL, NULL),
(133, 142, 2, NULL, NULL),
(134, 143, 2, NULL, NULL),
(135, 144, 2, NULL, NULL),
(136, 145, 2, NULL, NULL),
(137, 146, 2, NULL, NULL),
(138, 147, 2, NULL, NULL),
(139, 148, 2, NULL, NULL),
(140, 149, 2, NULL, NULL),
(141, 150, 2, NULL, NULL),
(142, 151, 2, NULL, NULL),
(143, 152, 2, NULL, NULL),
(144, 153, 2, NULL, NULL),
(145, 154, 2, NULL, NULL),
(146, 70, 3, NULL, NULL),
(147, 71, 3, NULL, NULL),
(148, 72, 3, NULL, NULL),
(149, 73, 3, NULL, NULL),
(150, 74, 3, NULL, NULL),
(151, 75, 3, NULL, NULL),
(152, 76, 3, NULL, NULL),
(153, 77, 3, NULL, NULL),
(154, 78, 3, NULL, NULL),
(155, 79, 3, NULL, NULL),
(156, 80, 3, NULL, NULL),
(157, 81, 3, NULL, NULL),
(158, 82, 3, NULL, NULL),
(159, 83, 3, NULL, NULL),
(160, 84, 3, NULL, NULL),
(161, 85, 3, NULL, NULL),
(162, 86, 3, NULL, NULL),
(163, 87, 3, NULL, NULL),
(164, 88, 3, NULL, NULL),
(165, 89, 3, NULL, NULL),
(166, 90, 3, NULL, NULL),
(167, 91, 3, NULL, NULL),
(168, 92, 3, NULL, NULL),
(169, 93, 3, NULL, NULL),
(170, 94, 3, NULL, NULL),
(171, 95, 3, NULL, NULL),
(172, 96, 3, NULL, NULL),
(173, 97, 3, NULL, NULL),
(174, 98, 3, NULL, NULL),
(175, 99, 3, NULL, NULL),
(176, 100, 3, NULL, NULL),
(177, 101, 3, NULL, NULL),
(178, 102, 3, NULL, NULL),
(179, 103, 3, NULL, NULL),
(180, 104, 3, NULL, NULL),
(181, 105, 3, NULL, NULL),
(182, 106, 3, NULL, NULL),
(183, 107, 3, NULL, NULL),
(184, 108, 3, NULL, NULL),
(185, 109, 3, NULL, NULL),
(186, 110, 3, NULL, NULL),
(187, 111, 3, NULL, NULL),
(188, 112, 3, NULL, NULL),
(189, 113, 3, NULL, NULL),
(190, 114, 3, NULL, NULL),
(191, 115, 3, NULL, NULL),
(192, 116, 3, NULL, NULL),
(193, 117, 3, NULL, NULL),
(194, 118, 3, NULL, NULL),
(195, 119, 3, NULL, NULL),
(196, 120, 3, NULL, NULL),
(197, 121, 3, NULL, NULL),
(198, 122, 3, NULL, NULL),
(199, 123, 3, NULL, NULL),
(200, 124, 3, NULL, NULL),
(201, 125, 3, NULL, NULL),
(202, 126, 3, NULL, NULL),
(203, 127, 3, NULL, NULL),
(204, 128, 3, NULL, NULL),
(205, 129, 3, NULL, NULL),
(206, 130, 3, NULL, NULL),
(207, 131, 3, NULL, NULL),
(208, 132, 3, NULL, NULL),
(209, 133, 3, NULL, NULL),
(210, 134, 3, NULL, NULL),
(211, 135, 3, NULL, NULL),
(212, 136, 3, NULL, NULL),
(213, 137, 3, NULL, NULL),
(214, 138, 3, NULL, NULL),
(215, 139, 3, NULL, NULL),
(216, 140, 3, NULL, NULL),
(217, 141, 3, NULL, NULL),
(218, 142, 3, NULL, NULL),
(219, 143, 3, NULL, NULL),
(220, 144, 3, NULL, NULL),
(221, 145, 3, NULL, NULL),
(222, 146, 3, NULL, NULL),
(223, 147, 3, NULL, NULL),
(224, 148, 3, NULL, NULL),
(225, 149, 3, NULL, NULL),
(226, 150, 3, NULL, NULL),
(227, 151, 3, NULL, NULL),
(228, 152, 3, NULL, NULL),
(229, 153, 3, NULL, NULL),
(230, 154, 3, NULL, NULL),
(231, 126, 2, NULL, NULL),
(232, 127, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_kelas`
--

CREATE TABLE `anggota_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_kelas`
--

INSERT INTO `anggota_kelas` (`id`, `siswa_id`, `kelas_id`, `pendaftaran`, `created_at`, `updated_at`) VALUES
(70, 85, 9, '1', NULL, NULL),
(71, 86, 9, '1', NULL, NULL),
(72, 87, 9, '1', NULL, NULL),
(73, 88, 9, '1', NULL, NULL),
(74, 89, 9, '1', NULL, NULL),
(75, 90, 9, '1', NULL, NULL),
(76, 91, 9, '1', NULL, NULL),
(77, 92, 9, '1', NULL, NULL),
(78, 93, 9, '1', NULL, NULL),
(79, 95, 9, '1', NULL, NULL),
(80, 96, 9, '1', NULL, NULL),
(81, 97, 9, '1', NULL, NULL),
(82, 98, 9, '1', NULL, NULL),
(83, 99, 9, '1', NULL, NULL),
(84, 100, 9, '1', NULL, NULL),
(85, 101, 9, '1', NULL, NULL),
(86, 102, 9, '1', NULL, NULL),
(87, 104, 9, '1', NULL, NULL),
(88, 103, 9, '1', NULL, NULL),
(89, 105, 9, '1', NULL, NULL),
(90, 106, 9, '1', NULL, NULL),
(91, 107, 9, '1', NULL, NULL),
(92, 108, 9, '1', NULL, NULL),
(93, 109, 9, '1', NULL, NULL),
(94, 110, 9, '1', NULL, NULL),
(95, 111, 9, '1', NULL, NULL),
(96, 112, 9, '1', NULL, NULL),
(97, 113, 10, '1', NULL, NULL),
(98, 114, 10, '1', NULL, NULL),
(99, 115, 10, '1', NULL, NULL),
(100, 116, 10, '1', NULL, NULL),
(101, 117, 10, '1', NULL, NULL),
(102, 118, 10, '1', NULL, NULL),
(103, 119, 10, '1', NULL, NULL),
(104, 120, 10, '1', NULL, NULL),
(105, 121, 10, '1', NULL, NULL),
(106, 122, 10, '1', NULL, NULL),
(107, 123, 10, '1', NULL, NULL),
(108, 124, 10, '1', NULL, NULL),
(109, 125, 10, '1', NULL, NULL),
(110, 126, 10, '1', NULL, NULL),
(111, 127, 10, '1', NULL, NULL),
(112, 128, 10, '1', NULL, NULL),
(113, 129, 10, '1', NULL, NULL),
(114, 130, 10, '1', NULL, NULL),
(115, 131, 10, '1', NULL, NULL),
(116, 132, 10, '1', NULL, NULL),
(117, 133, 10, '1', NULL, NULL),
(118, 134, 10, '1', NULL, NULL),
(119, 135, 10, '1', NULL, NULL),
(120, 136, 10, '1', NULL, NULL),
(121, 137, 10, '1', NULL, NULL),
(122, 138, 10, '1', NULL, NULL),
(123, 139, 10, '1', NULL, NULL),
(124, 140, 10, '1', NULL, NULL),
(125, 141, 10, '1', NULL, NULL),
(126, 272, 11, '3', NULL, NULL),
(127, 273, 11, '3', NULL, NULL),
(128, 274, 11, '3', NULL, NULL),
(129, 275, 11, '3', NULL, NULL),
(130, 276, 11, '3', NULL, NULL),
(131, 277, 11, '3', NULL, NULL),
(132, 278, 11, '3', NULL, NULL),
(133, 279, 11, '3', NULL, NULL),
(134, 280, 11, '3', NULL, NULL),
(135, 281, 11, '3', NULL, NULL),
(136, 261, 11, '3', NULL, NULL),
(137, 282, 11, '3', NULL, NULL),
(138, 283, 11, '3', NULL, NULL),
(139, 284, 11, '3', NULL, NULL),
(140, 286, 11, '3', NULL, NULL),
(141, 287, 11, '3', NULL, NULL),
(142, 288, 11, '3', NULL, NULL),
(143, 289, 11, '3', NULL, NULL),
(144, 290, 11, '3', NULL, NULL),
(145, 291, 11, '3', NULL, NULL),
(146, 248, 11, '3', NULL, NULL),
(147, 293, 11, '3', NULL, NULL),
(148, 294, 11, '3', NULL, NULL),
(149, 295, 11, '3', NULL, NULL),
(150, 296, 11, '3', NULL, NULL),
(151, 297, 11, '3', NULL, NULL),
(152, 298, 11, '3', NULL, NULL),
(153, 299, 11, '3', NULL, NULL),
(154, 300, 11, '3', NULL, NULL),
(155, 230, 12, '3', NULL, NULL),
(156, 228, 12, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catatan_wali_kelas`
--

CREATE TABLE `catatan_wali_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `catatan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catatan_wali_kelas`
--

INSERT INTO `catatan_wali_kelas` (`id`, `anggota_kelas_id`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 97, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 05:58:54'),
(2, 98, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 05:58:54'),
(3, 99, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 05:58:54'),
(4, 100, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 05:58:54'),
(5, 101, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 06:03:19'),
(6, 102, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:54', '2021-12-22 05:58:54'),
(7, 103, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(8, 104, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(9, 105, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(10, 106, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(11, 107, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(12, 108, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(13, 109, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(14, 110, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(15, 111, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(16, 112, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(17, 113, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(18, 114, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(19, 115, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(20, 116, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(21, 117, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(22, 118, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(23, 119, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(24, 120, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(25, 121, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(26, 122, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(27, 123, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(28, 124, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 05:58:55'),
(29, 125, 'Tingkatkan lagi prestasi belajarmu', '2021-12-22 05:58:55', '2021-12-22 06:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `pembina_id` bigint(20) UNSIGNED NOT NULL,
  `nama_ekstrakulikuler` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekstrakulikuler`
--

INSERT INTO `ekstrakulikuler` (`id`, `tapel_id`, `pembina_id`, `nama_ekstrakulikuler`, `created_at`, `updated_at`) VALUES
(2, 1, 55, 'Komputer', '2021-11-13 18:27:26', '2021-11-13 18:27:26'),
(3, 1, 56, 'Pramuka', '2021-11-13 18:28:58', '2022-01-02 08:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nuptk` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `user_id`, `nama_lengkap`, `gelar`, `nip`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nuptk`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(55, 86, 'KUKOH SANTOSO', 'S.Kom.', NULL, 'L', 'Tuban', '1998-05-30', NULL, 'Dikir Tambakboyo Tuban', 'default.png', '2021-11-02 15:06:34', '2021-11-02 15:06:34'),
(56, 87, 'ALI GHUFRON', 'S.Pd.', NULL, 'L', 'Tuban', '1982-06-20', NULL, 'Socorejo Jenu Tuban', 'default.png', '2021-11-02 15:06:34', '2021-11-02 15:06:34'),
(57, 88, 'DARMINI', 'S.Pd.', NULL, 'P', 'Tuban', '2021-11-02', NULL, 'Cokrowati Tambakboyo Tuban', 'default.png', '2021-11-02 15:09:00', '2021-11-02 15:09:00'),
(58, 92, 'HABIBUL LUBAB', 'S.Pd.', NULL, 'L', 'Tuban', '1988-08-08', '7140766667130133', 'Tambakboyo', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(59, 93, 'HANA RATRI RAHAYU', 'S.Pd.', NULL, 'P', 'Tuban', '1989-02-10', '2433766667130342', 'Karangasem', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(60, 94, 'HERLINAWATI', 'S.Pd.', NULL, 'P', 'TUBAN', '1984-11-15', '0447762663210083', 'TAMBAKBOYO', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(61, 95, 'MOH. DARUL AFAN', 'S.Pd.', NULL, 'L', 'TUBAN', '1995-06-10', NULL, 'Margosuko', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(62, 96, 'MUHAMMAD HASAN BISRI', 'S.Ag.', NULL, 'L', 'ARJAWINANGUN', '1986-07-22', '5054764665130143', 'PANGURAGAN KULON', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(63, 97, 'RISA MAHMUDAH', 'S.Pd.', NULL, 'P', 'TUBAN', '1994-03-04', NULL, 'Ngampelrejo', 'profile_risa mahmudah.jfif', '2021-11-06 13:50:01', '2022-01-06 11:34:19'),
(64, 98, 'SEPTI ISNAYATI HIDAYAT', 'S.Pd.', NULL, 'P', 'Tuban', '1989-09-08', '0240767668220013', 'Merkawang', 'default.png', '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(65, 403, 'MOCH. MUNIR', 'S.E.', NULL, 'L', 'Tuban', '1970-11-17', NULL, 'Ds. Gadon Kec. Tambakboyo Kab. Tuban', 'default.png', '2021-11-24 09:53:20', '2021-11-24 09:53:20'),
(66, 404, 'SUWARDI', 'S.H.,M.A.', NULL, 'L', 'Tuban', '1965-11-10', NULL, 'Ds. Cokrowati Kec. Tambakboyo Kab. Tuban', 'default.png', '2021-11-24 09:54:30', '2021-11-24 09:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `k13_butir_sikap`
--

CREATE TABLE `k13_butir_sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kompetensi` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `butir_sikap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_butir_sikap`
--

INSERT INTO `k13_butir_sikap` (`id`, `jenis_kompetensi`, `kode`, `butir_sikap`, `created_at`, `updated_at`) VALUES
(1, '1', '1.1U', 'Berdoa', '2021-11-24 15:44:33', '2021-12-04 14:48:01'),
(3, '1', '1.2U', 'Menjalankan Ibadah', '2021-11-25 03:26:30', '2021-11-25 03:26:30'),
(4, '1', '1.3U', 'Memberi Salam', '2021-11-25 03:26:30', '2021-12-04 14:48:21'),
(6, '2', '2.1U', 'Jujur', '2021-11-28 14:34:31', '2021-12-04 14:45:22'),
(7, '2', '2.2U', 'Disiplin', '2021-12-04 14:47:28', '2021-12-04 14:47:28'),
(8, '2', '2.3U', 'Tanggung Jawab', '2021-12-04 14:47:28', '2021-12-04 14:47:28'),
(9, '2', '2.4U', 'Santun', '2021-12-04 14:47:28', '2021-12-04 14:47:28'),
(10, '2', '2.5U', 'Percaya Diri', '2021-12-04 14:47:28', '2021-12-04 14:47:28'),
(11, '2', '2.6U', 'Peduli', '2021-12-04 14:47:28', '2021-12-04 14:47:28'),
(12, '1', '1.4U', 'Bersyukur atas nikmat & karunia Tuhan', '2021-12-04 14:48:56', '2021-12-04 14:48:56'),
(13, '1', '1.5U', 'Mensyukuri kemampuan manusia dalam mengendalikan diri', '2021-12-04 14:49:31', '2021-12-04 14:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `k13_deskripsi_nilai_siswa`
--

CREATE TABLE `k13_deskripsi_nilai_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_nilai_akhir_raport_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi_pengetahuan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_keterampilan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_deskripsi_nilai_siswa`
--

INSERT INTO `k13_deskripsi_nilai_siswa` (`id`, `pembelajaran_id`, `k13_nilai_akhir_raport_id`, `deskripsi_pengetahuan`, `deskripsi_keterampilan`, `created_at`, `updated_at`) VALUES
(1, 293, 519, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(2, 293, 520, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(3, 293, 521, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(4, 293, 522, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(5, 293, 523, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(6, 293, 524, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(7, 293, 525, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(8, 293, 526, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(9, 293, 527, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(10, 293, 528, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(11, 293, 529, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(12, 293, 530, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(13, 293, 531, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(14, 293, 532, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(15, 293, 533, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(16, 293, 534, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(17, 293, 535, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(18, 293, 536, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(19, 293, 537, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(20, 293, 538, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(21, 293, 539, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(22, 293, 540, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(23, 293, 541, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan cukup baik, terutama Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(24, 293, 542, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(25, 293, 543, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(26, 293, 544, 'Memiliki penguasaan pengetahuan cukup baik, terutama Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(27, 293, 545, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:03:13', '2021-12-20 17:03:13'),
(28, 306, 546, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(29, 306, 547, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(30, 306, 548, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(31, 306, 549, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(32, 306, 550, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(33, 306, 551, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(34, 306, 552, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(35, 306, 553, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(36, 306, 554, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(37, 306, 555, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(38, 306, 556, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(39, 306, 557, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(40, 306, 558, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2021-12-20 17:06:48'),
(41, 306, 559, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2021-12-20 17:06:48'),
(42, 306, 560, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(43, 306, 561, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(44, 306, 562, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(45, 306, 563, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(46, 306, 564, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(47, 306, 565, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(48, 306, 566, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2021-12-20 17:06:48'),
(49, 306, 567, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(50, 306, 568, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mengaktifkan komputer sesuai prosedur', '2021-12-20 17:06:48', '2021-12-20 17:06:48'),
(51, 306, 569, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(52, 306, 570, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 17:06:48', '2021-12-20 17:06:48'),
(53, 306, 571, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(54, 306, 572, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(55, 306, 573, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Memiliki penguasaan keterampilan baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(56, 306, 574, 'Memiliki penguasaan pengetahuan baik, terutama dalam Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam Mematikan komputer sesuai prosedur', '2021-12-20 17:06:48', '2022-01-07 11:46:13'),
(57, 304, 575, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(58, 304, 576, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(59, 304, 577, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(60, 304, 578, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(61, 304, 579, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(62, 304, 580, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(63, 304, 581, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(64, 304, 582, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(65, 304, 583, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(66, 304, 584, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(67, 304, 585, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(68, 304, 586, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(69, 304, 587, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(70, 304, 588, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(71, 304, 589, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(72, 304, 590, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(73, 304, 591, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(74, 304, 592, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(75, 304, 593, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(76, 304, 594, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(77, 304, 595, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(78, 304, 596, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(79, 304, 597, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(80, 304, 598, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(81, 304, 599, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(82, 304, 600, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(83, 304, 601, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(84, 304, 602, 'Memiliki penguasaan pengetahuan baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(85, 304, 603, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'Memiliki penguasaan keterampilan baik, terutama dalam mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:34:45', '2021-12-23 10:34:45'),
(86, 305, 604, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(87, 305, 605, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(88, 305, 606, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(89, 305, 607, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(90, 305, 608, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(91, 305, 609, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(92, 305, 610, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(93, 305, 611, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(94, 305, 612, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(95, 305, 613, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(96, 305, 614, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(97, 305, 615, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(98, 305, 616, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(99, 305, 617, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(100, 305, 618, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(101, 305, 619, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(102, 305, 620, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(103, 305, 621, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(104, 305, 622, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(105, 305, 623, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(106, 305, 624, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(107, 305, 625, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(108, 305, 626, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(109, 305, 627, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(110, 305, 628, 'Memiliki penguasaan pengetahuan baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(111, 305, 629, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(112, 305, 630, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(113, 305, 631, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menganalisis Hubungan Antar Sudut', 'Memiliki penguasaan keterampilan sangat baik, terutama dalam mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13'),
(114, 305, 632, 'Memiliki penguasaan pengetahuan sangat baik, terutama dalam Menjelaskan dan Menentukan urutan bilangan', 'Memiliki penguasaan keterampilan baik, terutama dalam mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:40:13', '2021-12-23 10:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `k13_deskripsi_sikap_siswa`
--

CREATE TABLE `k13_deskripsi_sikap_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_spiritual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_sosial` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_sosial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_deskripsi_sikap_siswa`
--

INSERT INTO `k13_deskripsi_sikap_siswa` (`id`, `anggota_kelas_id`, `nilai_spiritual`, `deskripsi_spiritual`, `nilai_sosial`, `deskripsi_sosial`, `created_at`, `updated_at`) VALUES
(1, 97, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:33:27'),
(2, 98, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(3, 99, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(4, 100, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(5, 101, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(6, 102, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(7, 103, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(8, 104, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(9, 105, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(10, 106, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(11, 107, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(12, 108, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(13, 109, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(14, 110, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(15, 111, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(16, 112, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(17, 113, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(18, 114, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(19, 115, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(20, 116, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(21, 117, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:32:42'),
(22, 118, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(23, 119, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(24, 120, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(25, 121, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(26, 122, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(27, 123, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(28, 124, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59'),
(29, 125, '3', 'Memiliki sikap spiritual Baik, antara lain\r\nKonsisten dalam  Berdoa,  Bersyukur atas nikmat & karunia Tuhan,  Memberi Salam,  Menjalankan Ibadah,  dan Mensyukuri kemampuan manusia dalam mengendalikan diri.', '3', 'Memiliki sikap sosial Baik, antara lain\r\nKonsisten dalam  Disiplin,  Jujur,  Peduli,  Percaya Diri,  Santun,  dan Tanggung Jawab.', '2021-12-30 13:18:59', '2021-12-30 13:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `k13_kd_mapel`
--

CREATE TABLE `k13_kd_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kompetensi` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kompetensi_dasar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_kompetensi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_kd_mapel`
--

INSERT INTO `k13_kd_mapel` (`id`, `mapel_id`, `tingkatan_kelas`, `jenis_kompetensi`, `semester`, `kode_kd`, `kompetensi_dasar`, `ringkasan_kompetensi`, `created_at`, `updated_at`) VALUES
(2, 43, '7', '3', '1', '3.10', 'Menganalisis Hubungan Antar Sudut', 'Menganalisis Hubungan Antar Sudut', '2021-11-25 06:42:22', '2021-11-26 12:01:18'),
(3, 43, '7', '3', '1', '3.1', 'Menjelaskan dan Menentukan urutan bilangan', 'Menjelaskan dan Menentukan urutan bilangan', '2021-11-26 12:04:44', '2021-11-26 12:04:44'),
(7, 42, '8', '3', '1', '3.1', 'Coba lagi masak ndak boleh', 'Coba lagi masak ndak boleh', '2021-11-29 09:17:11', '2021-11-29 09:17:11'),
(9, 43, '8', '4', '1', '4.2', 'Menggambar gubahan flora dan fauna sertageometrik menjadi ragam hias', 'Menggambar gubahan flora dan fauna sertageometrik menjadi ragam hias', '2021-12-04 11:54:06', '2021-12-04 11:54:06'),
(10, 43, '8', '4', '1', '4.1', 'Menggambar flora, fauna dan benda alam', 'Menggambar flora, fauna dan benda alam', '2021-12-04 11:59:02', '2021-12-04 11:59:02'),
(11, 43, '8', '4', '1', '4.3', 'Menerapkan ragam hias pada kriya teksti', 'Menerapkan ragam hias pada kriya teksti', '2021-12-04 11:59:44', '2021-12-04 11:59:44'),
(12, 43, '8', '4', '1', '4.4', 'Menerapkan ragam hias pada kriya kayu', 'Menerapkan ragam hias pada kriya kayu', '2021-12-04 11:59:44', '2021-12-04 11:59:44'),
(13, 44, '7', '3', '1', '3.1', 'Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai peralatan teknologi informasi dan komunikasi', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(14, 44, '7', '3', '1', '3.2', 'Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi dari masa lalu sampai sekarang', 'Mendeskripsikan sejarah perkembangan teknologi informasi dan komunikasi', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(15, 44, '7', '3', '1', '3.3', 'Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', 'Menjelaskan peranan teknologi informasi dan komunikasi di dalam kehidupan sehari-hari', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(16, 44, '7', '3', '1', '3.4', 'Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai keuntungan dari penggunaan teknologi informasi dan komunikasi', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(17, 44, '7', '3', '1', '3.5', 'Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', 'Mengidentifikasi berbagai dampak negatif dari penggunaan teknologi informasi dan komunikasi', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(18, 44, '7', '4', '1', '4.1', 'Mengaktifkan komputer sesuai prosedur', 'Mengaktifkan komputer sesuai prosedur', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(19, 44, '7', '4', '1', '4.2', 'Mematikan komputer sesuai prosedur', 'Mematikan komputer sesuai prosedur', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(20, 44, '7', '4', '1', '4.3', 'Melakukan operasi dasar pada operating system dengan sistematis', 'Melakukan operasi dasar pada operating system dengan sistematis', '2021-12-20 05:04:24', '2021-12-20 05:04:24'),
(21, 44, '8', '3', '1', '3.1', 'Mengidentifikasi menu dan ikon pada perangkat lunak pengolah kata', 'Mengidentifikasi menu dan ikon pada perangkat lunak pengolah kata', '2021-12-20 05:06:21', '2021-12-20 05:06:21'),
(22, 44, '8', '3', '1', '3.2', 'Menjelaskan fungsi menu dan ikon pada perangkat lunak pengolah kata', 'Menjelaskan fungsi menu dan ikon pada perangkat lunak pengolah kata', '2021-12-20 05:06:21', '2021-12-20 05:06:21'),
(23, 44, '8', '4', '1', '4.1', 'Menggunakan menu dan ikon pokok pada perangka lunak pengolah kata', 'Menggunakan menu dan ikon pokok pada perangka lunak pengolah kata', '2021-12-20 05:06:21', '2021-12-20 05:06:21'),
(24, 44, '8', '4', '1', '4.2', 'Membuat dokumen pengolah kata sederhana', 'Membuat dokumen pengolah kata sederhana', '2021-12-20 05:06:21', '2021-12-20 05:06:21'),
(25, 44, '9', '3', '1', '3.1', 'Menjelaskan pengertian internet / intranet', 'Menjelaskan pengertian internet / intranet', '2021-12-20 05:10:05', '2021-12-20 05:10:05'),
(26, 44, '9', '3', '1', '3.2', 'Mendeskripsikan dasar-dasar sistem jaringan di internet / intranet', 'Mendeskripsikan dasar-dasar sistem jaringan di internet / intranet', '2021-12-20 05:10:05', '2021-12-20 05:10:05'),
(27, 44, '9', '3', '1', '3.3', 'Mengenal ukuran kecepatan akses internet', 'Mengenal ukuran kecepatan akses internet', '2021-12-20 05:10:05', '2021-12-20 05:10:05'),
(28, 44, '9', '4', '1', '4.1', 'Mengidentifikasi perangkat keras yang digunakan dalam akses internet & intranet', 'Mengidentifikasi perangkat keras yang digunakan dalam akses internet & intranet', '2021-12-20 05:10:05', '2021-12-20 05:10:05'),
(29, 44, '9', '4', '1', '4.2', 'Melakukan berbagai cara untuk memperoleh sambungan internet', 'Melakukan berbagai cara untuk memperoleh sambungan internet', '2021-12-20 05:10:05', '2021-12-20 05:10:05'),
(30, 42, '7', '3', '1', '3.1', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', '2021-12-23 10:04:10', '2021-12-23 10:04:10'),
(31, 42, '7', '3', '1', '3.2', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', 'memahami komoditas tanaman sayuran yang dapat dikembangkan sesuai kebutuhan wilayah setempat', '2021-12-23 10:04:10', '2021-12-23 10:04:10'),
(34, 43, '7', '4', '1', '4.1', 'mementaskan fragmen sesuai konsep, teknik, dan prosedur', 'mementaskan fragmen sesuai konsep, teknik, dan prosedur', '2021-12-23 10:08:35', '2021-12-23 10:08:35'),
(35, 43, '7', '4', '1', '4.2', 'mementaskan pantomim sesuai konsep, teknik, dan prosedur', 'mementaskan pantomim sesuai konsep, teknik, dan prosedur', '2021-12-23 10:08:35', '2021-12-23 10:08:35'),
(36, 42, '7', '4', '1', '4.1', 'mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', 'mempraktikkan budidaya satwa harapan (jangkrik, kroto, ulat sutra, cacing, bekicot, dan lain-lain)', '2021-12-23 10:09:25', '2021-12-23 10:09:25'),
(37, 42, '7', '4', '1', '4.2', 'mempraktikkan budidaya (pembesaran) ikan hias', 'mempraktikkan budidaya (pembesaran) ikan hias', '2021-12-23 10:09:25', '2021-12-23 10:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `k13_kkm_mapel`
--

CREATE TABLE `k13_kkm_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_kkm_mapel`
--

INSERT INTO `k13_kkm_mapel` (`id`, `mapel_id`, `kelas_id`, `kkm`, `created_at`, `updated_at`) VALUES
(456, 32, 9, 70, '2021-12-03 13:00:36', '2021-12-08 16:27:10'),
(457, 44, 9, 70, '2021-12-03 13:00:36', '2021-12-20 07:19:13'),
(458, 43, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(459, 42, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(460, 41, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(461, 40, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(462, 39, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(463, 38, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(464, 37, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(465, 36, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(466, 35, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(467, 34, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(468, 33, 9, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(469, 40, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(470, 41, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(471, 42, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(472, 43, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(473, 44, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(474, 39, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(475, 38, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(476, 37, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(477, 36, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(478, 35, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(479, 34, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(480, 33, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(481, 32, 10, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(482, 40, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(483, 41, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(484, 42, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(485, 43, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(486, 44, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(487, 39, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(488, 38, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(489, 37, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(490, 36, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(491, 35, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(492, 34, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(493, 33, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(494, 32, 11, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(495, 40, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(496, 41, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(497, 42, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(498, 43, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(499, 44, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(500, 39, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(501, 38, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(502, 37, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(503, 36, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(504, 35, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(505, 34, 12, 70, '2021-12-03 13:00:36', '2021-12-03 13:00:36'),
(506, 33, 12, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(507, 32, 12, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(508, 39, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(509, 40, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(510, 41, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(511, 42, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(512, 43, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(513, 38, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(514, 37, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(515, 36, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(516, 35, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(517, 34, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(518, 33, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(519, 32, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37'),
(520, 44, 13, 70, '2021-12-03 13:00:37', '2021-12-03 13:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `k13_mapping_mapel`
--

CREATE TABLE `k13_mapping_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok` enum('A','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_urut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_mapping_mapel`
--

INSERT INTO `k13_mapping_mapel` (`id`, `mapel_id`, `kelompok`, `nomor_urut`, `created_at`, `updated_at`) VALUES
(27, 32, 'B', 12, '2021-11-28 13:14:10', '2021-11-28 13:14:10'),
(28, 33, 'A', 3, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(29, 34, 'A', 7, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(30, 35, 'B', 4, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(31, 36, 'A', 5, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(32, 37, 'A', 6, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(33, 38, 'A', 4, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(34, 39, 'A', 1, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(35, 40, 'B', 2, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(36, 41, 'A', 2, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(37, 42, 'B', 3, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(38, 43, 'B', 1, '2021-11-28 13:14:10', '2021-12-23 10:44:39'),
(39, 44, 'B', 5, '2021-11-28 13:14:10', '2021-12-23 10:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_akhir_raport`
--

CREATE TABLE `k13_nilai_akhir_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `predikat_pengetahuan` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_keterampilan` int(11) NOT NULL,
  `predikat_keterampilan` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_spiritual` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_sosial` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_akhir_raport`
--

INSERT INTO `k13_nilai_akhir_raport` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `kkm`, `nilai_pengetahuan`, `predikat_pengetahuan`, `nilai_keterampilan`, `predikat_keterampilan`, `nilai_spiritual`, `nilai_sosial`, `created_at`, `updated_at`) VALUES
(519, 293, 70, 70, 90, 'A', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(520, 293, 71, 70, 79, 'C', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(521, 293, 72, 70, 82, 'B', 81, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(522, 293, 73, 70, 81, 'B', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(523, 293, 74, 70, 82, 'B', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(524, 293, 75, 70, 80, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(525, 293, 76, 70, 79, 'C', 81, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(526, 293, 77, 70, 76, 'C', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(527, 293, 78, 70, 76, 'C', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(528, 293, 79, 70, 76, 'C', 81, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(529, 293, 80, 70, 81, 'B', 78, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(530, 293, 81, 70, 81, 'B', 77, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(531, 293, 82, 70, 81, 'B', 77, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(532, 293, 83, 70, 83, 'B', 78, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(533, 293, 84, 70, 82, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(534, 293, 85, 70, 81, 'B', 79, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(535, 293, 86, 70, 80, 'B', 79, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(536, 293, 87, 70, 78, 'C', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(537, 293, 88, 70, 80, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(538, 293, 89, 70, 80, 'B', 78, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(539, 293, 90, 70, 86, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(540, 293, 91, 70, 88, 'B', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(541, 293, 92, 70, 83, 'B', 77, 'C', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(542, 293, 93, 70, 82, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(543, 293, 94, 70, 82, 'B', 81, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(544, 293, 95, 70, 78, 'C', 82, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(545, 293, 96, 70, 81, 'B', 80, 'B', '3', '3', '2021-12-20 14:51:12', '2021-12-28 12:19:24'),
(546, 306, 97, 70, 80, 'B', 88, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(547, 306, 98, 70, 80, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(548, 306, 99, 70, 80, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(549, 306, 100, 70, 80, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(550, 306, 101, 70, 80, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(551, 306, 102, 70, 82, 'B', 83, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(552, 306, 103, 70, 82, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(553, 306, 104, 70, 83, 'B', 84, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(554, 306, 105, 70, 82, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(555, 306, 106, 70, 83, 'B', 88, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(556, 306, 107, 70, 83, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(557, 306, 108, 70, 82, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(558, 306, 109, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(559, 306, 110, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(560, 306, 111, 70, 84, 'B', 83, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(561, 306, 112, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(562, 306, 113, 70, 85, 'B', 84, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(563, 306, 114, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(564, 306, 115, 70, 84, 'B', 88, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(565, 306, 116, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(566, 306, 117, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(567, 306, 118, 70, 84, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(568, 306, 119, 70, 84, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(569, 306, 120, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(570, 306, 121, 70, 83, 'B', 86, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(571, 306, 122, 70, 83, 'B', 83, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(572, 306, 123, 70, 84, 'B', 87, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(573, 306, 124, 70, 84, 'B', 84, 'B', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(574, 306, 125, 70, 84, 'B', 91, 'A', '4', '4', '2021-12-20 15:24:20', '2022-01-07 11:44:59'),
(575, 304, 97, 70, 90, 'A', 98, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(576, 304, 98, 70, 90, 'A', 92, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(577, 304, 99, 70, 89, 'B', 91, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(578, 304, 100, 70, 90, 'A', 93, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(579, 304, 101, 70, 88, 'B', 92, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(580, 304, 102, 70, 90, 'A', 91, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(581, 304, 103, 70, 86, 'B', 91, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(582, 304, 104, 70, 88, 'B', 90, 'A', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(583, 304, 105, 70, 90, 'A', 89, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(584, 304, 106, 70, 90, 'A', 89, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(585, 304, 107, 70, 87, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(586, 304, 108, 70, 92, 'A', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(587, 304, 109, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(588, 304, 110, 70, 89, 'B', 86, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(589, 304, 111, 70, 88, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(590, 304, 112, 70, 88, 'B', 83, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(591, 304, 113, 70, 86, 'B', 88, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(592, 304, 114, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(593, 304, 115, 70, 85, 'B', 82, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(594, 304, 116, 70, 84, 'B', 82, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(595, 304, 117, 70, 85, 'B', 82, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(596, 304, 118, 70, 84, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(597, 304, 119, 70, 84, 'B', 86, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(598, 304, 120, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(599, 304, 121, 70, 91, 'A', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(600, 304, 122, 70, 87, 'B', 84, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(601, 304, 123, 70, 86, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(602, 304, 124, 70, 86, 'B', 86, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(603, 304, 125, 70, 91, 'A', 82, 'B', '3', '3', '2021-12-23 10:34:13', '2021-12-28 12:10:26'),
(604, 305, 97, 70, 94, 'A', 97, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(605, 305, 98, 70, 92, 'A', 87, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(606, 305, 99, 70, 92, 'A', 92, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(607, 305, 100, 70, 90, 'A', 93, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(608, 305, 101, 70, 87, 'B', 94, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(609, 305, 102, 70, 87, 'B', 95, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(610, 305, 103, 70, 86, 'B', 94, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(611, 305, 104, 70, 85, 'B', 96, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(612, 305, 105, 70, 87, 'B', 86, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(613, 305, 106, 70, 88, 'B', 84, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(614, 305, 107, 70, 89, 'B', 86, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(615, 305, 108, 70, 89, 'B', 85, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(616, 305, 109, 70, 90, 'A', 86, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(617, 305, 110, 70, 88, 'B', 87, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(618, 305, 111, 70, 92, 'A', 88, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(619, 305, 112, 70, 87, 'B', 95, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(620, 305, 113, 70, 89, 'B', 96, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(621, 305, 114, 70, 88, 'B', 96, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:40'),
(622, 305, 115, 70, 87, 'B', 97, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(623, 305, 116, 70, 88, 'B', 87, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(624, 305, 117, 70, 90, 'A', 92, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(625, 305, 118, 70, 88, 'B', 89, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(626, 305, 119, 70, 92, 'A', 91, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(627, 305, 120, 70, 89, 'B', 90, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(628, 305, 121, 70, 87, 'B', 81, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(629, 305, 122, 70, 92, 'A', 89, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(630, 305, 123, 70, 93, 'A', 90, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(631, 305, 124, 70, 93, 'A', 90, 'A', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41'),
(632, 305, 125, 70, 91, 'A', 84, 'B', '3', '3', '2021-12-23 10:34:27', '2021-12-28 12:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_keterampilan`
--

CREATE TABLE `k13_nilai_keterampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_keterampilan_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_keterampilan`
--

INSERT INTO `k13_nilai_keterampilan` (`id`, `k13_rencana_nilai_keterampilan_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 17, 126, 70, '2021-12-19 14:30:14', '2021-12-19 14:33:58'),
(2, 17, 127, 88, '2021-12-19 14:30:14', '2021-12-19 14:33:58'),
(3, 17, 128, 74, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(4, 17, 129, 75, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(5, 17, 130, 76, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(6, 17, 131, 74, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(7, 17, 132, 77, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(8, 17, 133, 78, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(9, 17, 134, 79, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(10, 17, 135, 78, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(11, 17, 136, 87, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(12, 17, 137, 85, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(13, 17, 138, 82, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(14, 17, 139, 86, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(15, 17, 140, 84, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(16, 17, 141, 85, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(17, 17, 142, 87, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(18, 17, 143, 89, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(19, 17, 144, 88, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(20, 17, 145, 77, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(21, 17, 146, 71, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(22, 17, 147, 85, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(23, 17, 148, 78, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(24, 17, 149, 75, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(25, 17, 150, 74, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(26, 17, 151, 76, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(27, 17, 152, 75, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(28, 17, 153, 72, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(29, 17, 154, 76, '2021-12-19 14:30:14', '2021-12-19 14:30:14'),
(30, 21, 70, 70, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(31, 21, 71, 71, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(32, 21, 72, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(33, 21, 73, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(34, 21, 74, 76, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(35, 21, 75, 72, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(36, 21, 76, 74, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(37, 21, 77, 73, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(38, 21, 78, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(39, 21, 79, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(40, 21, 80, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(41, 21, 81, 74, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(42, 21, 82, 74, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(43, 21, 83, 75, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(44, 21, 84, 82, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(45, 21, 85, 81, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(46, 21, 86, 80, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(47, 21, 87, 83, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(48, 21, 88, 84, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(49, 21, 89, 81, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(50, 21, 90, 82, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(51, 21, 91, 86, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(52, 21, 92, 81, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(53, 21, 93, 82, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(54, 21, 94, 84, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(55, 21, 95, 83, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(56, 21, 96, 80, '2021-12-20 05:31:05', '2021-12-20 05:31:05'),
(57, 22, 70, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(58, 22, 71, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(59, 22, 72, 85, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(60, 22, 73, 86, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(61, 22, 74, 87, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(62, 22, 75, 85, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(63, 22, 76, 85, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(64, 22, 77, 86, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(65, 22, 78, 86, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(66, 22, 79, 85, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(67, 22, 80, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(68, 22, 81, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(69, 22, 82, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(70, 22, 83, 83, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(71, 22, 84, 84, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(72, 22, 85, 81, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(73, 22, 86, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(74, 22, 87, 83, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(75, 22, 88, 80, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(76, 22, 89, 82, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(77, 22, 90, 83, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(78, 22, 91, 86, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(79, 22, 92, 81, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(80, 22, 93, 81, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(81, 22, 94, 80, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(82, 22, 95, 88, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(83, 22, 96, 87, '2021-12-20 05:31:51', '2021-12-20 05:31:51'),
(84, 23, 70, 88, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(85, 23, 71, 87, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(86, 23, 72, 84, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(87, 23, 73, 85, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(88, 23, 74, 84, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(89, 23, 75, 84, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(90, 23, 76, 85, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(91, 23, 77, 86, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(92, 23, 78, 85, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(93, 23, 79, 82, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(94, 23, 80, 78, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(95, 23, 81, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(96, 23, 82, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(97, 23, 83, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(98, 23, 84, 74, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(99, 23, 85, 74, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(100, 23, 86, 74, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(101, 23, 87, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(102, 23, 88, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(103, 23, 89, 70, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(104, 23, 90, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(105, 23, 91, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(106, 23, 92, 70, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(107, 23, 93, 76, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(108, 23, 94, 79, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(109, 23, 95, 75, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(110, 23, 96, 72, '2021-12-20 05:32:31', '2021-12-20 05:32:31'),
(111, 24, 97, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(112, 24, 98, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(113, 24, 99, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(114, 24, 100, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(115, 24, 101, 93, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(116, 24, 102, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(117, 24, 103, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(118, 24, 104, 81, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(119, 24, 105, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:07'),
(120, 24, 106, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(121, 24, 107, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(122, 24, 108, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(123, 24, 109, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(124, 24, 110, 93, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(125, 24, 111, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(126, 24, 112, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(127, 24, 113, 81, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(128, 24, 114, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(129, 24, 115, 85, '2021-12-20 05:34:09', '2021-12-20 05:34:09'),
(130, 24, 116, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(131, 24, 117, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(132, 24, 118, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(133, 24, 119, 93, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(134, 24, 120, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(135, 24, 121, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(136, 24, 122, 81, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(137, 24, 123, 82, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(138, 24, 124, 85, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(139, 24, 125, 96, '2021-12-20 05:34:09', '2022-01-07 09:25:08'),
(140, 25, 97, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(141, 25, 98, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(142, 25, 99, 93, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(143, 25, 100, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(144, 25, 101, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(145, 25, 102, 81, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(146, 25, 103, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(147, 25, 104, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(148, 25, 105, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(149, 25, 106, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(150, 25, 107, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(151, 25, 108, 93, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(152, 25, 109, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(153, 25, 110, 82, '2021-12-20 05:35:06', '2021-12-20 05:35:06'),
(154, 25, 111, 81, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(155, 25, 112, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(156, 25, 113, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(157, 25, 114, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(158, 25, 115, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(159, 25, 116, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(160, 25, 117, 93, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(161, 25, 118, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(162, 25, 119, 82, '2021-12-20 05:35:06', '2021-12-20 05:35:06'),
(163, 25, 120, 81, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(164, 25, 121, 82, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(165, 25, 122, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(166, 25, 123, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(167, 25, 124, 85, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(168, 25, 125, 96, '2021-12-20 05:35:06', '2022-01-07 09:25:08'),
(169, 26, 97, 93, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(170, 26, 98, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(171, 26, 99, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(172, 26, 100, 81, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(173, 26, 101, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(174, 26, 102, 85, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(175, 26, 103, 96, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(176, 26, 104, 85, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(177, 26, 105, 96, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(178, 26, 106, 93, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(179, 26, 107, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:08'),
(180, 26, 108, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(181, 26, 109, 81, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(182, 26, 110, 82, '2021-12-20 05:35:44', '2021-12-20 05:35:44'),
(183, 26, 111, 85, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(184, 26, 112, 96, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(185, 26, 113, 85, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(186, 26, 114, 96, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(187, 26, 115, 93, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(188, 26, 116, 82, '2021-12-20 05:35:44', '2021-12-20 05:35:44'),
(189, 26, 117, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(190, 26, 118, 81, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(191, 26, 119, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(192, 26, 120, 96, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(193, 26, 121, 93, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(194, 26, 122, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(195, 26, 123, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(196, 26, 124, 81, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(197, 26, 125, 82, '2021-12-20 05:35:44', '2022-01-07 09:25:09'),
(198, 27, 126, 78, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(199, 27, 127, 89, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(200, 27, 128, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(201, 27, 129, 84, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(202, 27, 130, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(203, 27, 131, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(204, 27, 132, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(205, 27, 133, 89, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(206, 27, 134, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(207, 27, 135, 84, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(208, 27, 136, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(209, 27, 137, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(210, 27, 138, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(211, 27, 139, 82, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(212, 27, 140, 81, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(213, 27, 141, 80, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(214, 27, 142, 80, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(215, 27, 143, 83, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(216, 27, 144, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(217, 27, 145, 86, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(218, 27, 146, 80, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(219, 27, 147, 82, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(220, 27, 148, 80, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(221, 27, 149, 83, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(222, 27, 150, 83, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(223, 27, 151, 82, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(224, 27, 152, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(225, 27, 153, 84, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(226, 27, 154, 85, '2021-12-20 05:36:20', '2021-12-20 05:36:20'),
(227, 28, 126, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(228, 28, 127, 84, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(229, 28, 128, 85, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(230, 28, 129, 86, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(231, 28, 130, 87, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(232, 28, 131, 88, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(233, 28, 132, 98, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(234, 28, 133, 85, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(235, 28, 134, 85, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(236, 28, 135, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(237, 28, 136, 83, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(238, 28, 137, 83, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(239, 28, 138, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(240, 28, 139, 81, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(241, 28, 140, 80, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(242, 28, 141, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(243, 28, 142, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(244, 28, 143, 84, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(245, 28, 144, 85, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(246, 28, 145, 85, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(247, 28, 146, 86, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(248, 28, 147, 86, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(249, 28, 148, 83, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(250, 28, 149, 83, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(251, 28, 150, 80, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(252, 28, 151, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(253, 28, 152, 82, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(254, 28, 153, 80, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(255, 28, 154, 80, '2021-12-20 05:37:01', '2021-12-20 05:37:01'),
(256, 33, 97, 98, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(257, 33, 98, 87, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(258, 33, 99, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(259, 33, 100, 88, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(260, 33, 101, 98, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(261, 33, 102, 96, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(262, 33, 103, 95, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(263, 33, 104, 94, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(264, 33, 105, 96, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(265, 33, 106, 96, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(266, 33, 107, 87, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(267, 33, 108, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(268, 33, 109, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(269, 33, 110, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(270, 33, 111, 87, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(271, 33, 112, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(272, 33, 113, 86, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(273, 33, 114, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(274, 33, 115, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(275, 33, 116, 86, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(276, 33, 117, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(277, 33, 118, 84, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(278, 33, 119, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(279, 33, 120, 86, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(280, 33, 121, 86, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(281, 33, 122, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(282, 33, 123, 84, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(283, 33, 124, 85, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(284, 33, 125, 82, '2021-12-23 10:16:08', '2021-12-23 10:16:08'),
(285, 34, 97, 98, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(286, 34, 98, 96, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(287, 34, 99, 96, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(288, 34, 100, 97, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(289, 34, 101, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(290, 34, 102, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(291, 34, 103, 86, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(292, 34, 104, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(293, 34, 105, 82, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(294, 34, 106, 82, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(295, 34, 107, 82, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(296, 34, 108, 84, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(297, 34, 109, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(298, 34, 110, 86, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(299, 34, 111, 83, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(300, 34, 112, 81, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(301, 34, 113, 89, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(302, 34, 114, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(303, 34, 115, 78, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(304, 34, 116, 78, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(305, 34, 117, 79, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(306, 34, 118, 85, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(307, 34, 119, 86, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(308, 34, 120, 83, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(309, 34, 121, 84, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(310, 34, 122, 82, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(311, 34, 123, 86, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(312, 34, 124, 86, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(313, 34, 125, 81, '2021-12-23 10:16:50', '2021-12-23 10:16:50'),
(314, 37, 97, 98, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(315, 37, 98, 78, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(316, 37, 99, 89, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(317, 37, 100, 89, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(318, 37, 101, 96, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(319, 37, 102, 96, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(320, 37, 103, 98, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(321, 37, 104, 98, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(322, 37, 105, 78, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(323, 37, 106, 75, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(324, 37, 107, 75, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(325, 37, 108, 74, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(326, 37, 109, 75, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(327, 37, 110, 78, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(328, 37, 111, 78, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(329, 37, 112, 95, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(330, 37, 113, 96, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(331, 37, 114, 96, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(332, 37, 115, 98, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(333, 37, 116, 78, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(334, 37, 117, 85, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(335, 37, 118, 82, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(336, 37, 119, 86, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(337, 37, 120, 84, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(338, 37, 121, 83, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(339, 37, 122, 82, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(340, 37, 123, 84, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(341, 37, 124, 85, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(342, 37, 125, 89, '2021-12-23 10:17:44', '2021-12-23 10:17:44'),
(343, 38, 97, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(344, 38, 98, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(345, 38, 99, 94, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(346, 38, 100, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(347, 38, 101, 92, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(348, 38, 102, 93, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(349, 38, 103, 90, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(350, 38, 104, 93, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(351, 38, 105, 93, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(352, 38, 106, 92, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(353, 38, 107, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(354, 38, 108, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(355, 38, 109, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(356, 38, 110, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(357, 38, 111, 98, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(358, 38, 112, 94, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(359, 38, 113, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(360, 38, 114, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(361, 38, 115, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(362, 38, 116, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(363, 38, 117, 98, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(364, 38, 118, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(365, 38, 119, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(366, 38, 120, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(367, 38, 121, 78, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(368, 38, 122, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(369, 38, 123, 96, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(370, 38, 124, 95, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(371, 38, 125, 78, '2021-12-23 10:18:18', '2021-12-23 10:18:18'),
(372, 29, 155, 80, '2022-01-07 09:26:30', '2022-01-07 09:26:30'),
(373, 29, 156, 78, '2022-01-07 09:26:30', '2022-01-07 09:26:30'),
(374, 30, 155, 85, '2022-01-07 09:26:31', '2022-01-07 09:26:31'),
(375, 30, 156, 86, '2022-01-07 09:26:31', '2022-01-07 09:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_pengetahuan`
--

CREATE TABLE `k13_nilai_pengetahuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_pengetahuan_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_pengetahuan`
--

INSERT INTO `k13_nilai_pengetahuan` (`id`, `k13_rencana_nilai_pengetahuan_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 45, 126, 80, '2021-12-19 13:32:16', '2021-12-19 13:37:03'),
(2, 45, 127, 70, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(3, 45, 128, 78, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(4, 45, 129, 80, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(5, 45, 130, 81, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(6, 45, 131, 82, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(7, 45, 132, 85, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(8, 45, 133, 84, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(9, 45, 134, 85, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(10, 45, 135, 87, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(11, 45, 136, 86, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(12, 45, 137, 89, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(13, 45, 138, 85, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(14, 45, 139, 75, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(15, 45, 140, 74, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(16, 45, 141, 75, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(17, 45, 142, 87, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(18, 45, 143, 76, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(19, 45, 144, 75, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(20, 45, 145, 78, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(21, 45, 146, 74, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(22, 45, 147, 78, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(23, 45, 148, 98, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(24, 45, 149, 78, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(25, 45, 150, 72, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(26, 45, 151, 71, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(27, 45, 152, 73, '2021-12-19 13:32:16', '2021-12-19 13:32:16'),
(28, 45, 153, 82, '2021-12-19 13:32:16', '2021-12-19 14:15:58'),
(29, 45, 154, 80, '2021-12-19 13:32:16', '2021-12-19 13:35:53'),
(30, 46, 126, 85, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(31, 46, 127, 87, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(32, 46, 128, 84, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(33, 46, 129, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(34, 46, 130, 89, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(35, 46, 131, 87, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(36, 46, 132, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(37, 46, 133, 82, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(38, 46, 134, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(39, 46, 135, 84, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(40, 46, 136, 83, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(41, 46, 137, 89, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(42, 46, 138, 84, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(43, 46, 139, 82, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(44, 46, 140, 87, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(45, 46, 141, 83, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(46, 46, 142, 82, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(47, 46, 143, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(48, 46, 144, 83, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(49, 46, 145, 84, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(50, 46, 146, 82, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(51, 46, 147, 83, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(52, 46, 148, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(53, 46, 149, 89, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(54, 46, 150, 85, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(55, 46, 151, 86, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(56, 46, 152, 84, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(57, 46, 153, 85, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(58, 46, 154, 83, '2021-12-19 13:38:33', '2021-12-19 13:38:33'),
(59, 38, 70, 80, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(60, 39, 70, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(61, 38, 71, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(62, 39, 71, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(63, 38, 72, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(64, 39, 72, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(65, 38, 73, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(66, 39, 73, 84, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(67, 38, 74, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(68, 39, 74, 87, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(69, 38, 75, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(70, 39, 75, 78, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(71, 38, 76, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(72, 39, 76, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(73, 38, 77, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(74, 39, 77, 89, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(75, 38, 78, 89, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(76, 39, 78, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(77, 38, 79, 84, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(78, 39, 79, 87, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(79, 38, 80, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(80, 39, 80, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(81, 38, 81, 81, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(82, 39, 81, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(83, 38, 82, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(84, 39, 82, 80, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(85, 38, 83, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(86, 39, 83, 84, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(87, 38, 84, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(88, 39, 84, 87, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(89, 38, 85, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(90, 39, 85, 89, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(91, 38, 86, 89, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(92, 39, 86, 87, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(93, 38, 87, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(94, 39, 87, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(95, 38, 88, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(96, 39, 88, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(97, 38, 89, 86, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(98, 39, 89, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(99, 38, 90, 84, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(100, 39, 90, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(101, 38, 91, 85, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(102, 39, 91, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(103, 38, 92, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(104, 39, 92, 82, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(105, 38, 93, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(106, 39, 93, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(107, 38, 94, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(108, 39, 94, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(109, 38, 95, 83, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(110, 39, 95, 70, '2021-12-19 14:17:08', '2021-12-19 14:17:26'),
(111, 38, 96, 70, '2021-12-19 14:17:08', '2021-12-19 14:17:26'),
(112, 39, 96, 75, '2021-12-19 14:17:08', '2021-12-19 14:17:08'),
(113, 47, 70, 82, '2021-12-20 05:20:20', '2021-12-21 09:35:41'),
(114, 47, 71, 70, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(115, 47, 72, 77, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(116, 47, 73, 75, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(117, 47, 74, 75, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(118, 47, 75, 74, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(119, 47, 76, 74, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(120, 47, 77, 75, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(121, 47, 78, 76, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(122, 47, 79, 85, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(123, 47, 80, 85, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(124, 47, 81, 76, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(125, 47, 82, 78, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(126, 47, 83, 87, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(127, 47, 84, 70, '2021-12-20 05:20:20', '2021-12-21 09:35:41'),
(128, 47, 85, 78, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(129, 47, 86, 78, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(130, 47, 87, 75, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(131, 47, 88, 85, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(132, 47, 89, 82, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(133, 47, 90, 82, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(134, 47, 91, 86, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(135, 47, 92, 89, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(136, 47, 93, 86, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(137, 47, 94, 85, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(138, 47, 95, 86, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(139, 47, 96, 86, '2021-12-20 05:20:20', '2021-12-20 05:20:20'),
(140, 48, 70, 83, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(141, 48, 71, 80, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(142, 48, 72, 81, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(143, 48, 73, 84, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(144, 48, 74, 87, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(145, 48, 75, 80, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(146, 48, 76, 77, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(147, 48, 77, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(148, 48, 78, 78, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(149, 48, 79, 74, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(150, 48, 80, 74, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(151, 48, 81, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(152, 48, 82, 76, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(153, 48, 83, 78, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(154, 48, 84, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(155, 48, 85, 72, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(156, 48, 86, 72, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(157, 48, 87, 72, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(158, 48, 88, 74, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(159, 48, 89, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(160, 48, 90, 72, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(161, 48, 91, 84, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(162, 48, 92, 78, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(163, 48, 93, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(164, 48, 94, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(165, 48, 95, 75, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(166, 48, 96, 72, '2021-12-20 05:21:11', '2021-12-20 05:21:11'),
(167, 49, 70, 82, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(168, 49, 71, 78, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(169, 49, 72, 77, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(170, 49, 73, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(171, 49, 74, 74, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(172, 49, 75, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(173, 49, 76, 76, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(174, 49, 77, 72, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(175, 49, 78, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(176, 49, 79, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(177, 49, 80, 78, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(178, 49, 81, 85, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(179, 49, 82, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(180, 49, 83, 76, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(181, 49, 84, 79, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(182, 49, 85, 78, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(183, 49, 86, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(184, 49, 87, 74, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(185, 49, 88, 75, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(186, 49, 89, 78, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(187, 49, 90, 87, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(188, 49, 91, 84, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(189, 49, 92, 85, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(190, 49, 93, 74, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(191, 49, 94, 78, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(192, 49, 95, 70, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(193, 49, 96, 72, '2021-12-20 05:22:07', '2021-12-20 05:22:07'),
(194, 50, 70, 78, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(195, 50, 71, 78, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(196, 50, 72, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(197, 50, 73, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(198, 50, 74, 76, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(199, 50, 75, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(200, 50, 76, 74, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(201, 50, 77, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(202, 50, 78, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(203, 50, 79, 72, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(204, 50, 80, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(205, 50, 81, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(206, 50, 82, 76, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(207, 50, 83, 78, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(208, 50, 84, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(209, 50, 85, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(210, 50, 86, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(211, 50, 87, 74, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(212, 50, 88, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(213, 50, 89, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(214, 50, 90, 72, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(215, 50, 91, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(216, 50, 92, 76, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(217, 50, 93, 78, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(218, 50, 94, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(219, 50, 95, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(220, 50, 96, 75, '2021-12-20 05:22:48', '2021-12-20 05:22:48'),
(221, 51, 70, 77, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(222, 51, 71, 75, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(223, 51, 72, 75, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(224, 51, 73, 74, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(225, 51, 74, 75, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(226, 51, 75, 76, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(227, 51, 76, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(228, 51, 77, 78, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(229, 51, 78, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(230, 51, 79, 78, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(231, 51, 80, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(232, 51, 81, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(233, 51, 82, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(234, 51, 83, 86, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(235, 51, 84, 81, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(236, 51, 85, 83, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(237, 51, 86, 83, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(238, 51, 87, 82, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(239, 51, 88, 82, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(240, 51, 89, 86, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(241, 51, 90, 85, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(242, 51, 91, 80, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(243, 51, 92, 80, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(244, 51, 93, 81, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(245, 51, 94, 82, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(246, 51, 95, 83, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(247, 51, 96, 84, '2021-12-20 05:23:33', '2021-12-20 05:23:33'),
(248, 52, 97, 71, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(249, 52, 98, 70, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(250, 52, 99, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(251, 52, 100, 74, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(252, 52, 101, 72, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(253, 52, 102, 76, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(254, 52, 103, 71, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(255, 52, 104, 72, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(256, 52, 105, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(257, 52, 106, 84, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(258, 52, 107, 85, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(259, 52, 108, 72, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(260, 52, 109, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(261, 52, 110, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(262, 52, 111, 76, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(263, 52, 112, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(264, 52, 113, 78, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(265, 52, 114, 78, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(266, 52, 115, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(267, 52, 116, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(268, 52, 117, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(269, 52, 118, 74, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(270, 52, 119, 74, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(271, 52, 120, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(272, 52, 121, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(273, 52, 122, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(274, 52, 123, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(275, 52, 124, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(276, 52, 125, 75, '2021-12-20 05:24:40', '2021-12-20 05:24:40'),
(277, 53, 97, 70, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(278, 53, 98, 72, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(279, 53, 99, 71, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(280, 53, 100, 74, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(281, 53, 101, 75, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(282, 53, 102, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(283, 53, 103, 78, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(284, 53, 104, 82, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(285, 53, 105, 78, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(286, 53, 106, 84, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(287, 53, 107, 82, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(288, 53, 108, 84, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(289, 53, 109, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(290, 53, 110, 86, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(291, 53, 111, 86, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(292, 53, 112, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(293, 53, 113, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(294, 53, 114, 84, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(295, 53, 115, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(296, 53, 116, 82, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(297, 53, 117, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(298, 53, 118, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(299, 53, 119, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(300, 53, 120, 84, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(301, 53, 121, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(302, 53, 122, 84, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(303, 53, 123, 86, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(304, 53, 124, 85, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(305, 53, 125, 86, '2021-12-20 05:25:28', '2021-12-20 05:25:28'),
(306, 54, 97, 78, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(307, 54, 98, 78, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(308, 54, 99, 74, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(309, 54, 100, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(310, 54, 101, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(311, 54, 102, 76, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(312, 54, 103, 77, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(313, 54, 104, 74, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(314, 54, 105, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(315, 54, 106, 71, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(316, 54, 107, 72, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(317, 54, 108, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(318, 54, 109, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(319, 54, 110, 75, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(320, 54, 111, 85, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(321, 54, 112, 85, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(322, 54, 113, 87, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(323, 54, 114, 83, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(324, 54, 115, 85, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(325, 54, 116, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(326, 54, 117, 83, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(327, 54, 118, 83, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(328, 54, 119, 85, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(329, 54, 120, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(330, 54, 121, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(331, 54, 122, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(332, 54, 123, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(333, 54, 124, 86, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(334, 54, 125, 82, '2021-12-20 05:26:14', '2021-12-20 05:26:14'),
(335, 55, 97, 75, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(336, 55, 98, 74, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(337, 55, 99, 72, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(338, 55, 100, 73, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(339, 55, 101, 73, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(340, 55, 102, 75, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(341, 55, 103, 78, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(342, 55, 104, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(343, 55, 105, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(344, 55, 106, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(345, 55, 107, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(346, 55, 108, 84, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(347, 55, 109, 87, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(348, 55, 110, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(349, 55, 111, 82, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(350, 55, 112, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(351, 55, 113, 89, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(352, 55, 114, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(353, 55, 115, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(354, 55, 116, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(355, 55, 117, 84, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(356, 55, 118, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(357, 55, 119, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(358, 55, 120, 82, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(359, 55, 121, 82, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(360, 55, 122, 84, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(361, 55, 123, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(362, 55, 124, 85, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(363, 55, 125, 86, '2021-12-20 05:27:07', '2021-12-20 05:27:07'),
(364, 56, 97, 78, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(365, 56, 98, 74, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(366, 56, 99, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(367, 56, 100, 78, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(368, 56, 101, 82, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(369, 56, 102, 84, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(370, 56, 103, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(371, 56, 104, 86, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(372, 56, 105, 84, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(373, 56, 106, 82, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(374, 56, 107, 81, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(375, 56, 108, 80, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(376, 56, 109, 82, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(377, 56, 110, 82, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(378, 56, 111, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(379, 56, 112, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(380, 56, 113, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(381, 56, 114, 86, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(382, 56, 115, 84, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(383, 56, 116, 85, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(384, 56, 117, 82, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(385, 56, 118, 81, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(386, 56, 119, 81, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(387, 56, 120, 80, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(388, 56, 121, 80, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(389, 56, 122, 80, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(390, 56, 123, 86, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(391, 56, 124, 80, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(392, 56, 125, 87, '2021-12-20 05:27:53', '2021-12-20 05:27:53'),
(393, 57, 126, 70, '2021-12-20 05:28:38', '2022-01-07 09:00:28'),
(394, 57, 127, 75, '2021-12-20 05:28:38', '2022-01-07 09:00:28'),
(395, 57, 128, 85, '2021-12-20 05:28:38', '2022-01-07 09:00:28'),
(396, 57, 129, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:28'),
(397, 57, 130, 70, '2021-12-20 05:28:38', '2022-01-07 09:00:28'),
(398, 57, 131, 75, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(399, 57, 132, 85, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(400, 57, 133, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(401, 57, 134, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(402, 57, 135, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(403, 57, 136, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(404, 57, 137, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(405, 57, 138, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(406, 57, 139, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(407, 57, 140, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(408, 57, 141, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(409, 57, 142, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(410, 57, 143, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(411, 57, 144, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(412, 57, 145, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(413, 57, 146, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(414, 57, 147, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(415, 57, 148, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(416, 57, 149, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(417, 57, 150, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(418, 57, 151, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(419, 57, 152, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(420, 57, 153, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(421, 57, 154, 86, '2021-12-20 05:28:38', '2022-01-07 09:00:29'),
(422, 58, 126, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:29'),
(423, 58, 127, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:29'),
(424, 58, 128, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:29'),
(425, 58, 129, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:29'),
(426, 58, 130, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(427, 58, 131, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(428, 58, 132, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(429, 58, 133, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(430, 58, 134, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(431, 58, 135, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(432, 58, 136, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(433, 58, 137, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(434, 58, 138, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(435, 58, 139, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(436, 58, 140, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(437, 58, 141, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(438, 58, 142, 86, '2021-12-20 05:29:38', '2021-12-20 05:29:38'),
(439, 58, 143, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(440, 58, 144, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(441, 58, 145, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(442, 58, 146, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(443, 58, 147, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(444, 58, 148, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(445, 58, 149, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(446, 58, 150, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(447, 58, 151, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(448, 58, 152, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(449, 58, 153, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(450, 58, 154, 86, '2021-12-20 05:29:38', '2022-01-07 09:00:30'),
(454, 62, 97, 98, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(455, 62, 98, 92, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(456, 62, 99, 93, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(457, 62, 100, 96, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(458, 62, 101, 94, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(459, 62, 102, 96, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(460, 62, 103, 93, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(461, 62, 104, 93, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(462, 62, 105, 92, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(463, 62, 106, 92, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(464, 62, 107, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(465, 62, 108, 86, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(466, 62, 109, 87, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(467, 62, 110, 98, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(468, 62, 111, 96, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(469, 62, 112, 95, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(470, 62, 113, 87, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(471, 62, 114, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(472, 62, 115, 86, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(473, 62, 116, 78, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(474, 62, 117, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(475, 62, 118, 82, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(476, 62, 119, 83, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(477, 62, 120, 86, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(478, 62, 121, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(479, 62, 122, 89, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(480, 62, 123, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(481, 62, 124, 85, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(482, 62, 125, 83, '2021-12-23 10:12:15', '2021-12-23 10:12:15'),
(483, 63, 97, 95, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(484, 63, 98, 94, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(485, 63, 99, 92, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(486, 63, 100, 93, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(487, 63, 101, 90, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(488, 63, 102, 92, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(489, 63, 103, 78, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(490, 63, 104, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(491, 63, 105, 86, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(492, 63, 106, 98, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(493, 63, 107, 89, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(494, 63, 108, 86, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(495, 63, 109, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(496, 63, 110, 82, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(497, 63, 111, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(498, 63, 112, 84, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(499, 63, 113, 86, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(500, 63, 114, 86, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(501, 63, 115, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(502, 63, 116, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(503, 63, 117, 82, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(504, 63, 118, 81, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(505, 63, 119, 83, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(506, 63, 120, 86, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(507, 63, 121, 84, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(508, 63, 122, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(509, 63, 123, 87, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(510, 63, 124, 85, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(511, 63, 125, 89, '2021-12-23 10:12:58', '2021-12-23 10:12:58'),
(512, 41, 97, 98, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(513, 41, 98, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(514, 41, 99, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(515, 41, 100, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(516, 41, 101, 94, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(517, 41, 102, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(518, 41, 103, 92, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(519, 41, 104, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(520, 41, 105, 89, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(521, 41, 106, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(522, 41, 107, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(523, 41, 108, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(524, 41, 109, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(525, 41, 110, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(526, 41, 111, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(527, 41, 112, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(528, 41, 113, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(529, 41, 114, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(530, 41, 115, 97, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(531, 41, 116, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(532, 41, 117, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(533, 41, 118, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(534, 41, 119, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(535, 41, 120, 98, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(536, 41, 121, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(537, 41, 122, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(538, 41, 123, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(539, 41, 124, 95, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(540, 41, 125, 96, '2021-12-23 10:13:39', '2021-12-23 10:13:39'),
(541, 42, 97, 87, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(542, 42, 98, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(543, 42, 99, 89, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(544, 42, 100, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(545, 42, 101, 82, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(546, 42, 102, 86, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(547, 42, 103, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(548, 42, 104, 87, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(549, 42, 105, 98, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(550, 42, 106, 96, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(551, 42, 107, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(552, 42, 108, 86, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(553, 42, 109, 87, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(554, 42, 110, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(555, 42, 111, 89, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(556, 42, 112, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(557, 42, 113, 98, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(558, 42, 114, 96, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(559, 42, 115, 87, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(560, 42, 116, 85, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(561, 42, 117, 98, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(562, 42, 118, 96, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(563, 42, 119, 96, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(564, 42, 120, 98, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(565, 42, 121, 95, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(566, 42, 122, 95, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(567, 42, 123, 95, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(568, 42, 124, 96, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(569, 42, 125, 87, '2021-12-23 10:14:24', '2021-12-23 10:14:24'),
(570, 43, 97, 87, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(571, 44, 97, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(572, 43, 98, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(573, 44, 98, 86, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(574, 43, 99, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(575, 44, 99, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(576, 43, 100, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(577, 44, 100, 86, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(578, 43, 101, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(579, 44, 101, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(580, 43, 102, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(581, 44, 102, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(582, 43, 103, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(583, 44, 103, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(584, 43, 104, 86, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(585, 44, 104, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(586, 43, 105, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(587, 44, 105, 84, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(588, 43, 106, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(589, 44, 106, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(590, 43, 107, 98, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(591, 44, 107, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(592, 43, 108, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(593, 44, 108, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(594, 43, 109, 98, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(595, 44, 109, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(596, 43, 110, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(597, 44, 110, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(598, 43, 111, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(599, 44, 111, 87, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(600, 43, 112, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(601, 44, 112, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(602, 43, 113, 88, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(603, 44, 113, 87, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(604, 43, 114, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(605, 44, 114, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(606, 43, 115, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(607, 44, 115, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(608, 43, 116, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(609, 44, 116, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(610, 43, 117, 96, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(611, 44, 117, 87, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(612, 43, 118, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(613, 44, 118, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(614, 43, 119, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(615, 44, 119, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(616, 43, 120, 83, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(617, 44, 120, 82, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(618, 43, 121, 82, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(619, 44, 121, 82, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(620, 43, 122, 82, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(621, 44, 122, 89, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(622, 43, 123, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(623, 44, 123, 86, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(624, 43, 124, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(625, 44, 124, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(626, 43, 125, 86, '2021-12-23 10:15:21', '2021-12-23 10:15:21'),
(627, 44, 125, 85, '2021-12-23 10:15:21', '2021-12-23 10:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_pts_pas`
--

CREATE TABLE `k13_nilai_pts_pas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_pts` int(11) NOT NULL,
  `nilai_pas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_pts_pas`
--

INSERT INTO `k13_nilai_pts_pas` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `nilai_pts`, `nilai_pas`, `created_at`, `updated_at`) VALUES
(1, 293, 70, 100, 100, '2021-12-20 14:04:46', '2021-12-20 14:44:32'),
(2, 293, 71, 78, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(3, 293, 72, 87, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(4, 293, 73, 84, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(5, 293, 74, 86, 86, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(6, 293, 75, 87, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(7, 293, 76, 82, 80, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(8, 293, 77, 78, 75, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(9, 293, 78, 74, 75, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(10, 293, 79, 76, 76, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(11, 293, 80, 85, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(12, 293, 81, 82, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(13, 293, 82, 83, 86, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(14, 293, 83, 85, 86, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(15, 293, 84, 89, 87, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(16, 293, 85, 85, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(17, 293, 86, 82, 83, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(18, 293, 87, 81, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(19, 293, 88, 83, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(20, 293, 89, 84, 78, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(21, 293, 90, 87, 98, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(22, 293, 91, 95, 93, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(23, 293, 92, 84, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(24, 293, 93, 76, 96, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(25, 293, 94, 85, 85, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(26, 293, 95, 78, 78, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(27, 293, 96, 85, 82, '2021-12-20 14:04:46', '2021-12-20 14:04:46'),
(28, 306, 97, 85, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:40'),
(29, 306, 98, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:40'),
(30, 306, 99, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:40'),
(31, 306, 100, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:40'),
(32, 306, 101, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:40'),
(33, 306, 102, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(34, 306, 103, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(35, 306, 104, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(36, 306, 105, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(37, 306, 106, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(38, 306, 107, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(39, 306, 108, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(40, 306, 109, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(41, 306, 110, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(42, 306, 111, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(43, 306, 112, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(44, 306, 113, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(45, 306, 114, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(46, 306, 115, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(47, 306, 116, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(48, 306, 117, 85, 86, '2021-12-20 14:05:52', '2021-12-20 14:05:52'),
(49, 306, 118, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(50, 306, 119, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(51, 306, 120, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(52, 306, 121, 86, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(53, 306, 122, 85, 86, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(54, 306, 123, 86, 85, '2021-12-20 14:05:52', '2022-01-07 11:42:41'),
(55, 306, 124, 85, 86, '2021-12-20 14:05:52', '2021-12-20 14:05:52'),
(56, 306, 125, 85, 85, '2021-12-20 14:05:52', '2021-12-20 14:05:52'),
(57, 304, 97, 80, 88, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(58, 304, 98, 89, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(59, 304, 99, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(60, 304, 100, 87, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(61, 304, 101, 84, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(62, 304, 102, 86, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(63, 304, 103, 85, 89, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(64, 304, 104, 85, 89, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(65, 304, 105, 98, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(66, 304, 106, 85, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(67, 304, 107, 86, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(68, 304, 108, 98, 98, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(69, 304, 109, 87, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(70, 304, 110, 89, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(71, 304, 111, 86, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(72, 304, 112, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(73, 304, 113, 86, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(74, 304, 114, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(75, 304, 115, 82, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(76, 304, 116, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(77, 304, 117, 86, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(78, 304, 118, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(79, 304, 119, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(80, 304, 120, 85, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(81, 304, 121, 98, 98, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(82, 304, 122, 87, 85, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(83, 304, 123, 85, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(84, 304, 124, 86, 86, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(85, 304, 125, 98, 95, '2021-12-23 10:32:38', '2021-12-23 10:32:38'),
(86, 305, 97, 98, 99, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(87, 305, 98, 96, 96, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(88, 305, 99, 96, 95, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(89, 305, 100, 96, 90, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(90, 305, 101, 88, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(91, 305, 102, 86, 86, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(92, 305, 103, 85, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(93, 305, 104, 82, 82, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(94, 305, 105, 83, 86, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(95, 305, 106, 85, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(96, 305, 107, 84, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(97, 305, 108, 85, 86, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(98, 305, 109, 85, 86, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(99, 305, 110, 85, 82, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(100, 305, 111, 88, 96, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(101, 305, 112, 87, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(102, 305, 113, 85, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(103, 305, 114, 86, 86, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(104, 305, 115, 85, 82, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(105, 305, 116, 81, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(106, 305, 117, 86, 87, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(107, 305, 118, 85, 87, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(108, 305, 119, 98, 87, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(109, 305, 120, 85, 89, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(110, 305, 121, 87, 85, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(111, 305, 122, 87, 98, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(112, 305, 123, 96, 96, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(113, 305, 124, 95, 96, '2021-12-23 10:33:47', '2021-12-23 10:33:47'),
(114, 305, 125, 92, 93, '2021-12-23 10:33:47', '2021-12-23 10:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_sosial`
--

CREATE TABLE `k13_nilai_sosial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_sosial_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_sosial`
--

INSERT INTO `k13_nilai_sosial` (`id`, `k13_rencana_nilai_sosial_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(762, 17, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(763, 18, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(764, 19, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(765, 20, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(766, 21, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(767, 22, 70, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(768, 17, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(769, 18, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(770, 19, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(771, 20, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(772, 21, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(773, 22, 71, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(774, 17, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(775, 18, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(776, 19, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(777, 20, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(778, 21, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(779, 22, 72, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(780, 17, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(781, 18, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(782, 19, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(783, 20, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(784, 21, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(785, 22, 73, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(786, 17, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(787, 18, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(788, 19, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(789, 20, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(790, 21, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(791, 22, 74, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(792, 17, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(793, 18, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(794, 19, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(795, 20, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(796, 21, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(797, 22, 75, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(798, 17, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(799, 18, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(800, 19, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(801, 20, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(802, 21, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(803, 22, 76, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(804, 17, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(805, 18, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(806, 19, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(807, 20, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(808, 21, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(809, 22, 77, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(810, 17, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(811, 18, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(812, 19, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(813, 20, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(814, 21, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(815, 22, 78, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(816, 17, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(817, 18, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(818, 19, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(819, 20, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(820, 21, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(821, 22, 79, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(822, 17, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(823, 18, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(824, 19, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(825, 20, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(826, 21, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(827, 22, 80, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(828, 17, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(829, 18, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(830, 19, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(831, 20, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(832, 21, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(833, 22, 81, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(834, 17, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(835, 18, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(836, 19, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(837, 20, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(838, 21, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(839, 22, 82, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(840, 17, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(841, 18, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(842, 19, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(843, 20, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(844, 21, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(845, 22, 83, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(846, 17, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(847, 18, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(848, 19, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(849, 20, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(850, 21, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(851, 22, 84, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(852, 17, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(853, 18, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(854, 19, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(855, 20, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(856, 21, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(857, 22, 85, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(858, 17, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(859, 18, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(860, 19, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(861, 20, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(862, 21, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(863, 22, 86, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(864, 17, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(865, 18, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(866, 19, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(867, 20, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(868, 21, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(869, 22, 87, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(870, 17, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(871, 18, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(872, 19, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(873, 20, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(874, 21, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(875, 22, 88, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(876, 17, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(877, 18, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(878, 19, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(879, 20, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(880, 21, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(881, 22, 89, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(882, 17, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(883, 18, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(884, 19, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(885, 20, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(886, 21, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(887, 22, 90, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(888, 17, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(889, 18, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(890, 19, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(891, 20, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(892, 21, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(893, 22, 91, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(894, 17, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(895, 18, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(896, 19, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(897, 20, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(898, 21, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(899, 22, 92, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(900, 17, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(901, 18, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(902, 19, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(903, 20, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(904, 21, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(905, 22, 93, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(906, 17, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(907, 18, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(908, 19, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(909, 20, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(910, 21, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(911, 22, 94, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(912, 17, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(913, 18, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(914, 19, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(915, 20, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(916, 21, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(917, 22, 95, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(918, 17, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(919, 18, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(920, 19, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(921, 20, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(922, 21, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(923, 22, 96, '3', '2021-12-20 08:59:13', '2021-12-20 08:59:13'),
(924, 23, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(925, 24, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(926, 25, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(927, 26, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(928, 27, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(929, 28, 97, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(930, 23, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(931, 24, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(932, 25, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(933, 26, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(934, 27, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(935, 28, 98, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(936, 23, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(937, 24, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(938, 25, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(939, 26, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(940, 27, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(941, 28, 99, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(942, 23, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(943, 24, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(944, 25, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(945, 26, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(946, 27, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(947, 28, 100, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(948, 23, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(949, 24, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(950, 25, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(951, 26, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(952, 27, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(953, 28, 101, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(954, 23, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(955, 24, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(956, 25, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(957, 26, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(958, 27, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(959, 28, 102, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(960, 23, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(961, 24, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(962, 25, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(963, 26, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(964, 27, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(965, 28, 103, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(966, 23, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(967, 24, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(968, 25, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(969, 26, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(970, 27, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(971, 28, 104, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(972, 23, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(973, 24, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(974, 25, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(975, 26, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(976, 27, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(977, 28, 105, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(978, 23, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(979, 24, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(980, 25, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(981, 26, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(982, 27, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(983, 28, 106, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(984, 23, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(985, 24, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(986, 25, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(987, 26, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(988, 27, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(989, 28, 107, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(990, 23, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(991, 24, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(992, 25, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(993, 26, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(994, 27, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(995, 28, 108, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(996, 23, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(997, 24, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(998, 25, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(999, 26, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1000, 27, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1001, 28, 109, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1002, 23, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1003, 24, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1004, 25, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1005, 26, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1006, 27, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1007, 28, 110, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1008, 23, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1009, 24, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1010, 25, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1011, 26, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1012, 27, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1013, 28, 111, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1014, 23, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1015, 24, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1016, 25, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1017, 26, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1018, 27, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1019, 28, 112, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1020, 23, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1021, 24, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1022, 25, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1023, 26, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1024, 27, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1025, 28, 113, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1026, 23, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1027, 24, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1028, 25, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1029, 26, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1030, 27, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1031, 28, 114, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1032, 23, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1033, 24, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1034, 25, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1035, 26, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1036, 27, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1037, 28, 115, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1038, 23, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1039, 24, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1040, 25, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1041, 26, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1042, 27, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1043, 28, 116, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1044, 23, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1045, 24, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1046, 25, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1047, 26, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1048, 27, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1049, 28, 117, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1050, 23, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1051, 24, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1052, 25, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1053, 26, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1054, 27, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1055, 28, 118, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1056, 23, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1057, 24, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1058, 25, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1059, 26, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1060, 27, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1061, 28, 119, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1062, 23, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1063, 24, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1064, 25, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1065, 26, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1066, 27, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1067, 28, 120, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1068, 23, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1069, 24, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1070, 25, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1071, 26, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1072, 27, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1073, 28, 121, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1074, 23, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1075, 24, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1076, 25, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1077, 26, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1078, 27, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1079, 28, 122, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1080, 23, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1081, 24, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1082, 25, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1083, 26, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1084, 27, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1085, 28, 123, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1086, 23, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1087, 24, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1088, 25, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1089, 26, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1090, 27, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1091, 28, 124, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1092, 23, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:32'),
(1093, 24, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1094, 25, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1095, 26, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:33'),
(1096, 27, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1097, 28, 125, '4', '2021-12-20 11:43:29', '2022-01-07 10:36:34'),
(1098, 9, 97, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1099, 10, 97, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1100, 11, 97, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1101, 12, 97, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1102, 9, 98, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1103, 10, 98, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1104, 11, 98, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1105, 12, 98, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1106, 9, 99, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1107, 10, 99, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1108, 11, 99, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1109, 12, 99, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1110, 9, 100, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1111, 10, 100, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1112, 11, 100, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1113, 12, 100, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1114, 9, 101, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1115, 10, 101, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1116, 11, 101, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1117, 12, 101, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1118, 9, 102, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1119, 10, 102, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1120, 11, 102, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1121, 12, 102, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1122, 9, 103, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1123, 10, 103, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1124, 11, 103, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1125, 12, 103, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1126, 9, 104, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1127, 10, 104, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1128, 11, 104, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1129, 12, 104, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1130, 9, 105, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1131, 10, 105, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1132, 11, 105, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1133, 12, 105, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1134, 9, 106, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1135, 10, 106, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1136, 11, 106, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1137, 12, 106, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1138, 9, 107, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1139, 10, 107, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1140, 11, 107, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1141, 12, 107, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1142, 9, 108, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1143, 10, 108, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1144, 11, 108, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1145, 12, 108, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1146, 9, 109, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1147, 10, 109, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1148, 11, 109, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1149, 12, 109, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1150, 9, 110, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1151, 10, 110, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1152, 11, 110, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1153, 12, 110, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1154, 9, 111, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1155, 10, 111, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1156, 11, 111, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1157, 12, 111, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1158, 9, 112, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1159, 10, 112, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1160, 11, 112, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1161, 12, 112, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1162, 9, 113, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1163, 10, 113, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1164, 11, 113, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1165, 12, 113, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1166, 9, 114, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1167, 10, 114, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1168, 11, 114, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1169, 12, 114, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1170, 9, 115, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1171, 10, 115, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1172, 11, 115, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1173, 12, 115, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1174, 9, 116, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1175, 10, 116, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1176, 11, 116, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1177, 12, 116, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1178, 9, 117, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1179, 10, 117, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1180, 11, 117, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1181, 12, 117, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1182, 9, 118, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1183, 10, 118, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1184, 11, 118, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1185, 12, 118, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1186, 9, 119, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1187, 10, 119, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1188, 11, 119, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1189, 12, 119, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1190, 9, 120, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1191, 10, 120, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1192, 11, 120, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1193, 12, 120, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1194, 9, 121, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1195, 10, 121, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1196, 11, 121, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1197, 12, 121, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1198, 9, 122, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1199, 10, 122, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1200, 11, 122, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1201, 12, 122, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1202, 9, 123, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1203, 10, 123, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1204, 11, 123, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1205, 12, 123, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1206, 9, 124, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1207, 10, 124, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1208, 11, 124, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1209, 12, 124, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1210, 9, 125, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1211, 10, 125, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1212, 11, 125, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1213, 12, 125, '3', '2021-12-23 10:30:04', '2021-12-23 10:30:04'),
(1214, 55, 97, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1215, 56, 97, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1216, 57, 97, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1217, 58, 97, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1218, 55, 98, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1219, 56, 98, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1220, 57, 98, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1221, 58, 98, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1222, 55, 99, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1223, 56, 99, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1224, 57, 99, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1225, 58, 99, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1226, 55, 100, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1227, 56, 100, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1228, 57, 100, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1229, 58, 100, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1230, 55, 101, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1231, 56, 101, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1232, 57, 101, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1233, 58, 101, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1234, 55, 102, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1235, 56, 102, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1236, 57, 102, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1237, 58, 102, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1238, 55, 103, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1239, 56, 103, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1240, 57, 103, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1241, 58, 103, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1242, 55, 104, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1243, 56, 104, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1244, 57, 104, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1245, 58, 104, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1246, 55, 105, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1247, 56, 105, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1248, 57, 105, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1249, 58, 105, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1250, 55, 106, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1251, 56, 106, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1252, 57, 106, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1253, 58, 106, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1254, 55, 107, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1255, 56, 107, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1256, 57, 107, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1257, 58, 107, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1258, 55, 108, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1259, 56, 108, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1260, 57, 108, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1261, 58, 108, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1262, 55, 109, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1263, 56, 109, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1264, 57, 109, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1265, 58, 109, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1266, 55, 110, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1267, 56, 110, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1268, 57, 110, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1269, 58, 110, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1270, 55, 111, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1271, 56, 111, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1272, 57, 111, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1273, 58, 111, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1274, 55, 112, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1275, 56, 112, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1276, 57, 112, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1277, 58, 112, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1278, 55, 113, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1279, 56, 113, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1280, 57, 113, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1281, 58, 113, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1282, 55, 114, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1283, 56, 114, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1284, 57, 114, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1285, 58, 114, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1286, 55, 115, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1287, 56, 115, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1288, 57, 115, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1289, 58, 115, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1290, 55, 116, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1291, 56, 116, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1292, 57, 116, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1293, 58, 116, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1294, 55, 117, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1295, 56, 117, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1296, 57, 117, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1297, 58, 117, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1298, 55, 118, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1299, 56, 118, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1300, 57, 118, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1301, 58, 118, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1302, 55, 119, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1303, 56, 119, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1304, 57, 119, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1305, 58, 119, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1306, 55, 120, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1307, 56, 120, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1308, 57, 120, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1309, 58, 120, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1310, 55, 121, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1311, 56, 121, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1312, 57, 121, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1313, 58, 121, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1314, 55, 122, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1315, 56, 122, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1316, 57, 122, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1317, 58, 122, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1318, 55, 123, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1319, 56, 123, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1320, 57, 123, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1321, 58, 123, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1322, 55, 124, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1323, 56, 124, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1324, 57, 124, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1325, 58, 124, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1326, 55, 125, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1327, 56, 125, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1328, 57, 125, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16'),
(1329, 58, 125, '3', '2021-12-23 10:30:16', '2021-12-23 10:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `k13_nilai_spiritual`
--

CREATE TABLE `k13_nilai_spiritual` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k13_rencana_nilai_spiritual_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_nilai_spiritual`
--

INSERT INTO `k13_nilai_spiritual` (`id`, `k13_rencana_nilai_spiritual_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(648, 17, 70, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(649, 18, 70, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(650, 19, 70, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(651, 20, 70, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(652, 21, 70, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(653, 17, 71, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(654, 18, 71, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(655, 19, 71, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(656, 20, 71, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(657, 21, 71, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(658, 17, 72, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(659, 18, 72, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(660, 19, 72, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(661, 20, 72, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(662, 21, 72, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(663, 17, 73, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(664, 18, 73, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(665, 19, 73, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(666, 20, 73, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(667, 21, 73, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(668, 17, 74, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(669, 18, 74, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(670, 19, 74, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(671, 20, 74, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(672, 21, 74, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(673, 17, 75, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(674, 18, 75, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(675, 19, 75, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(676, 20, 75, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(677, 21, 75, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(678, 17, 76, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(679, 18, 76, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(680, 19, 76, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(681, 20, 76, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(682, 21, 76, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(683, 17, 77, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(684, 18, 77, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(685, 19, 77, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(686, 20, 77, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(687, 21, 77, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(688, 17, 78, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(689, 18, 78, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(690, 19, 78, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(691, 20, 78, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(692, 21, 78, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(693, 17, 79, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(694, 18, 79, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(695, 19, 79, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(696, 20, 79, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(697, 21, 79, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(698, 17, 80, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(699, 18, 80, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(700, 19, 80, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(701, 20, 80, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(702, 21, 80, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(703, 17, 81, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(704, 18, 81, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(705, 19, 81, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(706, 20, 81, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(707, 21, 81, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(708, 17, 82, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(709, 18, 82, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(710, 19, 82, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(711, 20, 82, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(712, 21, 82, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(713, 17, 83, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(714, 18, 83, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(715, 19, 83, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(716, 20, 83, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(717, 21, 83, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(718, 17, 84, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(719, 18, 84, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(720, 19, 84, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(721, 20, 84, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(722, 21, 84, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(723, 17, 85, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(724, 18, 85, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(725, 19, 85, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(726, 20, 85, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(727, 21, 85, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(728, 17, 86, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(729, 18, 86, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(730, 19, 86, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(731, 20, 86, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(732, 21, 86, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(733, 17, 87, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(734, 18, 87, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(735, 19, 87, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(736, 20, 87, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(737, 21, 87, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(738, 17, 88, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(739, 18, 88, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(740, 19, 88, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(741, 20, 88, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(742, 21, 88, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(743, 17, 89, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(744, 18, 89, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(745, 19, 89, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(746, 20, 89, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(747, 21, 89, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(748, 17, 90, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(749, 18, 90, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(750, 19, 90, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(751, 20, 90, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(752, 21, 90, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(753, 17, 91, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(754, 18, 91, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(755, 19, 91, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(756, 20, 91, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(757, 21, 91, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(758, 17, 92, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(759, 18, 92, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(760, 19, 92, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(761, 20, 92, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(762, 21, 92, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(763, 17, 93, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(764, 18, 93, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(765, 19, 93, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(766, 20, 93, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(767, 21, 93, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(768, 17, 94, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(769, 18, 94, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(770, 19, 94, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(771, 20, 94, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(772, 21, 94, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(773, 17, 95, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(774, 18, 95, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(775, 19, 95, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(776, 20, 95, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(777, 21, 95, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(778, 17, 96, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(779, 18, 96, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(780, 19, 96, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(781, 20, 96, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(782, 21, 96, '3', '2021-12-20 08:56:01', '2021-12-20 08:56:01'),
(783, 22, 97, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(784, 23, 97, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(785, 24, 97, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(786, 25, 97, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(787, 26, 97, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(788, 22, 98, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(789, 23, 98, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(790, 24, 98, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(791, 25, 98, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(792, 26, 98, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(793, 22, 99, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(794, 23, 99, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(795, 24, 99, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(796, 25, 99, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(797, 26, 99, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(798, 22, 100, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(799, 23, 100, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(800, 24, 100, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(801, 25, 100, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(802, 26, 100, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(803, 22, 101, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(804, 23, 101, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(805, 24, 101, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(806, 25, 101, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(807, 26, 101, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(808, 22, 102, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(809, 23, 102, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(810, 24, 102, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(811, 25, 102, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(812, 26, 102, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(813, 22, 103, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(814, 23, 103, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(815, 24, 103, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(816, 25, 103, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(817, 26, 103, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(818, 22, 104, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(819, 23, 104, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(820, 24, 104, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(821, 25, 104, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(822, 26, 104, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(823, 22, 105, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(824, 23, 105, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(825, 24, 105, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(826, 25, 105, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(827, 26, 105, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(828, 22, 106, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(829, 23, 106, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(830, 24, 106, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(831, 25, 106, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(832, 26, 106, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(833, 22, 107, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(834, 23, 107, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(835, 24, 107, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(836, 25, 107, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(837, 26, 107, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(838, 22, 108, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(839, 23, 108, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(840, 24, 108, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(841, 25, 108, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(842, 26, 108, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(843, 22, 109, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(844, 23, 109, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(845, 24, 109, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(846, 25, 109, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(847, 26, 109, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(848, 22, 110, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(849, 23, 110, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(850, 24, 110, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(851, 25, 110, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(852, 26, 110, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(853, 22, 111, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(854, 23, 111, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(855, 24, 111, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(856, 25, 111, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(857, 26, 111, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(858, 22, 112, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(859, 23, 112, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(860, 24, 112, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(861, 25, 112, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(862, 26, 112, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(863, 22, 113, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(864, 23, 113, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(865, 24, 113, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(866, 25, 113, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(867, 26, 113, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(868, 22, 114, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(869, 23, 114, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(870, 24, 114, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(871, 25, 114, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(872, 26, 114, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(873, 22, 115, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(874, 23, 115, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(875, 24, 115, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(876, 25, 115, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(877, 26, 115, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(878, 22, 116, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(879, 23, 116, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(880, 24, 116, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(881, 25, 116, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(882, 26, 116, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(883, 22, 117, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(884, 23, 117, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(885, 24, 117, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(886, 25, 117, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(887, 26, 117, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(888, 22, 118, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(889, 23, 118, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(890, 24, 118, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(891, 25, 118, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(892, 26, 118, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(893, 22, 119, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(894, 23, 119, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(895, 24, 119, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(896, 25, 119, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(897, 26, 119, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(898, 22, 120, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(899, 23, 120, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(900, 24, 120, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(901, 25, 120, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(902, 26, 120, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(903, 22, 121, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(904, 23, 121, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(905, 24, 121, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(906, 25, 121, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(907, 26, 121, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(908, 22, 122, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(909, 23, 122, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(910, 24, 122, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(911, 25, 122, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(912, 26, 122, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(913, 22, 123, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(914, 23, 123, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(915, 24, 123, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(916, 25, 123, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(917, 26, 123, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(918, 22, 124, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(919, 23, 124, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(920, 24, 124, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(921, 25, 124, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(922, 26, 124, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(923, 22, 125, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:16'),
(924, 23, 125, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(925, 24, 125, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:17'),
(926, 25, 125, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(927, 26, 125, '4', '2021-12-20 11:42:59', '2022-01-07 10:20:18'),
(928, 9, 70, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(929, 10, 70, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(930, 11, 70, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(931, 12, 70, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(932, 13, 70, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(933, 9, 71, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(934, 10, 71, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(935, 11, 71, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(936, 12, 71, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(937, 13, 71, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(938, 9, 72, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(939, 10, 72, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(940, 11, 72, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(941, 12, 72, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(942, 13, 72, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(943, 9, 73, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(944, 10, 73, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(945, 11, 73, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(946, 12, 73, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(947, 13, 73, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(948, 9, 74, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(949, 10, 74, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(950, 11, 74, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(951, 12, 74, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(952, 13, 74, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(953, 9, 75, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(954, 10, 75, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(955, 11, 75, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(956, 12, 75, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(957, 13, 75, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(958, 9, 76, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(959, 10, 76, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(960, 11, 76, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(961, 12, 76, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(962, 13, 76, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(963, 9, 77, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(964, 10, 77, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(965, 11, 77, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(966, 12, 77, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(967, 13, 77, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(968, 9, 78, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(969, 10, 78, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(970, 11, 78, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(971, 12, 78, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(972, 13, 78, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(973, 9, 79, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(974, 10, 79, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(975, 11, 79, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(976, 12, 79, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(977, 13, 79, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(978, 9, 80, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(979, 10, 80, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(980, 11, 80, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(981, 12, 80, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(982, 13, 80, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(983, 9, 81, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(984, 10, 81, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(985, 11, 81, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(986, 12, 81, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(987, 13, 81, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(988, 9, 82, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(989, 10, 82, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(990, 11, 82, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(991, 12, 82, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(992, 13, 82, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(993, 9, 83, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(994, 10, 83, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(995, 11, 83, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(996, 12, 83, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(997, 13, 83, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(998, 9, 84, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(999, 10, 84, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1000, 11, 84, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1001, 12, 84, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1002, 13, 84, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1003, 9, 85, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1004, 10, 85, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1005, 11, 85, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1006, 12, 85, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1007, 13, 85, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1008, 9, 86, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1009, 10, 86, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1010, 11, 86, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1011, 12, 86, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1012, 13, 86, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1013, 9, 88, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1014, 10, 88, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1015, 11, 88, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1016, 12, 88, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1017, 13, 88, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1018, 9, 87, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1019, 10, 87, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1020, 11, 87, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1021, 12, 87, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1022, 13, 87, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1023, 9, 89, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1024, 10, 89, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1025, 11, 89, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1026, 12, 89, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1027, 13, 89, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1028, 9, 90, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1029, 10, 90, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1030, 11, 90, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1031, 12, 90, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1032, 13, 90, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1033, 9, 91, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1034, 10, 91, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1035, 11, 91, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1036, 12, 91, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1037, 13, 91, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1038, 9, 92, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1039, 10, 92, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1040, 11, 92, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1041, 12, 92, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1042, 13, 92, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1043, 9, 93, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1044, 10, 93, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1045, 11, 93, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1046, 12, 93, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1047, 13, 93, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1048, 9, 94, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1049, 10, 94, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1050, 11, 94, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1051, 12, 94, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1052, 13, 94, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1053, 9, 95, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1054, 10, 95, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1055, 11, 95, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1056, 12, 95, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1057, 13, 95, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1058, 9, 96, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1059, 10, 96, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1060, 11, 96, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1061, 12, 96, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1062, 13, 96, '3', '2021-12-23 10:22:56', '2021-12-23 10:22:56'),
(1063, 14, 97, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1064, 15, 97, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1065, 16, 97, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1066, 14, 98, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1067, 15, 98, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1068, 16, 98, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1069, 14, 99, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1070, 15, 99, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1071, 16, 99, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1072, 14, 100, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1073, 15, 100, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1074, 16, 100, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1075, 14, 101, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1076, 15, 101, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1077, 16, 101, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1078, 14, 102, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1079, 15, 102, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1080, 16, 102, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1081, 14, 103, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1082, 15, 103, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1083, 16, 103, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1084, 14, 104, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1085, 15, 104, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1086, 16, 104, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1087, 14, 105, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1088, 15, 105, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1089, 16, 105, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1090, 14, 106, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1091, 15, 106, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1092, 16, 106, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1093, 14, 107, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1094, 15, 107, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1095, 16, 107, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1096, 14, 108, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1097, 15, 108, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1098, 16, 108, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1099, 14, 109, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1100, 15, 109, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1101, 16, 109, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1102, 14, 110, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1103, 15, 110, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1104, 16, 110, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1105, 14, 111, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1106, 15, 111, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1107, 16, 111, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1108, 14, 112, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1109, 15, 112, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1110, 16, 112, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1111, 14, 113, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1112, 15, 113, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1113, 16, 113, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1114, 14, 114, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1115, 15, 114, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1116, 16, 114, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1117, 14, 115, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1118, 15, 115, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1119, 16, 115, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1120, 14, 116, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1121, 15, 116, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1122, 16, 116, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1123, 14, 117, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1124, 15, 117, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1125, 16, 117, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1126, 14, 118, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1127, 15, 118, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1128, 16, 118, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1129, 14, 119, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1130, 15, 119, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1131, 16, 119, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1132, 14, 120, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1133, 15, 120, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1134, 16, 120, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1135, 14, 121, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1136, 15, 121, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1137, 16, 121, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1138, 14, 122, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1139, 15, 122, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1140, 16, 122, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1141, 14, 123, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1142, 15, 123, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1143, 16, 123, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1144, 14, 124, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1145, 15, 124, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1146, 16, 124, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1147, 14, 125, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1148, 15, 125, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1149, 16, 125, '3', '2021-12-23 10:23:06', '2021-12-23 10:23:06'),
(1150, 37, 126, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1151, 38, 126, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1152, 39, 126, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1153, 37, 127, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1154, 38, 127, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1155, 39, 127, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1156, 37, 128, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1157, 38, 128, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1158, 39, 128, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1159, 37, 129, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1160, 38, 129, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1161, 39, 129, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1162, 37, 130, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1163, 38, 130, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1164, 39, 130, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1165, 37, 131, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1166, 38, 131, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1167, 39, 131, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1168, 37, 132, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1169, 38, 132, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1170, 39, 132, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1171, 37, 133, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1172, 38, 133, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1173, 39, 133, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1174, 37, 134, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1175, 38, 134, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1176, 39, 134, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1177, 37, 135, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1178, 38, 135, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1179, 39, 135, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1180, 37, 137, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1181, 38, 137, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1182, 39, 137, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1183, 37, 138, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1184, 38, 138, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1185, 39, 138, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1186, 37, 139, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1187, 38, 139, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1188, 39, 139, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1189, 37, 140, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1190, 38, 140, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1191, 39, 140, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1192, 37, 141, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1193, 38, 141, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1194, 39, 141, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1195, 37, 142, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1196, 38, 142, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1197, 39, 142, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1198, 37, 143, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1199, 38, 143, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1200, 39, 143, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1201, 37, 144, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1202, 38, 144, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1203, 39, 144, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1204, 37, 136, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1205, 38, 136, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1206, 39, 136, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1207, 37, 145, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1208, 38, 145, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1209, 39, 145, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1210, 37, 147, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1211, 38, 147, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1212, 39, 147, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1213, 37, 148, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1214, 38, 148, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1215, 39, 148, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1216, 37, 149, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1217, 38, 149, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1218, 39, 149, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1219, 37, 150, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1220, 38, 150, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1221, 39, 150, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1222, 37, 151, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1223, 38, 151, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1224, 39, 151, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1225, 37, 146, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1226, 38, 146, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1227, 39, 146, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1228, 37, 152, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1229, 38, 152, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1230, 39, 152, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1231, 37, 153, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1232, 38, 153, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1233, 39, 153, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1234, 37, 154, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1235, 38, 154, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1236, 39, 154, '3', '2021-12-23 10:23:17', '2021-12-23 10:23:17'),
(1237, 47, 70, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1238, 48, 70, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1239, 49, 70, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1240, 50, 70, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1241, 47, 71, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1242, 48, 71, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1243, 49, 71, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1244, 50, 71, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1245, 47, 72, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1246, 48, 72, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1247, 49, 72, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1248, 50, 72, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1249, 47, 73, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1250, 48, 73, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1251, 49, 73, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1252, 50, 73, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1253, 47, 74, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1254, 48, 74, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1255, 49, 74, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1256, 50, 74, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1257, 47, 75, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1258, 48, 75, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1259, 49, 75, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1260, 50, 75, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1261, 47, 76, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1262, 48, 76, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1263, 49, 76, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1264, 50, 76, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1265, 47, 77, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1266, 48, 77, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1267, 49, 77, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1268, 50, 77, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1269, 47, 78, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1270, 48, 78, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1271, 49, 78, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1272, 50, 78, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1273, 47, 79, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1274, 48, 79, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1275, 49, 79, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1276, 50, 79, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1277, 47, 80, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1278, 48, 80, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1279, 49, 80, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1280, 50, 80, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1281, 47, 81, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1282, 48, 81, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1283, 49, 81, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1284, 50, 81, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1285, 47, 82, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1286, 48, 82, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1287, 49, 82, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1288, 50, 82, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1289, 47, 83, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1290, 48, 83, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1291, 49, 83, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1292, 50, 83, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1293, 47, 84, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1294, 48, 84, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1295, 49, 84, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1296, 50, 84, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1297, 47, 85, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1298, 48, 85, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1299, 49, 85, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1300, 50, 85, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1301, 47, 86, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1302, 48, 86, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1303, 49, 86, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1304, 50, 86, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1305, 47, 88, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1306, 48, 88, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1307, 49, 88, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1308, 50, 88, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1309, 47, 87, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1310, 48, 87, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1311, 49, 87, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1312, 50, 87, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1313, 47, 89, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1314, 48, 89, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1315, 49, 89, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1316, 50, 89, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1317, 47, 90, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1318, 48, 90, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1319, 49, 90, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1320, 50, 90, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1321, 47, 91, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1322, 48, 91, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1323, 49, 91, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1324, 50, 91, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1325, 47, 92, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1326, 48, 92, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1327, 49, 92, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1328, 50, 92, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1329, 47, 93, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1330, 48, 93, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1331, 49, 93, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1332, 50, 93, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1333, 47, 94, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1334, 48, 94, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1335, 49, 94, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1336, 50, 94, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1337, 47, 95, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1338, 48, 95, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1339, 49, 95, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1340, 50, 95, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1341, 47, 96, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1342, 48, 96, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1343, 49, 96, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1344, 50, 96, '3', '2021-12-23 10:29:23', '2021-12-23 10:29:23'),
(1345, 51, 97, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1346, 52, 97, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1347, 53, 97, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1348, 54, 97, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1349, 51, 98, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1350, 52, 98, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1351, 53, 98, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1352, 54, 98, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1353, 51, 99, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1354, 52, 99, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1355, 53, 99, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1356, 54, 99, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1357, 51, 100, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1358, 52, 100, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1359, 53, 100, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1360, 54, 100, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1361, 51, 101, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1362, 52, 101, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1363, 53, 101, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1364, 54, 101, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1365, 51, 102, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1366, 52, 102, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1367, 53, 102, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1368, 54, 102, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1369, 51, 103, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1370, 52, 103, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1371, 53, 103, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1372, 54, 103, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1373, 51, 104, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1374, 52, 104, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1375, 53, 104, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1376, 54, 104, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1377, 51, 105, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1378, 52, 105, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1379, 53, 105, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1380, 54, 105, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1381, 51, 106, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1382, 52, 106, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1383, 53, 106, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1384, 54, 106, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1385, 51, 107, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1386, 52, 107, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1387, 53, 107, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1388, 54, 107, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1389, 51, 108, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1390, 52, 108, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1391, 53, 108, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1392, 54, 108, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1393, 51, 109, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1394, 52, 109, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1395, 53, 109, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1396, 54, 109, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1397, 51, 110, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1398, 52, 110, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1399, 53, 110, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1400, 54, 110, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1401, 51, 111, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1402, 52, 111, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1403, 53, 111, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1404, 54, 111, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1405, 51, 112, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1406, 52, 112, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1407, 53, 112, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1408, 54, 112, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1409, 51, 113, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1410, 52, 113, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1411, 53, 113, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1412, 54, 113, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1413, 51, 114, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1414, 52, 114, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34');
INSERT INTO `k13_nilai_spiritual` (`id`, `k13_rencana_nilai_spiritual_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1415, 53, 114, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1416, 54, 114, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1417, 51, 115, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1418, 52, 115, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1419, 53, 115, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1420, 54, 115, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1421, 51, 116, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1422, 52, 116, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1423, 53, 116, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1424, 54, 116, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1425, 51, 117, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1426, 52, 117, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1427, 53, 117, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1428, 54, 117, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1429, 51, 118, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1430, 52, 118, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1431, 53, 118, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1432, 54, 118, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1433, 51, 119, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1434, 52, 119, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1435, 53, 119, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1436, 54, 119, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1437, 51, 120, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1438, 52, 120, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1439, 53, 120, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1440, 54, 120, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1441, 51, 121, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1442, 52, 121, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1443, 53, 121, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1444, 54, 121, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1445, 51, 122, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1446, 52, 122, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1447, 53, 122, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1448, 54, 122, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1449, 51, 123, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1450, 52, 123, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1451, 53, 123, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1452, 54, 123, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1453, 51, 124, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1454, 52, 124, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1455, 53, 124, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1456, 54, 124, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1457, 51, 125, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1458, 52, 125, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1459, 53, 125, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1460, 54, 125, '3', '2021-12-23 10:29:34', '2021-12-23 10:29:34'),
(1461, 55, 126, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1462, 56, 126, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1463, 57, 126, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1464, 58, 126, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1465, 55, 127, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1466, 56, 127, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1467, 57, 127, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1468, 58, 127, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1469, 55, 128, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1470, 56, 128, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1471, 57, 128, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1472, 58, 128, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1473, 55, 129, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1474, 56, 129, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1475, 57, 129, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1476, 58, 129, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1477, 55, 130, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1478, 56, 130, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1479, 57, 130, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1480, 58, 130, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1481, 55, 131, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1482, 56, 131, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1483, 57, 131, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1484, 58, 131, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1485, 55, 132, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1486, 56, 132, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1487, 57, 132, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1488, 58, 132, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1489, 55, 133, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1490, 56, 133, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1491, 57, 133, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1492, 58, 133, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1493, 55, 134, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1494, 56, 134, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1495, 57, 134, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1496, 58, 134, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1497, 55, 135, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1498, 56, 135, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1499, 57, 135, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1500, 58, 135, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1501, 55, 137, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1502, 56, 137, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1503, 57, 137, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1504, 58, 137, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1505, 55, 138, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1506, 56, 138, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1507, 57, 138, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1508, 58, 138, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1509, 55, 139, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1510, 56, 139, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1511, 57, 139, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1512, 58, 139, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1513, 55, 140, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1514, 56, 140, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1515, 57, 140, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1516, 58, 140, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1517, 55, 141, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1518, 56, 141, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1519, 57, 141, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1520, 58, 141, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1521, 55, 142, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1522, 56, 142, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1523, 57, 142, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1524, 58, 142, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1525, 55, 143, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1526, 56, 143, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1527, 57, 143, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1528, 58, 143, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1529, 55, 144, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1530, 56, 144, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1531, 57, 144, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1532, 58, 144, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1533, 55, 136, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1534, 56, 136, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1535, 57, 136, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1536, 58, 136, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1537, 55, 145, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1538, 56, 145, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1539, 57, 145, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1540, 58, 145, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1541, 55, 147, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1542, 56, 147, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1543, 57, 147, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1544, 58, 147, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1545, 55, 148, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1546, 56, 148, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1547, 57, 148, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1548, 58, 148, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1549, 55, 149, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1550, 56, 149, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1551, 57, 149, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1552, 58, 149, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1553, 55, 150, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1554, 56, 150, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1555, 57, 150, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1556, 58, 150, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1557, 55, 151, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1558, 56, 151, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1559, 57, 151, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1560, 58, 151, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1561, 55, 146, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1562, 56, 146, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1563, 57, 146, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1564, 58, 146, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1565, 55, 152, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1566, 56, 152, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1567, 57, 152, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1568, 58, 152, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1569, 55, 153, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1570, 56, 153, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1571, 57, 153, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1572, 58, 153, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1573, 55, 154, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1574, 56, 154, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1575, 57, 154, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48'),
(1576, 58, 154, '3', '2021-12-23 10:29:48', '2021-12-23 10:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_bobot_penilaian`
--

CREATE TABLE `k13_rencana_bobot_penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `bobot_ph` int(11) NOT NULL,
  `bobot_pts` int(11) NOT NULL,
  `bobot_pas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_rencana_bobot_penilaian`
--

INSERT INTO `k13_rencana_bobot_penilaian` (`id`, `pembelajaran_id`, `bobot_ph`, `bobot_pts`, `bobot_pas`, `created_at`, `updated_at`) VALUES
(1, 291, 2, 1, 1, '2021-12-04 18:31:29', '2021-12-04 18:31:29'),
(2, 304, 2, 1, 1, '2021-12-04 18:31:39', '2021-12-04 18:38:45'),
(3, 317, 1, 1, 1, '2021-12-04 18:38:54', '2021-12-04 18:39:43'),
(4, 330, 2, 1, 1, '2021-12-04 18:39:10', '2021-12-04 18:39:10'),
(5, 357, 2, 1, 1, '2021-12-04 18:39:26', '2021-12-04 18:39:26'),
(6, 292, 2, 1, 1, '2021-12-04 18:39:34', '2021-12-04 18:39:34'),
(7, 293, 2, 1, 1, '2021-12-20 05:19:11', '2021-12-20 05:19:11'),
(8, 306, 2, 1, 1, '2021-12-20 05:19:17', '2021-12-20 05:19:17'),
(9, 319, 2, 1, 1, '2021-12-20 05:19:24', '2021-12-20 05:19:24'),
(10, 332, 2, 1, 1, '2021-12-20 05:19:31', '2021-12-20 05:19:31'),
(11, 305, 2, 1, 1, '2021-12-23 10:30:48', '2021-12-23 10:30:48'),
(12, 318, 2, 1, 1, '2021-12-23 10:30:55', '2021-12-23 10:30:55'),
(13, 331, 2, 1, 1, '2021-12-23 10:31:02', '2021-12-23 10:31:02'),
(14, 358, 2, 1, 1, '2021-12-23 10:31:09', '2021-12-23 10:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_keterampilan`
--

CREATE TABLE `k13_rencana_nilai_keterampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknik_penilaian` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_rencana_nilai_keterampilan`
--

INSERT INTO `k13_rencana_nilai_keterampilan` (`id`, `pembelajaran_id`, `k13_kd_mapel_id`, `kode_penilaian`, `teknik_penilaian`, `created_at`, `updated_at`) VALUES
(17, 318, 10, 'P1', '1', '2021-12-15 12:38:19', '2021-12-15 12:38:19'),
(18, 318, 9, 'P2', '2', '2021-12-15 12:38:19', '2021-12-15 12:38:19'),
(19, 318, 11, 'P2', '2', '2021-12-15 12:38:19', '2021-12-15 12:38:19'),
(20, 318, 12, 'P2', '2', '2021-12-15 12:38:19', '2021-12-15 12:38:19'),
(21, 293, 18, 'P1', '1', '2021-12-20 05:15:28', '2021-12-20 05:15:28'),
(22, 293, 19, 'P2', '1', '2021-12-20 05:15:28', '2021-12-20 05:15:28'),
(23, 293, 20, 'P3', '1', '2021-12-20 05:15:28', '2021-12-20 05:15:28'),
(24, 306, 18, 'P1', '1', '2021-12-20 05:15:54', '2021-12-20 05:15:54'),
(25, 306, 19, 'P2', '1', '2021-12-20 05:15:54', '2021-12-20 05:15:54'),
(26, 306, 20, 'P3', '1', '2021-12-20 05:15:54', '2021-12-20 05:15:54'),
(27, 319, 23, 'P1', '1', '2021-12-20 05:16:12', '2021-12-20 05:16:12'),
(28, 319, 24, 'P2', '1', '2021-12-20 05:16:12', '2021-12-20 05:16:12'),
(29, 332, 28, 'P1', '1', '2021-12-20 05:16:37', '2021-12-20 05:16:37'),
(30, 332, 29, 'P2', '1', '2021-12-20 05:16:37', '2021-12-20 05:16:37'),
(31, 291, 36, 'P1', '1', '2021-12-23 10:10:24', '2021-12-23 10:10:24'),
(32, 291, 37, 'P2', '1', '2021-12-23 10:10:24', '2021-12-23 10:10:24'),
(33, 304, 36, 'P1', '1', '2021-12-23 10:10:41', '2021-12-23 10:10:41'),
(34, 304, 37, 'P2', '1', '2021-12-23 10:10:41', '2021-12-23 10:10:41'),
(35, 292, 34, 'P1', '1', '2021-12-23 10:11:02', '2021-12-23 10:11:02'),
(36, 292, 35, 'P2', '1', '2021-12-23 10:11:02', '2021-12-23 10:11:02'),
(37, 305, 34, 'P1', '1', '2021-12-23 10:11:21', '2021-12-23 10:11:21'),
(38, 305, 35, 'P2', '1', '2021-12-23 10:11:21', '2021-12-23 10:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_pengetahuan`
--

CREATE TABLE `k13_rencana_nilai_pengetahuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_kd_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kode_penilaian` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknik_penilaian` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot_teknik_penilaian` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_rencana_nilai_pengetahuan`
--

INSERT INTO `k13_rencana_nilai_pengetahuan` (`id`, `pembelajaran_id`, `k13_kd_mapel_id`, `kode_penilaian`, `teknik_penilaian`, `bobot_teknik_penilaian`, `created_at`, `updated_at`) VALUES
(37, 292, 3, 'P1', '1', 1, '2021-12-03 14:20:40', '2021-12-03 14:20:40'),
(38, 292, 3, 'P2', '2', 1, '2021-12-03 14:20:40', '2021-12-03 14:20:40'),
(39, 292, 2, 'P2', '2', 1, '2021-12-03 14:20:40', '2021-12-03 14:20:40'),
(40, 292, 2, 'P3', '3', 1, '2021-12-03 14:20:40', '2021-12-03 14:20:40'),
(41, 305, 3, 'P1', '2', 1, '2021-12-03 14:22:29', '2021-12-03 14:22:29'),
(42, 305, 2, 'P2', '1', 1, '2021-12-03 14:22:29', '2021-12-03 14:22:29'),
(43, 305, 3, 'P3', '3', 1, '2021-12-03 14:22:29', '2021-12-03 14:22:29'),
(44, 305, 2, 'P3', '3', 1, '2021-12-03 14:22:29', '2021-12-03 14:22:29'),
(45, 317, 7, 'P1', '2', 1, '2021-12-03 14:25:40', '2021-12-03 14:25:40'),
(46, 317, 7, 'P2', '1', 1, '2021-12-03 14:25:40', '2021-12-03 14:25:40'),
(47, 293, 13, 'P1', '3', 1, '2021-12-20 05:11:58', '2021-12-20 05:11:58'),
(48, 293, 14, 'P2', '1', 1, '2021-12-20 05:11:58', '2021-12-20 05:11:58'),
(49, 293, 15, 'P3', '2', 1, '2021-12-20 05:11:58', '2021-12-20 05:11:58'),
(50, 293, 16, 'P4', '1', 1, '2021-12-20 05:11:58', '2021-12-20 05:11:58'),
(51, 293, 17, 'P5', '1', 1, '2021-12-20 05:11:58', '2021-12-20 05:11:58'),
(52, 306, 13, 'P1', '1', 1, '2021-12-20 05:12:53', '2021-12-20 05:12:53'),
(53, 306, 14, 'P2', '1', 1, '2021-12-20 05:12:53', '2021-12-20 05:12:53'),
(54, 306, 15, 'P3', '2', 1, '2021-12-20 05:12:53', '2021-12-20 05:12:53'),
(55, 306, 16, 'P4', '1', 1, '2021-12-20 05:12:53', '2021-12-20 05:12:53'),
(56, 306, 17, 'P5', '1', 1, '2021-12-20 05:12:53', '2021-12-20 05:12:53'),
(57, 319, 21, 'P1', '1', 1, '2021-12-20 05:13:29', '2021-12-20 05:13:29'),
(58, 319, 22, 'P2', '2', 1, '2021-12-20 05:13:29', '2021-12-20 05:13:29'),
(59, 332, 25, 'P1', '2', 1, '2021-12-20 05:14:06', '2021-12-20 05:14:06'),
(60, 332, 26, 'P2', '1', 1, '2021-12-20 05:14:06', '2021-12-20 05:14:06'),
(61, 332, 27, 'P3', '1', 1, '2021-12-20 05:14:06', '2021-12-20 05:14:06'),
(62, 304, 30, 'P1', '1', 1, '2021-12-23 10:06:00', '2021-12-23 10:06:00'),
(63, 304, 31, 'P2', '1', 1, '2021-12-23 10:06:00', '2021-12-23 10:06:00'),
(64, 291, 30, 'P1', '1', 1, '2021-12-23 10:06:20', '2021-12-23 10:06:20'),
(65, 291, 31, 'P2', '1', 1, '2021-12-23 10:06:20', '2021-12-23 10:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_sosial`
--

CREATE TABLE `k13_rencana_nilai_sosial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_rencana_nilai_sosial`
--

INSERT INTO `k13_rencana_nilai_sosial` (`id`, `pembelajaran_id`, `k13_butir_sikap_id`, `created_at`, `updated_at`) VALUES
(4, 291, 6, '2021-12-04 17:02:50', '2021-12-04 17:02:50'),
(5, 291, 7, '2021-12-04 17:02:50', '2021-12-04 17:02:50'),
(6, 291, 8, '2021-12-04 17:02:50', '2021-12-04 17:02:50'),
(7, 291, 10, '2021-12-04 17:02:50', '2021-12-04 17:02:50'),
(8, 291, 11, '2021-12-04 17:02:50', '2021-12-04 17:02:50'),
(9, 304, 6, '2021-12-04 17:03:30', '2021-12-04 17:03:30'),
(10, 304, 7, '2021-12-04 17:03:30', '2021-12-04 17:03:30'),
(11, 304, 8, '2021-12-04 17:03:30', '2021-12-04 17:03:30'),
(12, 304, 10, '2021-12-04 17:03:30', '2021-12-04 17:03:30'),
(13, 317, 6, '2021-12-15 16:19:12', '2021-12-15 16:19:12'),
(14, 317, 7, '2021-12-15 16:19:12', '2021-12-15 16:19:12'),
(15, 317, 8, '2021-12-15 16:19:12', '2021-12-15 16:19:12'),
(16, 317, 9, '2021-12-15 16:19:12', '2021-12-15 16:19:12'),
(17, 293, 6, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(18, 293, 7, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(19, 293, 8, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(20, 293, 9, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(21, 293, 10, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(22, 293, 11, '2021-12-20 05:18:06', '2021-12-20 05:18:06'),
(23, 306, 6, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(24, 306, 7, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(25, 306, 8, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(26, 306, 9, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(27, 306, 10, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(28, 306, 11, '2021-12-20 05:18:20', '2021-12-20 05:18:20'),
(29, 319, 6, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(30, 319, 7, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(31, 319, 8, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(32, 319, 9, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(33, 319, 10, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(34, 319, 11, '2021-12-20 05:18:34', '2021-12-20 05:18:34'),
(35, 332, 6, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(36, 332, 7, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(37, 332, 8, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(38, 332, 9, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(39, 332, 10, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(40, 332, 11, '2021-12-20 05:18:53', '2021-12-20 05:18:53'),
(41, 330, 6, '2021-12-23 10:21:13', '2021-12-23 10:21:13'),
(42, 330, 7, '2021-12-23 10:21:13', '2021-12-23 10:21:13'),
(43, 330, 9, '2021-12-23 10:21:13', '2021-12-23 10:21:13'),
(44, 357, 6, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(45, 357, 7, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(46, 357, 8, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(47, 357, 9, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(48, 357, 10, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(49, 357, 11, '2021-12-23 10:21:28', '2021-12-23 10:21:28'),
(50, 292, 6, '2021-12-23 10:21:42', '2021-12-23 10:21:42'),
(51, 292, 7, '2021-12-23 10:21:42', '2021-12-23 10:21:42'),
(52, 292, 9, '2021-12-23 10:21:42', '2021-12-23 10:21:42'),
(53, 292, 10, '2021-12-23 10:21:42', '2021-12-23 10:21:42'),
(54, 292, 11, '2021-12-23 10:21:42', '2021-12-23 10:21:42'),
(55, 305, 6, '2021-12-23 10:21:55', '2021-12-23 10:21:55'),
(56, 305, 7, '2021-12-23 10:21:55', '2021-12-23 10:21:55'),
(57, 305, 8, '2021-12-23 10:21:55', '2021-12-23 10:21:55'),
(58, 305, 10, '2021-12-23 10:21:55', '2021-12-23 10:21:55'),
(59, 318, 6, '2021-12-23 10:22:07', '2021-12-23 10:22:07'),
(60, 318, 8, '2021-12-23 10:22:07', '2021-12-23 10:22:07'),
(61, 318, 9, '2021-12-23 10:22:07', '2021-12-23 10:22:07'),
(62, 331, 6, '2021-12-23 10:22:21', '2021-12-23 10:22:21'),
(63, 331, 8, '2021-12-23 10:22:21', '2021-12-23 10:22:21'),
(64, 331, 9, '2021-12-23 10:22:21', '2021-12-23 10:22:21'),
(65, 331, 10, '2021-12-23 10:22:21', '2021-12-23 10:22:21'),
(66, 358, 6, '2021-12-23 10:22:35', '2021-12-23 10:22:35'),
(67, 358, 7, '2021-12-23 10:22:35', '2021-12-23 10:22:35'),
(68, 358, 9, '2021-12-23 10:22:35', '2021-12-23 10:22:35'),
(69, 358, 10, '2021-12-23 10:22:35', '2021-12-23 10:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `k13_rencana_nilai_spiritual`
--

CREATE TABLE `k13_rencana_nilai_spiritual` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `k13_butir_sikap_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_rencana_nilai_spiritual`
--

INSERT INTO `k13_rencana_nilai_spiritual` (`id`, `pembelajaran_id`, `k13_butir_sikap_id`, `created_at`, `updated_at`) VALUES
(9, 291, 1, '2021-12-04 16:33:38', '2021-12-04 16:33:38'),
(10, 291, 3, '2021-12-04 16:33:38', '2021-12-04 16:33:38'),
(11, 291, 4, '2021-12-04 16:33:38', '2021-12-04 16:33:38'),
(12, 291, 12, '2021-12-04 16:33:38', '2021-12-04 16:33:38'),
(13, 291, 13, '2021-12-04 16:33:38', '2021-12-04 16:33:38'),
(14, 304, 1, '2021-12-04 16:33:58', '2021-12-04 16:33:58'),
(15, 304, 3, '2021-12-04 16:33:58', '2021-12-04 16:33:58'),
(16, 304, 4, '2021-12-04 16:33:58', '2021-12-04 16:33:58'),
(17, 293, 1, '2021-12-20 05:17:11', '2021-12-20 05:17:11'),
(18, 293, 3, '2021-12-20 05:17:11', '2021-12-20 05:17:11'),
(19, 293, 4, '2021-12-20 05:17:11', '2021-12-20 05:17:11'),
(20, 293, 12, '2021-12-20 05:17:11', '2021-12-20 05:17:11'),
(21, 293, 13, '2021-12-20 05:17:11', '2021-12-20 05:17:11'),
(22, 306, 1, '2021-12-20 05:17:25', '2021-12-20 05:17:25'),
(23, 306, 3, '2021-12-20 05:17:25', '2021-12-20 05:17:25'),
(24, 306, 4, '2021-12-20 05:17:25', '2021-12-20 05:17:25'),
(25, 306, 12, '2021-12-20 05:17:25', '2021-12-20 05:17:25'),
(26, 306, 13, '2021-12-20 05:17:25', '2021-12-20 05:17:25'),
(27, 319, 1, '2021-12-20 05:17:36', '2021-12-20 05:17:36'),
(28, 319, 3, '2021-12-20 05:17:36', '2021-12-20 05:17:36'),
(29, 319, 4, '2021-12-20 05:17:36', '2021-12-20 05:17:36'),
(30, 319, 12, '2021-12-20 05:17:36', '2021-12-20 05:17:36'),
(31, 319, 13, '2021-12-20 05:17:36', '2021-12-20 05:17:36'),
(32, 332, 1, '2021-12-20 05:17:47', '2021-12-20 05:17:47'),
(33, 332, 3, '2021-12-20 05:17:47', '2021-12-20 05:17:47'),
(34, 332, 4, '2021-12-20 05:17:47', '2021-12-20 05:17:47'),
(35, 332, 12, '2021-12-20 05:17:47', '2021-12-20 05:17:47'),
(36, 332, 13, '2021-12-20 05:17:47', '2021-12-20 05:17:47'),
(37, 317, 1, '2021-12-23 10:19:25', '2021-12-23 10:19:25'),
(38, 317, 3, '2021-12-23 10:19:25', '2021-12-23 10:19:25'),
(39, 317, 4, '2021-12-23 10:19:25', '2021-12-23 10:19:25'),
(40, 330, 3, '2021-12-23 10:19:36', '2021-12-23 10:19:36'),
(41, 330, 4, '2021-12-23 10:19:36', '2021-12-23 10:19:36'),
(42, 330, 12, '2021-12-23 10:19:36', '2021-12-23 10:19:36'),
(43, 357, 1, '2021-12-23 10:19:47', '2021-12-23 10:19:47'),
(44, 357, 3, '2021-12-23 10:19:47', '2021-12-23 10:19:47'),
(45, 357, 12, '2021-12-23 10:19:47', '2021-12-23 10:19:48'),
(46, 357, 13, '2021-12-23 10:19:48', '2021-12-23 10:19:48'),
(47, 292, 1, '2021-12-23 10:20:01', '2021-12-23 10:20:01'),
(48, 292, 4, '2021-12-23 10:20:01', '2021-12-23 10:20:01'),
(49, 292, 12, '2021-12-23 10:20:01', '2021-12-23 10:20:01'),
(50, 292, 13, '2021-12-23 10:20:01', '2021-12-23 10:20:01'),
(51, 305, 1, '2021-12-23 10:20:16', '2021-12-23 10:20:16'),
(52, 305, 3, '2021-12-23 10:20:16', '2021-12-23 10:20:16'),
(53, 305, 12, '2021-12-23 10:20:16', '2021-12-23 10:20:16'),
(54, 305, 13, '2021-12-23 10:20:16', '2021-12-23 10:20:16'),
(55, 318, 1, '2021-12-23 10:20:27', '2021-12-23 10:20:27'),
(56, 318, 3, '2021-12-23 10:20:27', '2021-12-23 10:20:27'),
(57, 318, 4, '2021-12-23 10:20:27', '2021-12-23 10:20:27'),
(58, 318, 12, '2021-12-23 10:20:27', '2021-12-23 10:20:27'),
(59, 331, 1, '2021-12-23 10:20:39', '2021-12-23 10:20:39'),
(60, 331, 3, '2021-12-23 10:20:39', '2021-12-23 10:20:39'),
(61, 331, 4, '2021-12-23 10:20:39', '2021-12-23 10:20:39'),
(62, 331, 13, '2021-12-23 10:20:39', '2021-12-23 10:20:39'),
(63, 358, 1, '2021-12-23 10:20:51', '2021-12-23 10:20:51'),
(64, 358, 4, '2021-12-23 10:20:51', '2021-12-23 10:20:51'),
(65, 358, 12, '2021-12-23 10:20:51', '2021-12-23 10:20:51'),
(66, 358, 13, '2021-12-23 10:20:51', '2021-12-23 10:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `k13_tgl_raport`
--

CREATE TABLE `k13_tgl_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `k13_tgl_raport`
--

INSERT INTO `k13_tgl_raport` (`id`, `tapel_id`, `tempat_penerbitan`, `tanggal_pembagian`, `created_at`, `updated_at`) VALUES
(4, 1, 'Tambakboyo', '2021-12-23', '2022-01-01 09:08:08', '2022-01-01 09:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_siswa`
--

CREATE TABLE `kehadiran_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `tanpa_keterangan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran_siswa`
--

INSERT INTO `kehadiran_siswa` (`id`, `anggota_kelas_id`, `sakit`, `izin`, `tanpa_keterangan`, `created_at`, `updated_at`) VALUES
(1, 97, 2, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:48:09'),
(2, 98, 2, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:48:09'),
(3, 99, 0, 1, 0, '2021-12-21 18:43:55', '2021-12-21 18:48:09'),
(4, 100, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(5, 101, 0, 2, 0, '2021-12-21 18:43:55', '2021-12-21 18:48:09'),
(6, 102, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(7, 103, 0, 0, 3, '2021-12-21 18:43:55', '2021-12-21 18:48:09'),
(8, 104, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(9, 105, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(10, 106, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(11, 107, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(12, 108, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(13, 109, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(14, 110, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(15, 111, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(16, 112, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(17, 113, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(18, 114, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(19, 115, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(20, 116, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(21, 117, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(22, 118, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(23, 119, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(24, 120, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(25, 121, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(26, 122, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(27, 123, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(28, 124, 0, 0, 0, '2021-12-21 18:43:55', '2021-12-21 18:43:55'),
(29, 125, 0, 0, 5, '2021-12-21 18:43:55', '2021-12-21 18:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `tingkatan_kelas` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tapel_id`, `guru_id`, `tingkatan_kelas`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(9, 1, 61, '7', 'VII-A', '2021-11-13 14:22:20', '2021-11-15 12:48:33'),
(10, 1, 63, '7', 'VII-B', '2021-11-13 14:22:33', '2021-11-15 12:48:49'),
(11, 1, 64, '8', 'VIII', '2021-11-13 14:22:44', '2021-11-15 12:49:00'),
(12, 1, 58, '9', 'IX A', '2021-11-13 14:23:02', '2021-11-15 12:49:15'),
(13, 1, 57, '9', 'IX-B', '2021-11-13 14:23:15', '2021-11-15 12:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `kenaikan_kelas`
--

CREATE TABLE `kenaikan_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `keputusan` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_tujuan` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_bobot_penilaian`
--

CREATE TABLE `ktsp_bobot_penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `bobot_tugas` int(11) NOT NULL,
  `bobot_uh` int(11) NOT NULL,
  `bobot_uts` int(11) NOT NULL,
  `bobot_uas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_bobot_penilaian`
--

INSERT INTO `ktsp_bobot_penilaian` (`id`, `pembelajaran_id`, `bobot_tugas`, `bobot_uh`, `bobot_uts`, `bobot_uas`, `created_at`, `updated_at`) VALUES
(1, 293, 1, 2, 1, 1, '2022-01-03 12:29:42', '2022-01-03 12:33:16'),
(2, 306, 1, 2, 1, 1, '2022-01-03 12:30:53', '2022-01-03 12:30:53'),
(3, 319, 1, 2, 1, 1, '2022-01-03 12:44:05', '2022-01-03 12:44:05'),
(4, 332, 1, 2, 1, 1, '2022-01-03 12:44:10', '2022-01-03 12:44:10'),
(5, 304, 1, 2, 1, 1, '2022-01-04 05:17:34', '2022-01-04 05:17:34'),
(6, 305, 1, 2, 1, 1, '2022-01-04 05:17:42', '2022-01-04 05:17:42'),
(7, 296, 1, 2, 1, 1, '2022-01-04 06:05:50', '2022-01-04 06:05:50'),
(8, 294, 1, 2, 1, 1, '2022-01-04 06:22:08', '2022-01-04 06:22:08'),
(9, 297, 1, 2, 1, 1, '2022-01-04 06:22:16', '2022-01-04 06:22:16'),
(10, 291, 1, 2, 1, 1, '2022-01-07 12:55:08', '2022-01-07 12:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_deskripsi_nilai_siswa`
--

CREATE TABLE `ktsp_deskripsi_nilai_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `ktsp_nilai_akhir_raport_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_deskripsi_nilai_siswa`
--

INSERT INTO `ktsp_deskripsi_nilai_siswa` (`id`, `pembelajaran_id`, `ktsp_nilai_akhir_raport_id`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 293, 1, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(2, 293, 2, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(3, 293, 3, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(4, 293, 4, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(5, 293, 5, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(6, 293, 6, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(7, 293, 7, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(8, 293, 8, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(9, 293, 9, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(10, 293, 10, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(11, 293, 11, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(12, 293, 12, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(13, 293, 13, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(14, 293, 14, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(15, 293, 15, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(16, 293, 16, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(17, 293, 17, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(18, 293, 18, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(19, 293, 19, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(20, 293, 20, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(21, 293, 21, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(22, 293, 22, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(23, 293, 23, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(24, 293, 24, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(25, 293, 25, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(26, 293, 26, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:39:25'),
(27, 293, 27, 'Lulus', '2022-01-03 16:39:25', '2022-01-03 16:40:55'),
(28, 306, 28, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(29, 306, 29, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(30, 306, 30, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(31, 306, 31, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(32, 306, 32, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(33, 306, 33, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(34, 306, 34, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(35, 306, 35, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(36, 306, 36, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(37, 306, 37, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(38, 306, 38, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(39, 306, 39, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(40, 306, 40, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(41, 306, 41, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(42, 306, 42, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(43, 306, 43, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(44, 306, 44, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(45, 306, 45, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(46, 306, 46, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(47, 306, 47, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(48, 306, 48, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(49, 306, 49, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(50, 306, 50, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(51, 306, 51, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(52, 306, 52, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(53, 306, 53, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(54, 306, 54, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(55, 306, 55, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(56, 306, 56, 'Tuntas', '2022-01-04 05:16:37', '2022-01-04 05:16:37'),
(57, 304, 57, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(58, 304, 58, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(59, 304, 59, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(60, 304, 60, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(61, 304, 61, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(62, 304, 62, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(63, 304, 63, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(64, 304, 64, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(65, 304, 65, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(66, 304, 66, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(67, 304, 67, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(68, 304, 68, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(69, 304, 69, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(70, 304, 70, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(71, 304, 71, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(72, 304, 72, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(73, 304, 73, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(74, 304, 74, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(75, 304, 75, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(76, 304, 76, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(77, 304, 77, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(78, 304, 78, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(79, 304, 79, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(80, 304, 80, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(81, 304, 81, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(82, 304, 82, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(83, 304, 83, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(84, 304, 84, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(85, 304, 85, 'Lulus', '2022-01-04 05:24:36', '2022-01-04 05:24:36'),
(86, 305, 86, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(87, 305, 87, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(88, 305, 88, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(89, 305, 89, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(90, 305, 90, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(91, 305, 91, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(92, 305, 92, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(93, 305, 93, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(94, 305, 94, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(95, 305, 95, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(96, 305, 96, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(97, 305, 97, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(98, 305, 98, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(99, 305, 99, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(100, 305, 100, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(101, 305, 101, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(102, 305, 102, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(103, 305, 103, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(104, 305, 104, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(105, 305, 105, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(106, 305, 106, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(107, 305, 107, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(108, 305, 108, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(109, 305, 109, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(110, 305, 110, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(111, 305, 111, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(112, 305, 112, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(113, 305, 113, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(114, 305, 114, 'Lulus', '2022-01-04 05:25:15', '2022-01-04 05:25:15'),
(115, 296, 115, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(116, 296, 116, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(117, 296, 117, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(118, 296, 118, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(119, 296, 119, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(120, 296, 120, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(121, 296, 121, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(122, 296, 122, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(123, 296, 123, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(124, 296, 124, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(125, 296, 125, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(126, 296, 126, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(127, 296, 127, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(128, 296, 128, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(129, 296, 129, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(130, 296, 130, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(131, 296, 131, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(132, 296, 132, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(133, 296, 133, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(134, 296, 134, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(135, 296, 135, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(136, 296, 136, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(137, 296, 137, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(138, 296, 138, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(139, 296, 139, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(140, 296, 140, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(141, 296, 141, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(142, 296, 142, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(143, 296, 143, 'Tuntas', '2022-01-04 06:17:27', '2022-01-04 06:17:27'),
(144, 294, 144, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(145, 294, 145, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(146, 294, 146, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(147, 294, 147, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(148, 294, 148, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(149, 294, 149, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(150, 294, 150, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(151, 294, 151, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(152, 294, 152, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(153, 294, 153, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(154, 294, 154, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(155, 294, 155, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(156, 294, 156, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(157, 294, 157, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(158, 294, 158, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(159, 294, 159, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(160, 294, 160, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(161, 294, 161, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(162, 294, 162, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(163, 294, 163, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(164, 294, 164, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(165, 294, 165, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(166, 294, 166, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(167, 294, 167, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(168, 294, 168, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(169, 294, 169, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(170, 294, 170, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(171, 294, 171, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(172, 294, 172, 'Lulus', '2022-01-04 06:28:11', '2022-01-04 06:28:11'),
(173, 297, 173, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(174, 297, 174, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(175, 297, 175, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(176, 297, 176, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(177, 297, 177, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(178, 297, 178, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(179, 297, 179, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(180, 297, 180, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(181, 297, 181, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(182, 297, 182, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(183, 297, 183, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(184, 297, 184, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(185, 297, 185, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(186, 297, 186, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(187, 297, 187, 'Tuntas', '2022-01-04 06:28:50', '2022-01-04 06:28:50'),
(188, 297, 188, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(189, 297, 189, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(190, 297, 190, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(191, 297, 191, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(192, 297, 192, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(193, 297, 193, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(194, 297, 194, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(195, 297, 195, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(196, 297, 196, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(197, 297, 197, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(198, 297, 198, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(199, 297, 199, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(200, 297, 200, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(201, 297, 201, 'Tuntas', '2022-01-04 06:28:51', '2022-01-04 06:28:51'),
(202, 291, 202, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(203, 291, 203, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(204, 291, 204, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(205, 291, 205, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(206, 291, 206, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(207, 291, 207, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(208, 291, 208, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(209, 291, 209, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(210, 291, 210, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(211, 291, 211, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(212, 291, 212, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(213, 291, 213, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(214, 291, 214, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(215, 291, 215, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(216, 291, 216, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(217, 291, 217, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(218, 291, 218, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(219, 291, 219, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(220, 291, 220, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(221, 291, 221, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(222, 291, 222, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(223, 291, 223, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(224, 291, 224, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(225, 291, 225, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(226, 291, 226, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(227, 291, 227, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52'),
(228, 291, 228, 'Lulus', '2022-01-07 12:55:52', '2022-01-07 12:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_kkm_mapel`
--

CREATE TABLE `ktsp_kkm_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_kkm_mapel`
--

INSERT INTO `ktsp_kkm_mapel` (`id`, `mapel_id`, `kelas_id`, `kkm`, `created_at`, `updated_at`) VALUES
(3, 32, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(4, 44, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(5, 43, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(6, 42, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(7, 41, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(8, 40, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(9, 39, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(10, 38, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(11, 37, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(12, 36, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(13, 35, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(14, 34, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(15, 33, 9, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(16, 40, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(17, 41, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(18, 42, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(19, 43, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(20, 44, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(21, 39, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(22, 38, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(23, 37, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(24, 36, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(25, 35, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(26, 34, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(27, 33, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(28, 32, 10, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(29, 40, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(30, 41, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(31, 42, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(32, 44, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(33, 39, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(34, 38, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(35, 37, 11, 70, '2022-01-02 13:03:59', '2022-01-02 13:03:59'),
(36, 36, 11, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(37, 35, 11, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(38, 34, 11, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(39, 33, 11, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(40, 32, 11, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(41, 40, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(42, 41, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(43, 42, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(44, 43, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(45, 44, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(46, 39, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(47, 38, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(48, 37, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(49, 36, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(50, 35, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(51, 34, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(52, 33, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(53, 32, 12, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(54, 39, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(55, 40, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(56, 41, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(57, 42, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(58, 43, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(59, 38, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(60, 37, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(61, 36, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(62, 35, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(63, 34, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(64, 33, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(65, 32, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(66, 44, 13, 70, '2022-01-02 13:04:00', '2022-01-02 13:04:00'),
(67, 43, 11, 70, '2022-01-03 10:57:09', '2022-01-03 10:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_mapping_mapel`
--

CREATE TABLE `ktsp_mapping_mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelompok` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_urut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_mapping_mapel`
--

INSERT INTO `ktsp_mapping_mapel` (`id`, `mapel_id`, `kelompok`, `nomor_urut`, `created_at`, `updated_at`) VALUES
(1, 32, '3', 2, '2022-01-02 12:33:27', '2022-01-04 06:30:51'),
(2, 33, '1', 3, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(3, 34, '1', 4, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(4, 35, '3', 1, '2022-01-02 12:33:27', '2022-01-04 06:30:33'),
(5, 36, '1', 5, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(6, 37, '1', 6, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(7, 38, '1', 7, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(8, 39, '1', 1, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(9, 40, '1', 8, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(10, 41, '1', 2, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(11, 42, '1', 9, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(12, 43, '1', 10, '2022-01-02 12:33:27', '2022-01-02 12:33:27'),
(13, 44, '2', 1, '2022-01-02 12:33:27', '2022-01-02 12:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_akhir_raport`
--

CREATE TABLE `ktsp_nilai_akhir_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `kkm` int(11) NOT NULL,
  `nilai_akhir` int(11) NOT NULL,
  `predikat` enum('A','B','C','D') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_nilai_akhir_raport`
--

INSERT INTO `ktsp_nilai_akhir_raport` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `kkm`, `nilai_akhir`, `predikat`, `created_at`, `updated_at`) VALUES
(1, 293, 70, 70, 80, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(2, 293, 71, 70, 82, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(3, 293, 72, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(4, 293, 73, 70, 82, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(5, 293, 74, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(6, 293, 75, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(7, 293, 76, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(8, 293, 77, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(9, 293, 78, 70, 87, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(10, 293, 79, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(11, 293, 80, 70, 86, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(12, 293, 81, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(13, 293, 82, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(14, 293, 83, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(15, 293, 84, 70, 87, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(16, 293, 85, 70, 88, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(17, 293, 86, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(18, 293, 88, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(19, 293, 87, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(20, 293, 89, 70, 86, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(21, 293, 90, 70, 87, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(22, 293, 91, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(23, 293, 92, 70, 84, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(24, 293, 93, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(25, 293, 94, 70, 84, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(26, 293, 95, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(27, 293, 96, 70, 85, 'B', '2022-01-03 15:57:37', '2022-01-03 15:57:37'),
(28, 306, 97, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(29, 306, 98, 70, 82, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(30, 306, 99, 70, 80, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(31, 306, 100, 70, 85, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(32, 306, 101, 70, 84, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(33, 306, 102, 70, 89, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(34, 306, 103, 70, 85, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(35, 306, 104, 70, 83, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(36, 306, 105, 70, 83, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(37, 306, 106, 70, 84, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(38, 306, 107, 70, 84, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(39, 306, 108, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(40, 306, 109, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(41, 306, 110, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(42, 306, 111, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(43, 306, 112, 70, 84, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(44, 306, 113, 70, 83, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(45, 306, 114, 70, 81, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(46, 306, 115, 70, 83, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(47, 306, 116, 70, 87, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(48, 306, 117, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(49, 306, 118, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(50, 306, 119, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(51, 306, 120, 70, 85, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(52, 306, 121, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(53, 306, 122, 70, 85, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(54, 306, 123, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(55, 306, 124, 70, 85, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(56, 306, 125, 70, 86, 'B', '2022-01-03 16:39:47', '2022-01-03 16:39:47'),
(57, 304, 97, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(58, 304, 98, 70, 77, 'C', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(59, 304, 99, 70, 90, 'A', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(60, 304, 100, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(61, 304, 101, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(62, 304, 102, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(63, 304, 103, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(64, 304, 104, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(65, 304, 105, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(66, 304, 106, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:08'),
(67, 304, 107, 70, 87, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(68, 304, 108, 70, 88, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(69, 304, 109, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(70, 304, 110, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(71, 304, 111, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(72, 304, 112, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(73, 304, 113, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(74, 304, 114, 70, 84, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(75, 304, 115, 70, 82, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(76, 304, 116, 70, 87, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(77, 304, 117, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(78, 304, 118, 70, 83, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(79, 304, 119, 70, 84, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(80, 304, 120, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(81, 304, 121, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(82, 304, 122, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 05:23:09'),
(83, 304, 123, 70, 85, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(84, 304, 124, 70, 86, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(85, 304, 125, 70, 87, 'B', '2022-01-04 05:23:09', '2022-01-04 06:19:09'),
(86, 305, 97, 70, 89, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(87, 305, 98, 70, 83, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(88, 305, 99, 70, 86, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(89, 305, 100, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 05:23:41'),
(90, 305, 101, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(91, 305, 102, 70, 86, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(92, 305, 103, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 05:23:41'),
(93, 305, 104, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(94, 305, 105, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(95, 305, 106, 70, 86, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(96, 305, 107, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(97, 305, 108, 70, 86, 'B', '2022-01-04 05:23:41', '2022-01-04 05:23:41'),
(98, 305, 109, 70, 85, 'B', '2022-01-04 05:23:41', '2022-01-04 06:19:41'),
(99, 305, 110, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(100, 305, 111, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(101, 305, 112, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(102, 305, 113, 70, 84, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(103, 305, 114, 70, 86, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(104, 305, 115, 70, 87, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(105, 305, 116, 70, 81, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(106, 305, 117, 70, 81, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(107, 305, 118, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(108, 305, 119, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(109, 305, 120, 70, 86, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(110, 305, 121, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(111, 305, 122, 70, 84, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(112, 305, 123, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(113, 305, 124, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 05:23:42'),
(114, 305, 125, 70, 85, 'B', '2022-01-04 05:23:42', '2022-01-04 06:19:41'),
(115, 296, 97, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(116, 296, 98, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(117, 296, 99, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(118, 296, 100, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(119, 296, 101, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(120, 296, 102, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(121, 296, 103, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(122, 296, 104, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(123, 296, 105, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(124, 296, 106, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(125, 296, 107, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(126, 296, 108, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(127, 296, 109, 70, 71, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(128, 296, 110, 70, 71, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(129, 296, 111, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(130, 296, 112, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(131, 296, 113, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(132, 296, 114, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(133, 296, 115, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(134, 296, 116, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(135, 296, 117, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(136, 296, 118, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(137, 296, 119, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(138, 296, 120, 70, 72, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(139, 296, 121, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(140, 296, 122, 70, 74, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(141, 296, 123, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(142, 296, 124, 70, 73, 'C', '2022-01-04 06:16:14', '2022-01-04 06:16:14'),
(143, 296, 125, 70, 75, 'C', '2022-01-04 06:16:15', '2022-01-04 06:16:15'),
(144, 294, 97, 70, 77, 'C', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(145, 294, 98, 70, 79, 'C', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(146, 294, 99, 70, 77, 'C', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(147, 294, 100, 70, 80, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(148, 294, 101, 70, 79, 'C', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(149, 294, 102, 70, 82, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(150, 294, 103, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(151, 294, 104, 70, 84, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(152, 294, 105, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(153, 294, 106, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(154, 294, 107, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(155, 294, 108, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(156, 294, 109, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(157, 294, 110, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(158, 294, 111, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(159, 294, 112, 70, 83, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(160, 294, 113, 70, 87, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(161, 294, 114, 70, 88, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(162, 294, 115, 70, 81, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(163, 294, 116, 70, 81, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(164, 294, 117, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(165, 294, 118, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(166, 294, 119, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(167, 294, 120, 70, 85, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(168, 294, 121, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(169, 294, 122, 70, 84, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(170, 294, 123, 70, 83, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(171, 294, 124, 70, 82, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(172, 294, 125, 70, 86, 'B', '2022-01-04 06:27:20', '2022-01-04 06:27:20'),
(173, 297, 97, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(174, 297, 98, 70, 82, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(175, 297, 99, 70, 82, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(176, 297, 100, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(177, 297, 101, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(178, 297, 102, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(179, 297, 103, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(180, 297, 104, 70, 80, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(181, 297, 105, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(182, 297, 106, 70, 77, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(183, 297, 107, 70, 76, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(184, 297, 108, 70, 77, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(185, 297, 109, 70, 79, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(186, 297, 110, 70, 82, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(187, 297, 111, 70, 83, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(188, 297, 112, 70, 84, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(189, 297, 113, 70, 85, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(190, 297, 114, 70, 85, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(191, 297, 115, 70, 87, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(192, 297, 116, 70, 86, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(193, 297, 117, 70, 85, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(194, 297, 118, 70, 83, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(195, 297, 119, 70, 81, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(196, 297, 120, 70, 78, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(197, 297, 121, 70, 78, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(198, 297, 122, 70, 79, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(199, 297, 123, 70, 79, 'C', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(200, 297, 124, 70, 87, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(201, 297, 125, 70, 82, 'B', '2022-01-04 06:27:32', '2022-01-04 06:27:32'),
(202, 291, 70, 70, 80, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(203, 291, 71, 70, 84, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(204, 291, 72, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(205, 291, 73, 70, 89, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(206, 291, 74, 70, 82, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(207, 291, 75, 70, 86, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(208, 291, 76, 70, 84, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(209, 291, 77, 70, 87, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(210, 291, 78, 70, 79, 'C', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(211, 291, 79, 70, 87, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(212, 291, 80, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(213, 291, 81, 70, 86, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(214, 291, 82, 70, 82, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(215, 291, 83, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(216, 291, 84, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(217, 291, 85, 70, 89, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(218, 291, 86, 70, 82, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(219, 291, 88, 70, 84, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(220, 291, 87, 70, 83, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(221, 291, 89, 70, 89, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(222, 291, 90, 70, 86, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(223, 291, 91, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(224, 291, 92, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(225, 291, 93, 70, 89, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(226, 291, 94, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(227, 291, 95, 70, 85, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31'),
(228, 291, 96, 70, 88, 'B', '2022-01-07 12:55:31', '2022-01-07 12:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_tugas`
--

CREATE TABLE `ktsp_nilai_tugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_nilai_tugas`
--

INSERT INTO `ktsp_nilai_tugas` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 293, 70, 80, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(2, 293, 71, 70, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(3, 293, 72, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(4, 293, 73, 86, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(5, 293, 74, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(6, 293, 75, 86, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(7, 293, 76, 95, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(8, 293, 77, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(9, 293, 78, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(10, 293, 79, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(11, 293, 80, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(12, 293, 81, 86, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(13, 293, 82, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(14, 293, 83, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(15, 293, 84, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(16, 293, 85, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(17, 293, 86, 84, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(18, 293, 88, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(19, 293, 87, 86, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(20, 293, 89, 86, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(21, 293, 90, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(22, 293, 91, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(23, 293, 92, 78, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(24, 293, 93, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(25, 293, 94, 79, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(26, 293, 95, 85, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(27, 293, 96, 96, '2022-01-03 13:11:41', '2022-01-03 13:11:41'),
(28, 306, 97, 78, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(29, 306, 98, 79, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(30, 306, 99, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(31, 306, 100, 95, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(32, 306, 101, 96, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(33, 306, 102, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(34, 306, 103, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(35, 306, 104, 78, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(36, 306, 105, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(37, 306, 106, 78, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(38, 306, 107, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(39, 306, 108, 87, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(40, 306, 109, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(41, 306, 110, 89, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(42, 306, 111, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(43, 306, 112, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(44, 306, 113, 86, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(45, 306, 114, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(46, 306, 115, 84, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(47, 306, 116, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(48, 306, 117, 86, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(49, 306, 118, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(50, 306, 119, 98, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(51, 306, 120, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(52, 306, 121, 86, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(53, 306, 122, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(54, 306, 123, 86, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(55, 306, 124, 85, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(56, 306, 125, 86, '2022-01-03 13:12:31', '2022-01-03 13:12:31'),
(57, 304, 97, 75, '2022-01-04 05:18:45', '2022-01-04 06:01:49'),
(58, 304, 98, 76, '2022-01-04 05:18:45', '2022-01-04 06:01:49'),
(59, 304, 99, 87, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(60, 304, 100, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(61, 304, 101, 86, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(62, 304, 102, 89, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(63, 304, 103, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(64, 304, 104, 87, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(65, 304, 105, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(66, 304, 106, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(67, 304, 107, 96, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(68, 304, 108, 95, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(69, 304, 109, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(70, 304, 110, 82, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(71, 304, 111, 83, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(72, 304, 112, 86, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(73, 304, 113, 84, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(74, 304, 114, 75, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(75, 304, 115, 75, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(76, 304, 116, 84, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(77, 304, 117, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(78, 304, 118, 86, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(79, 304, 119, 78, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(80, 304, 120, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(81, 304, 121, 89, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(82, 304, 122, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(83, 304, 123, 86, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(84, 304, 124, 85, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(85, 304, 125, 86, '2022-01-04 05:18:45', '2022-01-04 05:18:45'),
(86, 305, 97, 75, '2022-01-04 05:19:21', '2022-01-04 06:03:23'),
(87, 305, 98, 74, '2022-01-04 05:19:21', '2022-01-04 06:03:23'),
(88, 305, 99, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(89, 305, 100, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(90, 305, 101, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(91, 305, 102, 87, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(92, 305, 103, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(93, 305, 104, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(94, 305, 105, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(95, 305, 106, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(96, 305, 107, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(97, 305, 108, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(98, 305, 109, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(99, 305, 110, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(100, 305, 111, 84, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(101, 305, 112, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(102, 305, 113, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(103, 305, 114, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(104, 305, 115, 89, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(105, 305, 116, 78, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(106, 305, 117, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(107, 305, 118, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(108, 305, 119, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(109, 305, 120, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(110, 305, 121, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(111, 305, 122, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(112, 305, 123, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(113, 305, 124, 86, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(114, 305, 125, 85, '2022-01-04 05:19:21', '2022-01-04 05:19:21'),
(115, 296, 97, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(116, 296, 98, 74, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(117, 296, 99, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(118, 296, 100, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(119, 296, 101, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(120, 296, 102, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(121, 296, 103, 70, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(122, 296, 104, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(123, 296, 105, 74, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(124, 296, 106, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(125, 296, 107, 74, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(126, 296, 108, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(127, 296, 109, 71, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(128, 296, 110, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(129, 296, 111, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(130, 296, 112, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(131, 296, 113, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(132, 296, 114, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(133, 296, 115, 76, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(134, 296, 116, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(135, 296, 117, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(136, 296, 118, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(137, 296, 119, 71, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(138, 296, 120, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(139, 296, 121, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(140, 296, 122, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(141, 296, 123, 71, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(142, 296, 124, 72, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(143, 296, 125, 75, '2022-01-04 06:06:33', '2022-01-04 06:06:33'),
(144, 294, 97, 75, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(145, 294, 98, 75, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(146, 294, 99, 74, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(147, 294, 100, 75, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(148, 294, 101, 74, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(149, 294, 102, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(150, 294, 103, 84, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(151, 294, 104, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(152, 294, 105, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(153, 294, 106, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(154, 294, 107, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(155, 294, 108, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(156, 294, 109, 84, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(157, 294, 110, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(158, 294, 111, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(159, 294, 112, 82, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(160, 294, 113, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(161, 294, 114, 87, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(162, 294, 115, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(163, 294, 116, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(164, 294, 117, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(165, 294, 118, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(166, 294, 119, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(167, 294, 120, 84, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(168, 294, 121, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(169, 294, 122, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(170, 294, 123, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(171, 294, 124, 86, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(172, 294, 125, 85, '2022-01-04 06:22:51', '2022-01-04 06:22:51'),
(173, 297, 97, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(174, 297, 98, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(175, 297, 99, 89, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(176, 297, 100, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(177, 297, 101, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(178, 297, 102, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(179, 297, 103, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(180, 297, 104, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(181, 297, 105, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(182, 297, 106, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(183, 297, 107, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(184, 297, 108, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(185, 297, 109, 95, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(186, 297, 110, 96, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(187, 297, 111, 96, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(188, 297, 112, 95, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(189, 297, 113, 96, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(190, 297, 114, 96, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(191, 297, 115, 96, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(192, 297, 116, 95, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(193, 297, 117, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(194, 297, 118, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(195, 297, 119, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(196, 297, 120, 75, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(197, 297, 121, 78, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(198, 297, 122, 75, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(199, 297, 123, 78, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(200, 297, 124, 85, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(201, 297, 125, 86, '2022-01-04 06:23:26', '2022-01-04 06:23:26'),
(202, 317, 126, 70, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(203, 317, 127, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(204, 317, 128, 96, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(205, 317, 129, 78, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(206, 317, 130, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(207, 317, 131, 82, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(208, 317, 132, 70, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(209, 317, 133, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(210, 317, 134, 96, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(211, 317, 135, 78, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(212, 317, 137, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(213, 317, 138, 82, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(214, 317, 139, 70, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(215, 317, 140, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(216, 317, 141, 96, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(217, 317, 142, 78, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(218, 317, 143, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(219, 317, 144, 82, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(220, 317, 136, 70, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(221, 317, 145, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(222, 317, 147, 96, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(223, 317, 148, 78, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(224, 317, 149, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(225, 317, 150, 82, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(226, 317, 151, 96, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(227, 317, 146, 78, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(228, 317, 152, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(229, 317, 153, 82, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(230, 317, 154, 85, '2022-01-07 12:17:36', '2022-01-07 12:17:36'),
(231, 291, 70, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(232, 291, 71, 86, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(233, 291, 72, 84, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(234, 291, 73, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(235, 291, 74, 86, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(236, 291, 75, 87, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(237, 291, 76, 78, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(238, 291, 77, 78, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(239, 291, 78, 75, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(240, 291, 79, 86, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(241, 291, 80, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(242, 291, 81, 84, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(243, 291, 82, 86, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(244, 291, 83, 84, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(245, 291, 84, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(246, 291, 85, 86, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(247, 291, 86, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(248, 291, 88, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(249, 291, 87, 78, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(250, 291, 89, 78, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(251, 291, 90, 95, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(252, 291, 91, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(253, 291, 92, 84, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(254, 291, 93, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(255, 291, 94, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(256, 291, 95, 85, '2022-01-07 12:54:55', '2022-01-07 12:54:55'),
(257, 291, 96, 84, '2022-01-07 12:54:55', '2022-01-07 12:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_uh`
--

CREATE TABLE `ktsp_nilai_uh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_nilai_uh`
--

INSERT INTO `ktsp_nilai_uh` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 293, 70, 78, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(2, 293, 71, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(3, 293, 72, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(4, 293, 73, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(5, 293, 74, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(6, 293, 75, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(7, 293, 76, 89, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(8, 293, 77, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(9, 293, 78, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(10, 293, 79, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(11, 293, 80, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(12, 293, 81, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(13, 293, 82, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(14, 293, 83, 87, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(15, 293, 84, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(16, 293, 85, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(17, 293, 86, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(18, 293, 88, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(19, 293, 87, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(20, 293, 89, 86, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(21, 293, 90, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(22, 293, 91, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(23, 293, 92, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(24, 293, 93, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(25, 293, 94, 85, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(26, 293, 95, 89, '2022-01-03 13:48:18', '2022-01-03 13:52:36'),
(27, 293, 96, 74, '2022-01-03 13:48:18', '2022-01-03 13:48:18'),
(28, 306, 97, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(29, 306, 98, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(30, 306, 99, 84, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(31, 306, 100, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(32, 306, 101, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(33, 306, 102, 95, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(34, 306, 103, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(35, 306, 104, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(36, 306, 105, 84, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(37, 306, 106, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(38, 306, 107, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(39, 306, 108, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(40, 306, 109, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(41, 306, 110, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(42, 306, 111, 87, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(43, 306, 112, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(44, 306, 113, 78, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(45, 306, 114, 78, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(46, 306, 115, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(47, 306, 116, 89, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(48, 306, 117, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(49, 306, 118, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(50, 306, 119, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(51, 306, 120, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(52, 306, 121, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(53, 306, 122, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(54, 306, 123, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(55, 306, 124, 85, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(56, 306, 125, 86, '2022-01-03 13:53:16', '2022-01-03 13:53:16'),
(57, 304, 97, 96, '2022-01-04 05:19:55', '2022-01-04 06:02:15'),
(58, 304, 98, 75, '2022-01-04 05:19:55', '2022-01-04 06:02:15'),
(59, 304, 99, 96, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(60, 304, 100, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(61, 304, 101, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(62, 304, 102, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(63, 304, 103, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(64, 304, 104, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(65, 304, 105, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(66, 304, 106, 84, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(67, 304, 107, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(68, 304, 108, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(69, 304, 109, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(70, 304, 110, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(71, 304, 111, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(72, 304, 112, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(73, 304, 113, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(74, 304, 114, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(75, 304, 115, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(76, 304, 116, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(77, 304, 117, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(78, 304, 118, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(79, 304, 119, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(80, 304, 120, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(81, 304, 121, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(82, 304, 122, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(83, 304, 123, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(84, 304, 124, 86, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(85, 304, 125, 85, '2022-01-04 05:19:55', '2022-01-04 05:19:55'),
(86, 305, 97, 98, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(87, 305, 98, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(88, 305, 99, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(89, 305, 100, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(90, 305, 101, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(91, 305, 102, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(92, 305, 103, 84, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(93, 305, 104, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(94, 305, 105, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(95, 305, 106, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(96, 305, 107, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(97, 305, 108, 87, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(98, 305, 109, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(99, 305, 110, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(100, 305, 111, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(101, 305, 112, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(102, 305, 113, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(103, 305, 114, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(104, 305, 115, 87, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(105, 305, 116, 78, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(106, 305, 117, 74, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(107, 305, 118, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(108, 305, 119, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(109, 305, 120, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(110, 305, 121, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(111, 305, 122, 86, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(112, 305, 123, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(113, 305, 124, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(114, 305, 125, 85, '2022-01-04 05:20:30', '2022-01-04 05:20:30'),
(115, 296, 97, 70, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(116, 296, 98, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(117, 296, 99, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(118, 296, 100, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(119, 296, 101, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(120, 296, 102, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(121, 296, 103, 76, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(122, 296, 104, 74, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(123, 296, 105, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(124, 296, 106, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(125, 296, 107, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(126, 296, 108, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(127, 296, 109, 70, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(128, 296, 110, 70, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(129, 296, 111, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(130, 296, 112, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(131, 296, 113, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(132, 296, 114, 76, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(133, 296, 115, 75, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(134, 296, 116, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(135, 296, 117, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(136, 296, 118, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(137, 296, 119, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(138, 296, 120, 71, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(139, 296, 121, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(140, 296, 122, 73, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(141, 296, 123, 73, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(142, 296, 124, 72, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(143, 296, 125, 75, '2022-01-04 06:07:09', '2022-01-04 06:07:09'),
(144, 294, 97, 78, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(145, 294, 98, 75, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(146, 294, 99, 75, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(147, 294, 100, 76, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(148, 294, 101, 75, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(149, 294, 102, 76, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(150, 294, 103, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(151, 294, 104, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(152, 294, 105, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(153, 294, 106, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(154, 294, 107, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(155, 294, 108, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(156, 294, 109, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(157, 294, 110, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(158, 294, 111, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(159, 294, 112, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(160, 294, 113, 84, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(161, 294, 114, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(162, 294, 115, 75, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(163, 294, 116, 78, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(164, 294, 117, 89, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(165, 294, 118, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(166, 294, 119, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(167, 294, 120, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(168, 294, 121, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(169, 294, 122, 85, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(170, 294, 123, 82, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(171, 294, 124, 82, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(172, 294, 125, 86, '2022-01-04 06:24:25', '2022-01-04 06:24:25'),
(173, 297, 97, 78, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(174, 297, 98, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(175, 297, 99, 74, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(176, 297, 100, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(177, 297, 101, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(178, 297, 102, 78, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(179, 297, 103, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(180, 297, 104, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(181, 297, 105, 74, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(182, 297, 106, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(183, 297, 107, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(184, 297, 108, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(185, 297, 109, 75, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(186, 297, 110, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(187, 297, 111, 86, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(188, 297, 112, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(189, 297, 113, 84, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(190, 297, 114, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(191, 297, 115, 86, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(192, 297, 116, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(193, 297, 117, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(194, 297, 118, 87, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(195, 297, 119, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(196, 297, 120, 84, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(197, 297, 121, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(198, 297, 122, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(199, 297, 123, 86, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(200, 297, 124, 85, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(201, 297, 125, 86, '2022-01-04 06:25:01', '2022-01-04 06:25:01'),
(202, 291, 70, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(203, 291, 71, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(204, 291, 72, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(205, 291, 73, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(206, 291, 74, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(207, 291, 75, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(208, 291, 76, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(209, 291, 77, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(210, 291, 78, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(211, 291, 79, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(212, 291, 80, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(213, 291, 81, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(214, 291, 82, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(215, 291, 83, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(216, 291, 84, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(217, 291, 85, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(218, 291, 86, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(219, 291, 88, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(220, 291, 87, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(221, 291, 89, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(222, 291, 90, 78, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(223, 291, 91, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(224, 291, 92, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(225, 291, 93, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(226, 291, 94, 85, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(227, 291, 95, 86, '2022-01-07 12:32:14', '2022-01-07 12:32:14'),
(228, 291, 96, 95, '2022-01-07 12:32:14', '2022-01-07 12:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_nilai_uts_uas`
--

CREATE TABLE `ktsp_nilai_uts_uas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pembelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_nilai_uts_uas`
--

INSERT INTO `ktsp_nilai_uts_uas` (`id`, `pembelajaran_id`, `anggota_kelas_id`, `nilai_uts`, `nilai_uas`, `created_at`, `updated_at`) VALUES
(1, 293, 70, 78, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(2, 293, 71, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(3, 293, 72, 86, 98, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(4, 293, 73, 78, 78, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(5, 293, 74, 85, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(6, 293, 75, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(7, 293, 76, 84, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(8, 293, 77, 87, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(9, 293, 78, 89, 87, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(10, 293, 79, 85, 89, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(11, 293, 80, 85, 86, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(12, 293, 81, 85, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(13, 293, 82, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(14, 293, 83, 84, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(15, 293, 84, 85, 86, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(16, 293, 85, 85, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(17, 293, 86, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(18, 293, 88, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(19, 293, 87, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(20, 293, 89, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(21, 293, 90, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(22, 293, 91, 85, 86, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(23, 293, 92, 85, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(24, 293, 93, 86, 85, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(25, 293, 94, 85, 86, '2022-01-03 14:17:14', '2022-01-03 14:17:14'),
(26, 293, 95, 75, 86, '2022-01-03 14:17:14', '2022-01-03 14:22:36'),
(27, 293, 96, 95, 85, '2022-01-03 14:17:14', '2022-01-03 14:22:36'),
(28, 306, 97, 85, 98, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(29, 306, 98, 75, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(30, 306, 99, 74, 75, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(31, 306, 100, 76, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(32, 306, 101, 78, 74, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(33, 306, 102, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(34, 306, 103, 85, 84, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(35, 306, 104, 78, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(36, 306, 105, 85, 76, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(37, 306, 106, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(38, 306, 107, 85, 78, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(39, 306, 108, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(40, 306, 109, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(41, 306, 110, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(42, 306, 111, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(43, 306, 112, 85, 82, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(44, 306, 113, 86, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(45, 306, 114, 78, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(46, 306, 115, 78, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(47, 306, 116, 89, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(48, 306, 117, 89, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(49, 306, 118, 86, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(50, 306, 119, 86, 78, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(51, 306, 120, 85, 87, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(52, 306, 121, 85, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(53, 306, 122, 86, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(54, 306, 123, 87, 85, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(55, 306, 124, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(56, 306, 125, 85, 86, '2022-01-03 14:23:40', '2022-01-03 14:23:40'),
(57, 304, 97, 75, 89, '2022-01-04 05:21:25', '2022-01-04 06:02:40'),
(58, 304, 98, 85, 75, '2022-01-04 05:21:25', '2022-01-04 06:02:40'),
(59, 304, 99, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(60, 304, 100, 85, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(61, 304, 101, 84, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(62, 304, 102, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(63, 304, 103, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(64, 304, 104, 85, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(65, 304, 105, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(66, 304, 106, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(67, 304, 107, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(68, 304, 108, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(69, 304, 109, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(70, 304, 110, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(71, 304, 111, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(72, 304, 112, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(73, 304, 113, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(74, 304, 114, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(75, 304, 115, 87, 78, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(76, 304, 116, 85, 95, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(77, 304, 117, 85, 84, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(78, 304, 118, 85, 75, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(79, 304, 119, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(80, 304, 120, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(81, 304, 121, 85, 86, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(82, 304, 122, 85, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(83, 304, 123, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(84, 304, 124, 86, 85, '2022-01-04 05:21:25', '2022-01-04 05:21:25'),
(85, 304, 125, 85, 92, '2022-01-04 05:21:25', '2022-01-04 05:21:42'),
(86, 305, 97, 89, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(87, 305, 98, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(88, 305, 99, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(89, 305, 100, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(90, 305, 101, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(91, 305, 102, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(92, 305, 103, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(93, 305, 104, 86, 84, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(94, 305, 105, 87, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(95, 305, 106, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(96, 305, 107, 85, 82, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(97, 305, 108, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(98, 305, 109, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(99, 305, 110, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(100, 305, 111, 84, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(101, 305, 112, 87, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(102, 305, 113, 78, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(103, 305, 114, 85, 89, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(104, 305, 115, 85, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(105, 305, 116, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(106, 305, 117, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(107, 305, 118, 86, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(108, 305, 119, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(109, 305, 120, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(110, 305, 121, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(111, 305, 122, 78, 85, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(112, 305, 123, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(113, 305, 124, 85, 86, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(114, 305, 125, 85, 87, '2022-01-04 05:22:44', '2022-01-04 05:22:44'),
(115, 296, 97, 75, 74, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(116, 296, 98, 75, 76, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(117, 296, 99, 75, 74, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(118, 296, 100, 75, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(119, 296, 101, 71, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(120, 296, 102, 76, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(121, 296, 103, 71, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(122, 296, 104, 76, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(123, 296, 105, 75, 76, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(124, 296, 106, 74, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(125, 296, 107, 72, 71, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(126, 296, 108, 72, 73, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(127, 296, 109, 72, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(128, 296, 110, 71, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(129, 296, 111, 75, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(130, 296, 112, 72, 71, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(131, 296, 113, 72, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(132, 296, 114, 72, 73, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(133, 296, 115, 72, 73, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(134, 296, 116, 72, 73, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(135, 296, 117, 72, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(136, 296, 118, 73, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(137, 296, 119, 72, 71, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(138, 296, 120, 72, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(139, 296, 121, 72, 72, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(140, 296, 122, 75, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(141, 296, 123, 75, 74, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(142, 296, 124, 75, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(143, 296, 125, 74, 75, '2022-01-04 06:07:59', '2022-01-04 06:07:59'),
(144, 294, 97, 78, 75, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(145, 294, 98, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(146, 294, 99, 78, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(147, 294, 100, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(148, 294, 101, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(149, 294, 102, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(150, 294, 103, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(151, 294, 104, 85, 78, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(152, 294, 105, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(153, 294, 106, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(154, 294, 107, 84, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(155, 294, 108, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(156, 294, 109, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(157, 294, 110, 86, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(158, 294, 111, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(159, 294, 112, 85, 78, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(160, 294, 113, 85, 95, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(161, 294, 114, 96, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(162, 294, 115, 84, 85, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(163, 294, 116, 78, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(164, 294, 117, 85, 84, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(165, 294, 118, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(166, 294, 119, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(167, 294, 120, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(168, 294, 121, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(169, 294, 122, 85, 78, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(170, 294, 123, 78, 89, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(171, 294, 124, 80, 78, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(172, 294, 125, 85, 86, '2022-01-04 06:25:59', '2022-01-04 06:25:59'),
(173, 297, 97, 78, 85, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(174, 297, 98, 85, 89, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(175, 297, 99, 85, 87, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(176, 297, 100, 85, 86, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(177, 297, 101, 85, 84, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(178, 297, 102, 85, 78, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(179, 297, 103, 87, 82, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(180, 297, 104, 86, 78, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(181, 297, 105, 87, 85, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(182, 297, 106, 78, 70, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(183, 297, 107, 72, 71, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(184, 297, 108, 73, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(185, 297, 109, 74, 76, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(186, 297, 110, 71, 72, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(187, 297, 111, 73, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(188, 297, 112, 78, 78, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(189, 297, 113, 85, 74, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(190, 297, 114, 85, 76, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(191, 297, 115, 85, 84, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(192, 297, 116, 82, 83, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(193, 297, 117, 85, 86, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(194, 297, 118, 75, 78, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(195, 297, 119, 74, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(196, 297, 120, 74, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(197, 297, 121, 71, 72, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(198, 297, 122, 75, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(199, 297, 123, 70, 76, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(200, 297, 124, 85, 95, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(201, 297, 125, 75, 75, '2022-01-04 06:27:02', '2022-01-04 06:27:02'),
(202, 291, 70, 75, 85, '2022-01-07 12:46:55', '2022-01-07 12:46:55'),
(203, 291, 71, 82, 84, '2022-01-07 12:46:55', '2022-01-07 12:46:55'),
(204, 291, 72, 86, 82, '2022-01-07 12:46:55', '2022-01-07 12:46:55'),
(205, 291, 73, 84, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(206, 291, 74, 85, 84, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(207, 291, 75, 86, 85, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(208, 291, 76, 82, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(209, 291, 77, 83, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(210, 291, 78, 82, 83, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(211, 291, 79, 95, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(212, 291, 80, 75, 95, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(213, 291, 81, 82, 75, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(214, 291, 82, 86, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(215, 291, 83, 84, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(216, 291, 84, 85, 84, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(217, 291, 85, 86, 85, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(218, 291, 86, 82, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(219, 291, 88, 83, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(220, 291, 87, 82, 83, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(221, 291, 89, 95, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(222, 291, 90, 82, 95, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(223, 291, 91, 86, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(224, 291, 92, 84, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(225, 291, 93, 85, 84, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(226, 291, 94, 86, 85, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(227, 291, 95, 82, 86, '2022-01-07 12:46:56', '2022-01-07 12:46:56'),
(228, 291, 96, 83, 82, '2022-01-07 12:46:56', '2022-01-07 12:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `ktsp_tgl_raport`
--

CREATE TABLE `ktsp_tgl_raport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_penerbitan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembagian` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ktsp_tgl_raport`
--

INSERT INTO `ktsp_tgl_raport` (`id`, `tapel_id`, `tempat_penerbitan`, `tanggal_pembagian`, `created_at`, `updated_at`) VALUES
(2, 1, 'Tambakboyo', '2022-01-03', '2022-01-02 13:24:31', '2022-01-02 13:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tapel_id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasan_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `tapel_id`, `nama_mapel`, `ringkasan_mapel`, `created_at`, `updated_at`) VALUES
(32, 1, 'Aswaja', 'Aswaja', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(33, 1, 'Bahasa Indnesia', 'BIN', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(34, 1, 'Bahasa Inggris', 'BING', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(35, 1, 'Bahasa Jawa', 'B. Jawa', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(36, 1, 'Ilmu Pengetahuan Alam', 'IPA', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(37, 1, 'Ilmu Pengetahuan Sosial', 'IPS', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(38, 1, 'Matematika', 'MTK', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(39, 1, 'Pendidikan Agama Islam dan Budi Pekerti', 'PAI', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(40, 1, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'PJOK', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(41, 1, 'Pendidikan Pancasila dan Kewarganegaraan', 'PKN', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(42, 1, 'Prakarya', 'PKR', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(43, 1, 'Seni dan Budaya', 'SB', '2021-11-13 14:15:56', '2021-11-13 14:15:56'),
(44, 1, 'Teknologi Informasi dan Komunikasi', 'TIK', '2021-11-13 14:15:56', '2021-11-13 14:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2021_10_29_091435_create_admins_table', 1),
(10, '2021_10_29_092124_create_riwayat_logins_table', 1),
(11, '2021_10_31_172054_create_sekolahs_table', 2),
(13, '2021_11_01_221101_create_gurus_table', 3),
(14, '2021_11_03_201640_create_tapels_table', 4),
(16, '2021_11_03_214835_create_kelas_table', 5),
(18, '2021_11_03_224912_create_siswas_table', 6),
(19, '2021_11_04_161114_create_anggota_kelas_table', 7),
(21, '2021_11_07_002948_create_siswa_keluars_table', 8),
(22, '2021_11_07_144659_create_mapels_table', 9),
(24, '2021_11_07_182449_create_pembelajarans_table', 10),
(25, '2021_11_14_004515_create_ekstrakulikulers_table', 11),
(26, '2021_11_15_201349_create_anggota_ekstrakulikulers_table', 12),
(27, '2021_11_16_192257_create_k13_mapping_mapels_table', 13),
(28, '2021_11_17_203756_create_k13_kkm_mapels_table', 14),
(29, '2021_11_24_220603_create_k13_butir_sikaps_table', 15),
(30, '2021_11_25_103930_create_k13_kd_mapels_table', 16),
(31, '2021_11_26_191840_create_k13_tgl_raports_table', 17),
(32, '2021_11_29_173200_create_k13_rencana_nilai_pengetahuans_table', 18),
(33, '2021_12_03_213422_create_k13_rencana_nilai_keterampilans_table', 19),
(34, '2021_12_04_215127_create_k13_rencana_nilai_spirituals_table', 20),
(35, '2021_12_04_233904_create_k13_rencana_nilai_sosials_table', 21),
(36, '2021_12_05_001248_create_k13_rencana_bobot_penilaians_table', 22),
(43, '2021_12_05_093648_create_k13_nilai_pengetahuans_table', 23),
(44, '2021_12_15_170021_create_k13_nilai_keterampilans_table', 23),
(45, '2021_12_15_203751_create_k13_nilai_spirituals_table', 23),
(46, '2021_12_15_224616_create_k13_nilai_sosials_table', 23),
(50, '2021_12_16_124730_create_k13_nilai_pts_pas_table', 24),
(52, '2021_12_20_203638_create_k13_nilai_akhir_raports_table', 25),
(53, '2021_12_20_234314_create_k13_deskripsi_nilai_siswas_table', 26),
(54, '2021_11_15_201349_create_anggota_ekstrakulikulers_table_lama', 27),
(55, '2021_12_21_125021_create_anggota_ekstrakulikulers_table', 28),
(57, '2021_12_21_184803_create_nilai_ekstrakulikulers_table', 29),
(58, '2021_12_22_013547_create_kehadiran_siswas_table', 30),
(59, '2021_12_22_015626_create_prestasi_siswas_table', 31),
(60, '2021_12_22_124942_create_catatan_wali_kelas_table', 32),
(61, '2021_12_30_200405_create_k13_deskripsi_sikap_siswas_table', 33),
(62, '2022_01_02_185835_create_ktsp_mapping_mapels_table', 34),
(63, '2022_01_02_194411_create_ktsp_kkm_mapels_table', 35),
(64, '2022_01_02_201458_create_ktsp_tgl_raports_table', 36),
(65, '2022_01_03_190838_create_ktsp_bobot_penilaians_table', 37),
(66, '2022_01_03_195440_create_ktsp_nilai_tugas_table', 38),
(67, '2022_01_03_203404_create_ktsp_nilai_uhs_table', 39),
(68, '2022_01_03_210334_create_ktsp_nilai_uts_uas_table', 40),
(69, '2022_01_03_225023_create_ktsp_nilai_akhir_raports_table', 41),
(70, '2022_01_03_232637_create_ktsp_deskripsi_nilai_siswas_table', 42),
(71, '2022_01_07_101419_create_pengumumen_table', 43),
(72, '2022_01_08_220617_create_kenaikan_kelas_table', 44);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ekstrakulikuler`
--

CREATE TABLE `nilai_ekstrakulikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_ekstrakulikuler_id` bigint(20) UNSIGNED NOT NULL,
  `nilai` enum('4','3','2','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_ekstrakulikuler`
--

INSERT INTO `nilai_ekstrakulikuler` (`id`, `ekstrakulikuler_id`, `anggota_ekstrakulikuler_id`, `nilai`, `deskripsi`, `created_at`, `updated_at`) VALUES
(59, 3, 173, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(60, 3, 174, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(61, 3, 175, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(62, 3, 176, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(63, 3, 177, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(64, 3, 178, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(65, 3, 179, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:50', '2021-12-21 15:08:50'),
(66, 3, 180, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(67, 3, 181, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(68, 3, 182, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(69, 3, 183, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(70, 3, 184, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(71, 3, 185, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(72, 3, 186, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(73, 3, 187, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(74, 3, 188, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(75, 3, 189, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(76, 3, 190, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(77, 3, 191, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(78, 3, 192, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(79, 3, 193, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(80, 3, 194, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(81, 3, 195, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(82, 3, 196, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(83, 3, 197, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(84, 3, 198, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(85, 3, 199, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:09:49'),
(86, 3, 200, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:09:26'),
(87, 3, 201, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:08:51', '2021-12-21 15:08:51'),
(88, 2, 231, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(89, 2, 232, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(90, 2, 119, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(91, 2, 120, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(92, 2, 121, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(93, 2, 122, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(94, 2, 123, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(95, 2, 124, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(96, 2, 125, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(97, 2, 126, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(98, 2, 128, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(99, 2, 129, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(100, 2, 130, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(101, 2, 131, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(102, 2, 132, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(103, 2, 133, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(104, 2, 134, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(105, 2, 135, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(106, 2, 127, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(107, 2, 136, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(108, 2, 138, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(109, 2, 139, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(110, 2, 140, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(111, 2, 141, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(112, 2, 142, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(113, 2, 137, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(114, 2, 143, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(115, 2, 144, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(116, 2, 145, '3', 'Memiliki kemampuan yang baik dalam mengoperasikan komputer', '2021-12-21 15:12:04', '2021-12-21 15:12:04'),
(117, 3, 146, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(118, 3, 147, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(119, 3, 148, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(120, 3, 149, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(121, 3, 150, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(122, 3, 151, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(123, 3, 152, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(124, 3, 153, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(125, 3, 154, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(126, 3, 155, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(127, 3, 156, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(128, 3, 157, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(129, 3, 158, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(130, 3, 159, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(131, 3, 160, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(132, 3, 161, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(133, 3, 162, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(134, 3, 164, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(135, 3, 163, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(136, 3, 165, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(137, 3, 166, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(138, 3, 167, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(139, 3, 168, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(140, 3, 169, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(141, 3, 170, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(142, 3, 171, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(143, 3, 172, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:14:32', '2021-12-21 15:14:32'),
(144, 3, 202, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(145, 3, 203, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(146, 3, 204, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(147, 3, 205, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(148, 3, 206, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(149, 3, 207, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(150, 3, 208, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(151, 3, 209, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(152, 3, 210, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(153, 3, 211, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(154, 3, 213, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(155, 3, 214, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(156, 3, 215, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(157, 3, 216, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(158, 3, 217, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(159, 3, 218, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(160, 3, 219, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(161, 3, 220, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(162, 3, 212, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(163, 3, 221, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(164, 3, 223, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(165, 3, 224, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(166, 3, 225, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(167, 3, 226, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(168, 3, 227, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(169, 3, 222, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(170, 3, 228, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(171, 3, 229, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25'),
(172, 3, 230, '3', 'Aktif dalam kegiatan kepramukaan, asah mentalmu dengan lebih baik lagi', '2021-12-21 15:15:25', '2021-12-21 15:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `pembelajaran`
--

CREATE TABLE `pembelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelajaran`
--

INSERT INTO `pembelajaran` (`id`, `kelas_id`, `mapel_id`, `guru_id`, `status`, `created_at`, `updated_at`) VALUES
(281, 9, 32, 65, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(282, 9, 33, 59, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(283, 9, 34, 58, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(284, 9, 35, 65, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(285, 9, 36, 57, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(286, 9, 37, 56, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(287, 9, 38, 64, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(288, 9, 39, 62, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(289, 9, 40, 61, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(290, 9, 41, 66, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(291, 9, 42, 63, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(292, 9, 43, 63, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(293, 9, 44, 55, 1, '2021-11-29 04:23:47', '2021-11-29 04:23:47'),
(294, 10, 32, 65, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(295, 10, 33, 59, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(296, 10, 34, 58, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(297, 10, 35, 65, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(298, 10, 36, 57, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(299, 10, 37, 56, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(300, 10, 38, 64, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(301, 10, 39, 62, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(302, 10, 40, 61, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(303, 10, 41, 66, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(304, 10, 42, 63, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(305, 10, 43, 63, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(306, 10, 44, 55, 1, '2021-11-29 04:27:24', '2021-11-29 04:27:24'),
(307, 11, 32, 65, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(308, 11, 33, 59, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(309, 11, 34, 58, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(310, 11, 35, 65, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(311, 11, 36, 57, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(312, 11, 37, 56, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(313, 11, 38, 64, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(314, 11, 39, 62, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(315, 11, 40, 61, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(316, 11, 41, 66, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(317, 11, 42, 63, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(318, 11, 43, 63, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(319, 11, 44, 55, 1, '2021-11-29 07:14:56', '2021-11-29 07:14:56'),
(320, 12, 32, 65, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(321, 12, 33, 59, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(322, 12, 34, 58, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(323, 12, 35, 65, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(324, 12, 36, 57, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(325, 12, 37, 56, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(326, 12, 38, 64, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(327, 12, 39, 62, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(328, 12, 40, 61, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(329, 12, 41, 66, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(330, 12, 42, 63, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(331, 12, 43, 63, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(332, 12, 44, 55, 1, '2021-11-29 07:16:42', '2021-11-29 07:16:42'),
(347, 13, 32, 65, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(348, 13, 33, 59, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(349, 13, 34, 58, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(350, 13, 35, 65, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(351, 13, 36, 57, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(352, 13, 37, 56, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(353, 13, 38, 64, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(354, 13, 39, 62, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(355, 13, 40, 61, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(356, 13, 41, 66, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(357, 13, 42, 63, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(358, 13, 43, 63, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28'),
(359, 13, 44, 55, 1, '2021-11-29 07:42:28', '2021-11-29 07:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `user_id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(5, 1, 'Ganti Password', '<p>Demi keamanan data, diharapkan kepada semua user untuk segera melakukan penggantian password.</p><p>Data pada akun anda sepenuhnya menjadi tanggung jawab anda.</p>', '2022-01-07 04:49:31', '2022-01-07 06:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_siswa`
--

CREATE TABLE `prestasi_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_kelas_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_prestasi` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prestasi_siswa`
--

INSERT INTO `prestasi_siswa` (`id`, `anggota_kelas_id`, `jenis_prestasi`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 97, '1', 'The next generation of the web’s favorite icon library + toolkit is now available as a Beta release! Try out the Free version. Subscribe to Font Awesome Pro to get even more!', '2021-12-21 19:38:54', '2021-12-21 19:38:54'),
(4, 100, '2', 'Layanan gratis Google secara instan menerjemahkan kata, frasa, dan halaman web antara bahasa Inggris dan lebih dari 100 bahasa lainnya.', '2021-12-22 05:28:11', '2021-12-22 05:28:11'),
(5, 98, '2', 'Menerjemahkan ucapan hampir secara real-time dan berkelanjutan. Dapatkan di Google Play · Tersedia di App Store. Bicara dengan dunia. Terhubung dengan', '2021-12-22 05:28:42', '2021-12-22 05:28:42'),
(6, 97, '2', 'I need to repeat the header of the invoice template when multiple pages are available ... If it is done in HTML you must put an id in the header and footer.', '2021-12-31 14:49:50', '2021-12-31 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_login`
--

CREATE TABLE `riwayat_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_login` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_login`
--

INSERT INTO `riwayat_login` (`id`, `user_id`, `status_login`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2021-10-29 10:26:46', '2022-01-08 16:12:16'),
(2, 2, 0, '2021-10-31 08:30:43', '2022-01-07 04:14:01'),
(3, 87, 0, '2021-11-28 16:18:11', '2021-11-29 07:00:54'),
(4, 86, 0, '2021-11-29 07:01:08', '2022-01-07 11:46:24'),
(5, 97, 0, '2021-11-29 07:48:12', '2022-01-08 16:15:24'),
(6, 92, 0, '2021-12-22 06:03:40', '2022-01-08 15:30:39'),
(7, 88, 0, '2021-12-23 17:07:02', '2021-12-23 17:08:23'),
(8, 184, 0, '2022-01-01 21:11:48', '2022-01-07 13:17:01'),
(9, 374, 0, '2022-01-02 08:33:32', '2022-01-02 08:51:47'),
(10, 212, 0, '2022-01-02 08:52:04', '2022-01-02 10:38:23'),
(11, 352, 0, '2022-01-02 10:38:34', '2022-01-06 12:09:55'),
(12, 211, 0, '2022-01-02 10:39:55', '2022-01-06 07:32:40'),
(13, 362, 0, '2022-01-02 10:51:13', '2022-01-02 10:56:28'),
(14, 403, 0, '2022-01-04 06:21:48', '2022-01-04 06:28:57'),
(15, 354, 0, '2022-01-06 07:31:56', '2022-01-06 07:32:12'),
(16, 98, 0, '2022-01-08 15:53:21', '2022-01-08 16:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nss` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telpon` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kepala_sekolah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_kepala_sekolah` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `npsn`, `nss`, `kode_pos`, `nomor_telpon`, `alamat`, `website`, `email`, `logo`, `kepala_sekolah`, `nip_kepala_sekolah`, `created_at`, `updated_at`) VALUES
(1, 'SMP DARUT TAUHID TAMBAKBOYO', '69830085', '123654698654987', '62353', '085232077932', 'Jl. KH. Asyhari Desa Pabeyan Kec. Tambakboyo', NULL, 'sekolahindonesia@mail.com', 'logo.png', 'MOCH. MUNIR, S.E.', '300519986532365987', '2021-10-31 10:33:30', '2022-01-07 14:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jenis_pendaftaran` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` enum('1','2','3','4','5','6','7') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_dalam_keluarga` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `kelas_id`, `jenis_pendaftaran`, `nis`, `nisn`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status_dalam_keluarga`, `anak_ke`, `alamat`, `nomor_hp`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `pekerjaan_wali`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(85, 183, 9, '1', '310', '0084692742', 'A. RIFQI KHILMI', 'Tuban', '2008-08-08', 'L', '1', '1', '1', 'Dasin', NULL, 'ROHMAD', 'SHOFI\'UL NASAROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:03', '2021-11-15 12:51:20'),
(86, 184, 9, '1', '311', '0099050329', 'ACHMAD FAHRI ALI KAFABY', 'Tuban', '2009-02-23', 'L', '1', '1', '1', 'Mander', NULL, 'Durjamid', 'Khoirom', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(87, 185, 9, '1', '312', '0096538165', 'AHMAD AKHABBANI MUKHITH', 'Tuban', '2009-02-19', 'L', '1', '1', '4', 'Dasin', NULL, 'BASARUDDIN', 'NGATEMI', 'Pedagang Kecil', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(88, 186, 9, '1', '313', '0088667972', 'AHMADA ROMADLONANSYAH WAFA', 'Tuban', '2008-09-14', 'L', '1', '1', '1', 'Merkawang', NULL, 'BASAR', 'RIWAYATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(89, 187, 9, '1', '314', '0097638568', 'ALVAN ULIL ABSHOR', 'Tuban', '2009-01-17', 'L', '1', '1', '2', 'Dasin', NULL, 'KHAMDANI', 'SRI SULISTIYOWATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(90, 188, 9, '1', '318', '0093180560', 'ATIK SOIMATUL AULIYA', 'Tuban', '2009-08-24', 'P', '1', '1', '1', 'Dasin', NULL, 'WAWAN EKO DIYANTO', 'SITI WAHYUNI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(91, 189, 9, '1', '319', '0091052558', 'DAFFA KURNIAWAN', 'Jakarta', '2009-04-20', 'L', '1', '1', '2', 'Bogorejo', NULL, 'Rahmat Setiaji', 'Desi Kurniawati', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(92, 190, 9, '1', '322', '0081366086', 'ERDIVA BERLIANA PUTRI', 'TUBAN', '2008-08-24', 'P', '1', '1', '1', 'SAWIR', NULL, 'MULYADI', 'ISMIYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(93, 191, 9, '1', '323', '0081791744', 'EUIS LUTHFIANA ISTIQOMAH', 'Tuban', '2008-12-27', 'P', '1', '1', '1', 'Bancar', NULL, 'SAEFULLOH', 'ARSALAH HIBDIYAH', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:04', '2021-11-15 12:51:20'),
(94, 192, NULL, '1', '001', '3087484193', 'FACHREZA IFNU REFANDI', 'TUBAN', '2008-11-19', 'L', '1', '1', '1', 'SAWIR', NULL, 'SLAMET WINARDI', 'SOLIKATUN', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '2', '2021-11-06 14:36:05', '2021-11-07 07:39:42'),
(95, 193, 9, '1', '324', '0089275532', 'FAIZATUN MAQFUROH', 'Tuban', '2008-01-02', 'P', '1', '1', '3', 'Mander', NULL, 'Kurdi', 'Aminah', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(96, 194, 9, '1', '327', '0095407122', 'FINA NAILATUL IZAH', 'Tuban', '2009-01-24', 'P', '1', '1', '1', 'Dasin', NULL, 'TAMZIDUN', 'SITI ROATUL IZAH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(97, 195, 9, '1', '331', '0096456062', 'JHOHANDA HILWA KIWAMIL BAHRI', 'Tuban', '2009-02-13', 'L', '1', '1', '2', 'Margosuko', NULL, 'Saiful Bakri', 'Hartatik', 'PNS/TNI/Polri', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(98, 196, 9, '1', '332', '0083429609', 'KHULAFAUR ROSYIDIN', 'Tuban', '2008-09-01', 'L', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SRI NANIK', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(99, 197, 9, '1', '334', '0092885435', 'LUKMAN ARDIANSYAH ROMADHONI', 'Tuban', '2009-09-11', 'L', '1', '1', '1', 'Pulogede', NULL, 'KUSAERI', 'LASMINI', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(100, 198, 9, '1', '335', '0088639939', 'LUKMAN DIYANTO', 'Tuban', '2008-03-27', 'L', '1', '1', '4', 'Mander', NULL, 'Darkum', 'Sunarsi', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:05', '2021-11-15 12:52:35'),
(101, 199, 9, '1', '337', '0082288885', 'M.SHIHABUDDIN AL MUSAHHALI', 'TUBAN', '2008-05-12', 'L', '1', '1', '2', 'DASIN', NULL, 'KISBU WAHUDAH', 'SITI ROHMAH', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:52:35'),
(102, 200, 9, '1', '339', '0091117221', 'MIZTA ILMA AMELIYA', 'TUBAN', '2009-01-01', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'WARSONO', 'ENIK PUJIATI', 'Wiraswasta', 'Tidak dapat diterapkan', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:52:35'),
(103, 201, 9, '1', '340', '0097556883', 'MOCH. ALVANSYAH', 'Tuban', '2009-10-06', 'L', '1', '1', '1', 'SOTANG', NULL, 'SAHLAN', 'MARLIK', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:54:11'),
(104, 202, 9, '1', '342', '0089312800', 'MONICA ARTHA ZHARANI', 'Tuban', '2008-10-20', 'P', '1', '1', '1', 'Dasin', NULL, 'JANUAR PRIBADI', 'DARWATI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:52:35'),
(105, 203, 9, '1', '347', '3099025171', 'NABILA NAURA HARTANTO', 'Tuban', '2009-04-08', 'P', '1', '1', '1', 'Kebonsari', NULL, 'IWAN HARTANTO', 'LUSMIANA', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:55:20'),
(106, 204, 9, '1', '348', '0085759334', 'NADHIFA NINA OKTAFIA', 'Tuban', '2008-10-09', 'P', '1', '1', '3', 'Sokogunung', NULL, 'Suyono', 'Siti Sopiyatun', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:55:20'),
(107, 205, 9, '1', '349', '3086594378', 'NADINA KHAESWAROH OLIVIA', 'Tuban', '2008-06-20', 'P', '1', '1', '1', 'Pabeyan', NULL, 'MUHAJIRIN', 'ATIK ROSIDAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:55:20'),
(108, 206, 9, '1', '350', '0096821665', 'NANDA BAKTIAR PRATAMA', 'Tuban', '2009-10-08', 'L', '1', '1', '1', 'SOTANG', NULL, 'DAMUJI', 'YUYUN NURLAELA', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:06', '2021-11-15 12:55:20'),
(109, 207, 9, '1', '354', '0099013780', 'NUR RIFKI ALI MUBAROK', 'Tuban', '2009-07-08', 'L', '1', '1', '1', 'Cokrowati', NULL, 'DASMO PRIYADI', 'SULASTRI', 'Lainnya', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:55:20'),
(110, 208, 9, '1', '355', '0088892184', 'PAMA NAISILA OKTAVIANI', 'Tuban', '2008-10-12', 'P', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SAMONAH', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:55:20'),
(111, 209, 9, '1', '362', '0098363297', 'THORIQUL ILMI SHOFIANADZIR', 'Tuban', '2009-01-22', 'L', '1', '1', '1', 'Merkawang', NULL, 'JAYADI', 'SUSANAH', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:55:20'),
(112, 210, 9, '1', '364', '3082355717', 'WASIYAT', 'Tuban', '2008-06-18', 'L', '1', '1', '1', 'Sawir', NULL, 'KUSAERI', 'TUNTUM', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:55:20'),
(113, 211, 10, '1', '315', '0097720825', 'ALVIN ULIL ALBAB', 'Tuban', '2009-01-17', 'L', '1', '1', '3', 'Dasin', NULL, 'KHAMDANI', 'SRI SULISTIYOWATI', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:56:58'),
(114, 212, 10, '1', '316', '0081102132', 'AMALIA', 'Tuban', '2008-12-13', 'P', '1', '1', '2', 'Dasin', NULL, 'WARSADI', 'MASRINGAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:56:58'),
(115, 213, 10, '1', '317', '0089198651', 'ANDIKA LESTARI', 'TUBAN', '2008-08-05', 'L', '1', '1', '1', 'PLAJAN', NULL, 'KUSTARI', 'TRI SULASIH', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:56:58'),
(116, 214, 10, '1', '320', '0091799882', 'DENDI NAUFAL AL AZIZ', 'Tuban', '2009-01-08', 'L', '1', '1', '1', 'Cokrowati', NULL, 'BAKIR', 'SRIYANA', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:56:58'),
(117, 215, 10, '1', '321', '0092667144', 'DHEA FANY ANDRIANI', 'Tuban', '2009-07-08', 'P', '1', '1', '1', 'Margosuko', NULL, 'Suparno', 'Siti Askolati', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:07', '2021-11-15 12:56:58'),
(118, 216, 10, '1', '325', '0082658373', 'FARIH FAKRIYAN AKMAL', 'Tuban', '2008-04-28', 'L', '1', '1', '2', 'Dasin', NULL, 'MASNUR', 'DZINNURIN NAFI AH', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:56:58'),
(119, 217, 10, '1', '326', '0086756265', 'FERI AHMAD GHUFRON', 'Tuban', '2008-12-11', 'L', '1', '1', '2', 'Merkawang', NULL, 'KUSAERI', 'SITI RATMIATUN', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:56:58'),
(120, 218, 10, '1', '328', '0096172235', 'GUSTIN EVELLYNA CAHYANI', 'Tuban', '2009-02-21', 'P', '1', '1', '2', 'Margosuko', NULL, 'Ramuji', 'Melip', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:56:58'),
(121, 219, 10, '1', '329', '0093048022', 'HELLEN ISSA ARIYANIT', 'Tuban', '2009-01-12', 'P', '1', '1', '2', 'Socorejo', NULL, 'Samid', 'Siti Aisyah', 'Nelayan', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:56:58'),
(122, 220, 10, '1', '330', '0092056639', 'IRFA ALIFIA', 'Tuban', '2009-06-20', 'P', '1', '1', '1', 'Dasin', NULL, 'ABDUL ZAENI', 'SITI LATIFAH', 'Wiraswasta', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:56:58'),
(123, 221, 10, '1', '333', '0084953920', 'LINA WATI SAYLINNIKMA', 'TUBAN', '2008-06-01', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'AGUS SUTRISNO', 'SOLIKAH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:58:27'),
(124, 222, 10, '1', '336', '0091113408', 'LUKMAN HIDAYATULLAH', 'Tuban', '2009-02-20', 'L', '1', '1', '1', 'SOTANG', NULL, 'ACHMAD BADRUS', 'DARMINI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:58:27'),
(125, 223, 10, '1', '338', '0096484188', 'MIFTAQUR ROUF BILIMMAH', 'Tuban', '2009-07-03', 'L', '1', '1', '1', 'Socorejo', NULL, 'Ta\'lim', 'Khusnul Khotimah', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:08', '2021-11-15 12:58:27'),
(126, 224, 10, '1', '341', NULL, 'MOHAMMAD NI\'AM SAIFULLAH', 'Tuban', '2008-03-02', 'L', '1', '1', '1', 'Sotang', NULL, 'MARJUKI', 'SAYATI', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(127, 225, 10, '1', '343', '0093369391', 'MUHAMMAD JIBRAN IRFANI', 'Tuban', '2009-05-04', 'L', '1', '1', '1', 'Socorejo', NULL, 'Muhyidin', 'Wiwin Windarti', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(128, 226, 10, '1', '344', '0085396771', 'MUHAMMAD NOR ROHMAN', 'TUBAN', '2008-08-07', 'L', '1', '1', '1', 'GADON', NULL, 'ECHWAN ISNANTO', 'ELA TEJAWATI', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(129, 227, 10, '1', '345', '0093826376', 'MUHAMMAD RIZKY ADITYA', 'Tuban', '2009-03-15', 'L', '1', '1', '1', 'Dasin', NULL, 'SLAMET', 'RUKAMAH', 'Petani', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(130, 228, 10, '1', '346', '0087592278', 'NABIGHOTUL HUSNIYAH', 'REMBANG', '2008-06-17', 'P', '1', '1', '2', 'SAWIR', NULL, 'MASRUHAN AZ\'AFI', 'INDASAH', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(131, 229, 10, '1', '351', '0087968270', 'NELI ALFI MUTMAINAH', 'Bojonegoro', '2008-06-16', 'P', '1', '1', '3', 'Asemrowo', NULL, 'Saliman', 'Sukarsiningsih', 'Petani', 'Buruh', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(132, 230, 10, '1', '352', '0088965490', 'NOVITA SELVI INDRIYANI', 'Tuban', '2008-11-01', 'P', '1', '1', '1', 'Margosuko', NULL, 'M. Nurul Anwar', 'Awini', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 12:58:27'),
(133, 231, 10, '1', '353', '0086884735', 'NUR AISSYAH', 'Tuban', '2008-11-17', 'P', '1', '1', '2', 'Cokrowati', NULL, 'SUKARMIN', 'RUSMIATI', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:09', '2021-11-15 13:00:16'),
(134, 232, 10, '1', '356', '0097166427', 'RAFIUDDIN ATHAR', 'Tuban', '2009-03-24', 'L', '1', '1', '1', 'Bancar', NULL, 'ATHAR NASIR', 'MUHAYATI', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(135, 233, 10, '1', '357', '0095551885', 'RIZKY ARIF AFANDI', 'Tuban', '2009-02-28', 'L', '1', '1', '1', 'Mander', NULL, 'Kastono', 'Rusmiati', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(136, 234, 10, '1', '358', '0083469761', 'ROHMATUL BAIM', 'Tuban', '2008-08-31', 'L', '1', '1', '1', 'Dasin', NULL, 'SALIKUN', 'UMASAROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(137, 235, 10, '1', '359', '0088098912', 'ROSYIDATUL MAHMUDAH', 'TUBAN', '2008-05-31', 'P', '1', '1', '1', 'DASIN', NULL, 'MOH. KHOIRUL ROZIKIN', 'ROCHMAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(138, 236, 10, '1', '360', '0086427009', 'SHELFI OCTAVIA ROESDAH', 'LEBAK', '2008-10-26', 'P', '1', '1', '1', 'BELIKANGET', NULL, 'SUPRIYADI', 'HERLINA DARNIATI', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(139, 237, 10, '1', '361', '3088352695', 'SUSI ARINI', 'Tuban', '2008-10-17', 'P', '1', '1', '1', 'Margosuko', NULL, 'SUWONO', 'CARMI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(140, 238, 10, '1', '363', '0091003580', 'TIYO ALDYYANSAH', 'Tuban', '2009-04-18', 'L', '1', '1', '1', 'Dasin', NULL, 'TARMIJAN', 'KASINI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(141, 239, 10, '1', '365', '3086082338', 'YOGI OKTA MAHENDRA', 'Tuban', '2008-10-10', 'L', '1', '1', '1', 'Margosuko', NULL, 'KUSAERI', 'NINA INDRAWATI', 'Petani', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:36:10', '2021-11-15 13:00:16'),
(228, 329, 12, '2', '235', '0067570625', 'ACHMAD FAIQ MUZAKKIY', 'Tuban', '2006-12-28', 'L', '1', '1', '1', 'Pabeyan', NULL, 'KUSNAN', 'LUDFIYAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-12-21 08:07:50'),
(229, 330, NULL, '2', '237', '0063339111', 'AHMAD SYAIFUDDIN', 'Tuban', '2006-10-17', 'L', '1', '1', '1', 'Tambakboyo', NULL, 'WAKIRAN', 'LASTATIK', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(230, 331, 12, '2', '238', '0068730623', 'AMELIA RAHAYU', 'Tuban', '2006-12-15', 'P', '1', '1', '1', 'Margosuko', NULL, 'Marwan', 'Tiyah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-12-21 08:07:38'),
(231, 332, NULL, '2', '240', '0068609189', 'ARBI FADILLA MUHSAN', 'Tuban', '2006-11-08', 'L', '1', '1', '1', 'Gadon', NULL, 'MUHSIN', 'ANISAH', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(232, 333, NULL, '2', '241', '0069584088', 'ARDHYANTO PRATAMA', 'Nganjuk', '2006-11-12', 'L', '1', '1', '1', 'Gemulung', NULL, 'Sudarmanto', 'Laswati', 'Pedagang Kecil', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(233, 334, NULL, '2', '242', '0056479277', 'AZKA SYARAFINA', 'TUBAN', '2005-11-14', 'P', '1', '1', '1', 'Dasin', NULL, 'NUR CHOLID', 'HIMMATUL HUSNA', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(234, 335, NULL, '2', '244', '0074107388', 'DAFFA MUSTAQIM', 'Tuban', '2007-01-12', 'L', '1', '1', '1', 'Mander', NULL, 'Danuri', 'Jumirah', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(235, 336, NULL, '2', '245', '0065889238', 'DIFANA SALSABILA', 'Tuban', '2006-10-02', 'P', '1', '1', '1', 'Sawir', NULL, 'YANTO SUSILO', 'KUSMIATUN', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:40', '2021-11-06 17:07:01'),
(236, 337, NULL, '2', '246', '3061685791', 'EKARIA ZULSILIS DELIMA NUR HIDAYAH', 'Tuban', '2006-12-05', 'P', '1', '1', '1', 'Pabeyan', NULL, 'WARSAM', 'LILIS RETNO WATI', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(237, 338, NULL, '2', '252', '0061606985', 'JULIANSAH KHOIRUL UMAM', 'Tuban', '2006-07-19', 'L', '1', '1', '2', 'Mander', NULL, 'Rokim', 'Umayah', 'Wiraswasta', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(238, 339, NULL, '2', '254', '0079264175', 'M. WAHYU REZA AULA FIRDAUS', 'Tuban', '2007-03-03', 'L', '1', '1', '1', 'socorejo', NULL, 'Lasmijan Al Parizi', 'Supriyatin', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(239, 340, NULL, '2', '282', '0067007455', 'MUHAMMAD ZAINUL AZZAN', 'TUBAN', '2006-10-17', 'L', '1', '1', '1', 'SAWIR', NULL, 'MASYHUDI', 'LAS INDAYATI', 'Pedagang Kecil', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(240, 341, NULL, '2', '259', '0066979722', 'NAELATUL MUNA', 'Tuban', '2006-07-03', 'P', '1', '1', '2', 'Sobontoro', NULL, 'Mukhlis', 'Siti Munawaroh', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(241, 342, NULL, '2', '260', '0069534558', 'NANDA DIFA PRATAMA', 'Tuban', '2006-12-22', 'L', '1', '1', '1', 'Merkawang', NULL, 'BUDI UTOMO', 'TUNAFLIFAH', 'Wiraswasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(242, 343, NULL, '2', '263', '0077498152', 'NUR FAIZATUN NISA', 'TUBAN', '2006-12-11', 'P', '1', '1', '2', 'KRADENAN', NULL, 'WARDJI', 'MARDIYAH', 'Buruh', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(243, 344, NULL, '2', '265', '0064982542', 'NURUL ISTIANAH', 'TUBAN', '2006-08-07', 'P', '1', '1', '1', 'DASIN', NULL, 'JUMALI', 'SITI ZUBAIDAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:41', '2021-11-06 17:07:01'),
(244, 345, NULL, '2', '266', '0071845030', 'PUTRI AMEYLA SARI', 'TUBAN', '2007-05-25', 'P', '1', '1', '1', 'KRADENAN', NULL, 'KARTONO', 'HARTATIK', 'Buruh', 'Buruh', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(245, 346, NULL, '2', '269', '0068636596', 'RIFKA MAULIDA', 'Tuban', '2006-03-29', 'P', '1', '1', '2', 'Kenanti', NULL, 'Kacung Suwasono', 'Wantutik', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(246, 347, NULL, '2', '272', '0061572256', 'ROFII QOTUZ ZULFA', 'Tuban', '2006-06-15', 'P', '1', '1', '1', 'Sobontoro', NULL, 'LASTO', 'DUROH ZULIANA', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(247, 348, NULL, '2', '275', '0068007916', 'SINTIA RAHMA SAYILA NOVA', 'Tuban', '2006-11-30', 'P', '1', '1', '2', 'Klutuk', NULL, 'Ciptoroso', 'Istiqomah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(248, 349, 11, '2', '276', '0073557892', 'SINTYA NABILA RAHMAWATI', 'Tuban', '2007-03-05', 'P', '1', '1', '1', 'Margosuko', NULL, 'Sempuk Adi Saputro', 'Endang Susilowati', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-15 13:09:48'),
(249, 350, NULL, '2', '278', '0072206518', 'SRI MU AWANAH', 'TUBAN', '2007-04-25', 'P', '1', '1', '2', 'Dasin', NULL, 'SRIYADI', 'MU AKHIROTUN', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(250, 351, NULL, '2', '280', '0136360617', 'ZAHRA KHOIRUN NISA', 'TUBAN', '2006-12-03', 'P', '1', '1', '1', 'Pulogede', NULL, 'Kholidin', 'MUNIK ASIYAH', 'Karyawan Swasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:42', '2021-11-06 17:07:01'),
(251, 352, NULL, '2', '236', '0068586426', 'AHMAD RAFIUD DAROJAT', 'Tuban', '2006-10-11', 'L', '1', '1', '1', 'Dasin', NULL, 'SAEKON', 'LISIANA', 'Wiraswasta', 'Lainnya', NULL, NULL, 'profile_ahmad rafiud darojat.jpg', '1', '2021-11-06 14:47:42', '2022-01-06 12:05:27'),
(252, 353, NULL, '2', '239', '0068500375', 'ANISA NURUL ALFIYAH', 'Tuban', '2006-09-17', 'P', '1', '1', '1', 'Mander', NULL, 'Suripno', 'Hetty Mursiah', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(253, 354, NULL, '2', '283', '0054128141', 'BENI SANTOSO', 'REMBANG', '2005-02-09', 'L', '1', '1', '3', 'Ds. TAMBAKBOYO', NULL, 'SUNGEDI', 'SITI MUKIAYATUN', 'Wiraswasta', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(254, 355, NULL, '2', '243', '0071167688', 'CITRA ARIHA ZAHRA MANANTA', 'Tuban', '2007-01-12', 'P', '1', '1', '1', 'Klutuk', NULL, 'Abdul Manan', 'Roihanah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(255, 356, NULL, '2', '247', '0063192439', 'HENKY GUSFAHDLI', 'Tuban', '2006-08-03', 'L', '1', '1', '1', 'Gemulung', NULL, 'Didik Herwanto', 'Suci Indriyani', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(256, 357, NULL, '2', '248', '0067702592', 'IFSYA ULFAIDAH', 'Tuban', '2006-09-14', 'P', '1', '1', '1', 'Dasin', NULL, 'TARMUDI', 'KAYATUN', 'Karyawan Swasta', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(257, 358, NULL, '2', '250', '0066311876', 'IZZATUL NURATHIYAH', 'Tuban', '2006-12-01', 'P', '1', '1', '1', 'Pabeyan', NULL, 'MUNAWAR', 'MASATIN', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(258, 359, NULL, '2', '251', '0066072331', 'JIHAN ALFIA NURAINI', 'Tuban', '2006-01-06', 'P', '1', '1', '1', 'Sotang', NULL, 'Sumiran', 'Ririn Iswati', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(259, 360, NULL, '2', '255', '0074953372', 'MARTA VIVI IFRIKA', 'TUBAN', '2007-03-25', 'P', '1', '1', '1', 'DASIN', NULL, 'TAMU', 'SRI WAHYUNI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:43', '2021-11-06 17:07:01'),
(260, 361, NULL, '2', '257', '0071047031', 'MOHAMAD RIFQI MUKAFFA', 'Tuban', '2007-07-25', 'L', '1', '1', '2', 'Merkawang', NULL, 'KASTUR', 'JUMINI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(261, 362, 11, '2', '258', '0063420344', 'MUHAMMAD YUSUF MAULANA', 'Tuban', '2006-06-25', 'L', '1', '1', '1', 'Pabeyan', NULL, 'ZAENURI', 'ROFIUL INAYAH', 'Buruh', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-15 13:03:57'),
(262, 363, NULL, '2', '261', '0075420522', 'NILNA MINAHAZZAHROH', 'TUBAN', '2007-05-01', 'P', '1', '1', '1', 'Dasin', NULL, 'LASMUJI', 'MASLUROH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(263, 364, NULL, '2', '262', '0065308881', 'NUNGKI WIDIYANTO', 'Tuban', '2006-07-26', 'L', '1', '1', '2', 'Klutuk', NULL, 'KUSTONO', 'YULIYANTO', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(264, 365, NULL, '2', '267', '0064466847', 'RAUDHATUL JANNAH', 'KOTABARU', '2006-12-24', 'P', '1', '1', '2', 'Sukadamai', NULL, 'M. BISRUL', 'SAIMI', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(265, 366, NULL, '2', '268', '0067766770', 'RIANA SHOVI AFIDA', 'Tuban', '2006-12-21', 'P', '1', '1', '1', 'Dasin', NULL, 'TARNO', 'NURWATIN', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(266, 367, NULL, '2', '270', '0073484580', 'RISMA AMELIA', 'Tuban', '2007-04-06', 'P', '1', '1', '1', 'Klutuk', NULL, 'AINUR ROFIK', 'TIN MARPUAH', 'Lainnya', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(267, 368, NULL, '2', '271', '0061446644', 'RIZKI RIANSYAH', 'Tuban', '2006-12-09', 'L', '1', '1', '1', 'Gemulung', NULL, 'Samuri', 'Kunanik', 'PNS/TNI/Polri', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:44', '2021-11-06 17:07:01'),
(268, 369, NULL, '2', '273', '0076817435', 'SALSA NUR AFIFAH', 'TUBAN', '2007-04-19', 'P', '1', '1', '1', 'DASIN', NULL, 'SOLIKIN', 'SITI N.', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-06 17:07:01'),
(269, 370, NULL, '2', '274', '0075583524', 'SILVIYYA WARDATIN', 'TUBAN', '2007-06-14', 'P', '1', '1', '1', 'Dasin', NULL, 'TASMIN', 'UMILAILA', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-06 17:07:01'),
(270, 371, NULL, '2', '277', '0068608517', 'SITI LAILY ZAKIYAH', 'TUBAN', '2006-12-14', 'P', '1', '1', '1', 'DASIN', NULL, 'TASIRUN', 'DJASMI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-06 17:07:01'),
(271, 372, NULL, '2', '279', '0064981547', 'YUNI MIFTAKHUL KHOLIFAH', 'TUBAN', '2006-08-01', 'P', '1', '1', '2', 'Mander', NULL, 'DARSAM', 'SULIMAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-06 17:07:01'),
(272, 373, 11, '2', '366', '0085824374', 'AHMAD IQBAL BAIHAQI', 'Tuban', '2008-07-21', 'L', '1', '1', '1', 'Pabeyan', NULL, 'KASDAR', 'CHUROTUL WIDAT', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-15 13:02:37'),
(273, 374, 11, '2', '284', '0073611986', 'AHSANUL MUJAHIDIN', 'TUBAN', '2007-09-05', 'L', '1', '1', '1', 'Margosuko', NULL, 'MUZAID', 'KUSMIATI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-15 13:02:37'),
(274, 375, 11, '2', '285', '0078468402', 'ANDI MATHLABIL HIKAM', 'Tuban', '2007-11-14', 'L', '1', '1', '1', 'Merkawang', NULL, 'MUHAMMAD NURI ECHSAN', 'SITI MASKHANAH ', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-15 13:02:37'),
(275, 376, 11, '2', '286', '0089137461', 'DITA HENDRA PRATAMA', 'TUBAN', '2008-08-27', 'L', '1', '1', '1', 'GEMULUNG', NULL, 'DARYONO', 'KASTI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-15 13:02:37'),
(276, 377, 11, '2', '287', '0071193863', 'DIVA SANDRA ABELLIA PUTRI', 'Tuban', '2007-12-14', 'P', '1', '1', '1', 'Cokrowati', NULL, 'Hadi', 'Dina Astutik', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:45', '2021-11-15 13:02:37'),
(277, 378, 11, '2', '288', '0082864344', 'ESTY AININ NADZIROH', 'Tuban', '2008-01-30', 'P', '1', '1', '1', 'Margosuko', NULL, 'Edi Priyono', 'Siti Asiyah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:02:37'),
(278, 379, 11, '2', '289', '0086384426', 'FERLITA SARIFATUN NIKMAH', 'Tuban', '2008-02-06', 'P', '1', '1', '1', 'Margosuko', NULL, 'Ramuji', 'Melip', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:02:37'),
(279, 380, 11, '2', '290', '0074256091', 'FIDIA ANAIDA', 'TUBAN', '2007-04-01', 'P', '1', '1', '2', 'Belikanget', NULL, 'DASUM', 'YASMI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:02:37'),
(280, 381, 11, '2', '291', '0076554168', 'FILHA DINI ASMARANI', 'Tuban', '2007-11-06', 'P', '1', '1', '1', 'DASIN', NULL, 'MOCH AINUR ROFIQ', 'MUNTIKAH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:02:37'),
(281, 382, 11, '2', '292', '0083818653', 'HELVI IZZA APRILIA', 'TUBAN', '2008-04-12', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'PRIYADI', 'RUKINAH', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:02:37'),
(282, 383, 11, '2', '293', '0078546004', 'KHOIRUT TAMAM', 'TUBAN', '2007-07-28', 'L', '1', '1', '1', 'Dasin', NULL, 'TAMSU', 'KHOTIMAH', 'Sudah Meninggal', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:03:57'),
(283, 384, 11, '2', '367', '0076593298', 'M. ASHROF MAZID FURQONI', 'Tuban', '2007-12-28', 'L', '1', '1', '1', 'Pabeyan', NULL, 'NUR CAHAYA', 'KHALIMATUS SA\'ADAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:46', '2021-11-15 13:03:57'),
(284, 385, 11, '2', '368', '0074063223', 'M. CHABIBUL LATIF', 'Tuban', '2007-11-15', 'L', '1', '1', '1', 'Pabeyan', NULL, 'NASIKIN', 'SULIYATI', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(285, 386, NULL, '2', '294', '0084644199', 'MAULANA EKCEL ERSULA UTAMA', 'Tuban', '2008-03-18', 'L', '1', '1', '1', 'Socorejo', NULL, 'Sulaiman', 'Ernawati', 'Karyawan Swasta', 'Karyawan Swasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-06 17:07:01'),
(286, 387, 11, '2', '295', '0076622716', 'MOHAMAD RIFQI ABDILLAH', 'Tuban', '2007-02-26', 'L', '1', '1', '1', 'Margosuko', NULL, 'Sodikun', 'Enik Purwati', 'Nelayan', 'Pedagang Kecil', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(287, 388, 11, '2', '296', '0087359337', 'MUHAMMAD AQIM YAMIN SIMAL', 'TUBAN', '2008-04-14', 'L', '1', '1', '2', 'GADON', NULL, 'MUHAMMAD HADI SUTIKNO', 'MUKHOLIFAH', 'Nelayan', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(288, 389, 11, '2', '297', '0078178085', 'MUHAMMAD HILAL RIDHO', 'Tuban', '2007-04-19', 'L', '1', '1', '1', 'Pulogede', NULL, 'Ikhwan', 'Nurhidayatin', 'PNS/TNI/Polri', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(289, 390, 11, '2', '298', '0061626567', 'MUHAMMAD NUR ROHMAN', 'TUBAN', '2007-01-25', 'L', '1', '1', '1', 'Merkawang', NULL, 'KUSAERI', 'SRI NANIK', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(290, 391, 11, '2', '299', '0088334793', 'MUHAMMAD RIFQI SAPUTRA', 'TUBAN', '2008-03-08', 'L', '1', '1', '2', 'GLONDONGGEDE', NULL, 'RIDWAN', 'RUKHAYAH', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(291, 392, 11, '2', '300', '0072043755', 'MUHAMMAD ZAKKA ADLY FAIRUZH', 'Tuban', '2007-10-30', 'L', '1', '1', '1', 'Karangasem', NULL, 'Ahmad Nuri', 'Sumarni', 'Wiraswasta', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:47', '2021-11-15 13:03:57'),
(292, 393, NULL, '2', '301', '3076280716', 'NABILA HIMAYA MILLATI', 'TUBAN', '2007-11-27', 'P', '1', '1', '2', 'KENANTI', NULL, 'MUNAJI', 'SUYATI', 'Nelayan', 'Wiraswasta', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-06 17:07:01'),
(293, 394, 11, '2', '302', '0083022551', 'NADYA SAFWAH NAJLATUN NAQIYYAH', 'Tuban', '2008-06-06', 'P', '1', '1', '1', 'Margosuko', NULL, 'Zainul', 'Siti Rofi ah', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(294, 395, 11, '2', '303', '0071297839', 'NURIL LATIFAH', 'TUBAN', '2007-05-21', 'P', '1', '1', '1', 'SOBONTORO', NULL, 'PRIYADI', 'SITI WAKURANAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(295, 396, 11, '2', '304', '0085561201', 'ROGHIBUR ROHMAN', 'TUBAN', '2008-03-29', 'L', '1', '1', '1', 'Dasin', NULL, 'KASNARI', 'SOFI\'AH', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(296, 397, 11, '2', '305', '0083461721', 'SELVIRA ANINDYA LABIBAH', 'TUBAN', '2008-07-13', 'P', '1', '1', '2', 'Pulogede', NULL, 'IMAM', 'CARMI', 'Petani', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(297, 398, 11, '2', '306', '0084751537', 'SILVIA CHOIRUN NIHAYAH', 'TUBAN', '2008-02-11', 'P', '1', '1', '2', 'SOBONTORO', NULL, 'SUWARDI', 'ALIF FATU\'AH', 'Petani', 'Tidak bekerja', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(298, 399, 11, '2', '307', '0087363754', 'SITI KHOIRUN NISA', 'Tuban', '2008-01-22', 'P', '1', '1', '1', 'Dasin', NULL, 'AHMAD RAEHAN', 'RASMUTI', 'Petani', 'Petani', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(299, 400, 11, '2', '369', '0081600941', 'SYAIFUDDIN ZUHRI', 'Tuban', '2008-05-23', 'L', '1', '1', '1', 'Pabeyan', NULL, 'MASNURI', 'SITI MAKRIFAH', 'Nelayan', 'Lainnya', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(300, 401, 11, '2', '308', '0086330248', 'SYITA AZZAHRA', 'Tuban', '2008-01-30', 'P', '1', '1', '1', 'Sobontoro', NULL, 'Moh. Arif Efendy', 'Clara Wanalita', 'Karyawan Swasta', 'PNS/TNI/Polri', NULL, NULL, 'default.png', '1', '2021-11-06 14:47:48', '2021-11-15 13:09:48'),
(301, 402, NULL, '1', '002', NULL, 'NUR AINI', 'Tuban', '2021-10-31', 'P', '1', '1', '2', 'Dikir', NULL, 'Wasono', 'Darmini', 'Petani', 'IRT', NULL, NULL, 'default.png', '2', '2021-11-07 07:01:32', '2021-11-07 07:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_keluar`
--

CREATE TABLE `siswa_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `keluar_karena` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `alasan_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa_keluar`
--

INSERT INTO `siswa_keluar` (`id`, `siswa_id`, `keluar_karena`, `tanggal_keluar`, `alasan_keluar`, `created_at`, `updated_at`) VALUES
(4, 301, 'Mutasi', '2021-11-07', 'Percobaan', '2021-11-07 07:28:47', '2021-11-07 07:28:47'),
(5, 94, 'Mutasi', '2021-10-31', 'Tanpa Keterangan', '2021-11-07 07:39:42', '2021-11-07 07:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE `tapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_pelajaran` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id`, `tahun_pelajaran`, `semester`, `created_at`, `updated_at`) VALUES
(1, '2020/2021', '1', '2021-11-03 13:33:39', '2021-11-03 13:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$LxLtowUzFJLPeH1pPSCbCOOQJI7Rfsn7Z27FgBPTfkxJ171bLK7JS', '1', 1, NULL, '2021-10-29 02:27:37', '2022-01-06 07:44:14'),
(2, 'qkohst', '$2y$10$aAZEBNC2u6yz69MyzmsjWesy5.i9isEC5wcFQEjtqz2vNgjxXOoUy', '1', 1, NULL, '2021-10-31 08:30:07', '2021-10-31 08:30:07'),
(86, 'kukohsantoso', '$2y$10$L7nBsWRDS/thIiVifkpbeuA3IR7EWm7TlNPIsHYgzy6OqKPM3Ffxy', '2', 1, NULL, '2021-11-02 15:06:34', '2021-11-02 15:06:34'),
(87, 'alighufron', '$2y$10$63YqJA64B7FpUZ.ImwruVeza5nZZBFej2FjRNNgCwtQxFAST2JqWW', '2', 1, NULL, '2021-11-02 15:06:34', '2021-11-02 15:06:34'),
(88, 'darmini', '$2y$10$Ws/AWguLlCj3b4cdTzB/3uOa5csvmuxirxvKA3hhK/ZQUVb8.Z1V.', '2', 1, NULL, '2021-11-02 15:09:00', '2021-11-02 15:09:00'),
(92, 'habibullubab', '$2y$10$teG7X4PBm56wQF4wlIHPE.PHLWuSr3UT2ZyEmV32Hi6lHySoCb5KO', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(93, 'hanaratrirahayu', '$2y$10$efcqz9D0Wcxc7enzYuH8Fu6QaPMNpu4r8bUlsHCPbMhNSupLJHFsO', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(94, 'herlinawati', '$2y$10$65S0hwTEPer9FFbuyJ9AOOeD7.Us5xaNtxEdFc0/4ftPGiYTlIGY6', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(95, 'moh.darulafan', '$2y$10$s89wbraaKLqPBab4c47sDundCetrAAk.SkSW.3ypE.PuLrcgLjsaC', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(96, 'muhammadhasanbisri', '$2y$10$PkaOGyFwTSXzFwlSEa03Ru8WXlxx/NUHCKlxaxSLrzf1hWyZEdUy.', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(97, 'risamahmudah', '$2y$10$9K7yGU.hnmJ7YaEx.EyBzOmxYNFygcDW631PQJby4Md3ywe2XJnlm', '2', 1, NULL, '2021-11-06 13:50:01', '2022-01-06 07:55:13'),
(98, 'septiisnayatihidayat', '$2y$10$KWTxjpUtZyALcwiLEh1lweh7kzYAfghqT7OUAPWp2I2oweOeW19dm', '2', 1, NULL, '2021-11-06 13:50:01', '2021-11-06 13:50:01'),
(183, 'a.rifqikhilmi', '$2y$10$bw82a8kbYVIUodfCN6XjK.p/jxpl86J0He6aPc0qQqThquKVuFWZK', '3', 1, NULL, '2021-11-06 14:36:03', '2021-11-06 14:36:03'),
(184, 'achmadfahrialikafaby', '$2y$10$tHBRPvXMuhmrMGG3w0cbpek5tppq0jjlsHQkChttn7GrNP6g/ujrq', '3', 1, NULL, '2021-11-06 14:36:04', '2022-01-06 07:56:45'),
(185, 'ahmadakhabbanimukhith', '$2y$10$4fwUVX1RK8Ed840QwcVl1OKsnmRniRisxcGUPUes..xvwp3P9wto6', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(186, 'ahmadaromadlonansyahwafa', '$2y$10$8s3OTRvUX5W54V4UUK8NTur17lOou8FIuFi6KgE.Y1PeN2rKYNbja', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(187, 'alvanulilabshor', '$2y$10$CgGryHCtRua2xuy64YpxGuRJg3CB8Ck9YTEcWJsxj5/vHyyRHN4f.', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(188, 'atiksoimatulauliya', '$2y$10$okXLKUhEJHQ5DbRySzdRN.omfV/pGskLG8i8I1n3Q87jDBOZDNIgm', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(189, 'daffakurniawan', '$2y$10$o/T2JsWaOoO0QbZakSfY7udl7RML4CeRnWA3yPdbVTZrmI8v5geJW', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(190, 'erdivaberlianaputri', '$2y$10$QjjDLcbzEFUZxQ.akOu2r.gBEVZSWqd5gS3yFR6vbKYeInln3xNRS', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(191, 'euisluthfianaistiqomah', '$2y$10$p4MOSanY3Loz0ZtfXVau4O8X0Kxsw8TzZES40gGHdmU0sOycx.Dye', '3', 1, NULL, '2021-11-06 14:36:04', '2021-11-06 14:36:04'),
(192, 'fachrezaifnurefandi', '$2y$10$ULxZRMKqH9w2SJ3.I3m/FO52bE7q8tPpkH.mg.0unxYCHLIZz0DKO', '3', 1, NULL, '2021-11-06 14:36:05', '2022-01-06 07:39:30'),
(193, 'faizatunmaqfuroh', '$2y$10$RpF4kXk6ht80LuQ53GFZgeCfCDMkDfgZprpZ.IfsUtUmK8pWwzirW', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(194, 'finanailatulizah', '$2y$10$dMu3DQNRVGMMOQdNHWE8vO24hDMj91cuB3AFVgV4HIU8sEb.fGu36', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(195, 'jhohandahilwakiwamilbahri', '$2y$10$yCE2z8D.jXLWD9RfYMjQn.wCLgY74Ve.NsLL074dK//SQ0SNArseW', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(196, 'khulafaurrosyidin', '$2y$10$yRoCJlxaRRXjp717u9y39OfDPDwlds3UXOJS6bQ49fo9fGUqsESuq', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(197, 'lukmanardiansyahromadhoni', '$2y$10$GLpgDwiNAHZ4JEDhD7eS0OizbXsmUaeJx5te2oDuvVre5VwLZaieG', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(198, 'lukmandiyanto', '$2y$10$mVIdIaRCjugFY8/HVB89BuEMnxUlsD.HqUopwZ1gJcgGvZqddogSa', '3', 1, NULL, '2021-11-06 14:36:05', '2021-11-06 14:36:05'),
(199, 'm.shihabuddinalmusahhali', '$2y$10$d4Zwpyf/lylQLR1PnRRfK.reQtJzhPqGKH5gfSae2VlJOvCdAhHeC', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(200, 'miztailmaameliya', '$2y$10$j/Al0mt78j8bY/K0jwbFNOFk1l54Ri1Zu9LAocBMaihkSLc5UXT26', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(201, 'moch.alvansyah', '$2y$10$DK3.1fOUIXATobaEW5MlSO66Ro0l1WWmHPFkuTEiGFxCUNykNR/rq', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(202, 'monicaarthazharani', '$2y$10$VMoF8FOWoEvPFICx2QEhEO4nRVzUK0VRgma0ZiMV06FQhVsGS5vZ2', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(203, 'nabilanaurahartanto', '$2y$10$4aV5qvGtCbRvjYNstOPr2eymyeiBUohDYnEqrqawv8nw2vsg9JlpO', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(204, 'nadhifaninaoktafia', '$2y$10$5WtKNn2IhpxtKXQWgOv0e.3F1F7Zc5qR6rnSfDzq83Rxziv7EA09.', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(205, 'nadinakhaeswaroholivia', '$2y$10$A41WzDEuPEs6JtsUoxO9UemFZQC92dIDDdZmfDFLOiAgTw4gIfE1y', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(206, 'nandabaktiarpratama', '$2y$10$LV4E0w0/z.sOr/5sSVMi7uysqxa3zEFEZqwxam/TDo8K0NAP67tRC', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(207, 'nurrifkialimubarok', '$2y$10$F4jYuCFwZUPnO3o/cvXg4uAsZkFUHwuMIBVxV36kIFB4hFsPLpKCK', '3', 1, NULL, '2021-11-06 14:36:06', '2021-11-06 14:36:06'),
(208, 'pamanaisilaoktaviani', '$2y$10$lLaagY3Xe1xzk23mfBX8..rxd7QPmkpoTBdPOqp2kZ0t0NT9P.n0i', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(209, 'thoriqulilmishofianadzir', '$2y$10$st8xAOSbQeqHRQeBJ.t/gupv3meR8aRqaJb40yj0r7JQjrEVBTIyW', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(210, 'wasiyat', '$2y$10$gMS1i7Fj2uS2V46yB040CuCeu4mgC6ZKpuSTK/slX1LqA1deaGfNK', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(211, 'alvinulilalbab', '$2y$10$t2hxzhduy2fw3UhLPodZcO6uOtyyLxJiZwH4rb5G/PznZ4uJ7eDyu', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(212, 'amalia', '$2y$10$1DtU1HLIjH1nXKkVURM5Z.l22AQ9tkra7T8zOd3pOwn7YAPoFeKGC', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(213, 'andikalestari', '$2y$10$K00hdYvlwAr4zL7X.dmBIOrBUXepvNUhRWc5a/tELpDDGA74Xjiye', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(214, 'dendinaufalalaziz', '$2y$10$3Zb4LO93YSQKcLAqyxhN4updKSyqqlaVCe3acNofanrsm4jJnczMa', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(215, 'dheafanyandriani', '$2y$10$c308N/hjNMeXeqMk0ApPXe7DfE2vMWMM4rKq16xvO1x.JHZ9fmS4O', '3', 1, NULL, '2021-11-06 14:36:07', '2021-11-06 14:36:07'),
(216, 'farihfakriyanakmal', '$2y$10$lKWV3G9.77Uj6HoC5K6XBumwUnmQY4aO/dZMR2zJumI07vax1yKdG', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(217, 'feriahmadghufron', '$2y$10$eN9Ug8be4dmJ0mPE0GWoJOfVkxQoUUsNyPGYDdfVvjM781edkz0ra', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(218, 'gustinevellynacahyani', '$2y$10$fsrnIrQ31DiEAJ3OQ8ziduNvAChqVXnlsQrD1lcDo7g9fJwGIpyQq', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(219, 'hellenissaariyanit', '$2y$10$ZVXMJd4g6bnazmKa7SpnDunthUmhBaX.hvjkDATcojdEeNYygmwgy', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(220, 'irfaalifia', '$2y$10$J5ElqBIrPtE.jKNMtY53JeTiZb8ojxauWK2GNixAgCSbGnxxeID6C', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(221, 'linawatisaylinnikma', '$2y$10$XtNsAAc4Bo67ltQ/sB0Yw.rimWe1ZkAkCFE1MyqikuIpohr1l/Cyi', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(222, 'lukmanhidayatullah', '$2y$10$.qiX6aKpEgZB/0CVSLyEVePAN4CMilUfz2KeR/zF72aNHLe.8J8eG', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(223, 'miftaqurroufbilimmah', '$2y$10$kMDQ1AcIJSG9mEYyWq7JKuXI/kCjqZdRnao3uiRs11lM1.CYtEASi', '3', 1, NULL, '2021-11-06 14:36:08', '2021-11-06 14:36:08'),
(224, 'mohammadni\'amsaifullah', '$2y$10$me.csLKBllhz6DJs5iJtx.ZO95gelpMiA4y4Y3Kfy1DUlYXQ6SSn.', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(225, 'muhammadjibranirfani', '$2y$10$cLYRvw9OAh3fnLZ3GgVDjOdCXCzAHf902kghNAqiAi5Ox9CaAJQXS', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(226, 'muhammadnorrohman', '$2y$10$yF00ml628jHfHLIXmJtnWurNz/qUUQORNh7OsG4/Ph7YTk44Y4T/2', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(227, 'muhammadrizkyaditya', '$2y$10$kL9YzZdVACUhQeFo7Hb74OaJyqtdaW7rkaR7J7HFEPJ9FYIW1Zofa', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(228, 'nabighotulhusniyah', '$2y$10$FuKjDJeJdQSX0lNkTVVIouNnSZTZi5Tlnm3akBTLPwPzWivKQQsMm', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(229, 'nelialfimutmainah', '$2y$10$lbqIw2awQ91YCQCRTGPLU.ihgeAPYZzfFEGmGEMu.j2iLa39.F28C', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(230, 'novitaselviindriyani', '$2y$10$Kxt.yNz5JfzFSFWKn5Z.ZusG2ZAzr7oVxSRsA0RGSuhAwCYExuxxy', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(231, 'nuraissyah', '$2y$10$mkPKOrXlbz0zVldiZYxqhOf2qA7f1Cl4rfehfI1XeppKifyb0Lqaq', '3', 1, NULL, '2021-11-06 14:36:09', '2021-11-06 14:36:09'),
(232, 'rafiuddinathar', '$2y$10$SdEPSc.5FHukiyQoAVfQCOrVF.Iqi1Uz5aeXMx7BG6AOfXSOci6qm', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(233, 'rizkyarifafandi', '$2y$10$KsTNQTFne3QaRSh4fXFtNOFRbEio8jCTL.4cgMitKSDUkLmfsuxWi', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(234, 'rohmatulbaim', '$2y$10$xfTDbosS.9ClaVCdOI.eAeE1VyScki3Q9OE3MzOVGvceH6fvuYO3e', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(235, 'rosyidatulmahmudah', '$2y$10$jW0C8WqcYEREsEzJcd3GPeb8XWftiR6G1RY0gif/0XLYgaSCSXBsa', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(236, 'shelfioctaviaroesdah', '$2y$10$5E1uUlPG2Exh6yCwwfUmvudRFtSFYE5A3KBPwNVXOWmKy4X5ei/LO', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(237, 'susiarini', '$2y$10$e/v9S8S5duakESZsYCkQg.ZRxRvapVrN4/zY12x5TpCSjnzVuolbK', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(238, 'tiyoaldyyansah', '$2y$10$fcYVf.TmdKDHJt35RiL3V.vjItDwCBIdKzVWwMDklvRAdOJ0qCKpi', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(239, 'yogioktamahendra', '$2y$10$wYFrkX3R29uvtuThXSez3ecjMYABGiWtkAwejdZ9wezLkaHDc6sX.', '3', 1, NULL, '2021-11-06 14:36:10', '2021-11-06 14:36:10'),
(329, 'achmadfaiqmuzakkiy', '$2y$10$yZnMYQEmvwolos9Q2iEDl.M7xds7z7JcsvPVqrxBZ5NP86ukEXE5y', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(330, 'ahmadsyaifuddin', '$2y$10$kgKXkxbKE2RR2/IYSuPryOZmcr/0zW6IsT8gVkJJhP3JUxxwG9.Vm', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(331, 'ameliarahayu', '$2y$10$0de5N1Y6kLpikR.cmStdxe1OIqMtFSPL7IZD0MTRzov587LA521vO', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(332, 'arbifadillamuhsan', '$2y$10$H63vYLj2hjXgQHk6Rj1XCOZiQLkBNYDS5tU8.yM705PacK2EJvaXm', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(333, 'ardhyantopratama', '$2y$10$cKI8FYbbCZVkw584R33ZNujsbLy7EdrXdrNuPn2h1Jp9MMyKUb4dq', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(334, 'azkasyarafina', '$2y$10$7RqpaezuKv642YspEjIdteaxrFTyQQ46m6KMTu0V7ffHIQwzSw46q', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(335, 'daffamustaqim', '$2y$10$iKXe4q6l.4LBkfUe3DmPEuFNbeZ7V9Jo4iuTydShWLWt1HtrFooLW', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(336, 'difanasalsabila', '$2y$10$VwKS89rROsOCHfClM9duUerAvlmqTlQ/RwRtJsIMXO3qtwOYSkUxm', '3', 1, NULL, '2021-11-06 14:47:40', '2021-11-06 14:47:40'),
(337, 'ekariazulsilisdelimanurhidayah', '$2y$10$/ZQLABZUXM830GnrQw5Bo.mGZjbHzLrc8Kh0YV.dNayBC4J4E05Ha', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(338, 'juliansahkhoirulumam', '$2y$10$X5YBg9TEpUsrFRrt.SaxQuot11VnzEyd9BdgcFjXP/94DitBgiHb.', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(339, 'm.wahyurezaaulafirdaus', '$2y$10$J15xbBTwQDske.fSiMkp/Os2QceyL2/iHj58.OKmCnj0vkEQLklU.', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(340, 'muhammadzainulazzan', '$2y$10$DjqrK6ckQ0vV83oD6y/slOB/5VhFJsa5d/6rsjyR3bfC4v66htMOe', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(341, 'naelatulmuna', '$2y$10$TDykiV/C2o4gyckcEqIXS.5MBqZXj1p17tb8Ap2EjTcAcD8GLFYO.', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(342, 'nandadifapratama', '$2y$10$7cPIvW7nSer6v5J6JBcwMOExgarKANNH3XUP2SLmE/yghslgaZ1We', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(343, 'nurfaizatunnisa', '$2y$10$eG8xWJFv0ntybSisuZk7UuCMMOTq30wnh27Xe8223K4eShg3ok9Ui', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(344, 'nurulistianah', '$2y$10$/OIsNnN.gLyxZTQNFjy9e.vnyLsjhC0Br8hRAlwwylTGAd71XaWIy', '3', 1, NULL, '2021-11-06 14:47:41', '2021-11-06 14:47:41'),
(345, 'putriameylasari', '$2y$10$LQlT7lvZPWDpHKnftlwOtOp7pESmxlwhWJGx2cjgnOu5g0hRRWsY2', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(346, 'rifkamaulida', '$2y$10$FthljzzGOlImrh.5S/7q3O2g3ParYgZut3PY/UoTB/xuPHqFvMh56', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(347, 'rofiiqotuzzulfa', '$2y$10$IkoiFEDTua4lxFSODdzL1OfSi9eU/hldWYVP.Au46AM1QundcTaFS', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(348, 'sintiarahmasayilanova', '$2y$10$9AkE6qrrZK/kLne/uDmz3.ShUbuf8/BSSTH5AQaTZSZhCS4Ro81qm', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(349, 'sintyanabilarahmawati', '$2y$10$rLOlpPhZXnMDZ5j20BpJuO1NlUvN.ruTCllwDySOSr3YLHuSP9sAa', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(350, 'srimuawanah', '$2y$10$0iCpnvzmXNgNXd3k7LJQnOwRqg.LpCY4OCUwVA7IivKG29yiCMf2a', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(351, 'zahrakhoirunnisa', '$2y$10$KRkuQsI2bYWvXxf6PK7qUOuJim084MT6qy27nOMD4l.eZdC/qsPAq', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(352, 'ahmadrafiuddarojat', '$2y$10$CVQFWAVmvKCUbrKeZZH9Uebe/h7bFf16gxqWAwBawr1ORL2FjPu8.', '3', 1, NULL, '2021-11-06 14:47:42', '2021-11-06 14:47:42'),
(353, 'anisanurulalfiyah', '$2y$10$MYeAHc8ASVUI4yDnuFCIw.OiSgDSxpTlykMOoTK.zl8MFpPABZIaC', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(354, 'benisantoso', '$2y$10$mJE81bGYk6YM9EqHMlFLbufJdNosUWgEAYY7ihb/g.gLBZhSJNlkW', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(355, 'citraarihazahramananta', '$2y$10$L8FkQlPYvCI51ZPQDRsV.ewWPxtTC1HZztgP9VaFNLSal/ynKLqMe', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(356, 'henkygusfahdli', '$2y$10$1K07fPvC4Kgud0cwBQQTcOV35cdpxU3F7hFu1Nabqxiu40OSQ/sLm', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(357, 'ifsyaulfaidah', '$2y$10$p5URFYF3gV/QtI0sn6NbzeXo1HxSbKEK.SVKs89kkAvdmDcCZtxD6', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(358, 'izzatulnurathiyah', '$2y$10$8w49xAh7.M50T9htvL7Bdu9ZUy0uJ8.i3jVUzX.aQOIFeVeeYV292', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(359, 'jihanalfianuraini', '$2y$10$l26XodSAbqttezLaubSyi.PRlHvhLL07rclWx5gEBrvQbCHzJq9iW', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(360, 'martaviviifrika', '$2y$10$AAVX72vQlWHe2nz/Lih9X.OJbXglhkXD.A1/pHkouxz2IJ/2o1rkW', '3', 1, NULL, '2021-11-06 14:47:43', '2021-11-06 14:47:43'),
(361, 'mohamadrifqimukaffa', '$2y$10$DTM0UdwkNJ7d3pd8f/P7LettfvYaK6h4BT8ct1Q5JFVjz8OMjDN1W', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(362, 'muhammadyusufmaulana', '$2y$10$ZrWZ3kXl0iwm3VH2V7O3fO9h6UWI7FILGHt34gIYj3W7UoTLrInPi', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(363, 'nilnaminahazzahroh', '$2y$10$c0beCNKSYOW/I0iiEMRjkON2nzvFjbppsAedsuyaAl4S63.FYGvJy', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(364, 'nungkiwidiyanto', '$2y$10$wT7wOALbmTzcJl4lUYr40uMNY7zY5IJBAIt5kcu9h5N9LZaO.u01C', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(365, 'raudhatuljannah', '$2y$10$nIRsOZ.0BU9pr1CeKio.n.nWWd9gUUhaW8czU4Q/N30mm26V.09PO', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(366, 'rianashoviafida', '$2y$10$8UXl2q1kjL1JnFJ22aFC8uDA4Y0Hjvzk3kVhhsC/Hi8mROxR1kDQy', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(367, 'rismaamelia', '$2y$10$Efo.zgSN5RXMb.pNOwTf5O8u6jHlld1AIOfbSA3DMulx7BpN3XJ9y', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(368, 'rizkiriansyah', '$2y$10$GipVRE7I4xoo44Ewk9J9gOHjnJljiL.v.FzhwpHzKwc00G2k4O9Iq', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(369, 'salsanurafifah', '$2y$10$jghC9TsgxmZJ/j6LqIosJ.zLcL8IPOdk7Y0YxT2GvLnoisjigvgdu', '3', 1, NULL, '2021-11-06 14:47:44', '2021-11-06 14:47:44'),
(370, 'silviyyawardatin', '$2y$10$ajpijaI7utX5IdlVyNw8Jex/Z5NpWi4dOAcPbTyT1qK2FnPC8KNPK', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(371, 'sitilailyzakiyah', '$2y$10$3Uvz8wHPWlKqZkdJagrG8u9Zt0aBd.HnaZJqMWJsF1owW5./Fz6Am', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(372, 'yunimiftakhulkholifah', '$2y$10$ysQNraMjMmE/qTV.pnoVROA25VClmHH7rA.cbrjE4rYXdqGkR2jWq', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(373, 'ahmadiqbalbaihaqi', '$2y$10$FrEsxiHMFCdRhD1x3SCQr.t5.Y/gcckWyma.7FQwwkz8Tout0ryJa', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(374, 'ahsanulmujahidin', '$2y$10$M/7jQzDF0yH.OCWPyhnVfew4jabiMKh7RL9hOhbl7wB.N4Ymix/gq', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(375, 'andimathlabilhikam', '$2y$10$WwQqC5jODFAF48BaN9ulQePfoKCqzwxO0dOm6k.lUVZx.w.oQbJyK', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(376, 'ditahendrapratama', '$2y$10$Eof2Y49v/Rh8UTc2/uMdR.lurCrjBUd8GdL7qroozpKbNfIhXPAjG', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(377, 'divasandraabelliaputri', '$2y$10$.kGdNwp4ZuH36luLkkPDWuaI1VdfAltVJlwk7mYO8ExLloeIbPwIO', '3', 1, NULL, '2021-11-06 14:47:45', '2021-11-06 14:47:45'),
(378, 'estyaininnadziroh', '$2y$10$/dg/1FpUZZwH5khECoZZMeF0FDwNchCBs9Hru7M6YmHEXaoPqp/8e', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(379, 'ferlitasarifatunnikmah', '$2y$10$QqlcaUBCvSmlO0eA85h0hOxIPxiwzRrzXkucMD80l7TeGC74soDhW', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(380, 'fidiaanaida', '$2y$10$Fmb0IxzmMPel1nS9auq7PuRZmId.kPs7XpLJ5G/Jl1fIKgZ5953Qe', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(381, 'filhadiniasmarani', '$2y$10$rtBA3TxENPBIkAt4ytM3wOXrRig0J61WmUcQsgSDY/A1W/owVC9fe', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(382, 'helviizzaaprilia', '$2y$10$G6jtvXPXuvTtHbmx10GJuun0VVzcq7w6UKmL6wJTWqpfO1IWOMPzu', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(383, 'khoiruttamam', '$2y$10$xWjTai1Vn2zh6QINYQrXOuqYWgB40BN0cACWJ9LBg8YVSoWTJVsjO', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(384, 'm.ashrofmazidfurqoni', '$2y$10$gGJRjNiTy2GnVzKk8oDi5uyYwRsBFMxIdzMRWat48fykErV3KDrvq', '3', 1, NULL, '2021-11-06 14:47:46', '2021-11-06 14:47:46'),
(385, 'm.chabibullatif', '$2y$10$/uWsxfpc959e9Pk.Gdd3ru/.RbPHOM.vw2XUfcvEV5aRJX/YwE8ye', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(386, 'maulanaekcelersulautama', '$2y$10$x9n8WsrBGnX6YUHILzJdCOfVvdHMK0H.QAOjcHnqp.OHoJSrWbiWG', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(387, 'mohamadrifqiabdillah', '$2y$10$dpj86KTQAjtmYxA64VYV4uaIH6c4nsN2YEv/LjJVn5UcT/ds2hl6a', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(388, 'muhammadaqimyaminsimal', '$2y$10$tLVEuN9NhTQQR8kCBLt53.DEZXkM7ilKT0TXt5C0gu3CdP2XV4/R6', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(389, 'muhammadhilalridho', '$2y$10$sIUmLqkW55fipug0JzJHO.dNMsRiwYgFohZfCRWCFgUULudbfWBpa', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(390, 'muhammadnurrohman', '$2y$10$g100vM1hE8su/Hn3TDc7j.kSVDPoDMwVshUnWn9jGCb2iY3iNJJwO', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(391, 'muhammadrifqisaputra', '$2y$10$5HDAIvvK1jLnP5JQawA1te9kujkAup8bpKkMyNhbFFyJ3CmeIEXtC', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(392, 'muhammadzakkaadlyfairuzh', '$2y$10$2T2S2tBhaEB1NTad4H9r1O19QsxgTYLT0tDqYqVP1xAV4ahFSYKVS', '3', 1, NULL, '2021-11-06 14:47:47', '2021-11-06 14:47:47'),
(393, 'nabilahimayamillati', '$2y$10$o28WggKNpHv46ay65vTh9.2O0gLg17Rqr7pv8UBnGJks3e4UNzibq', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(394, 'nadyasafwahnajlatunnaqiyyah', '$2y$10$RjT/ooyKGfbgMr31kzrtXuTmGqpk1ZHkgp9UlUoddMa8RU4xX3U52', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(395, 'nurillatifah', '$2y$10$NWFEEc5J54InCf6XCx2zROGu3JJ5C/Z4FFcRWwp3SYHGmNo2H4qdO', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(396, 'roghiburrohman', '$2y$10$6.fOJC/H75FHGj2kPGm1EOehfdoYcu/NXFE0S3BCgEweeWg8.I3W2', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(397, 'selviraanindyalabibah', '$2y$10$lmr7vRpTfen6eZo5c64dkuh.Pnw7TUDhcJIjf0ymeJk2P.5LP.wXq', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(398, 'silviachoirunnihayah', '$2y$10$1jGO9rdDZds0xi3MUo3g3eVCBZ5fWkdOqTC24drWTpJcb9rFXQmSe', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(399, 'sitikhoirunnisa', '$2y$10$hzEWPNB48gqIpbuya7lhTeChC.Q9i1VRnScXZFQTxpC4E2iykC1JO', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(400, 'syaifuddinzuhri', '$2y$10$EWpP1csFGu7e9L9XdgWbWuzkSTZBWyHgsNGtUBp8hjGa2Smt932Fe', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(401, 'syitaazzahra', '$2y$10$OssJQ2SPAI6dmDLxuK8Rfe/EcDhLTaL/iJKI3F1WtTKFkndTvptQ6', '3', 1, NULL, '2021-11-06 14:47:48', '2021-11-06 14:47:48'),
(402, 'nuraini', '$2y$10$gek8OTkJLVOQC.T0gTQsn.lqrKmagYRubyIzuBXzKyjyZWZGX3aqG', '3', 0, NULL, '2021-11-07 07:01:32', '2021-11-07 07:28:47'),
(403, 'moch.munir', '$2y$10$NqbzbbIs9Fnznsj2C3yG0.jwE0lha/cRycEk3BmQpwsf.jqf9jLoG', '2', 1, NULL, '2021-11-24 09:53:20', '2021-11-24 09:53:20'),
(404, 'suwardi', '$2y$10$4QmkuiGdjONRsb3/xdHhgOk1XSF7VInbAlM/xdEBmN0qmlLf6mGDa', '2', 1, NULL, '2021-11-24 09:54:30', '2021-11-24 09:54:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`),
  ADD UNIQUE KEY `admin_nomor_hp_unique` (`nomor_hp`);

--
-- Indexes for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_ekstrakulikuler_anggota_kelas_id_foreign` (`anggota_kelas_id`),
  ADD KEY `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign` (`ekstrakulikuler_id`);

--
-- Indexes for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_kelas_siswa_id_foreign` (`siswa_id`),
  ADD KEY `anggota_kelas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catatan_wali_kelas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ekstrakulikuler_tapel_id_foreign` (`tapel_id`),
  ADD KEY `ekstrakulikuler_pembina_id_foreign` (`pembina_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guru_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `guru_nip_unique` (`nip`),
  ADD UNIQUE KEY `guru_nuptk_unique` (`nuptk`);

--
-- Indexes for table `k13_butir_sikap`
--
ALTER TABLE `k13_butir_sikap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `k13_butir_sikap_kode_unique` (`kode`);

--
-- Indexes for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign` (`k13_nilai_akhir_raport_id`);

--
-- Indexes for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_kd_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_kkm_mapel_mapel_id_foreign` (`mapel_id`),
  ADD KEY `k13_kkm_mapel_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_mapping_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_akhir_raport_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_nilai_akhir_raport_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign` (`k13_rencana_nilai_keterampilan_id`),
  ADD KEY `k13_nilai_keterampilan_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign` (`k13_rencana_nilai_pengetahuan_id`),
  ADD KEY `k13_nilai_pengetahuan_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_pts_pas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_nilai_pts_pas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign` (`k13_rencana_nilai_sosial_id`),
  ADD KEY `k13_nilai_sosial_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign` (`k13_rencana_nilai_spiritual_id`),
  ADD KEY `k13_nilai_spiritual_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_bobot_penilaian_pembelajaran_id_foreign` (`pembelajaran_id`);

--
-- Indexes for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign` (`k13_kd_mapel_id`);

--
-- Indexes for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign` (`k13_kd_mapel_id`);

--
-- Indexes for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_sosial_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign` (`k13_butir_sikap_id`);

--
-- Indexes for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k13_rencana_nilai_spiritual_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign` (`k13_butir_sikap_id`);

--
-- Indexes for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `k13_tgl_raport_tapel_id_unique` (`tapel_id`);

--
-- Indexes for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kehadiran_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_tapel_id_foreign` (`tapel_id`),
  ADD KEY `kelas_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kenaikan_kelas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_bobot_penilaian_pembelajaran_id_foreign` (`pembelajaran_id`);

--
-- Indexes for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign` (`ktsp_nilai_akhir_raport_id`);

--
-- Indexes for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_kkm_mapel_mapel_id_foreign` (`mapel_id`),
  ADD KEY `ktsp_kkm_mapel_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_mapping_mapel_mapel_id_foreign` (`mapel_id`);

--
-- Indexes for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_akhir_raport_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_tugas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_tugas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_uh_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_uh_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ktsp_nilai_uts_uas_pembelajaran_id_foreign` (`pembelajaran_id`),
  ADD KEY `ktsp_nilai_uts_uas_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ktsp_tgl_raport_tapel_id_unique` (`tapel_id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_tapel_id_foreign` (`tapel_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign` (`ekstrakulikuler_id`),
  ADD KEY `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign` (`anggota_ekstrakulikuler_id`);

--
-- Indexes for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelajaran_kelas_id_foreign` (`kelas_id`),
  ADD KEY `pembelajaran_mapel_id_foreign` (`mapel_id`),
  ADD KEY `pembelajaran_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengumuman_user_id_foreign` (`user_id`);

--
-- Indexes for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prestasi_siswa_anggota_kelas_id_foreign` (`anggota_kelas_id`);

--
-- Indexes for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_login_user_id_foreign` (`user_id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswa_nomor_hp_unique` (`nomor_hp`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_keluar_siswa_id_unique` (`siswa_id`);

--
-- Indexes for table `tapel`
--
ALTER TABLE `tapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `k13_butir_sikap`
--
ALTER TABLE `k13_butir_sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1330;

--
-- AUTO_INCREMENT for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1577;

--
-- AUTO_INCREMENT for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tapel`
--
ALTER TABLE `tapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `anggota_ekstrakulikuler`
--
ALTER TABLE `anggota_ekstrakulikuler`
  ADD CONSTRAINT `anggota_ekstrakulikuler_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `anggota_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`);

--
-- Constraints for table `anggota_kelas`
--
ALTER TABLE `anggota_kelas`
  ADD CONSTRAINT `anggota_kelas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `anggota_kelas_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `catatan_wali_kelas`
--
ALTER TABLE `catatan_wali_kelas`
  ADD CONSTRAINT `catatan_wali_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD CONSTRAINT `ekstrakulikuler_pembina_id_foreign` FOREIGN KEY (`pembina_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `ekstrakulikuler_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `k13_deskripsi_nilai_siswa`
--
ALTER TABLE `k13_deskripsi_nilai_siswa`
  ADD CONSTRAINT `k13_deskripsi_nilai_siswa_k13_nilai_akhir_raport_id_foreign` FOREIGN KEY (`k13_nilai_akhir_raport_id`) REFERENCES `k13_nilai_akhir_raport` (`id`),
  ADD CONSTRAINT `k13_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_deskripsi_sikap_siswa`
--
ALTER TABLE `k13_deskripsi_sikap_siswa`
  ADD CONSTRAINT `k13_deskripsi_sikap_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `k13_kd_mapel`
--
ALTER TABLE `k13_kd_mapel`
  ADD CONSTRAINT `k13_kd_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_kkm_mapel`
--
ALTER TABLE `k13_kkm_mapel`
  ADD CONSTRAINT `k13_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `k13_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_mapping_mapel`
--
ALTER TABLE `k13_mapping_mapel`
  ADD CONSTRAINT `k13_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `k13_nilai_akhir_raport`
--
ALTER TABLE `k13_nilai_akhir_raport`
  ADD CONSTRAINT `k13_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_nilai_keterampilan`
--
ALTER TABLE `k13_nilai_keterampilan`
  ADD CONSTRAINT `k13_nilai_keterampilan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_keterampilan_k13_rencana_nilai_keterampilan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_keterampilan_id`) REFERENCES `k13_rencana_nilai_keterampilan` (`id`);

--
-- Constraints for table `k13_nilai_pengetahuan`
--
ALTER TABLE `k13_nilai_pengetahuan`
  ADD CONSTRAINT `k13_nilai_pengetahuan_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_pengetahuan_k13_rencana_nilai_pengetahuan_id_foreign` FOREIGN KEY (`k13_rencana_nilai_pengetahuan_id`) REFERENCES `k13_rencana_nilai_pengetahuan` (`id`);

--
-- Constraints for table `k13_nilai_pts_pas`
--
ALTER TABLE `k13_nilai_pts_pas`
  ADD CONSTRAINT `k13_nilai_pts_pas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_pts_pas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_nilai_sosial`
--
ALTER TABLE `k13_nilai_sosial`
  ADD CONSTRAINT `k13_nilai_sosial_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_sosial_k13_rencana_nilai_sosial_id_foreign` FOREIGN KEY (`k13_rencana_nilai_sosial_id`) REFERENCES `k13_rencana_nilai_sosial` (`id`);

--
-- Constraints for table `k13_nilai_spiritual`
--
ALTER TABLE `k13_nilai_spiritual`
  ADD CONSTRAINT `k13_nilai_spiritual_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `k13_nilai_spiritual_k13_rencana_nilai_spiritual_id_foreign` FOREIGN KEY (`k13_rencana_nilai_spiritual_id`) REFERENCES `k13_rencana_nilai_spiritual` (`id`);

--
-- Constraints for table `k13_rencana_bobot_penilaian`
--
ALTER TABLE `k13_rencana_bobot_penilaian`
  ADD CONSTRAINT `k13_rencana_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_keterampilan`
--
ALTER TABLE `k13_rencana_nilai_keterampilan`
  ADD CONSTRAINT `k13_rencana_nilai_keterampilan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_keterampilan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_pengetahuan`
--
ALTER TABLE `k13_rencana_nilai_pengetahuan`
  ADD CONSTRAINT `k13_rencana_nilai_pengetahuan_k13_kd_mapel_id_foreign` FOREIGN KEY (`k13_kd_mapel_id`) REFERENCES `k13_kd_mapel` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_pengetahuan_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_sosial`
--
ALTER TABLE `k13_rencana_nilai_sosial`
  ADD CONSTRAINT `k13_rencana_nilai_sosial_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_sosial_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_rencana_nilai_spiritual`
--
ALTER TABLE `k13_rencana_nilai_spiritual`
  ADD CONSTRAINT `k13_rencana_nilai_spiritual_k13_butir_sikap_id_foreign` FOREIGN KEY (`k13_butir_sikap_id`) REFERENCES `k13_butir_sikap` (`id`),
  ADD CONSTRAINT `k13_rencana_nilai_spiritual_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `k13_tgl_raport`
--
ALTER TABLE `k13_tgl_raport`
  ADD CONSTRAINT `k13_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `kehadiran_siswa`
--
ALTER TABLE `kehadiran_siswa`
  ADD CONSTRAINT `kehadiran_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `kelas_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `kenaikan_kelas`
--
ALTER TABLE `kenaikan_kelas`
  ADD CONSTRAINT `kenaikan_kelas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `ktsp_bobot_penilaian`
--
ALTER TABLE `ktsp_bobot_penilaian`
  ADD CONSTRAINT `ktsp_bobot_penilaian_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_deskripsi_nilai_siswa`
--
ALTER TABLE `ktsp_deskripsi_nilai_siswa`
  ADD CONSTRAINT `ktsp_deskripsi_nilai_siswa_ktsp_nilai_akhir_raport_id_foreign` FOREIGN KEY (`ktsp_nilai_akhir_raport_id`) REFERENCES `ktsp_nilai_akhir_raport` (`id`),
  ADD CONSTRAINT `ktsp_deskripsi_nilai_siswa_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_kkm_mapel`
--
ALTER TABLE `ktsp_kkm_mapel`
  ADD CONSTRAINT `ktsp_kkm_mapel_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `ktsp_kkm_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `ktsp_mapping_mapel`
--
ALTER TABLE `ktsp_mapping_mapel`
  ADD CONSTRAINT `ktsp_mapping_mapel_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `ktsp_nilai_akhir_raport`
--
ALTER TABLE `ktsp_nilai_akhir_raport`
  ADD CONSTRAINT `ktsp_nilai_akhir_raport_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_akhir_raport_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_tugas`
--
ALTER TABLE `ktsp_nilai_tugas`
  ADD CONSTRAINT `ktsp_nilai_tugas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_tugas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_uh`
--
ALTER TABLE `ktsp_nilai_uh`
  ADD CONSTRAINT `ktsp_nilai_uh_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_uh_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_nilai_uts_uas`
--
ALTER TABLE `ktsp_nilai_uts_uas`
  ADD CONSTRAINT `ktsp_nilai_uts_uas_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`),
  ADD CONSTRAINT `ktsp_nilai_uts_uas_pembelajaran_id_foreign` FOREIGN KEY (`pembelajaran_id`) REFERENCES `pembelajaran` (`id`);

--
-- Constraints for table `ktsp_tgl_raport`
--
ALTER TABLE `ktsp_tgl_raport`
  ADD CONSTRAINT `ktsp_tgl_raport_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_tapel_id_foreign` FOREIGN KEY (`tapel_id`) REFERENCES `tapel` (`id`);

--
-- Constraints for table `nilai_ekstrakulikuler`
--
ALTER TABLE `nilai_ekstrakulikuler`
  ADD CONSTRAINT `nilai_ekstrakulikuler_anggota_ekstrakulikuler_id_foreign` FOREIGN KEY (`anggota_ekstrakulikuler_id`) REFERENCES `anggota_ekstrakulikuler` (`id`),
  ADD CONSTRAINT `nilai_ekstrakulikuler_ekstrakulikuler_id_foreign` FOREIGN KEY (`ekstrakulikuler_id`) REFERENCES `ekstrakulikuler` (`id`);

--
-- Constraints for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD CONSTRAINT `pembelajaran_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `pembelajaran_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `pembelajaran_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `prestasi_siswa`
--
ALTER TABLE `prestasi_siswa`
  ADD CONSTRAINT `prestasi_siswa_anggota_kelas_id_foreign` FOREIGN KEY (`anggota_kelas_id`) REFERENCES `anggota_kelas` (`id`);

--
-- Constraints for table `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD CONSTRAINT `riwayat_login_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `siswa_keluar`
--
ALTER TABLE `siswa_keluar`
  ADD CONSTRAINT `siswa_keluar_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
