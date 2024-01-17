-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Jan-2024 às 04:07
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `telefone`, `senha`) VALUES
(1, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$ArK0fznVIA0DtL7ioTkZNu.YyrRWpVFSYqU14ajR8CP7LSDBUt2mi'),
(2, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$YiE1WIwBfAXMpLS4pVzuVuYmNUVOUm3VCTl38XY8DE2PWhC9.fXZO'),
(3, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$TDy.5kPJHWYPtcJUe4b6KOTNoeZH716PWEnCvGXJ5ehiwpPRVp9vO'),
(4, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$JjTjtLE5erJkPqccfjCbp.8wrwD1iGQ7PJTThA6J8zTcbnJvOVQEC'),
(5, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$HU2JAGtyY3FMRVl33CCUZ.Ak4RV1lwCd/1ccp/MEEvmVtjLFXfOC2'),
(6, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$3kFIXB7kS3pw/OYUwHZwYuMntRqManeRgzANZA.U4gEZ9PUM8iJju'),
(7, 'adriano alves', 'adrianosol21@hotmail.com', '81997887258', '$2y$10$1sB16b6lrf79u9cVfgDbceO6ulBBS.yWEDlBd2x/wp1CD5Zty/CO2'),
(8, 'adriano alves', 'adrianosol21@hotmail.com', '81997887258', '$2y$10$qZDNSgP7AL2w/275mqxY8./QE2pjE9EIWXVPk5ahDGI56ni1UOn1q'),
(9, 'Adriano Alves da Silva', 'adrianosol21@hotmail.com', '+5581997887258', '$2y$10$FYsM.JZoD65Y1zccTv.D5OzJwVnzpqcmQd1L8KXk7HTBnSF7g6gI.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
