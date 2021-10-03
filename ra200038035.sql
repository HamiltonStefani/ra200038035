-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2021 às 04:49
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ra200038035`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `nameCourse` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `dateStart` date NOT NULL,
  `dateFinish` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `courses`
--

INSERT INTO `courses` (`id`, `nameCourse`, `description`, `dateStart`, `dateFinish`, `status`, `created_at`, `updated_at`) VALUES
(7, 'javascript total', 'Curso Muito bom! Básico', '2021-09-25', '2021-10-30', 1, '2021-09-25 01:43:46', '2021-09-25 19:26:32'),
(12, 'Programando com PHP ', 'Aprendendo em apenas 30 dias!!', '2021-09-24', '2021-10-21', 1, '2021-09-25 13:26:54', '2021-09-25 13:27:36'),
(13, 'Informática Avançada', 'Curso Profissional na área de secretariado', '2021-09-25', '2021-11-27', 1, '2021-09-25 19:28:50', '2021-09-25 19:29:22'),
(15, 'Programação avançada', 'Para Nível superior', '2021-09-25', '2021-12-31', 0, '2021-09-26 02:39:24', '2021-09-26 02:40:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `course` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `phone`, `course`, `status`, `created_at`, `updated_at`) VALUES
(23, 'Roberto Cruz', 'berto_55@gmail.com', '10203056', '16889512584', 0, 1, '2021-09-25 18:47:57', '2021-09-26 01:55:32'),
(24, 'Inácio Deodoro', 'inacio_deo@doodorocorporection.com', '1955487', '02116995689641', 7, 1, '2021-09-25 19:09:44', NULL),
(25, 'Hercules Mordok', 'hercules-fort@mordokcompani.com', '745899312', '55016998563325', 12, 1, '2021-09-25 19:12:54', NULL),
(26, 'Haroldo Martins Junior', 'haroldo_m@yahoo.com.br', '19785621', '5516995689965', 2, 1, '2021-09-26 01:34:29', '2021-09-26 01:36:46'),
(27, 'Herculano Da Cunha', 'herculano_cunha@bol.com.br', '1@235694', '169989856145', 13, 1, '2021-09-26 02:32:14', '2021-09-26 02:33:09');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
