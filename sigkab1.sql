-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 07:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigkab1`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3302', 'Banyumas', '-7.509367711063577,109.2493697398283', 1806013, 1391.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3302010', 1, 'LUMBIR', 50546, 102.00),
('3302020', 1, 'WANGON', 84755, 60.00),
('3302030', 1, 'JATILAWANG', 67483, 48.00),
('3302040', 1, 'RAWALO', 53711, 49.00),
('3302050', 1, 'KEBASEN', 68650, 54.00),
('3302060', 1, 'KEMRANJEN', 73478, 60.00),
('3302070', 1, 'SUMPIUH', 58580, 60.00),
('3302080', 1, 'TAMBAK', 51223, 52.00),
('3302090', 1, 'SOMAGEDE', 38230, 40.00),
('3302100', 1, 'KALIBAGOR', 58369, 35.00),
('3302110', 1, 'BANYUMAS', 53668, 38.00),
('3302120', 1, 'PATIKRAJA', 61998, 43.00),
('3302130', 1, 'PURWOJATI', 37789, 37.00),
('3302140', 1, 'AJIBARANG', 103490, 66.00),
('3302150', 1, 'GUMELAR', 54347, 93.00),
('3302160', 1, 'PEKUNCEN', 76883, 92.00),
('3302170', 1, 'CILONGOK', 126255, 105.00),
('3302180', 1, 'KARANGLEWAS', 68467, 32.00),
('3302190', 1, 'KEDUNGBANTENG', 63201, 60.00),
('3302200', 1, 'BATURRADEN', 54092, 45.00),
('3302210', 1, 'SUMBANG', 95916, 53.00),
('3302220', 1, 'KEMBARAN', 82592, 25.00),
('3302230', 1, 'SOKARAJA', 90525, 29.00),
('3302710', 1, 'PURWOKERTO SELATAN', 73053, 13.00),
('3302720', 1, 'PURWOKERTO BARAT', 53349, 7.00),
('3302730', 1, 'PURWOKERTO TIMUR', 55270, 8.00),
('3302740', 1, 'PURWOKERTO UTARA', 50093, 9.00);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20301546, '3302220', 'SDN 4 DUKUHWALUH', 'JL. SUNAN BONANG', 'NEGERI', 'SD', '-7.4079900,109.2692083'),
(20301670, '3302150', 'SD NEGERI 5 GUMELAR', 'PALUMBUNGAN RT 05 RW 02', 'NEGERI', 'SD', '-7.3834000,108.9740000'),
(20301709, '3302020', 'SD NEGERI 2 WINDUNEGARA', 'WINDUNEGARA', 'NEGERI', 'SD', '-7.4599000,109.0612000'),
(20301759, '3302050', 'SD NEGERI RANDEGAN', 'JL DESA RANDEGAN KEBASEN', 'NEGERI', 'SD', '-7.5676000,109.2318000'),
(20301766, '3302130', 'SD NEGERI 3 KARANGMANGU', 'JL. PESANGGRAHAN', 'NEGERI', 'SD', '-7.4758933,109.1463983'),
(20301846, '3302010', 'SD NEGERI 3 DERMAJI', 'DERMAJI', 'NEGERI', 'SD', '-7.4163000,109.9447000'),
(20301852, '3302710', 'SMP MAARIF NU 2 PURWOKERTO', 'JL. PANCURAWIS', 'SWASTA', 'SMP', '-7.4374083,109.25336683'),
(20301863, '3302720', 'SMP GUNUNGJATI 1 PURWOKERTO', 'JL. TENTARA PELAJAR NO. 17', 'SWASTA', 'SMP', '-7.4209083,109.2282183'),
(20301878, '3302230', 'SMP MUHAMMADIYAH SOKARAJA', 'JL. KARANGBANGKANG NO.27 SOKARAJA', 'SWASTA', 'SMP', '-7.4447000,109.2987000'),
(20301889, '3302100', 'SMP PGRI KALIBAGOR', 'JL. SUWARDJONO 164 KALIBAGOR', 'SWASTA', 'SMP', '-7.4742767,109.2995917'),
(20301943, '3302170', 'SMP NEGERI 2 CILONGOK', 'JALAN SINGADIPA', 'NEGERI', 'SMP', '-7.4286000,109.1295000'),
(20301993, '3302030', 'SMP NEGERI 1 JATILAWANG', 'JATILAWANG', 'NEGERI', 'SMP', '-7.5352000,109.1192000'),
(20301997, '3302090', 'SMPN 1 SOMAGEDE', 'JALAN RAYA SOMAGEDE', 'NEGERI', 'SMP', '-7.5180000,109.3111000'),
(20302031, '3302210', 'SDN KAWUNGCARANG ', 'JL. BRONTANGSENG NO 08', 'NEGERI', 'SD', '-7.3254000,109.2628000'),
(20302049, '3302160', 'SD NEGERI PASIRAMAN KIDUL', 'PASIRAMAN KIDUL RT02 RW01', 'NEGERI', 'SD', '-7.3375000,109.0788000'),
(20302068, '3302110', 'SD NEGERI KALIBATUR', 'KALIBATUR', 'NEGERI', 'SD', '-7.5454000,109.2692000'),
(20302194, '3302740', 'SD MUHAMMADIYAH PURWOKERTO', 'JL. KARANG KOBAR GG. G. GEDE NO. 950', 'SWASTA', 'SD', '-7.410083,109.2377783'),
(20302574, '3302080', 'SD NEGERI KAMULYAN', 'JALAN MAHAMERU KM 1 RT 08 RW 03', 'NEGERI', 'SD', '-7.6100000,109.4051000'),
(20302751, '3302120', 'SD NEGERI 1 KEDUNGRANDU', 'JLN RAYA KEDUNGRANDU NO. 351', 'NEGERI', 'SD', '-7.4755733,109.2200400'),
(20302783, '3302190', 'SD N 1 KENITEN ', 'JALAN RAYA KENITEN', 'NEGERI', 'SD', '-7.3586000,109.2064000'),
(20302785, '3302200', 'SD N 1 KETENGER ', 'JL.RAYA BATURRADEN BARAT NO 34', 'NEGERI', 'SD', '-7.3286600,109.2256150'),
(20302871, '3302070', 'SDN 1 SELANEGARA ', 'SELANEGARA', 'NEGERI', 'SD', '-7.6017150,109.3652283'),
(20330447, '3302180', 'SMKS MAARIF NU KARANGLEWAS', 'DESA BABAKAN', 'SWASTA', 'SMK', '-7.3644000,109.1747000'),
(20338218, '3302140', 'SMAS MA ARIF NU AJIBARANG', 'JL. RAYA PANDANSARI AJIBARANG', 'SWASTA', 'SMA', '-7.4035000,109.0800000'),
(20355396, '3302730', 'SDS AL-IRSYAD 01', 'JL. RAGASEMANGSANG NO. 27', 'SWASTA', 'SD', '-7.4211570,109.2311000'),
(69761901, '3302040', 'SMAS EL-MADANI RAWALO', 'KEDUNGWANGKAL, BANJARPARAKAN RT 01 RW 01 RAWALO', 'SWASTA', 'SMA', '-7.5502350,109.1635850'),
(120301983, '3302060', 'SMP SALAFIYAH KEMRANJEN', 'JLN. RAYA KEBARONGAN', 'SWASTA', 'SMP', '-7.5928000,109.2953000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
