-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2013 at 09:58 AM
-- Server version: 5.5.31-1~dotdeb.0
-- PHP Version: 5.3.28-1~dotdeb.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `updates.faircode.eu`
--

-- --------------------------------------------------------

--
-- Table structure for table `xprivacy`
--

CREATE TABLE IF NOT EXISTS `xprivacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `android_id_md5` text NOT NULL,
  `android_sdk` int(11) NOT NULL,
  `xprivacy_version` int(11) DEFAULT NULL,
  `application_name` text NOT NULL,
  `package_name` text NOT NULL,
  `package_version` text NOT NULL,
  `restriction` text NOT NULL,
  `method` text NOT NULL,
  `restricted` bit(1) NOT NULL,
  `used` bigint(13) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updates` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `restriction` (`android_id_md5`(50),`android_sdk`,`package_name`(100),`package_version`(50),`restriction`(20),`method`(70)),
  KEY `package` (`package_name`(100)),
  KEY `application` (`application_name`(100),`package_name`(100))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2256576 ;

-- --------------------------------------------------------

--
-- Table structure for table `xprivacy_app`
--

CREATE TABLE IF NOT EXISTS `xprivacy_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_name` text CHARACTER SET utf8 NOT NULL,
  `package_name` text CHARACTER SET utf8 NOT NULL,
  `package_version` text CHARACTER SET utf8 NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `application` (`application_name`(100),`package_name`(100),`package_version`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15917 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
