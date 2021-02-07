-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2021 às 04:14
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstack`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `mensagem` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `mensagem`, `data`) VALUES
(1, 'Ariana Neto de Castro', 'Realizando a primeira inserção no meu projeto Full Stack Eletro.', '2020-10-30 21:59:12'),
(9, 'João Castro', 'Amei a loja.', '2020-11-05 02:46:00'),
(11, 'Maria Brasileira', 'Comprei um React e só tem me dado trabalho, dá erro toda hora.', '2020-12-04 14:08:15'),
(12, 'Ariana Neto', 'Comprei o Node Js e não me arrependo, simplifica a vida.', '2021-02-07 00:03:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int(45) NOT NULL,
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedido`, `id`, `data`) VALUES
(1, 5, '2020-12-05 00:36:07'),
(2, 7, '2020-12-05 00:36:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `precofinal` decimal(8,2) NOT NULL,
  `imagem` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', '6389.00', '5019.00', 'geladeira1.jpg'),
(2, 'geladeira', 'Geladeira Frost Free Brastemp Branca 375 litros', '2068.60', '1940.90', 'geladeira2.jpg'),
(3, 'geladeira', 'Geladeira Frost Free Consul Prata 340 litros', '2911.00', '2069.00', 'geladeira3.jpg'),
(4, 'fogoes', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', '1209.90', '1129.00', 'fogao1.jpg'),
(5, 'fogoes', 'Fogão de Piso 4 bocas Atlas Monaco com Acendimento Automático', '609.90', '519.70', 'fogao2.jpg'),
(6, 'microondas', 'Microondas Consul 32 litros Inox 220V', '580.00', '409.88', 'micro1.jpg'),
(7, 'microondas', 'Microondas 25 Litros Espelhado Philco 220V', '508.70', '464.53', 'micro2.jpg'),
(8, 'microondas', 'Forno Microondas Electrolux 20L Branco', '459.00', '436.05', 'micro3.jpg'),
(9, 'lavalouca', 'Lava-Louça Electrolux Inox 10 Serviços, 06 Programas de Lavagem e Painel Blue Touch', '3599.00', '2799.90', 'lavalouca1.jpg'),
(10, 'lavalouca', 'Lava-Louça Compacta 8 Serviços Branca 127V Brastemp', '1970.60', '1730.61', 'lavalouca2.jpg'),
(11, 'lavadoraderoupas', 'Lavadora de Roupas Brastemp 11 kg com Turbo Performance Branca', '1699.00', '1214.10', 'lavaroupa1.jpg'),
(12, 'lavadoraderoupas', 'Lavadora de Roupas Philco Inverter 12KG', '2399.00', '2179.90', 'lavaroupa2.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
