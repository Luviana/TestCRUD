-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2017 pada 04.48
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_testkoneksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_akun`
--

CREATE TABLE IF NOT EXISTS `tb_akun` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_akun`
--

INSERT INTO `tb_akun` (`username`, `password`) VALUES
('arif', '1234'),
('yusril', '1234'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE IF NOT EXISTS `t_siswa` (
  `NIS` int(11) NOT NULL,
  `NamaSiswa` varchar(80) NOT NULL,
  `JenisKelamin` enum('L','P') NOT NULL,
  `TempatLahir` varchar(50) NOT NULL,
  `TanggalLahir` varchar(50) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Alamat` text NOT NULL,
  PRIMARY KEY (`NIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`NIS`, `NamaSiswa`, `JenisKelamin`, `TempatLahir`, `TanggalLahir`, `Kelas`, `Email`, `Alamat`) VALUES
(1221, 'Adam', 'L', 'Malang', '1999-05-23', 'XI R2', 'Adam@gmail.com', 'Lowokwaru, Malang'),
(1235, 'Nico', 'L', 'sampang', '2017-03-20', 'XI R2', 'nico@gmail.com', 'Blitar');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
