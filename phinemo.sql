-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 08:15 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phinemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id_jenis` varchar(11) NOT NULL,
  `jenis_tour` varchar(60) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis_tour`) VALUES
('JNS0001', 'Private Trip'),
('JNS0002', 'Group Trip'),
('JNS0003', 'Open Trip'),
('JNS0004', 'Transportation');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` varchar(11) NOT NULL,
  `nama_kota` varchar(60) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
('KT0001', ' Ambon'),
('KT0002', ' Balikpapan'),
('KT0003', ' Banda Aceh'),
('KT0004', ' Bandar Lampung'),
('KT0005', ' Bandung'),
('KT0006', ' Banjar'),
('KT0007', ' Banjarbaru'),
('KT0008', ' Banjarmasin'),
('KT0009', ' Batam'),
('KT0010', ' Batu'),
('KT0011', ' Bau-Bau'),
('KT0012', ' Bekasi'),
('KT0013', ' Bengkulu'),
('KT0014', ' Bima'),
('KT0015', ' Binjai'),
('KT0016', ' Bitung'),
('KT0017', ' Blitar'),
('KT0018', ' Bogor'),
('KT0019', ' Bontang'),
('KT0020', ' Bukittinggi'),
('KT0021', ' Cilegon'),
('KT0022', ' Cimahi'),
('KT0023', ' Cirebon'),
('KT0024', ' Denpasar'),
('KT0025', ' Depok'),
('KT0026', ' Dumai'),
('KT0027', ' Gorontalo'),
('KT0028', ' Gunungsitoli'),
('KT0029', ' Administrasi Jakarta Barat'),
('KT0030', ' Administrasi Jakarta Pusat'),
('KT0031', ' Administrasi Jakarta Selatan'),
('KT0032', ' Administrasi Jakarta Timur'),
('KT0033', ' Administrasi Jakarta Utara'),
('KT0034', ' Jambi'),
('KT0035', ' Jayapura'),
('KT0036', ' Kediri'),
('KT0037', ' Kendari'),
('KT0038', ' mobagu'),
('KT0039', ' Kupang'),
('KT0040', ' Langsa'),
('KT0041', ' Lhokseumawe'),
('KT0042', ' Lubuklinggau'),
('KT0043', ' Madiun'),
('KT0044', ' Magelang'),
('KT0045', ' Makassar'),
('KT0046', ' Malang'),
('KT0047', ' Manado'),
('KT0048', ' Mataram'),
('KT0049', ' Medan'),
('KT0050', ' Metro'),
('KT0051', ' Mojokerto'),
('KT0052', ' Padang'),
('KT0053', ' Padangpanjang'),
('KT0054', ' Padangsidempuan'),
('KT0055', ' Pagar Alam'),
('KT0056', ' Palangkaraya'),
('KT0057', ' Palembang'),
('KT0058', ' Palopo'),
('KT0059', ' Palu'),
('KT0060', ' Pangkal Pinang'),
('KT0061', ' Parepare'),
('KT0062', ' Pariaman'),
('KT0063', ' Pasuruan'),
('KT0064', ' Payakumbuh'),
('KT0065', ' Pekalongan'),
('KT0066', ' Pekanbaru'),
('KT0067', ' Pematangsiantar'),
('KT0068', ' Pontianak'),
('KT0069', ' Prabumulih'),
('KT0070', ' Probolinggo'),
('KT0071', ' Sabang'),
('KT0072', ' Salatiga'),
('KT0073', ' Samarinda'),
('KT0074', ' Sawahlunto'),
('KT0075', ' Semarang'),
('KT0076', ' Serang'),
('KT0077', ' Sibolga'),
('KT0078', ' Singkawang'),
('KT0079', ' Solok'),
('KT0080', ' Sorong'),
('KT0081', ' Subulussalam'),
('KT0082', ' Sukabumi'),
('KT0083', ' Sungai Penuh'),
('KT0084', ' Surabaya'),
('KT0085', ' Surakarta'),
('KT0086', ' Tangerang Selatan'),
('KT0087', ' Tangerang'),
('KT0088', ' Tanjung Selor'),
('KT0089', ' Tanjungbalai'),
('KT0090', ' Tarakan'),
('KT0091', ' Tasikmalaya'),
('KT0092', ' Tebing Tinggi'),
('KT0093', ' Tegal'),
('KT0094', ' Ternate'),
('KT0095', ' Tidore Kepulauan'),
('KT0096', ' Tomohon'),
('KT0097', ' Tual'),
('KT0098', ' Watampone');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` varchar(11) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `jml_anggota` int(10) NOT NULL,
  `harga` float NOT NULL,
  `deskripsi` text NOT NULL,
  `id_operator` varchar(11) NOT NULL,
  `id_kota` varchar(11) NOT NULL,
  `id_jenis` varchar(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tour_operator`
--

CREATE TABLE IF NOT EXISTS `tour_operator` (
  `id_operator` varchar(11) NOT NULL,
  `nama_operator` varchar(150) NOT NULL,
  `biografi` text NOT NULL,
  `contact_person` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_operator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
