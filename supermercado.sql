-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Ago-2021 às 03:33
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `supermercado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `cliente_nome` varchar(80) DEFAULT NULL,
  `cliente_datanasc` date DEFAULT NULL,
  `cliente_email` varchar(50) DEFAULT NULL,
  `cliente_cpf` varchar(25) DEFAULT NULL,
  `cliente_endereço` varchar(100) DEFAULT NULL,
  `cliente_telefone` varchar(25) DEFAULT NULL,
  `cliente_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_nome`, `cliente_datanasc`, `cliente_email`, `cliente_cpf`, `cliente_endereço`, `cliente_telefone`, `cliente_cadastradoem`) VALUES
(1, 'Raquel de Queiroz', '2011-05-01', 'raquel@gmail.com', '564.879.000-87', 'Av. Visconde de Icó, 120', '945672122', '2021-08-24 21:10:11'),
(3, 'Érico Veríssimo', '2009-09-10', 'erico@gmail.com', '786.999.555-88', 'Av. Santos Dumont, 500', '986461234', '2021-08-24 21:13:37'),
(4, 'Carlos Drummond de Andrade', '2011-04-28', 'carlosda@gmail.com', '858.888.321-99', 'Rua das Orquídeas, 600', '999996555', '2021-08-26 02:57:19'),
(5, 'Cora Coralina', '2016-07-15', 'coracoralina@bol.com.br', '858.888.321-92', 'Rua das Goiabeira, 44', '986464444', '2021-08-26 03:02:05'),
(6, 'Fernado Pessoa', '2018-10-19', 'fernandop@yahoo.com.br', '777.342.654-24', 'Av. Treze de Maio, 1232', '945672188', '2021-08-26 03:05:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `fornecedor_id` int(6) NOT NULL,
  `fornecedor_nome` varchar(100) NOT NULL,
  `fornecedor_cnpj` varchar(50) NOT NULL,
  `fornecedor_ramo` varchar(30) NOT NULL,
  `fornecedor_email` varchar(150) NOT NULL,
  `fornecedor_endereco` varchar(150) NOT NULL,
  `fornecedor_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`fornecedor_id`, `fornecedor_nome`, `fornecedor_cnpj`, `fornecedor_ramo`, `fornecedor_email`, `fornecedor_endereco`, `fornecedor_cadastradoem`) VALUES
