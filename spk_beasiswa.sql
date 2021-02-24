-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2014 at 02:41 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spk_beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_user` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Elang Surya');

-- --------------------------------------------------------

--
-- Table structure for table `calonbeasiswa`
--

CREATE TABLE IF NOT EXISTS `calonbeasiswa` (
  `id_mhs` varchar(10) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calonbeasiswa`
--

INSERT INTO `calonbeasiswa` (`id_mhs`, `nama_mhs`, `jurusan`) VALUES
('CPB-000001', 'Erlang', 'Informatika'),
('CPB-000002', 'Bimbi', 'Informatika'),
('CPB-000003', 'Seno', 'Informatika'),
('CPB-000004', 'Agus', 'Informatika'),
('CPB-000005', 'Khairunisa', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `himpunan`
--

CREATE TABLE IF NOT EXISTS `himpunan` (
`id_himpunan` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `namahimpunan` varchar(100) NOT NULL,
  `nilai` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `himpunan`
--

INSERT INTO `himpunan` (`id_himpunan`, `id_kriteria`, `namahimpunan`, `nilai`, `keterangan`) VALUES
(25, 1, 'Nilai Gap 0.34', '30', 'cukup'),
(26, 1, '0.4 <= Nilai Gap <= 0.45', '60', 'baik'),
(27, 1, 'nilai Gap 0.8', '90', 'sangat baik'),
(29, 2, '0.35 <= Nilai Gap <= 0.39', '30', 'cukup'),
(30, 2, 'Nilai Gap 0.43', '60', 'baik'),
(31, 2, '0.51 <= Nilai Gap <= 0.52', '90', 'sangat baik'),
(33, 3, '0.46 <= Nilai Gap <= 0.57', '30', 'cukup'),
(34, 3, '0.66 <= Nilai Gap <= 0.68', '60', 'baik'),
(35, 3, 'Nilai Gap 0.74', '90', 'sangat baik'),
(37, 4, '0.35 <= Nilai Gap <= 0.46', '30', 'cukup'),
(38, 4, '0.54 <= Nilai Gap <= 0.57', '60', 'Baik'),
(39, 4, 'Nilai Gap 0.94', '90', 'sangat baik'),
(41, 5, '0.34 <= Nilai Gap <= 0.37', '30', 'cukup'),
(42, 5, 'Nilai Gap 0.71', '60', 'baik'),
(43, 5, 'Nilai Gap 1', '90', 'sangat baik');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE IF NOT EXISTS `klasifikasi` (
`id_klasifikasi` int(5) NOT NULL,
  `id_mhs` varchar(10) NOT NULL,
  `jml_tanggungan` double NOT NULL,
  `nilai_ipk` double NOT NULL,
  `penghasilan_ortu` double NOT NULL,
  `semester` double NOT NULL,
  `usia` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`id_klasifikasi`, `id_mhs`, `jml_tanggungan`, `nilai_ipk`, `penghasilan_ortu`, `semester`, `usia`) VALUES
(18, 'CPB-000001', 100, 25, 50, 75, 25),
(19, 'CPB-000002', 25, 50, 75, 100, 50),
(20, 'CPB-000003', 50, 75, 100, 25, 75),
(21, 'CPB-000004', 75, 100, 25, 50, 100),
(23, 'CPB-000005', 100, 25, 50, 75, 25);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
`id_kriteria` int(5) NOT NULL,
  `namakriteria` varchar(100) NOT NULL,
  `atribut` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `namakriteria`, `atribut`) VALUES
(1, 'Tangibility (Bukti fisik)', 'Benefit'),
(2, 'Empathy (Empati)', 'Benefit'),
(3, 'Reliability (Keandalan)', 'Benefit'),
(4, 'Responsiveness (Ketanggapan)', 'Benefit'),
(5, 'Assurance (Kepastian)', 'Benefit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `calonbeasiswa`
--
ALTER TABLE `calonbeasiswa`
 ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `himpunan`
--
ALTER TABLE `himpunan`
 ADD PRIMARY KEY (`id_himpunan`);

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
 ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
 ADD PRIMARY KEY (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `himpunan`
--
ALTER TABLE `himpunan`
MODIFY `id_himpunan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
