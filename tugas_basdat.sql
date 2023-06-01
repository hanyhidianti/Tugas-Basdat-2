-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2023 at 02:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_basdat`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Desain Grafis');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int NOT NULL,
  `kode` varchar(45) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `durasi_dan_biaya` varchar(100) NOT NULL,
  `kategori_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `kode`, `deskripsi`, `durasi_dan_biaya`, `kategori_id`) VALUES
(1, 'cv', 'Kursus Canva', '1 jam 20000', 1),
(2, 'in', 'Kursus Inkscape', '1 jam 15000', 1),
(3, 'gm', 'Kursus GIMP', '1 Jam 10000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int NOT NULL,
  `nim` int NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `hp` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `materi_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `nim`, `nama`, `gender`, `hp`, `email`, `alamat`, `foto`, `materi_id`) VALUES
(10, 1020304, 'Hany Hidianti', 'Perempuan', 987775645, 'hanyh@gmail', 'Jakarta', '', 1),
(20, 1020305, 'Alma Nur Fajriah', 'Perempuan', 537888937, 'almanf@gmail.com', 'CItayem', NULL, 3),
(30, 1020306, 'Isma Nabila', 'Perempuan', 86543876, 'ismanh@gmail.com', 'Bandung', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalan_kelas`
--

CREATE TABLE `penjadwalan_kelas` (
  `id` int NOT NULL,
  `kode_kelas` varchar(45) NOT NULL,
  `kelas` varchar(45) NOT NULL,
  `hari` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `materi_id` int NOT NULL,
  `pengajar_id` int NOT NULL,
  `peserta_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjadwalan_kelas`
--

INSERT INTO `penjadwalan_kelas` (`id`, `kode_kelas`, `kelas`, `hari`, `tgl_mulai`, `tgl_akhir`, `jam_mulai`, `jam_akhir`, `materi_id`, `pengajar_id`, `peserta_id`) VALUES
(4, 'enam', 'anggrek', '2023-06-06', '2023-06-06', '2023-06-06', '08:00:00', '10:00:00', 3, 30, 4),
(5, 'lima', 'tulip', '2023-06-05', '2023-06-05', '2023-06-05', '08:00:00', '10:00:00', 2, 20, 6),
(6, 'empat', 'dahlia', '2023-06-04', '2023-06-04', '2023-06-04', '08:00:00', '10:00:00', 3, 30, 2),
(7, 'tiga', 'matahari', '2023-06-03', '2023-06-03', '2023-06-03', '08:00:00', '10:00:00', 2, 20, 5),
(8, 'dua', 'melati', '2023-06-02', '2023-06-02', '2023-06-02', '08:00:00', '10:00:00', 3, 30, 1),
(9, 'satu', 'mawar', '2023-06-01', '2023-06-01', '2023-06-01', '08:00:00', '10:00:00', 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `hp` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `materi_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `nama`, `gender`, `hp`, `email`, `foto`, `materi_id`) VALUES
(1, 'Hindun', 'Perempuan', 987767543, 'hindun@gmail.com', NULL, 2),
(2, 'Febri Billyagi', 'Laki-laki', 876543985, 'febribilly@gmail.com', NULL, 2),
(3, 'Cherry Renata', 'Perempuan', 342569875, 'cherryrenata@gmail.com', NULL, 1),
(4, 'Farid Imam', 'Laki-laki', 854789653, 'faridimam@gmail.com', NULL, 3),
(5, 'Chika Karena', 'Perempuan', 977625437, 'chikakarena@gmail.com', NULL, 3),
(6, 'Abdul Fatahila', 'Laki-laki', 564284957, 'abdulfatahila@gmail.com', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materi_kategori_idx` (`kategori_id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengajar_materi1_idx` (`materi_id`);

--
-- Indexes for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penjadwalan_kelas_materi1_idx` (`materi_id`),
  ADD KEY `fk_penjadwalan_kelas_pengajar1_idx` (`pengajar_id`),
  ADD KEY `fk_penjadwalan_kelas_peserta1_idx` (`peserta_id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_peserta_materi1_idx` (`materi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_materi_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);

--
-- Constraints for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD CONSTRAINT `fk_pengajar_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`);

--
-- Constraints for table `penjadwalan_kelas`
--
ALTER TABLE `penjadwalan_kelas`
  ADD CONSTRAINT `fk_penjadwalan_kelas_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`),
  ADD CONSTRAINT `fk_penjadwalan_kelas_pengajar1` FOREIGN KEY (`pengajar_id`) REFERENCES `pengajar` (`id`),
  ADD CONSTRAINT `fk_penjadwalan_kelas_peserta1` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id`);

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_peserta_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
