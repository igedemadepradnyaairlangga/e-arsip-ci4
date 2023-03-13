-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 01:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-arsip-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arsip`
--

CREATE TABLE `tbl_arsip` (
  `id_arsip` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `no_arsip` varchar(15) DEFAULT NULL,
  `nama_arsip` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `file_arsip` text DEFAULT NULL,
  `ukuran_file` int(11) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_arsip`
--

INSERT INTO `tbl_arsip` (`id_arsip`, `id_kategori`, `no_arsip`, `nama_arsip`, `deskripsi`, `tgl_upload`, `tgl_update`, `file_arsip`, `ukuran_file`, `id_dep`, `id_user`) VALUES
(7, 12, '20100259-sjFJ', 'Sertifikat seminar', NULL, '2020-10-02', '2020-10-02', '1601643438_f6c983f776afce130031.pdf', 1000, 1, 1),
(8, 3, '20100228-PtZ5', 'Surat Keputusan', 'Surat Keputusan', '2020-10-02', '2020-10-02', '1601643665_70cb49d74ee3cdf2ffc0.pdf', 632879, 1, 1),
(9, 2, '20100219-owBC', 'Surat Keluar Ke Kantor Camat', 'Surat Keluar Ke Kantor Camat', '2020-10-02', '2020-10-02', '1601644005_e6dea022fdbf6549db8e.pdf', 632879, 1, 1),
(12, 12, '23031142-d1bx', 'berkas eulis-debby', 'Tinggal KS', '2023-03-11', '2023-03-11', '1678594510_d38eb755229ae1b8d135.pdf', 35717, 3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dep`
--

CREATE TABLE `tbl_dep` (
  `id_dep` int(11) NOT NULL,
  `nama_dep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_dep`
--

INSERT INTO `tbl_dep` (`id_dep`, `nama_dep`) VALUES
(1, 'CEO'),
(2, 'Staf '),
(3, 'Trening');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Surat Masuk'),
(2, 'Surat Keluar'),
(3, 'Berkas Kerja'),
(4, 'Perjanjian'),
(5, 'Turun Waris'),
(6, 'Peralhan Hak'),
(7, 'Berkas Internal'),
(12, 'Jual Beli');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `level`, `foto`, `id_dep`) VALUES
(11, 'Pradnya A', 'pradnya@gmail.com', '1234', 1, '1678593781_962700828943473ea3f9.jpg', 3),
(12, 'Pradnya A', 'pradnya.airlangga@gmail.com', '1234', 2, '1678594684_fc7873e14d4225cb557f.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  ADD PRIMARY KEY (`id_arsip`) USING BTREE;

--
-- Indexes for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  ADD PRIMARY KEY (`id_dep`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arsip`
--
ALTER TABLE `tbl_arsip`
  MODIFY `id_arsip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_dep`
--
ALTER TABLE `tbl_dep`
  MODIFY `id_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
