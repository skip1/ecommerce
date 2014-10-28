-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2014 at 02:21 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `products`
--
CREATE DATABASE IF NOT EXISTS `products` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `products`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `desktops` varchar(50) NOT NULL,
  `laptops` varchar(50) NOT NULL,
  `tablets` varchar(50) NOT NULL,
  `smartphones` varchar(50) NOT NULL,
  `cellphones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `nameid` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`nameid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`nameid`, `name`, `company`, `category`, `price`, `color`) VALUES
(1, 'Apple Iphone6', 'Apple', 'smartphone', 699.99, 'white'),
(2, 'Hp Desktop 2000', 'Hp', 'Desktop', 499.99, 'black'),
(3, 'Palm Centro 690', 'Palm', 'cellphone', 29.99, 'green'),
(4, 'Acer Inspire 3000', 'Acer', 'laptop', 359.99, 'silver');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
