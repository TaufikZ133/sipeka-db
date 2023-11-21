-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 05:40 PM
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
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `token`, `foto`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2b$10$EhToTXD8Je3zvzVTKNCAU./7vnLKi3XAtwSA8a.YYp7E5ws3AxZi2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZG1pbklkIjoxLCJuYW1hIjoiQWRtaW4gdXBkYXRlIiwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJpYXQiOjE2OTQzNjAyMzYsImV4cCI6MTY5NDM2MjAzNn0.eMhnaiFXsYFvCgQn15SS4H7qaE8IXKgHUY6Pc1pg5QA', 'images/1693276564830-69.jpg', '2023-08-11 16:00:46', '2023-09-10 15:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `nama_dokumen` varchar(255) DEFAULT NULL,
  `jenis_dokumen` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama_dokumen`, `jenis_dokumen`, `createdAt`, `updatedAt`) VALUES
(1, 'Surat Izin Cuti', 'Surat Izin', '2023-08-10 12:31:39', '2023-08-10 12:31:39'),
(2, 'Surat Keterangan Lembur', 'Surat Keterangan', '2023-08-10 12:31:59', '2023-08-10 12:31:59'),
(3, 'Surat Keterangan Kerja', 'Surat Keterangan', '2023-08-10 12:32:21', '2023-08-10 12:32:21'),
(6, 'Surat Perjanjian Kerja', 'Surat Perjanjian', '2023-08-14 05:17:58', '2023-08-14 05:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `gajikaryawan`
--

CREATE TABLE `gajikaryawan` (
  `id` int(11) NOT NULL,
  `bulan_penggajian` varchar(255) DEFAULT NULL,
  `gaji_pokok` varchar(255) DEFAULT NULL,
  `tunjangan_tetap` varchar(255) DEFAULT NULL,
  `tunjangan_tidak_tetap` varchar(255) DEFAULT NULL,
  `total_pendapatan` varchar(255) DEFAULT NULL,
  `pph21` varchar(255) DEFAULT NULL,
  `denda_pelanggaran` varchar(255) DEFAULT NULL,
  `total_pengurangan` varchar(255) DEFAULT NULL,
  `penerimaan_bersih` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `gajiId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `departemen` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `tempat_tanggal_lahir` varchar(255) DEFAULT NULL,
  `kewarganegaraan` varchar(255) DEFAULT NULL,
  `nomer_hp` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `golongan_darah` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `asal_sd` varchar(255) DEFAULT NULL,
  `asal_smp` varchar(255) DEFAULT NULL,
  `asal_sma` varchar(255) DEFAULT NULL,
  `perguruan_tinggi` varchar(255) DEFAULT NULL,
  `jurusan_prodi` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `nama_suamiistri` varchar(255) DEFAULT NULL,
  `jumlah_anak` varchar(255) DEFAULT NULL,
  `saudara_kandung` varchar(255) DEFAULT NULL,
  `telepon_keluarga` varchar(255) DEFAULT NULL,
  `pas_foto` varchar(255) NOT NULL,
  `foto_ktp` varchar(255) NOT NULL,
  `foto_kk` varchar(255) NOT NULL,
  `foto_ijazah` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `email`, `password`, `token`, `nik`, `status`, `jabatan`, `departemen`, `jenis_kelamin`, `tempat_tanggal_lahir`, `kewarganegaraan`, `nomer_hp`, `agama`, `golongan_darah`, `alamat`, `kota`, `provinsi`, `kode_pos`, `asal_sd`, `asal_smp`, `asal_sma`, `perguruan_tinggi`, `jurusan_prodi`, `nama_ayah`, `nama_ibu`, `nama_suamiistri`, `jumlah_anak`, `saudara_kandung`, `telepon_keluarga`, `pas_foto`, `foto_ktp`, `foto_kk`, `foto_ijazah`, `createdAt`, `updatedAt`) VALUES
