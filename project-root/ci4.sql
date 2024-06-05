-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 07:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Abu Nawas', 'abunawas', 'Abu Nawas', 'Gramedia', 'AbuNawas.jpg', '2024-03-26 13:59:59', '2024-03-26 13:59:59'),
(2, 'Al-Khwarizmi', 'al', 'Corona Brezina', 'Gramedia', 'Al-Khwarizmi.jpg', '2024-03-26 22:31:34', '2024-03-26 22:31:34'),
(7, 'Awan34', 'awan34', 'Bulan34', 'Bintang34', '1716791996_742c84095b3f1127252f.jpg', '2024-05-06 12:22:32', '2024-05-27 06:39:56'),
(8, 'test', 'test', 'test', 'test', '1717389687_e3af181ab2eb5f70e8a0.jpg', '2024-06-03 04:41:27', '2024-06-03 04:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-06-03-044445', 'App\\Database\\Migrations\\Penulis', 'default', 'App', 1717390472, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:24:01', '2024-06-03 05:24:01'),
(2, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:24:01', '2024-06-03 05:24:01'),
(3, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:43:38', '2024-06-03 05:43:38'),
(4, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:43:38', '2024-06-03 05:43:38'),
(5, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:43:38', '2024-06-03 05:43:38'),
(6, 'Tomy Syafrudin', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:44:26', '2024-06-03 05:44:26'),
(7, 'Slamet Kopling', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:44:26', '2024-06-03 05:44:26'),
(8, 'Rusdi', 'Jl Gus dur no 150 Jombang', '2024-06-03 05:44:26', '2024-06-03 05:44:26'),
(9, 'Gil Andrade de Cardoso', 'Avenida São. Tiago, 869 3249 Freamunde', '1982-07-20 04:34:22', '2024-06-03 05:56:40'),
(10, 'Vanessa Núria de Leite', 'Travessa de Leite, nº 2 8314-278 Alverca do Ribatejo', '1984-03-11 23:36:58', '2024-06-03 05:56:40'),
(11, 'Melissa Cátia Brito', 'Av. São. Melissa, 6, 7º Esq. 8730-552 Setúbal', '1980-01-27 20:28:34', '2024-06-03 05:56:40'),
(12, 'Viviane Azevedo de Nunes', 'Largo São. Teresa, nº 8, 4º Eq. 3814-603 Vila Nova de Gaia', '1985-11-15 12:15:07', '2024-06-03 05:56:40'),
(13, 'Francisco Branco Vicente', 'Rua St. Bruna Simões, nº 6, 73º Dir. 1260 Ermesinde', '2004-08-29 10:45:55', '2024-06-03 05:56:40'),
(14, 'Vera Salomé de Correia', 'Largo Mendes 7281-436 Póvoa de Santa Iria', '2007-08-27 23:31:35', '2024-06-03 05:56:40'),
(15, 'Gustavo Santos', 'Av. de Pinheiro, 30, Bloco 9 8405-260 Odivelas', '1978-04-21 09:36:19', '2024-06-03 05:56:40'),
(16, 'Vera Miriam Nunes Correia', 'Avenida Henrique Moreira 2539-415 Alcobaça', '1975-02-04 01:20:42', '2024-06-03 05:56:40'),
(17, 'Mafalda Carvalho de Neto', 'Av. São. Benjamim, nº 6 8771 Peso da Régua', '1982-09-28 10:44:25', '2024-06-03 05:56:40'),
(18, 'Igor Filipe Leal', 'R. São. Salomé, 9 7764-364 Ponta Delgada', '2008-05-02 14:57:28', '2024-06-03 05:56:40'),
(19, 'Lisandro Artur de Freitas', 'Av. Matias, 84 1635-152 Fiães', '1972-07-07 19:55:21', '2024-06-03 05:56:40'),
(20, 'Vera Leonor de Ribeiro', 'R. Tatiana Domingues 3431 Vila do Conde', '1970-03-13 01:53:59', '2024-06-03 05:56:40'),
(21, 'Sara Vitória Matias de Marques', 'Avenida São. Liliana 4544-635 Tavira', '1999-08-06 20:07:06', '2024-06-03 05:56:40'),
(22, 'Ana Morais de Martins', 'Travessa São. Lorena, 375 8109-284 Tomar', '1987-03-01 15:57:35', '2024-06-03 05:56:40'),
(23, 'Guilherme Vicente Vaz', 'R. Andreia Oliveira, 65 8520 Póvoa de Varzim', '1988-07-06 23:11:50', '2024-06-03 05:56:40'),
(24, 'David Garcia', 'Largo Inês Rodrigues 9690-330 Vila Nova de Famalicão', '1989-06-15 20:45:48', '2024-06-03 05:56:40'),
(25, 'Gaspar Hélder Correia de Pereira', 'Largo de Soares, 3 5931 Pinhel', '1998-02-01 01:01:33', '2024-06-03 05:56:40'),
(26, 'Bernardo Paulo de Rocha', 'Av. Cardoso 2154 Portalegre', '1993-06-09 19:49:56', '2024-06-03 05:56:40'),
(27, 'Lorena Cristiana Loureiro Nunes Coelho', 'Avenida Henrique Pires, nº 31, 14º Dr. 2099-185 Rio Tinto', '2021-06-03 13:32:57', '2024-06-03 05:56:40'),
(28, 'Isabel Valente Torres', 'Av. St. Santiago Miranda, nº 794 6269 Santarém', '1988-10-24 07:09:54', '2024-06-03 05:56:40'),
(29, 'Xavier André Neves de Oliveira', 'R. de Carneiro, 7 6329 Alcobaça', '2017-07-11 04:47:11', '2024-06-03 05:56:40'),
(30, 'Gustavo Edgar Morais Nascimento Maia', 'Av. St. Joel Antunes, nº 7 8841 Fátima', '1984-10-29 02:51:01', '2024-06-03 05:56:40'),
(31, 'Rafaela Abreu', 'Av. de Assunção 3379-317 Barreiro', '2001-07-27 01:16:34', '2024-06-03 05:56:40'),
(32, 'Filipa Domingues de Castro', 'Rua St. Matilde Lopes 1405-919 Maia', '2023-10-11 07:15:52', '2024-06-03 05:56:40'),
(33, 'Daniela Matos de Macedo', 'Travessa São. António, nº 135, 6º Eq. 2245 Macedo de Cavaleiros', '1982-07-21 18:16:38', '2024-06-03 05:56:40'),
(34, 'Diogo Monteiro Faria', 'Avenida Cláudio Vicente, 97, 4º Dir. 8489-508 Montijo', '1977-04-23 22:24:34', '2024-06-03 05:56:40'),
(35, 'Kevin Pinho Pereira', 'Travessa de Ribeiro, 824, 17º Dir. 5070 Ponta Delgada', '1993-06-19 17:21:51', '2024-06-03 05:56:40'),
(36, 'Júlia Júlia Esteves Antunes Rocha', 'R. Matias, nº 64, 24º Dr. 5199 Santiago do Cacém', '1990-04-16 08:02:07', '2024-06-03 05:56:40'),
(37, 'José Hugo de Leal', 'Travessa Pinheiro, nº 865 2379 Seia', '1986-07-01 14:31:01', '2024-06-03 05:56:40'),
(38, 'Iara Diana Vaz de Valente', 'Av. St. Artur Silva 2539-064 Portalegre', '2023-05-05 12:48:13', '2024-06-03 05:56:40'),
(39, 'Jaime Sérgio Lourenço de Barbosa', 'Avenida Domingues, 7 9560-726 Figueira da Foz', '1991-12-26 18:48:42', '2024-06-03 05:56:40'),
(40, 'Ricardo Vítor Oliveira Barbosa Vaz', 'Avenida Ivan Simões, 618 2089 Castelo Branco', '2008-04-17 05:56:17', '2024-06-03 05:56:40'),
(41, 'César Sérgio Mota Faria', 'Avenida Matos 1259-911 Horta', '2002-10-11 17:52:18', '2024-06-03 05:56:40'),
(42, 'Leandro André Almeida de Monteiro', 'Tv. St. Maria Nascimento 4364 Vila Nova de Foz Côa', '1991-08-22 10:12:24', '2024-06-03 05:56:40'),
(43, 'Mara Luciana Lima Maia Faria', 'Tv. Fabiana Branco 8879-163 Alcácer do Sal', '1971-03-24 11:47:45', '2024-06-03 05:56:40'),
(44, 'Luna Amaral de Cunha', 'Travessa St. Alícia Barros, nº 19, 97º Esq. 2485 Fiães', '2010-06-07 12:12:27', '2024-06-03 05:56:40'),
(45, 'Ângela Andreia Azevedo', 'Avenida St. Íris Vieira, nº 811, 11º Dr. 2649 Vila Praia da Vitória', '2018-03-29 10:02:11', '2024-06-03 05:56:40'),
(46, 'Ivan Amaral de Rocha', 'Av. Benedita Sousa 4830-626 Abrantes', '2015-10-16 20:52:53', '2024-06-03 05:56:40'),
(47, 'Alexandra Sara Antunes de Leal', 'Largo Melo, 952, Bl. 4 8570-584 Mealhada', '1978-02-02 21:55:40', '2024-06-03 05:56:40'),
(48, 'Bruno Davi de Araújo', 'Lg. St. Ana Fonseca, nº 927, 30º Dr. 4621-403 Santo Tirso', '1989-02-10 16:10:48', '2024-06-03 05:56:40'),
(49, 'Lara Violeta Amorim Nunes Valente', 'Lg. Leite, 17, Bloco 3 3524-863 Torres Vedras', '2023-07-31 12:23:11', '2024-06-03 05:56:40'),
(50, 'Marco Leandro Abreu Pinho Alves', 'Avenida St. Luís Soares, 105 4685 Vila Nova de Famalicão', '2009-11-08 21:55:02', '2024-06-03 05:56:40'),
(51, 'Manuel Mendes', 'Tv. Vasco Alves, nº 118, 44º Esq. 9254 Funchal', '1970-09-23 03:04:41', '2024-06-03 05:56:40'),
(52, 'Gil Filipe Pereira de Mendes', 'Travessa Rodrigues 2389 Valpaços', '2017-09-12 04:12:41', '2024-06-03 05:56:40'),
(53, 'Miriam Lourenço de Lima', 'Tv. Leite 5859 Tomar', '1996-04-02 06:34:12', '2024-06-03 05:56:40'),
(54, 'Nicole Magalhães Freitas', 'Largo Melissa Gonçalves, nº 573 6891 Ílhavo', '2013-07-25 13:46:54', '2024-06-03 05:56:40'),
(55, 'Fabiana Kelly Matias de Sousa', 'Lg. St. Adriana Reis 7321 Pinhel', '2008-12-29 16:47:42', '2024-06-03 05:56:40'),
(56, 'Maria Núria Assunção Lima', 'Rua de Batista 7605 Marinha Grande', '2020-12-14 19:53:18', '2024-06-03 05:56:40'),
(57, 'Filipe Paulo Garcia', 'Largo São. Carlota 9141 Torres Vedras', '1978-05-14 16:14:02', '2024-06-03 05:56:40'),
(58, 'Artur Raúl Soares de Faria', 'Tv. São. Yara, 1 2621-856 Tondela', '2008-04-09 08:07:10', '2024-06-03 05:56:40'),
(59, 'Gabriel António Fernandes Lopes Batista', 'Travessa Nelson Carneiro, nº 59, 63º Dr. 1879-027 Paços de Ferreira', '2012-05-07 11:49:56', '2024-06-03 05:56:40'),
(60, 'Jaime Paiva de Cunha', 'Avenida Daniel Matos 9029-281 Odivelas', '1981-07-06 21:51:50', '2024-06-03 05:56:40'),
(61, 'Vicente Hugo Esteves Martins', 'Largo de Castro, 766, 4º Esq. 9535 Mealhada', '2011-01-03 16:08:45', '2024-06-03 05:56:40'),
(62, 'Duarte Vaz de Maia', 'R. São. Martim 2324-012 Póvoa de Santa Iria', '1996-05-14 17:47:26', '2024-06-03 05:56:40'),
(63, 'Luísa Gaspar', 'Travessa de Henriques 2495-573 Vizela', '2009-09-14 06:03:21', '2024-06-03 05:56:40'),
(64, 'Sérgio Gustavo de Costa', 'Avenida de Campos 8714 Fafe', '1992-08-23 00:23:55', '2024-06-03 05:56:40'),
(65, 'Mafalda Kelly Freitas de Abreu', 'Travessa St. Débora Pinho, 64 9855 Amadora', '1990-11-24 09:07:41', '2024-06-03 05:56:40'),
(66, 'Filipa Mia Pinho', 'Tv. São. Lorena, nº 755 6940 Pinhel', '2010-06-01 06:05:16', '2024-06-03 05:56:40'),
(67, 'Gonçalo Leandro Sá', 'Lg. de Morais, nº 497, 12º Eq. 7365 Gouveia', '2013-06-18 05:09:40', '2024-06-03 05:56:40'),
(68, 'Denis Telmo Alves de Batista', 'Avenida São. Kevin 1520-688 Vila Nova de Foz Côa', '1985-04-28 16:00:52', '2024-06-03 05:56:40'),
(69, 'Íris Laura de Soares', 'Av. São. Cristiano 8239-903 Tomar', '1993-09-05 13:42:57', '2024-06-03 05:56:40'),
(70, 'Duarte Andrade de Pinho', 'Avenida St. Viviane Faria 6751-537 Ourém', '2016-02-18 17:57:16', '2024-06-03 05:56:40'),
(71, 'Vanessa Mendes Carvalho', 'R. St. Alícia Melo, 19 3331-685 Oliveira de Azeméis', '2001-11-21 16:02:15', '2024-06-03 05:56:40'),
(72, 'Rúben Mateus Branco Fonseca Coelho', 'Lg. Gustavo Cunha, 52 4034 Setúbal', '2010-08-12 23:44:42', '2024-06-03 05:56:40'),
(73, 'Nuno Freitas de Cruz', 'Avenida Pereira 2750-859 Figueira da Foz', '2004-12-05 10:02:53', '2024-06-03 05:56:40'),
(74, 'Adriana Filipa Leal Branco Nascimento', 'Rua Amorim, 30, 44º Dir. 4290-680 Leiria', '2007-07-22 06:16:10', '2024-06-03 05:56:40'),
(75, 'Diego Fernando Pereira Machado', 'Rua de Pinho 9220 Bragança', '1989-10-26 13:48:18', '2024-06-03 05:56:40'),
(76, 'Lara Mara Matias Paiva Teixeira', 'Av. Bianca Maia, 66 4880 Vale de Cambra', '2019-06-27 15:47:21', '2024-06-03 05:56:40'),
(77, 'José Lisandro de Coelho', 'Largo Ângela Matias 2095 Porto Santo', '1990-02-28 05:38:12', '2024-06-03 05:56:40'),
(78, 'Vítor William Pires', 'Rua Esteves, 12, 60º Dr. 7871-150 Ovar', '1990-11-26 18:48:01', '2024-06-03 05:56:40'),
(79, 'Constança Pinho', 'Largo São. Mélanie, nº 32, 49º Dr. 5101-250 Paredes', '2014-09-26 13:46:31', '2024-06-03 05:56:40'),
(80, 'Vítor Reis Ferreira', 'Rua Mónica Reis, 725 9690 Queluz', '1989-07-11 23:06:48', '2024-06-03 05:56:40'),
(81, 'Fernando Hélder Batista Antunes Valente', 'Tv. Soares 8999-780 Maia', '1991-01-14 20:39:01', '2024-06-03 05:56:40'),
(82, 'Mónica Maia de Pacheco', 'Rua Monteiro 7259-707 Fundão', '2000-11-28 15:04:14', '2024-06-03 05:56:40'),
(83, 'Beatriz Lima Gaspar', 'Rua Vasco Gomes, nº 97 3029 Alcobaça', '1975-03-26 17:32:20', '2024-06-03 05:56:40'),
(84, 'Luna Letícia Nunes Silva Castro', 'Rua St. Érika Castro 7364-639 Póvoa de Varzim', '1996-11-08 09:07:27', '2024-06-03 05:56:40'),
(85, 'Clara Luana de Barbosa', 'Av. Doriana Neto, 33, 7º Dr. 3561 Abrantes', '1987-01-09 07:04:16', '2024-06-03 05:56:40'),
(86, 'Bruna Luciana de Silva', 'Av. Simões, nº 32, 33º Eq. 6440 Paços de Ferreira', '1991-07-19 21:24:46', '2024-06-03 05:56:40'),
(87, 'Gaspar Kevin Moura', 'Av. São. Rebeca, 6, 19º Dr. 9840 Montijo', '1985-08-09 01:16:09', '2024-06-03 05:56:40'),
(88, 'Tatiana Ângela Miranda Matos', 'Largo São. Sofia, 54, 1º Dr. 1159-130 Funchal', '2001-06-16 20:55:50', '2024-06-03 05:56:40'),
(89, 'Simão José Henriques Antunes', 'Avenida Edgar Gomes, 25 1551-436 Tavira', '2018-02-04 07:06:36', '2024-06-03 05:56:40'),
(90, 'Samuel Torres Teixeira', 'Avenida São. Martim 1140-033 Lourosa', '1996-09-27 09:10:38', '2024-06-03 05:56:40'),
(91, 'Tiago Cláudio Garcia', 'R. São. Doriana 7690 Albufeira', '2012-04-15 21:31:10', '2024-06-03 05:56:40'),
(92, 'Vitória Cátia de Mendes', 'Avenida São. Inês, 5 5839 Vila Real de Santo António', '1989-08-06 23:31:09', '2024-06-03 05:56:40'),
(93, 'Joel Davi de Carvalho', 'Tv. St. Júlia Tavares, 67 2400 Póvoa de Varzim', '2011-12-03 12:30:46', '2024-06-03 05:56:40'),
(94, 'Matheus Antunes', 'Travessa de Andrade, nº 626 8780 Torres Vedras', '2018-01-11 08:44:47', '2024-06-03 05:56:40'),
(95, 'Helena Iris Tavares Matias Simões', 'Rua de Azevedo, nº 4 4419-234 Barreiro', '1975-02-07 22:24:42', '2024-06-03 05:56:40'),
(96, 'Ariana Cardoso', 'Av. de Castro, nº 74 1440-188 Coimbra', '2019-08-12 21:58:43', '2024-06-03 05:56:40'),
(97, 'Tomás Manuel Faria', 'Tv. de Pereira, nº 74 3221-939 Paços de Ferreira', '2009-04-16 08:05:38', '2024-06-03 05:56:40'),
(98, 'Tomás Valente', 'Lg. São. Gustavo 1685-568 Montijo', '1978-10-26 21:53:41', '2024-06-03 05:56:40'),
(99, 'Dinis Azevedo', 'Lg. Matias Pinho, nº 74, 97º Esq. 9025-838 Silves', '1987-03-15 08:54:26', '2024-06-03 05:56:40'),
(100, 'Tomás Leonardo Moreira de Almeida', 'Avenida Rocha, 14 5905-419 Caldas da Rainha', '1996-12-15 22:06:47', '2024-06-03 05:56:40'),
(101, 'Isabel Oliveira de Miranda', 'Largo St. Ricardo Amaral 3234 Lagos', '2005-05-26 16:56:28', '2024-06-03 05:56:40'),
(102, 'Liliana Tavares', 'Tv. Daniel Fonseca, nº 2, 1º Dr. 5565-981 Vila Nova de Gaia', '2019-02-26 10:56:11', '2024-06-03 05:56:40'),
(103, 'Luís Diego Azevedo', 'Lg. São. Telmo 3309-243 Covilhã', '2002-10-13 01:49:49', '2024-06-03 05:56:40'),
(104, 'Íris Fonseca Amaral', 'Lg. São. Carolina, nº 215 3194-199 Peso da Régua', '1994-12-21 22:34:30', '2024-06-03 05:56:40'),
(105, 'Iris Morais de Castro', 'Lg. São. Erica, 205, 90º Dir. 7561 São Mamede de Infesta', '1974-05-12 02:43:17', '2024-06-03 05:56:40'),
(106, 'Rafael Ângelo Assunção Campos Moreira', 'Largo São. Alícia, 138, 69º Eq. 4524 Oliveira do Hospital', '1985-08-09 09:12:12', '2024-06-03 05:56:40'),
(107, 'Hélder Valente', 'Av. São. Benedita, 58, Bloco 1 7184-196 Ponta Delgada', '1972-10-31 12:50:17', '2024-06-03 05:56:40'),
(108, 'André Fernando Leal Almeida', 'Lg. São. Érica, nº 6 5814 Tomar', '2011-06-09 20:15:14', '2024-06-03 05:56:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
