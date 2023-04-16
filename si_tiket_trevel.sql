-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 09:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_tiket_trevel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` varchar(7) NOT NULL,
  `tanggal_keberangkatan` int(11) NOT NULL,
  `waktu_keberangkatan` int(11) NOT NULL,
  `tanggal_tiba` int(11) NOT NULL,
  `waktu_tiba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kapal`
--

CREATE TABLE `tb_kapal` (
  `kode_kapal` varchar(7) NOT NULL,
  `nama_kapal` varchar(25) NOT NULL,
  `kode_rute` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kereta`
--

CREATE TABLE `tb_kereta` (
  `kode_kereta` varchar(7) NOT NULL,
  `nama_kereta` varchar(25) NOT NULL,
  `kode_rute` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kota`
--

CREATE TABLE `tb_kota` (
  `kode_kota` varchar(7) NOT NULL,
  `kota_asal` varchar(25) NOT NULL,
  `kota_tujuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_maskapai`
--

CREATE TABLE `tb_maskapai` (
  `kode_maskapai` varchar(7) NOT NULL,
  `nama_maskapai` varchar(25) NOT NULL,
  `kode_rute` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` varchar(7) NOT NULL,
  `nama_pegawai` varchar(25) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `id_pesanan` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` varchar(7) NOT NULL,
  `nama_pengguna` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(7) NOT NULL,
  `no_telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id_pesanan_pesawat` varchar(7) NOT NULL,
  `id_tiket` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `total_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan_kapal`
--

CREATE TABLE `tb_pesanan_kapal` (
  `id_pesanan` varchar(7) NOT NULL,
  `id_tiket_kapal` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `total_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan_kereta`
--

CREATE TABLE `tb_pesanan_kereta` (
  `id_pesanan` varchar(7) NOT NULL,
  `id_tiket_kereta` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `transaksi` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiket_kapal`
--

CREATE TABLE `tb_tiket_kapal` (
  `id_tiket` varchar(7) NOT NULL,
  `kode_kapal` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiket_kereta`
--

CREATE TABLE `tb_tiket_kereta` (
  `id_tiket` varchar(7) NOT NULL,
  `kode_kereta` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiket_pesawat`
--

CREATE TABLE `tb_tiket_pesawat` (
  `id_tiket` varchar(7) NOT NULL,
  `kode_maskapai` varchar(7) NOT NULL,
  `id_jadwal` varchar(7) NOT NULL,
  `id_pengguna` varchar(7) NOT NULL,
  `kode_kota` varchar(7) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tb_kapal`
--
ALTER TABLE `tb_kapal`
  ADD PRIMARY KEY (`kode_kapal`);

--
-- Indexes for table `tb_kereta`
--
ALTER TABLE `tb_kereta`
  ADD PRIMARY KEY (`kode_kereta`);

--
-- Indexes for table `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`kode_kota`);

--
-- Indexes for table `tb_maskapai`
--
ALTER TABLE `tb_maskapai`
  ADD PRIMARY KEY (`kode_maskapai`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id_pesanan_pesawat`),
  ADD KEY `id_tiket` (`id_tiket`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `kode_kota` (`kode_kota`);

--
-- Indexes for table `tb_pesanan_kapal`
--
ALTER TABLE `tb_pesanan_kapal`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_tiket_kapal` (`id_tiket_kapal`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `kode_kota` (`kode_kota`);

--
-- Indexes for table `tb_pesanan_kereta`
--
ALTER TABLE `tb_pesanan_kereta`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_tiket_kereta` (`id_tiket_kereta`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `kode_kota` (`kode_kota`);

--
-- Indexes for table `tb_tiket_kapal`
--
ALTER TABLE `tb_tiket_kapal`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `kode_kapal` (`kode_kapal`),
  ADD KEY `kode_kota` (`kode_kota`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `tb_tiket_kereta`
--
ALTER TABLE `tb_tiket_kereta`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `kode_kereta` (`kode_kereta`),
  ADD KEY `kode_kota` (`kode_kota`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `kode_kota` (`kode_kota`),
  ADD KEY `kode_pesawat` (`kode_maskapai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `tb_pesanan` (`id_pesanan_pesawat`),
  ADD CONSTRAINT `tb_pegawai_ibfk_2` FOREIGN KEY (`id_pesanan`) REFERENCES `tb_pesanan_kapal` (`id_pesanan`),
  ADD CONSTRAINT `tb_pegawai_ibfk_3` FOREIGN KEY (`id_pesanan`) REFERENCES `tb_pesanan_kereta` (`id_pesanan`);

--
-- Constraints for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD CONSTRAINT `tb_pesanan_ibfk_3` FOREIGN KEY (`id_tiket`) REFERENCES `tb_tiket_pesawat` (`id_tiket`),
  ADD CONSTRAINT `tb_pesanan_ibfk_5` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesanan_ibfk_6` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`),
  ADD CONSTRAINT `tb_pesanan_ibfk_7` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`);

--
-- Constraints for table `tb_pesanan_kapal`
--
ALTER TABLE `tb_pesanan_kapal`
  ADD CONSTRAINT `tb_pesanan_kapal_ibfk_1` FOREIGN KEY (`id_tiket_kapal`) REFERENCES `tb_tiket_kapal` (`id_tiket`),
  ADD CONSTRAINT `tb_pesanan_kapal_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`),
  ADD CONSTRAINT `tb_pesanan_kapal_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesanan_kapal_ibfk_4` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`);

--
-- Constraints for table `tb_pesanan_kereta`
--
ALTER TABLE `tb_pesanan_kereta`
  ADD CONSTRAINT `tb_pesanan_kereta_ibfk_1` FOREIGN KEY (`id_tiket_kereta`) REFERENCES `tb_tiket_kereta` (`id_tiket`),
  ADD CONSTRAINT `tb_pesanan_kereta_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`),
  ADD CONSTRAINT `tb_pesanan_kereta_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesanan_kereta_ibfk_4` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`);

--
-- Constraints for table `tb_tiket_kapal`
--
ALTER TABLE `tb_tiket_kapal`
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_1` FOREIGN KEY (`kode_kapal`) REFERENCES `tb_kapal` (`kode_kapal`),
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_2` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`);

--
-- Constraints for table `tb_tiket_kereta`
--
ALTER TABLE `tb_tiket_kereta`
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_1` FOREIGN KEY (`kode_kereta`) REFERENCES `tb_kereta` (`kode_kereta`),
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_2` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`);

--
-- Constraints for table `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_1` FOREIGN KEY (`kode_kota`) REFERENCES `tb_kota` (`kode_kota`),
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_2` FOREIGN KEY (`kode_maskapai`) REFERENCES `tb_maskapai` (`kode_maskapai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
