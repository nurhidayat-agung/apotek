-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2016 at 01:55 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_obat`
--

CREATE TABLE `kelompok_obat` (
  `kd_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_obat`
--

INSERT INTO `kelompok_obat` (`kd_kelompok`, `nama_kelompok`, `keterangan`) VALUES
(1000, 'batuk', 'obat batuk'),
(1001, 'flu', 'obat flu'),
(1003, 'kulit', 'obat penyakit kulit'),
(1004, 'jantung', 'obat penyakit jantung');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `akses` enum('admin','user') NOT NULL,
  `status` enum('aktif','banned') NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `akses`, `status`, `keterangan`) VALUES
('admin', 'admin', 'admin', 'aktif', 'sys admin'),
('user1', 'user1', 'user', 'aktif', 'user satu'),
('user2', 'user2', 'user', 'aktif', 'user dua'),
('user3', 'user3', 'user', 'banned', 'user tiga');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kd_obat` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kd_kelompok` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `dosis_mulai` float NOT NULL,
  `dosis_sampai` float NOT NULL,
  `dosisAnak_mulai` float NOT NULL,
  `dosisAnak_sampai` float NOT NULL,
  `frekuensi_mulai` float NOT NULL,
  `frekuensi_sampai` float NOT NULL,
  `satuan_frekuensi` varchar(50) NOT NULL,
  `frekuensiAnak_mulai` float NOT NULL,
  `frekuensiAnak_sampai` float NOT NULL,
  `informasi` varchar(255) NOT NULL,
  `beers` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kd_obat`, `nama_obat`, `kd_kelompok`, `satuan`, `dosis_mulai`, `dosis_sampai`, `dosisAnak_mulai`, `dosisAnak_sampai`, `frekuensi_mulai`, `frekuensi_sampai`, `satuan_frekuensi`, `frekuensiAnak_mulai`, `frekuensiAnak_sampai`, `informasi`, `beers`) VALUES
(10001, 'ultraflu', 1001, 'tablet', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'tanpa kantuk', 'yes'),
(10002, 'sanaflu', 1001, 'tablet', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'tanpa kantuk', 'yes'),
(10003, 'mixagrip', 1001, 'tablet', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'tanpa kantuk', 'yes'),
(10004, 'decadril', 1000, 'sirup', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'menyebabkan kantuk', 'yes'),
(10005, 'OBH', 1000, 'sirup', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'menyebabkan kantuk', 'yes'),
(10006, 'bisolfon', 1000, 'sirup', 1, 3, 0.5, 1, 1, 3, 'hari', 1, 2, 'menyebabkan kantuk', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelompok_obat`
--
ALTER TABLE `kelompok_obat`
  ADD PRIMARY KEY (`kd_kelompok`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kd_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelompok_obat`
--
ALTER TABLE `kelompok_obat`
  MODIFY `kd_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `kd_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
