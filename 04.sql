-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 01-Abr-2018 às 11:19
-- Versão do servidor: 5.6.32-78.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mandi598_caw`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animais`
--

CREATE TABLE IF NOT EXISTS `animais` (
  `id` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alterado_em` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banhos`
--

CREATE TABLE IF NOT EXISTS `banhos` (
  `id` int(11) NOT NULL,
  `id_animais` int(11) NOT NULL,
  `horario` datetime NOT NULL,
  `valor` float DEFAULT NULL,
  `pago` datetime DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alterado_em` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alterado_em` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`id`), ADD KEY `id_clientes` (`id_clientes`), ADD KEY `id` (`id`);

--
-- Indexes for table `banhos`
--
ALTER TABLE `banhos`
  ADD PRIMARY KEY (`id`), ADD KEY `id_animais` (`id_animais`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animais`
--
ALTER TABLE `animais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;