(1, 'Taufik', 'taufik@gmail.com', '$2b$10$qVOeSlDpuNaXGyfSYiaL.Of1ixeRwRd5n2HYGMqsFlAxPveG9ORqG', NULL, '2013201002', 'Mahasiswa', 'karyawan', 'Frontend Developer', 'Pria', 'Bandung 13 Maret 2001', 'Indonesia', '081313121427', 'Islam', 'A', 'Jalan Puyuh Dalam 2 No.34', 'Bandung', 'Jawa Barat', '40131', 'SDN Tilil 1 Bandung', 'SMPN 16 Bandung', 'SMKN 2 Bandung', 'Universitas Sangga Buana', 'Teknik Informatika', 'Yudi', 'Lilis', '', '1', '1', '081313121427', 'images/1691598952719-29.jpg', 'images/1693045726737-Ktp.png', 'images/1693044580403-KartuKeluarga.png', 'images/1693045793972-Ijazah.png', '2023-08-07 15:23:17', '2023-09-10 15:37:12'),
(2, 'Zaidan Fajri', 'zaidan@gmail.com', '$2b$10$K7IeniuJo9uDRyugaERI5ulmhBuf2Sh7e1nO9oqZ578vL0/AENfLC', NULL, '2013201002', 'Mahasiswa', 'karyawan', 'Backend Developer', 'Laki-laki', 'Stockholm, 10 April 2000', 'Swedia', '081313121420', 'Islam', 'O', 'Jalan Stockholm No.34', 'Stockholm', 'Swedia Barat', '10201', 'SDN Mawar 1 Stockholm', 'SMPN 1 Stockholm', 'SMAN 1 Stockholm', 'Harvard University', 'S3 Teknik Informatika', 'Ayahanda', 'Ibunda', 'Istri', '2', '1', '081111222333444', 'images/1691823538910-69.jpg', '', '', '', '2023-08-09 08:12:45', '2023-08-13 12:10:12'),
(3, 'Naufal', 'naufal@gmail.com', '$2b$10$CG2zKx3lQlNDXk4oIAo3Dusk4dWWRR3m/WLdOWKLC.L2m/J34iDIG', NULL, '2012102001', 'Mahasiswa', 'karyawan', 'Application Software', NULL, NULL, NULL, '08112226764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/1691824047148-74.jpg', '', '', '', '2023-08-11 14:28:45', '2023-08-12 07:07:29'),
(4, 'Enjang', 'enjang@gmail.com', '$2b$10$qsxIKPYdCeWzVsvljURyOOGAOkXI/6okNWptxP3S0RMGvUUnjnOH.', NULL, '2012102002', 'Mahasiswa', 'manajer', 'Application Software', NULL, NULL, NULL, '0821181722934', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/1693133282280-46 (1).jpg', '', '', '', '2023-08-11 14:34:24', '2023-09-05 18:52:20'),
(11, 'yafi', 'yafi@gmail.com', '$2b$10$5SZOdnMX3XvTmFoDzxv5buVixS/PKyqIJ04jw0Gr720AWEe.m2lmm', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJrYXJ5YXdhbklkIjoxMSwibmFtYSI6InlhZmkiLCJlbWFpbCI6InlhZmlAZ21haWwuY29tIiwiaWF0IjoxNjkyMDgyMTQ4LCJleHAiOjE2OTIwODM5NDh9.zAoTEdNkMCQDCTbDWw-F3vADn7xnJQca4H8CT7jniLk', '20132011', 'Mahasiswa', 'karyawan', 'Backend', 'laki-laki', 'bandung , 13 maret 2000', 'Indonesia', '0813131214201', 'Islam', 'A', 'Jalan mawar', 'Bandung', 'Jawa barat', '40131', 'SD angrek', 'SMP angkasa', 'SMA melati', 'Universitas', 'Teknik Informatika', 'Ayah', 'Ibu', '-', '-', '1', '081313131312', 'images/1691989272681-74.jpg', '', '', '', '2023-08-14 04:57:38', '2023-08-15 06:54:55'),
(12, 'sarah', 'sarah@gmail.com', '$2b$10$o8A3TyamE1tzeqegLy7aw.8JPQsliXMpnAEupM37rovknRjMi5X.W', NULL, NULL, NULL, 'manajer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/1693931584465-3.jpg', '', '', '', '2023-08-26 10:42:02', '2023-09-10 15:14:25'),
(13, 'nugraha', 'nugraha@gmail.com', '$2b$10$7R.85x7zzkeIhlJeB/EFpeJh11u7iATlngHrS5E.RMQ3.nO.IhRku', NULL, NULL, NULL, 'karyawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/1693133621694-64.jpg', '', '', '', '2023-08-27 10:52:48', '2023-09-10 15:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `masterpenggajian`
--

CREATE TABLE `masterpenggajian` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `gaji_perbulan` varchar(255) DEFAULT NULL,
  `gaji_perhari` varchar(255) DEFAULT NULL,
  `tunjangan_tetap` varchar(255) DEFAULT NULL,
  `tunjangan_tidak_tetap` varchar(255) DEFAULT NULL,
  `pph21` varchar(255) DEFAULT NULL,
  `denda` varchar(255) DEFAULT NULL,
  `pendapatan_bersih` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masterpenggajian`
--

INSERT INTO `masterpenggajian` (`id`, `jabatan`, `gaji_perbulan`, `gaji_perhari`, `tunjangan_tetap`, `tunjangan_tidak_tetap`, `pph21`, `denda`, `pendapatan_bersih`, `createdAt`, `updatedAt`) VALUES
(10, 'karyawan', '3000000', '120000', '100000', '100000', '160000', '0', '3040000', '2023-09-05 17:19:22', '2023-09-05 17:19:22'),
(13, 'manajer', '5000000', '200000', '150000', '150000', '265000', '0', '5035000', '2023-09-05 17:58:47', '2023-09-05 17:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `presensikaryawan`
--

CREATE TABLE `presensikaryawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_presensi` enum('hadir','tidak hadir','izin') DEFAULT 'tidak hadir',
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `presensiId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gajikaryawan`
--
ALTER TABLE `gajikaryawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gajiId` (`gajiId`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterpenggajian`
--
ALTER TABLE `masterpenggajian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensikaryawan`
--
ALTER TABLE `presensikaryawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensiId` (`presensiId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gajikaryawan`
--
ALTER TABLE `gajikaryawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `masterpenggajian`
--
ALTER TABLE `masterpenggajian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `presensikaryawan`
--
ALTER TABLE `presensikaryawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gajikaryawan`
--
ALTER TABLE `gajikaryawan`
  ADD CONSTRAINT `gajikaryawan_ibfk_1` FOREIGN KEY (`gajiId`) REFERENCES `karyawan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `presensikaryawan`
--
ALTER TABLE `presensikaryawan`
  ADD CONSTRAINT `presensikaryawan_ibfk_1` FOREIGN KEY (`presensiId`) REFERENCES `karyawan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
