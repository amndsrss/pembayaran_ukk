-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 05:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kopetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kopetensi_keahlian`) VALUES
(1, '12 PPLG', 'Pengembangan Perangkat Lunaik dan Gim'),
(2, '11 PHT 4', 'Perhotelan'),
(4, '12 ULP 1', 'Usaha Layanan Pariwisata'),
(5, '10 DKV 1', 'Desain Komunikasi Visual');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 0, '00623413', '2023-09-18', 'Septembe', '2023', 48, 500000),
(2, 0, '0082547244', '2023-09-18', 'Septembe', '2023', 48, 5000000),
(3, 0, '00623413', '2023-09-18', 'Septembe', '2023', 48, 5000000),
(4, 0, '0082547244', '2023-09-19', 'Septembe', '2023', 48, 3500000),
(5, 0, '0082547244', '2023-09-19', 'November', '2023', 48, 345446666),
(6, 0, '0061276451', '2023-09-19', 'Septembe', '2023', 48, 2500000),
(7, 0, '0061276451', '2023-09-19', 'Septembe', '2023', 48, 3000000),
(8, 0, '00865342', '2023-09-19', 'Septembe', '2023', 48, 4550000),
(9, 0, '00865342', '2023-10-10', 'Oktober', '2023', 48, 900000),
(10, 0, '00865342', '2023-10-10', 'Oktober', '2023', 48, 50000),
(11, 0, '006753452', '2023-10-10', 'Oktober', '2023', 48, 4500000),
(12, 0, '12345', '2023-10-10', 'Oktober', '2023', 48, 2500000),
(13, 0, '12345', '2023-10-10', 'Oktober', '2023', 48, 500000),
(14, 0, '12345', '2023-10-13', 'Oktober', '2023', 48, 1000000),
(16, 0, '09876', '2023-10-13', 'November', '2023', 49, 1500000),
(18, 0, '12345', '2023-10-19', 'Oktober', '2023', 48, 1000000),
(19, 0, '12345', '2023-10-19', 'Oktober', '2023', 48, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(3, 'admin', 'admin', 'Administrator', 'admin'),
(8, 'petugas', '1', 'Amanda', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('0061276451', '12434', 'Arya Fatawa Basuki', 1, 'Kedamaian', '087543213153', 48),
('00623413', '13454', 'Amanda Saras', 1, 'teluk betung', '085761226155', 48),
('006753452', '13673', 'Roma Dona Efedi', 1, 'Sukaraja', '089767541243', 48),
('00865342', '21441', 'Nikita Sinta Bela', 2, 'Sukaraja', '08991347234', 48),
('09876', '67890', 'Mouza Imelda Zulia', 5, 'Panjang', '0845673881312', 49),
('12345', '54321', 'Aldillah Yorda Nona', 4, 'Kedamaian', '089876543210', 48);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(48, 2023, 5500000),
(49, 2023, 3500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
