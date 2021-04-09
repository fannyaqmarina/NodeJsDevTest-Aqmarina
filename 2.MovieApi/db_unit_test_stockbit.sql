-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2021 pada 06.46
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_unit_test_stockbit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_access`
--

CREATE TABLE `log_access` (
  `id` varchar(255) NOT NULL,
  `endpoint` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_access`
--

INSERT INTO `log_access` (`id`, `endpoint`, `params`, `created_date`) VALUES
('02f22993-530d-4f1b-9eb6-7e757b13588e', 'http://www.omdbapi.com/', 'test', '2021-04-08 13:52:00'),
('037ad292-50bd-4558-a79a-5083ff5aaa28', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:30:00'),
('11997813-ca6a-4eff-bbdb-a6006783eeb3', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:42:00'),
('123744c7-9702-4b2c-a600-f61ea67d9db2', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 14:09:00'),
('1e918da7-ba5e-4b35-92da-2ee57194b54b', 'http://www.omdbapi.com/', 'test', '2021-04-08 14:15:00'),
('21e5f9af-20d6-4d57-a9eb-8e5cbd3fb91a', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=Batman', '2021-04-08 12:26:00'),
('30ca8f09-267e-47c7-b48e-c9f0c2a54337', 'http://www.omdbapi.com/', 'test', '2021-04-08 13:55:00'),
('40cf7965-345f-4d4f-aaba-ec5287999de6', 'http://www.omdbapi.com/', 'test', '2021-04-08 14:09:00'),
('4782bb68-3b52-49b9-8133-3f91855b9e24', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:27:00'),
('4b2e483f-8d13-46ae-b3ea-24415bf804f6', 'http://www.omdbapi.com/', 'test', '2021-04-08 13:55:00'),
('52b6d2e5-f105-4571-9e11-e41ed698309c', 'http://www.omdbapi.com/', 'test', '2021-04-08 13:53:00'),
('56e57c35-38b5-4580-87e8-8e66fd14f6b9', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:29:00'),
('57d0ab7b-86ab-448f-9bc3-f3e73329e355', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 08:48:00'),
('58c0aeb4-4643-49de-9075-9707633e9e36', 'http://www.omdbapi.com/', 'test', '2021-04-08 13:55:00'),
('5da10364-ae66-4529-9616-157a02d04697', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=test1', '2021-04-08 14:09:00'),
('5ed5607f-fcd0-43af-bd9a-746cef964cae', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 13:27:00'),
('62ef7dc1-6b77-4bbe-8c92-ca80163a85d7', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=Behind', '2021-04-08 08:58:00'),
('689f8819-4927-4841-90a8-a2982903117c', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:55:00'),
('6fdf7553-bf90-4dbd-84b6-32748fea9c73', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=test1', '2021-04-08 14:15:00'),
('75fd43a8-d576-43b3-8e0f-9bc4a4a04652', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt0103359', '2021-04-09 04:15:00'),
('7b2e5fb7-1101-4952-a1f5-060e0d0d972b', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:55:00'),
('7f01f0bf-c8e6-4124-af30-09a18235c402', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 14:15:00'),
('80bc0f4a-af3d-4316-89f2-4b6a334b27f5', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:42:00'),
('87e4dfda-0290-4643-a418-446d36cacf20', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=Batman', '2021-04-08 18:44:00'),
('87ed90c7-142e-4108-95b1-25904d20f93a', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 08:46:00'),
('887e8c2e-3da9-44f9-9f07-b62904d5c023', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:55:00'),
('8cd89975-309f-44c2-a9c7-3234107bec8e', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 08:50:00'),
('950dbaa6-4192-46dd-878c-a3deab694c16', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 14:07:00'),
('9b378673-5214-4335-8c3e-dc4b3e3f984a', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt0118661', '2021-04-08 14:09:00'),
('9daf2f59-b1ce-4d47-8e36-b9c817cd616c', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 08:49:00'),
('9f9e3e23-f4a4-479b-b98a-558396eefc87', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 12:56:00'),
('a694fb02-022e-4d1b-9dfc-3606050ddcc8', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 13:29:00'),
('a9dcb38a-ef82-449a-8aa3-f64ebe1d15e9', 'http://www.omdbapi.com/', 'test', '2021-04-08 14:03:00'),
('b044380e-65b6-47a0-9414-2463fc7f882e', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt0118661', '2021-04-08 14:15:00'),
('b2a56b4b-84b5-4b01-bf02-e11a6bed86b8', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 13:27:00'),
('b6e5a5a9-8bc0-4fab-ac2d-f6c3faa3be24', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:44:00'),
('bd5c6dc4-a3f4-4b43-8cc1-5e72d96d816e', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=test1', '2021-04-08 14:15:00'),
('c11e3e7f-61e2-49a5-9136-7bf472495a88', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=Batman', '2021-04-08 08:46:00'),
('c44fa25d-5ddb-4ec4-b2c2-b458fd1d620a', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=test1', '2021-04-08 14:09:00'),
('cc175f62-a0e6-45f2-b3d5-e366b091a039', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=Batman', '2021-04-09 04:15:00'),
('d06c4b96-e7e2-4aab-adbc-975306bff6f4', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:53:00'),
('d1fbea8b-33aa-4b7f-8929-25e694aabd75', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:27:00'),
('d4aa60b2-5859-45fa-8581-36402ef882f2', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 08:50:00'),
('d84d9655-f0b9-42a1-b8fd-2bc645209faf', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=test1', '2021-04-08 14:03:00'),
('e7bc20d3-92f7-4c6d-894a-f3ac8a75be36', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt9698442', '2021-04-08 08:59:00'),
('ea5343f9-10c2-4c28-94b6-bce98c1cf909', 'test', 'http://www.omdbapi.com/', '2021-04-08 13:44:00'),
('ea8c044d-e9c1-4615-9733-836a33318f84', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 14:03:00'),
('ef846a69-7ca4-4f24-8e15-ee4d35c5ed1d', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=call', '2021-04-08 13:30:00'),
('f16b506d-1fcd-4d1a-8bb5-bf46fadf1b11', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&i=tt1911644', '2021-04-08 08:47:00'),
('f64546b5-6a7d-4ac6-8d71-4b7c3bb0248f', 'http://www.omdbapi.com/', '?apikey=faf7e5bb&s&s=avengers', '2021-04-08 13:52:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `parent`) VALUES
(1, 'Ali', 2),
(2, 'Budi', 0),
(3, 'Cecep ', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_access`
--
ALTER TABLE `log_access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
