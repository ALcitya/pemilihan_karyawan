-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2024 pada 17.20
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
(101, 'Kinsley'),
(102, 'Deborah'),
(103, 'Milagros'),
(104, 'Roberto'),
(105, 'Elaine'),
(106, 'Caiden'),
(107, 'Jocelyn'),
(108, 'Marques'),
(109, 'Rohan'),
(110, 'Emmanuel'),
(111, 'Clayton'),
(112, 'Darius');

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
(39, 5, 88);

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
-- AUTO_INCREMENT untuk tabel `saw_alternatives`
--
ALTER TABLE `saw_alternatives`
  MODIFY `id_alternative` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `saw_users`
--
ALTER TABLE `saw_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
