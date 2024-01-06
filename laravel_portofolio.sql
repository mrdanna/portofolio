-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 03:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'Danna Saputra', '<p>Saya adalah <b>Danna</b></p>', '2023-12-31 00:21:52', '2023-12-31 00:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'php, html5, css3, nodejs, react, go, mysql, laravel, codeigniter, express, git, github, docker, oracle, linux, python, jupyter, thealgorithms', '2024-01-01 08:49:47', '2024-01-02 14:36:59'),
(2, '_workflow', '<ul><li><span style=\"font-size: 14px;\">GIT</span></li></ul>', '2024-01-01 08:49:47', '2024-01-01 08:49:47'),
(3, '_foto', '240101055400.jpg', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(4, '_email', 'danna.saputra22@gmail.com', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(5, '_kota', 'Bekasi', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(6, '_provinsi', 'Jawa Barat', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(7, '_nohp', '6281376222290', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(8, '_facebook', '-', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(9, '_twitter', '-', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(10, '_linkedin', '-', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(11, '_github', '-', '2024-01-01 10:54:00', '2024-01-01 10:54:00'),
(12, '_halaman_about', '2', '2024-01-01 11:04:58', '2024-01-01 11:04:58'),
(13, '_halaman_interest', '2', '2024-01-01 11:04:58', '2024-01-01 11:04:58'),
(14, '_halaman_award', '2', '2024-01-01 11:04:58', '2024-01-01 11:04:58');

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
(2, '2023_12_27_011639_table_users_add_column_google_id', 2),
(3, '2023_12_27_023929_users_set_default_password', 3),
(4, '2023_12_27_125201_user_add_column_avatar', 4),
(5, '2023_12_27_134537_create_halamen_table', 5),
(6, '2023_12_30_140413_create_halaman_table', 6),
(7, '2023_12_31_081210_create_riwayats_table', 7),
(8, '2024_01_01_150617_create_metadata_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` enum('experience','education') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'S1 - Univesitas Budi Luhur', 'education', '2008-09-01', '2012-06-12', 'Teknologi Informasi', 'Teknik Informatika', '3.00', NULL, '2024-01-01 05:48:00', '2024-01-02 14:29:58'),
(3, 'S2 - Univesitas Budi Luhur', 'education', '2020-09-12', '2022-03-16', 'Teknologi Informasi', 'Ilmu Komputer', '3.00', NULL, '2024-01-02 14:29:36', '2024-01-02 14:29:36'),
(4, 'Senior Software Engineer', 'experience', '2023-06-07', NULL, 'Pt. Jurnalindo Aksara Grafika (Bisnis Indonesia Group)', NULL, NULL, '<ul><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Creating website creation\r\napplication technology, using the PHP programming language and CodeIgniter\r\nframework, Laravel Oracle database, MySQL.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Creating&nbsp;</span>internal company\r\napplications, starting from data analysis, design and database, as well as\r\ncoding with Laravel and CodeIgniter according to customer requests.</li><li>Develop internal application\r\nto automate the employee KPI calculation system, using oracle database and php\r\nprogramming with Laravel framework.</li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Troubleshoot debugging and\r\nimplement the latest solution for internal company application.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Analys and addition oh HRIS\r\napplication feature with php and Laravel Framework.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Collaborate with fellow\r\nprogrammers to develop new features that can improve application performance.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Search and resolve bugs in\r\nthe application to maintain quality.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Maintenance application stability\r\nand increase application process uptime.</span></li></ul>', '2024-01-02 14:46:59', '2024-01-02 14:46:59'),
(5, 'Informatics Engineering Lecturer', 'experience', '2023-11-13', NULL, 'Universitas Mitra Bangsa (IMMI)', NULL, NULL, '<ul><li>Teaches Algoritm and data structure.</li><li>Teaches Web Programming with PHP and Mysql</li></ul>', '2024-01-02 14:50:21', '2024-01-02 14:50:21'),
(6, 'Analys Officer', 'experience', '2014-07-07', '2023-05-31', 'Pt. Indonusa Telemedia (TransVision)', NULL, NULL, '<ul><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Analysis of regional office\r\nproductivity in achievement target, Create Dashboard performance application\r\nweb based.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Creation of performance\r\ndashboards for all regional units, with Codeigniter 3 database mysql.</span></li><li><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;\r\nmso-bidi-font-family:Arial;mso-bidi-theme-font:minor-bidi;mso-ansi-language:\r\nEN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Quality&nbsp;</span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">control </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">report all technician installation.</span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Implementation of application for\r\nperformance dashboard reporting.</span></span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Calculating regional performance productivity.</span></span></span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Tester and QA&nbsp;</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">application</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"> </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">handheld technician.</span></span></span></span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Tester and QA&nbsp;</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">application </span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">&nbsp;Dashboard service operation.</span></span></span></span></span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Innova</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">tion for report and application for unit.</span></span></span></span></span></span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Create Application for internal unit,\r\nProgramming language PHP and mysql framework CI-3.</span></span></span></span></span>&nbsp;</span></span><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p></li></ul>', '2024-01-02 14:56:22', '2024-01-02 14:56:22'),
(7, 'Software Engineer', 'experience', '2013-12-02', '2014-07-01', 'Pt. Catur Sentosa Adiptana TBK', NULL, NULL, '<ul><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Web developer and Android programmer for\r\ninternal unit.</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Monitoring data </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">and </span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">&nbsp;performance </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">user application website and handheld.</span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Handheld project for sales retail all\r\nregional office.</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Report</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">ing</span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"> data </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">and</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"> </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">analys</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"> </span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">performance sales </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">for database application</span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Created tutorial and documentation for use\r\napplication for user</span></li><li><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;</span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Installation networking for sub-branch</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Maintenance sistem </span><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">and</span><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\"> network</span><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p></li></ul>', '2024-01-02 14:58:45', '2024-01-02 14:58:45'),
(8, 'IT Network Engineer', 'experience', '2013-01-07', '2013-12-04', 'Pt. Unisys .ltd', NULL, NULL, '<ul><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Engineer installasi Cisco</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Remote setting Router\r\nCisco</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Maintenance repairing\r\nCisco</span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Reporting for finish installastion</span></li><li><span lang=\"EN-US\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Coordination for user of American and London</span></li><li><span lang=\"IN\" style=\"font-size: 0.875rem; text-indent: -18pt; font-family: var(--bs-font-sans-serif); text-align: var(--bs-body-text-align);\">Make network experiments\r\nin the laboratory</span><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p><p class=\"CustomBullets\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1;\r\ntab-stops:36.0pt\"><span lang=\"EN-US\"><o:p></o:p></span></p></li></ul>', '2024-01-02 15:01:08', '2024-01-02 15:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Danna Saputra', 'danna.saputra22@gmail.com', NULL, NULL, NULL, '2023-12-27 01:42:36', '2023-12-27 06:20:57', '111685904357592399955', '111685904357592399955.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
