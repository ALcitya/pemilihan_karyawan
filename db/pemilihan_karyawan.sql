-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2024 pada 04.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilihan_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_alternatives`
--

CREATE TABLE `saw_alternatives` (
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_alternatives`
--

INSERT INTO `saw_alternatives` (`id_alternative`, `name`) VALUES
(21, 'Joshep'),
(20, 'Jac'),
(19, 'Sharlene'),
(18, 'Latia'),
(17, 'Maruk'),
(16, 'Jasmine'),
(15, 'Michael'),
(14, 'Edward'),
(13, 'Paula'),
(12, 'Uriah'),
(22, 'Myriam'),
(23, 'Dheepa'),
(24, 'Bhartolemew'),
(25, 'Xana'),
(26, 'Prater'),
(27, 'Kaylah'),
(28, 'Kristen'),
(29, 'Bobby'),
(30, 'Reid'),
(31, 'Hector'),
(33, 'Mariela'),
(34, 'Angela'),
(35, 'Gerald'),
(36, 'Reilly'),
(37, 'Carlee'),
(38, 'Jaydon'),
(39, 'Bridger'),
(40, 'Leon'),
(41, 'Charity'),
(42, 'Axel'),
(43, 'Milton'),
(44, 'Cory'),
(45, 'Saniya'),
(46, 'Alisa'),
(47, 'Lincoln'),
(48, 'Aliana'),
(49, 'Kayden'),
(50, 'James'),
(51, 'Willow'),
(52, 'Clayton'),
(53, 'Celia'),
(54, 'Valentin'),
(55, 'Ryland'),
(56, 'Esteban'),
(57, 'Jonathan'),
(58, 'Nevaeh'),
(59, 'Chaim'),
(60, 'Arely'),
(61, 'Vance'),
(62, 'Charlie'),
(63, 'Sonny'),
(64, 'Thomas'),
(65, 'Sarai'),
(66, 'Jerimiah'),
(67, 'Leland'),
(68, 'Cristal'),
(69, 'Jaslene'),
(70, 'Albert'),
(71, 'Jaiden'),
(72, 'Brendon'),
(73, 'Kimora'),
(74, 'Willie'),
(75, 'Devyn'),
(76, 'Weston'),
(77, 'Lennon'),
(78, 'Vicente'),
(79, 'Hugo'),
(80, 'Cohen'),
(81, 'Tia'),
(82, 'Aspen'),
(83, 'Graham'),
(84, 'Joel'),
(85, 'Maci'),
(86, 'Nevaeh'),
(87, 'Garrett'),
(88, 'Eugene'),
(89, 'Geovanni'),
(90, 'Javon'),
(91, 'Amaya'),
(92, 'Laila'),
(93, 'Ivan'),
(94, 'Aidan'),
(95, 'Cruz'),
(96, 'Raven'),
(97, 'Karli'),
(98, 'Tyrone'),
(99, 'Damaris'),
(100, 'Alexus'),
(1, 'Kinsley'),
(2, 'Deborah'),
(3, 'Milagros'),
(4, 'Roberto'),
(5, 'Elaine'),
(6, 'Caiden'),
(7, 'Jocelyn'),
(8, 'Marques'),
(9, 'Rohan'),
(10, 'Emmanuel'),
(11, 'Clayton');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_criterias`
--

CREATE TABLE `saw_criterias` (
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `attribute` set('benefit','cost') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_criterias`
--

