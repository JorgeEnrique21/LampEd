-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 28-Fev-2017 às 23:43
-- Versão do servidor: 5.6.33
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `LampEd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtonormal`
--

CREATE TABLE `produtonormal` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtonormal`
--

INSERT INTO `produtonormal` (`id`, `nome`, `descricao`, `valor`) VALUES
(0, 'Curso online de Arduíno', 'Seja mestre em Arduíno nessas vídeo-aulas com mestres do assunto.', '200');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtotec`
--

CREATE TABLE `produtotec` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtotec`
--

INSERT INTO `produtotec` (`id`, `nome`, `descricao`) VALUES
(0, 'Sistema de administração Web', 'A solução para todas as suas necessidades de administração de sites.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `senha`, `email`, `dataNascimento`, `tipo`) VALUES
(5, 'User', 'user', 'user@user.com', '2017-02-01', 0),
(6, 'Robermatica', 'robermatica', 'robermatica@robermatica.com', '2016-10-12', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtonormal`
--
ALTER TABLE `produtonormal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtotec`
--
ALTER TABLE `produtotec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;