-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 09:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `tipo_piel` varchar(255) NOT NULL,
  `afeccion` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nombre`, `producto`, `marca`, `tipo_piel`, `afeccion`, `descripcion`, `precio`, `foto`) VALUES
(1, 'Mineral 89', 'Serum', 'Vichy', 'Mixta', 'piel con rosacea', '89% DE AGUA VOLCÁNICA DE VICHY, HIDRATA Y FORTALECE LA BARRERA DE LA PIEL.', 615, 'https://www.vichy.com.mx/site/pages/showImageResized.aspx?EncMediaId=Y0o2MVlzQUxKZkFQdWhHTUJ4ZkhjQT09&ImageFormatAppCode=IMAGEFORMAT_PDPV4_PACK_DKP_530_530&v=2202211044863'),
(2, 'Alcohol free toner', 'Tonico', 'Neutrogena', 'Grasa', 'Acne', 'Alcohol-Free Face Toner limpia delicadamente la piel, elimina impurezas y reacondiciona la piel ', 309, 'https://ntg-catalog.imgix.net/products/6802700_nocolor_0.jpg?fm=webp&auto=format&w=720&h=866&fit=crop'),
(7, 'Skin active', 'agua micelar', 'Garnier', 'Mixta', 'Piel sensible grasa', 'Agua testada dermatologicamente', 120, 'https://m.media-amazon.com/images/I/51DBPPnjZmL._AC_SX569_.jpg'),
(9, 'Joeson ', 'Serum', 'beauty by joeson', 'Mixta', 'Acne', 'Serum medicinal anti acne refinador de poros', 550, 'https://cdn.shopify.com/s/files/1/0089/5028/4345/products/REPAIRSERUMGINSENG_480x480.png?v=1622611335');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `type` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellido`, `direccion`, `telefono`, `sexo`, `correo`, `contrasena`, `type`) VALUES
(1, 'Nahomy', 'Hernandez', 'Av. Rio Nilo', '3311302837', 'Femenino', 'a21110142@ceti.mx', 'pass', 1),
(2, 'Maria', 'Melendez', 'revolucion', '3331390890', 'Femenino', 'maria123@live.mx', '123', 0),
(3, 'Antonio', 'Rodriguez', 'Tonala 2341', '12345678', 'Masculino', 'Antonio123@live.mx', '123', 0),
(4, 'Roberta', 'Martinez', 'Brasilia 1256', '3344905612', 'Femenino', 'Roberta234@gmail.com', '1234', 0),
(5, 'Raul', 'Rosas', 'Alberta 78 calle B', '22669041', 'Masculino', 'Raulr@gmail.com', '1234', 0),
(6, 'Andrea', 'Ponce', 'Elias villalpando 968', '3312459800', 'Femenino', 'andrea123@hotmail.com', '12345', 0),
(7, 'Eugenia', 'Robles', 'Ceti plantel colomos', '123456789', 'Femenino', 'ejemplo@ceti.mx', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