(1, 'Arroz LTDA', '06.626.253/0001-51', 'alimento', 'arrozltda@gmail.com', 'Rua das Flores, 400 Benfica Fortaleza-CE', '2021-08-26 02:24:01'),
(2, 'Sapato e Cia', '06.626.253/0001-53', 'calçados', 'sapatoecia@gmail.com', 'AV. Barão Vermelho, 999 Damas Fortaleza-CE', '2021-08-26 02:26:17'),
(3, 'Etiqueta ME', '06.626.253/0001-52', 'vestuário', 'etiquetame@gmail.com', 'Av. da Paz, 43 Aldeota Fortaleza-CE', '2021-08-26 03:09:10'),
(4, 'Sabão Forte S/A', '06.626.253/0001-56', 'higiene e limpeza', 'sabaoforte@hotmail.com', 'Av. Bezerra de Menezes, 2020 São Gerardo Fortaleza-CE', '2021-08-26 03:22:49'),
(5, 'Plastitudo LTDA', '07.626.253/0001-66', 'plástico', 'plastitudo@gmail.com', 'Av. Santos Dumont, 200 Meireles Fortaleza-CE', '2021-08-26 03:26:00'),
(6, 'Ração Animal EIRELI', '07.626.253/0001-22', 'ração', 'racaoanimal@bol.com.br', 'Av. das Nações, 444 Xaxim Curitiba-PR', '2021-08-27 22:57:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produto_id` int(11) NOT NULL,
  `produto_tipo` varchar(30) NOT NULL,
  `produto_nome` varchar(30) NOT NULL,
  `produto_fornecedor_nome` varchar(100) NOT NULL,
  `produto_precocompra` float(6,2) NOT NULL,
  `produto_precovenda` float(6,2) NOT NULL,
  `produto_estoque` int(6) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_codigo` varchar(50) NOT NULL,
  `produto_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produto_id`, `produto_tipo`, `produto_nome`, `produto_fornecedor_nome`, `produto_precocompra`, `produto_precovenda`, `produto_estoque`, `produto_validade`, `produto_codigo`, `produto_cadastradoem`) VALUES
(1, 'copo descartável', 'Copo Copobras 300ml', 'Plastitudo LTDA', 10.00, 13.00, 30, '0000-00-00', '0000110101001111110010', '2021-08-27 22:47:44'),
(4, 'arroz', 'Arroz Branco Pai João', 'Arroz LTDA', 3.00, 4.00, 500, '2021-10-01', '0000000101001111110010', '2021-08-27 22:46:10'),
(5, 'sandália', 'Havaianas Casual 36', 'Sapato e Cia', 40.00, 55.00, 20, '0000-00-00', '0000110101001111110000', '2021-08-27 23:04:25'),
(6, 'sabão', 'Brilhante 800mg', 'Sabão Forte S/A', 9.00, 11.00, 100, '2023-10-01', '0000110101001100110010', '2021-08-27 23:12:23'),
(7, 'roupa', 'Avental Branco', 'Etiqueta ME', 20.00, 25.00, 10, '0000-00-00', '0000110101001001110010', '2021-08-27 23:14:47'),
(8, 'ração', 'Ração Dog Show 1kg', 'Ração Animal EIRELI', 9.00, 13.00, 20, '2023-08-01', '0000110111111001110010', '2021-08-27 23:18:29'),
(9, 'sabão', 'Ariel 400g', 'Sabão Forte S/A', 11.00, 13.00, 30, '2022-10-01', '0000110101001001111111', '2021-08-27 23:20:50'),
(10, 'detergente', 'Limpol 500ml', 'Sabão Forte S/A', 1.90, 2.87, 30, '2022-08-23', '0000000101001111111111', '2021-08-28 00:34:12'),
(11, 'bacia', 'Bacia 5l Sanremo', 'Plastitudo LTDA', 15.00, 20.00, 12, '0000-00-00', '1111111111001001110010', '2021-08-28 01:20:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(4) NOT NULL,
  `usuario_nome` varchar(80) NOT NULL,
  `usuario_cpf` varchar(25) NOT NULL,
  `usuario_cargo` varchar(30) NOT NULL,
  `usuario_login` varchar(10) NOT NULL,
  `usuario_senha` varchar(8) NOT NULL,
  `usuario_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_nome`, `usuario_cpf`, `usuario_cargo`, `usuario_login`, `usuario_senha`, `usuario_cadastradoem`) VALUES
(1, 'Terezinha de Jesus Almeida', '637.614.321-93', 'Gerente Geral', 'terezinhad', '9999', '2021-08-27 23:01:28'),
(2, 'Paulo Ricardo Porto', '987.654.322-23', 'vendedor', 'pauloricar', '2022', '2021-08-27 23:01:28'),
(3, 'Maria Rita de Souza', '987.654.323-44', 'vendedor', 'mariarita', '2023', '2021-08-27 23:01:28'),
(4, 'Francisco da Silva', '987.654.324-91', 'vendedor', 'franciscod', '2024', '2021-08-27 23:01:28'),
(5, 'Mauro Pereira Filho', '987.654.325-33', 'vendedor', 'mauroperei', '2025', '2021-08-27 23:01:28'),
(6, 'Ana Paula Medeiros', '987.654.321-55', 'vendedor', 'anapaula', '2026', '2021-08-27 23:01:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `venda_id` int(12) NOT NULL,
  `venda_usuario_login` varchar(10) NOT NULL,
  `venda_cliente_cpf` varchar(25) NOT NULL,
  `venda_produto_nome` varchar(30) NOT NULL,
  `venda_produto_quantidade` int(6) UNSIGNED NOT NULL,
  `venda_cadastradoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`venda_id`, `venda_usuario_login`, `venda_cliente_cpf`, `venda_produto_nome`, `venda_produto_quantidade`, `venda_cadastradoem`) VALUES
(1, 'anapaula', '858.888.321-99', 'Arroz Branco Pai João', 3, '2021-08-27 23:27:25'),
(2, 'franciscod', '564.879.000-87', 'Brilhante 800mg', 45, '2021-08-28 00:30:04'),
(3, 'pauloricar', '858.888.321-92', 'Ração Dog Show 1kg', 3, '2021-08-28 01:09:23'),
(4, 'mauroperei', '777.342.654-24', 'Havaianas Casual 36', 2, '2021-08-28 01:11:03'),
(6, 'pauloricar', '786.999.555-88', 'Copo Copobras 300ml', 5, '2021-08-28 01:29:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`),
  ADD UNIQUE KEY `cliente_cpf` (`cliente_cpf`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`fornecedor_id`),
  ADD UNIQUE KEY `fornecedor_nome` (`fornecedor_nome`),
  ADD UNIQUE KEY `fornecedor_cnpj` (`fornecedor_cnpj`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produto_id`),
  ADD UNIQUE KEY `produto_nome` (`produto_nome`),
  ADD KEY `produto_fornecedor_nome` (`produto_fornecedor_nome`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuario_login` (`usuario_login`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `venda_usuario_login` (`venda_usuario_login`),
  ADD KEY `venda_cliente_cpf` (`venda_cliente_cpf`),
  ADD KEY `venda_produto_nome` (`venda_produto_nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `fornecedor_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `venda_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`produto_fornecedor_nome`) REFERENCES `fornecedores` (`fornecedor_nome`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`venda_usuario_login`) REFERENCES `usuarios` (`usuario_login`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`venda_cliente_cpf`) REFERENCES `clientes` (`cliente_cpf`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`venda_produto_nome`) REFERENCES `produtos` (`produto_nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