INSERT INTO `saw_criterias` (`id_criteria`, `criteria`, `weight`, `attribute`) VALUES
(1, 'Tangung Jawab', 0.25, 'benefit'),
(2, 'Sikap Kerja', 0.15, 'benefit'),
(3, 'Kedisiplinan', 0.2, 'benefit'),
(4, 'Prestasi Kerja', 0.25, 'benefit'),
(5, 'kerjasama', 0.15, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_evaluations`
--

CREATE TABLE `saw_evaluations` (
  `id_alternative` smallint(5) UNSIGNED NOT NULL,
  `id_criteria` tinyint(3) UNSIGNED NOT NULL,
  `value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_evaluations`
--

INSERT INTO `saw_evaluations` (`id_alternative`, `id_criteria`, `value`) VALUES
(21, 5, 87),
(20, 4, 90),
(20, 5, 80),
(20, 3, 85),
(20, 2, 90),
(14, 2, 87),
(14, 1, 78),
(15, 5, 9),
(15, 4, 90),
(15, 3, 85),
(15, 2, 87),
(15, 1, 87),
(16, 5, 80),
(16, 4, 87),
(16, 3, 87),
(16, 2, 85),
(16, 1, 81),
(17, 5, 90),
(17, 3, 78),
(17, 4, 92),
(17, 2, 88),
(17, 1, 87),
(18, 5, 86),
(18, 4, 95),
(18, 3, 90),
(18, 1, 87),
(18, 2, 83),
(19, 5, 94),
(19, 4, 90),
(19, 3, 70),
(20, 1, 85),
(21, 1, 76),
(21, 2, 80),
(21, 3, 85),
(21, 4, 90),
(19, 1, 84),
(14, 5, 90),
(13, 1, 85),
(13, 2, 86),
(14, 3, 88),
(14, 4, 90),
(19, 2, 87),
(13, 3, 85),
(13, 4, 88),
(13, 5, 87),
(12, 5, 100),
(12, 4, 100),
(12, 3, 100),
(12, 2, 100),
(12, 1, 100),
(22, 1, 95),
(22, 2, 75),
(22, 3, 85),
(22, 4, 78),
(22, 5, 85),
(23, 1, 76),
(23, 2, 75),
(23, 3, 78),
(23, 4, 82),
(23, 5, 86),
(24, 1, 88),
(24, 2, 92),
(24, 3, 94),
(24, 4, 91),
(24, 5, 85),
(25, 1, 79),
(25, 2, 83),
(25, 3, 85),
(25, 4, 86),
(25, 5, 88),
(26, 1, 92),
(26, 2, 95),
(26, 3, 96),
(26, 4, 79),
(26, 5, 84),
(27, 1, 88),
(27, 2, 95),
(27, 3, 83),
(27, 4, 87),
(27, 5, 85),
(28, 1, 82),
(28, 2, 78),
(28, 3, 77),
(28, 4, 75),
(28, 5, 80),
(29, 1, 87),
(29, 2, 86),
(29, 3, 89),
(29, 4, 91),
(29, 5, 85),
(30, 1, 95),
(30, 2, 90),
(30, 3, 85),
(30, 4, 87),
(30, 5, 85),
(31, 1, 87),
(31, 2, 85),
(31, 3, 78),
(31, 4, 88),
(31, 5, 82),
(32, 1, 87),
(32, 2, 85),
(32, 3, 82),
(32, 4, 81),
(32, 5, 90),
(33, 1, 80),
(33, 2, 76),
(33, 3, 78),
(33, 4, 80),
(33, 5, 83),
(34, 1, 87),
(34, 2, 72),
(34, 3, 88),
(34, 4, 86),
(34, 5, 85),
(35, 1, 90),
(35, 2, 88),
(35, 3, 82),
(35, 4, 85),
(35, 5, 87),
(36, 1, 88),
(36, 2, 78),
(36, 3, 85),
(36, 4, 95),
(36, 5, 90),
(37, 1, 80),
(37, 2, 88),
(37, 3, 86),
(37, 4, 85),
(37, 5, 78),
(38, 1, 90),
(38, 2, 85),
(38, 3, 80),
(38, 4, 78),
(38, 5, 80),
(39, 1, 85),
(39, 2, 83),
(39, 3, 80),
(39, 4, 92),
(39, 5, 88),
(40, 1, 92),
(40, 2, 80),
(40, 3, 85),
(40, 4, 78),
(40, 5, 87),
(41, 1, 85),
(41, 2, 87),
(41, 3, 76),
(41, 4, 80),
(41, 5, 85),
(42, 1, 87),
(42, 2, 90),
(42, 3, 85),
(42, 4, 82),
(42, 5, 80),
(43, 1, 82),
(43, 2, 85),
(43, 3, 86),
(43, 4, 84),
(43, 5, 88),
(44, 1, 85),
(44, 2, 80),
(44, 3, 89),
(44, 4, 87),
(44, 5, 81),
(45, 1, 88),
(45, 2, 88),
(45, 3, 82),
(45, 4, 89),
(45, 5, 84),
(46, 1, 92),
(46, 2, 72),
(46, 3, 83),
(46, 4, 91),
(46, 5, 82),
(47, 1, 95),
(47, 2, 83),
(47, 3, 78),
(47, 4, 95),
(47, 5, 95),
(48, 1, 87),
(48, 2, 86),
(48, 3, 75),
(48, 4, 78),
(48, 5, 92),
(49, 1, 80),
(49, 2, 81),
(49, 3, 79),
(49, 4, 72),
(49, 5, 89),
(50, 1, 75),
(50, 2, 90),
(50, 3, 80),
(50, 4, 86),
(50, 5, 88),
(51, 1, 89),
(51, 2, 94),
(51, 3, 83),
(51, 4, 81),
(51, 5, 86),
(52, 1, 79),
(52, 2, 91),
(52, 3, 87),
(52, 4, 74),
(52, 5, 93),
(53, 1, 89),
(53, 2, 76),
(53, 3, 70),
(53, 4, 76),
(53, 5, 90),
(54, 1, 79),
(54, 2, 77),
(54, 3, 81),
(54, 4, 78),
(54, 5, 82),
(55, 1, 91),
(55, 2, 80),
(55, 3, 82),
(55, 4, 80),
(55, 5, 80),
(56, 1, 90),
(56, 2, 85),
(56, 3, 85),
(56, 4, 84),
(56, 5, 78),
(57, 1, 88),
(57, 2, 87),
(57, 3, 88),
(57, 4, 87),
(57, 5, 75),
(58, 1, 82),
(58, 2, 83),
(58, 3, 84),
(58, 4, 86),
(58, 5, 91),
(59, 1, 85),
(59, 2, 84),
(59, 3, 89),
(59, 4, 82),
(59, 5, 90),
(60, 1, 88),
(60, 2, 88),
(60, 3, 90),
(60, 4, 81),
(60, 5, 84),
(61, 1, 72),
(61, 2, 77),
(61, 3, 85),
(61, 4, 79),
(61, 5, 75),
(62, 1, 80),
(62, 2, 82),
(62, 3, 74),
(62, 4, 90),
(62, 5, 88),
(63, 1, 90),
(63, 2, 95),
(63, 3, 90),
(63, 4, 91),
(63, 5, 89),
(64, 1, 91),
(64, 2, 92),
(64, 3, 91),
(64, 4, 93),
(64, 5, 89),
(65, 1, 82),
(65, 2, 82),
(65, 3, 87),
(65, 4, 79),
(65, 5, 88),
(66, 1, 90),
(66, 2, 88),
(66, 3, 87),
(66, 4, 90),
(66, 5, 83),
(67, 1, 91),
(67, 2, 93),
(67, 3, 91),
(67, 4, 93),
(67, 5, 95),
(68, 1, 84),
(68, 2, 89),
(68, 3, 85),
(68, 4, 83),
(68, 5, 87),
(69, 1, 89),
(69, 2, 87),
(69, 3, 82),
(69, 4, 87),
(69, 5, 87),
(70, 1, 93),
(70, 2, 85),
(70, 3, 87),
(70, 4, 85),
(70, 5, 80),
(71, 1, 87),
(71, 2, 86),
(71, 3, 83),
(71, 4, 87),
(71, 5, 83),
(72, 1, 87),
(72, 2, 84),
(72, 3, 86),
(72, 4, 90),
(72, 5, 86),
(73, 1, 90),
(73, 2, 93),
(73, 3, 90),
(73, 4, 80),
(73, 5, 89),
(74, 1, 92),
(74, 2, 91),
(74, 3, 90),
(74, 4, 89),
(74, 5, 90),
(75, 1, 87),
(75, 2, 87),
(75, 3, 89),
(75, 4, 79),
(75, 5, 86),
(76, 1, 87),
(76, 2, 88),
(76, 3, 82),
(76, 4, 90),
(76, 5, 87),
(77, 1, 87),
(77, 2, 90),
(77, 3, 90),
(77, 4, 88),
(77, 5, 88),
(78, 1, 82),
(78, 2, 85),
(78, 3, 86),
(78, 4, 84),
(78, 5, 88),
(79, 1, 85),
(79, 2, 80),
(79, 3, 89),
(79, 4, 87),
(79, 5, 81),
(80, 1, 88),
(80, 2, 88),
(80, 3, 82),
(80, 4, 89),
(80, 5, 84),
(81, 1, 92),
(81, 2, 72),
(81, 3, 83),
(81, 4, 91),
(81, 5, 82),
(82, 1, 95),
(82, 2, 83),
(82, 3, 78),
(82, 4, 95),
(82, 5, 95),
(83, 1, 87),
(83, 2, 86),
(83, 3, 75),
(83, 4, 78),
(83, 5, 92),
(84, 1, 80),
(84, 2, 81),
(84, 3, 79),
(84, 4, 72),
(84, 5, 89),
(85, 1, 75),
(85, 2, 90),
(85, 3, 80),
(85, 4, 86),
(85, 5, 88),
(86, 1, 89),
(86, 2, 94),
(86, 3, 83),
(86, 4, 81),
(86, 5, 86),
(87, 1, 79),
(87, 2, 91),
(87, 3, 87),
(87, 4, 74),
(87, 5, 93),
(88, 1, 89),
(88, 2, 76),
(88, 3, 70),
(88, 4, 76),
(88, 5, 90),
(89, 1, 79),
(89, 2, 77),
(89, 3, 81),
(89, 4, 78),
(89, 5, 82),
(90, 1, 91),
(90, 2, 80),
(90, 3, 82),
(90, 4, 80),
(90, 5, 80),
(91, 1, 90),
(91, 2, 85),
(91, 3, 85),
(91, 4, 84),
(91, 5, 78),
(92, 1, 88),
(92, 2, 87),
(92, 3, 88),
(92, 4, 87),
(92, 5, 75),
(93, 1, 82),
(93, 2, 83),
(93, 3, 84),
(93, 4, 86),
(93, 5, 91),
(94, 1, 85),
(94, 2, 84),
(94, 3, 89),
(94, 4, 82),
(94, 5, 90),
(95, 1, 83),
(95, 2, 87),
(95, 3, 90),
(95, 4, 89),
(95, 5, 84),
(96, 1, 82),
(96, 2, 86),
(96, 3, 91),
(96, 4, 87),
(96, 5, 87),
(97, 1, 89),
(97, 2, 80),
(97, 3, 87),
(97, 4, 85),
(97, 5, 90),
(98, 1, 87),
(98, 2, 90),
(98, 3, 83),
(98, 4, 83),
(98, 5, 88),
(99, 1, 85),
(99, 2, 91),
(99, 3, 85),
(99, 4, 84),
(99, 5, 85),
(100, 1, 85),
(100, 2, 82),
(100, 3, 86),
(100, 4, 86),
(100, 5, 83),
(1, 1, 85),
(1, 2, 83),
(1, 3, 86),
(1, 4, 88),
(1, 5, 82),
(2, 1, 86),
(2, 2, 86),
(2, 3, 90),
(2, 4, 86),
(2, 5, 85),
(3, 1, 90),
(3, 2, 86),
(3, 3, 91),
(3, 4, 87),
(3, 5, 89),
(4, 1, 79),
(4, 2, 84),
(4, 3, 87),
(4, 4, 87),
(4, 5, 87),
(5, 1, 90),
(5, 2, 82),
(5, 3, 88),
(5, 4, 82),
(5, 5, 84),
(6, 1, 82),
(6, 2, 83),
(6, 3, 86),
(6, 4, 83),
(6, 5, 86),
(7, 1, 87),
(7, 2, 88),
(7, 3, 85),
(7, 4, 85),
(7, 5, 89),
(8, 1, 86),
(8, 2, 89),
(8, 3, 87),
(8, 4, 89),
(8, 5, 83),
(9, 1, 80),
(9, 2, 81),
(9, 3, 89),
(9, 4, 90),
(9, 5, 81),
(10, 1, 81),
(10, 2, 82),
(10, 3, 82),
(10, 4, 92),
(10, 5, 90),
(11, 1, 88),
(11, 2, 82),
(11, 3, 87),
(11, 4, 90),
(11, 5, 87);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saw_users`
--

CREATE TABLE `saw_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saw_users`
--

INSERT INTO `saw_users` (`id_user`, `username`, `telp`, `password`, `photo`) VALUES
(3, 'admin@gmail.com', '1983189', '0192023a7bbd73250516f069df18b500', 'php-logo.png'),
(5, 'admin1@gmail.com', '212121', 'e00cf25ad42683b3df678c61f42c6bda', NULL),
(6, 'saya@gmail.com', '082222333442', '81dc9bdb52d04dc20036dbd8313ed055', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  ADD PRIMARY KEY (`id_alternative`);

--
-- Indeks untuk tabel `saw_criterias`
--
ALTER TABLE `saw_criterias`
  ADD PRIMARY KEY (`id_criteria`);

--
-- Indeks untuk tabel `saw_evaluations`
--
ALTER TABLE `saw_evaluations`
  ADD PRIMARY KEY (`id_alternative`,`id_criteria`);

--
-- Indeks untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
