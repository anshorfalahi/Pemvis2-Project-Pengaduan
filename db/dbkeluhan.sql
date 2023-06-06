-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 09:36 AM
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
-- Database: `dbkeluhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `idakun` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`idakun`, `username`, `password`, `level`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'ADMIN'),
(2, 'jaka', 'c4ca4238a0b923820dcc509a6f75849b', 'DOSEN'),
(3, 'Anshor', 'c4ca4238a0b923820dcc509a6f75849b', 'MAHASISWA'),
(4, 'Amat', 'c4ca4238a0b923820dcc509a6f75849b', 'STAF BIDANG');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `idbidang` int(11) NOT NULL,
  `idakun` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `idbidang` int(11) NOT NULL,
  `namabidang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`idbidang`, `namabidang`) VALUES
(1, 'BMN'),
(2, 'Akademik');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `iddosen` int(11) NOT NULL,
  `idakun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jeniskelamin` enum('Laki-Laki','Prempuan','','') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `namaprodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`iddosen`, `idakun`, `nama`, `jeniskelamin`, `alamat`, `nohp`, `foto`, `email`, `namaprodi`) VALUES
(110011, 2, 'Jaka Permadi', 'Laki-Laki', 'Kurau Utara', '085232412413', 'Null', 'amat@mail.id', 'Teknologi Infomasi');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keluhan`
--

CREATE TABLE `laporan_keluhan` (
  `idlaporan` int(11) NOT NULL,
  `idakun_pelapor` int(11) NOT NULL,
  `idbidang` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `laporan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_keluhan`
--

INSERT INTO `laporan_keluhan` (`idlaporan`, `idakun_pelapor`, `idbidang`, `tanggal`, `laporan`) VALUES
(1, 2, 2, '2023-05-23 00:00:00', 'Lanatai Pecah Lab Thomson'),
(2, 3, 1, '2023-05-30 00:00:00', 'Meja Lab C++ Rusak'),
(3, 4, 2, '2023-05-29 00:00:00', 'Mouse PC 01 Lab Linus Hilang');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `idakun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan','','') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `namaprodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `idakun`, `nama`, `jeniskelamin`, `alamat`, `nohp`, `foto`, `email`, `namaprodi`) VALUES
(2101301009, 3, 'Anshor', 'Laki-laki', 'Bati-Bati', '085232411122', NULL, 'anshor@mail.com', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `idpengumuman` int(11) NOT NULL,
  `idbidang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `pengumuman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `idpetugas` int(11) NOT NULL,
  `idakun` int(11) NOT NULL,
  `idbidang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` char(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_bidang`
--

CREATE TABLE `staff_bidang` (
  `idstaff` int(11) NOT NULL,
  `idakun` int(11) NOT NULL,
  `idbidang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan','','') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_bidang`
--

INSERT INTO `staff_bidang` (`idstaff`, `idakun`, `idbidang`, `nama`, `jeniskelamin`, `alamat`, `nohp`, `email`, `foto`) VALUES
(1, 4, 2, 'Amat', 'Laki-laki', 'Gunung Raja', '085232400999', 'amat@mail.id', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`idakun`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `idbidang` (`idbidang`),
  ADD KEY `idakun` (`idakun`);

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`idbidang`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`iddosen`),
  ADD KEY `idakun` (`idakun`);

--
-- Indexes for table `laporan_keluhan`
--
ALTER TABLE `laporan_keluhan`
  ADD PRIMARY KEY (`idlaporan`),
  ADD KEY `idbidang` (`idbidang`),
  ADD KEY `idakun_pelapor` (`idakun_pelapor`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_akun` (`idakun`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`idpengumuman`),
  ADD KEY `idbidang` (`idbidang`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`idpetugas`),
  ADD KEY `idakun` (`idakun`),
  ADD KEY `idbidang` (`idbidang`);

--
-- Indexes for table `staff_bidang`
--
ALTER TABLE `staff_bidang`
  ADD PRIMARY KEY (`idstaff`),
  ADD KEY `idakun` (`idakun`),
  ADD KEY `idbidang` (`idbidang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `idakun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `idbidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan_keluhan`
--
ALTER TABLE `laporan_keluhan`
  MODIFY `idlaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `idpengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `idpetugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_bidang`
--
ALTER TABLE `staff_bidang`
  MODIFY `idstaff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`idbidang`) REFERENCES `bidang` (`idbidang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`idakun`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`idakun`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporan_keluhan`
--
ALTER TABLE `laporan_keluhan`
  ADD CONSTRAINT `laporan_keluhan_ibfk_1` FOREIGN KEY (`idbidang`) REFERENCES `bidang` (`idbidang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_keluhan_ibfk_2` FOREIGN KEY (`idakun_pelapor`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`idakun`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_ibfk_1` FOREIGN KEY (`idbidang`) REFERENCES `bidang` (`idbidang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_ibfk_1` FOREIGN KEY (`idakun`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `petugas_ibfk_2` FOREIGN KEY (`idbidang`) REFERENCES `bidang` (`idbidang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_bidang`
--
ALTER TABLE `staff_bidang`
  ADD CONSTRAINT `staff_bidang_ibfk_1` FOREIGN KEY (`idakun`) REFERENCES `akun` (`idakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_bidang_ibfk_2` FOREIGN KEY (`idbidang`) REFERENCES `bidang` (`idbidang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
