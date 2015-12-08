-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2015 at 05:56 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taka__mtbweb_com`
--
CREATE DATABASE IF NOT EXISTS `taka__mtbweb_com` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `taka__mtbweb_com`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE IF NOT EXISTS `admin_data` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`name`, `email`, `company`, `avatar`) VALUES
('Xuân Hoàng', 'nevergiveup.xuanhoang@gmail.com', 'TAKA', 1),
('Xuân Hoàng', 'nevergiveup.xuanhoang@gmail.com', 'TAKA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` double NOT NULL AUTO_INCREMENT,
  `object_id` double NOT NULL,
  `parent_id` double NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `liked` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `liked_data` text COLLATE utf8_unicode_ci NOT NULL,
  `unliked` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `unliked_data` text COLLATE utf8_unicode_ci NOT NULL,
  `post_by` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` double NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`) VALUES
(1, 'main_menu', ''),
(2, 'theme', 'tpl-01');

-- --------------------------------------------------------

--
-- Table structure for table `cp_history`
--

CREATE TABLE IF NOT EXISTS `cp_history` (
  `id` double NOT NULL AUTO_INCREMENT,
  `member` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employ`
--

CREATE TABLE IF NOT EXISTS `employ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `security` text COLLATE utf8_unicode_ci NOT NULL,
  `image` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employ`
--

INSERT INTO `employ` (`id`, `name`, `display_name`, `password`, `permission`, `email`, `security`, `image`) VALUES
(1, 'employ', 'Xuân Hoàng', 'f82e62d7c3ea69cc12b5cdb8d621dab6', 'full', 'info@hoang.taka.com', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE IF NOT EXISTS `follow` (
  `id` double NOT NULL AUTO_INCREMENT,
  `object_id` double NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` double NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `type`, `link`, `size`, `date_upload`) VALUES
(1, 1, 'data/data__mtbweb_com/upload/images/1.jpg', '10000', '2015-09-24 08:35:26'),
(2, 1, 'data/data__mtbweb_com/upload/images/2.jpg', '10000', '2015-09-24 08:35:26'),
(3, 1, 'data/data__mtbweb_com/upload/images/3.jpg', '10000', '2015-09-24 08:35:26'),
(4, 1, 'data/data__mtbweb_com/upload/images/4.jpg', '10000', '2015-09-24 08:35:26'),
(5, 1, 'data/data__mtbweb_com/upload/images/5.jpg', '10000', '2015-09-24 08:35:26'),
(6, 1, 'data/data__mtbweb_com/upload/images/6.jpg', '10000', '2015-09-24 08:35:26'),
(7, 1, 'data/data__mtbweb_com/upload/images/7.jpg', '10000', '2015-09-24 08:35:26'),
(8, 1, 'data/data__mtbweb_com/upload/images/8.jpg', '10000', '2015-09-24 08:35:26'),
(9, 1, 'data/data__mtbweb_com/upload/images/9.jpg', '10000', '2015-09-24 08:35:26'),
(10, 1, 'data/data__mtbweb_com/upload/images/10.jpg', '10000', '2015-09-24 08:35:26'),
(11, 1, 'data/data__mtbweb_com/upload/images/11.jpg', '10000', '2015-09-24 08:35:26'),
(12, 1, 'data/data__mtbweb_com/upload/images/12.jpg', '10000', '2015-09-24 08:35:26'),
(13, 1, 'data/data__mtbweb_com/upload/images/13.jpg', '10000', '2015-09-24 08:35:26'),
(14, 1, 'data/data__mtbweb_com/upload/images/14.jpg', '10000', '2015-09-24 08:35:26'),
(15, 1, 'data/data__mtbweb_com/upload/images/15.jpg', '10000', '2015-09-24 08:35:26'),
(16, 1, 'data/data__mtbweb_com/upload/images/16.jpg', '10000', '2015-09-24 08:35:26'),
(17, 1, 'data/data__mtbweb_com/upload/images/17.jpg', '10000', '2015-09-24 08:35:26'),
(18, 1, 'data/data__mtbweb_com/upload/images/18.jpg', '10000', '2015-09-24 08:35:26'),
(19, 1, 'data/data__mtbweb_com/upload/images/19.jpg', '10000', '2015-09-24 08:35:26'),
(20, 1, 'data/data__mtbweb_com/upload/images/20.jpg', '10000', '2015-09-24 08:35:26'),
(21, 1, 'data/data__mtbweb_com/upload/images/21.jpg', '10000', '2015-09-24 08:35:26'),
(22, 1, 'data/data__mtbweb_com/upload/images/22.jpg', '10000', '2015-09-24 08:35:26'),
(23, 1, 'data/data__mtbweb_com/upload/images/23.jpg', '10000', '2015-09-24 08:35:26'),
(24, 1, 'data/data__mtbweb_com/upload/images/24.jpg', '10000', '2015-09-24 08:35:26'),
(25, 1, 'data/data__mtbweb_com/upload/images/25.jpg', '10000', '2015-09-24 08:35:26'),
(26, 1, 'data/data__mtbweb_com/upload/images/26.jpg', '10000', '2015-09-24 08:35:26'),
(27, 1, 'data/data__mtbweb_com/upload/images/27.jpg', '10000', '2015-09-24 08:35:26'),
(28, 1, 'data/data__mtbweb_com/upload/images/28.jpg', '10000', '2015-09-24 08:35:26'),
(29, 1, 'data/data__mtbweb_com/upload/images/29.jpg', '10000', '2015-09-24 08:35:26'),
(30, 1, 'data/data__mtbweb_com/upload/images/30.jpg', '10000', '2015-09-24 08:35:26'),
(32, 1, 'data/data__mtbweb_com/upload/images/SudNgzlH0y.jpg', '26584', '2015-09-27 16:28:27'),
(33, 1, 'data/data__mtbweb_com/upload/images/R6g7ZiCBMG.jpg', '164672', '2015-09-27 16:32:37'),
(34, 1, 'data/data__mtbweb_com/upload/images/B_ZbEQ4Uim.jpg', '42780', '2015-09-27 16:34:31'),
(35, 1, 'data/data__mtbweb_com/upload/images/uY2BcPKI8O.jpg', '9374', '2015-09-27 16:35:32'),
(36, 1, 'data/data__mtbweb_com/upload/images/ATMbDjkSXW.jpg', '33906', '2015-09-27 16:36:06'),
(37, 1, 'data/data__mtbweb_com/upload/images/IHl6yA5Zw0.png', '154100', '2015-09-27 16:36:23'),
(38, 1, 'data/data__mtbweb_com/upload/images/3aRCZQPUtk.jpg', '22871', '2015-09-27 16:36:41'),
(39, 1, 'data/data__mtbweb_com/upload/images/S0pxgOT_nB.jpg', '255337', '2015-09-27 16:57:51'),
(40, 1, 'data/data__mtbweb_com/upload/images/APg9QiMat5.jpg', '137625', '2015-09-27 17:01:36'),
(41, 1, 'data/data__mtbweb_com/upload/images/IZx1i2TQqf.png', '514228', '2015-09-27 17:08:05'),
(42, 1, 'data/data__mtbweb_com/upload/images/0VgXAJsmNc.png', '327174', '2015-09-27 17:09:08'),
(43, 1, 'data/data__mtbweb_com/upload/images/Pb7EnOR_zc.jpg', '254276', '2015-09-27 17:19:55'),
(44, 1, 'data/data__mtbweb_com/upload/images/jXE2FIOWAK.jpg', '382273', '2015-09-27 17:20:54'),
(45, 1, 'data/data__mtbweb_com/upload/images/4cdYj5yXOv.jpg', '348609', '2015-09-27 17:22:46'),
(46, 1, 'data/data__mtbweb_com/upload/images/oLQMr8bKCx.jpg', '348218', '2015-09-27 17:22:48'),
(47, 1, 'data/data__mtbweb_com/upload/images/ItiF4aMcsy.jpg', '262459', '2015-09-27 17:22:49'),
(48, 1, 'data/data__mtbweb_com/upload/images/oa7DP09eJT.jpg', '386353', '2015-09-27 17:22:50'),
(49, 1, 'data/data__mtbweb_com/upload/images/9ZokQucfOt.jpg', '291964', '2015-09-27 17:22:51'),
(50, 1, 'data/data__mtbweb_com/upload/images/cCLTsI46PA.jpg', '239239', '2015-09-27 17:22:52'),
(51, 1, 'data/data__mtbweb_com/upload/images/p2en49ySoI.jpg', '356416', '2015-09-27 17:22:53'),
(52, 1, 'data/data__mtbweb_com/upload/images/fiCGA5V3v6.jpg', '313242', '2015-09-27 17:22:54'),
(53, 1, 'data/data__mtbweb_com/upload/images/tI0C4bzNKu.jpg', '287308', '2015-09-27 17:23:28'),
(54, 1, 'data/data__mtbweb_com/upload/images/3jaZC40AIy.jpg', '287535', '2015-09-27 17:23:29'),
(55, 1, 'data/data__mtbweb_com/upload/images/FcN_VCGR0w.jpg', '241371', '2015-09-27 17:23:30'),
(56, 1, 'data/data__mtbweb_com/upload/images/feXcbZ6k9i.jpg', '346451', '2015-09-27 17:23:31'),
(57, 1, 'data/data__mtbweb_com/upload/images/fXT9BOUjKd.jpg', '309916', '2015-09-27 17:23:32'),
(58, 1, 'data/data__mtbweb_com/upload/images/FA9s8CYrUO.jpg', '351824', '2015-09-27 17:23:33'),
(59, 1, 'data/data__mtbweb_com/upload/images/KZeT8B0QlV.jpg', '254276', '2015-09-27 17:23:34'),
(60, 1, 'data/data__mtbweb_com/upload/images/YxWPty9oGH.jpg', '306049', '2015-09-27 17:23:35'),
(61, 1, 'data/data__mtbweb_com/upload/images/MQs6oEvjV0.jpg', '223387', '2015-09-27 17:23:36'),
(62, 1, 'data/data__mtbweb_com/upload/images/gEaijkAXs3.jpg', '385362', '2015-09-27 17:23:37'),
(63, 1, 'data/data__mtbweb_com/upload/images/Yhd3zM6lXC.jpg', '288226', '2015-09-27 17:23:38'),
(64, 1, 'data/data__mtbweb_com/upload/images/9JtT0l5XZx.jpg', '228303', '2015-09-27 17:23:40'),
(65, 1, 'data/data__mtbweb_com/upload/images/9_2CMQDkrn.jpg', '649173', '2015-09-27 17:23:41'),
(66, 1, 'data/data__mtbweb_com/upload/images/6_8aTSLPlV.jpg', '231639', '2015-09-27 17:23:42'),
(67, 1, 'data/data__mtbweb_com/upload/images/x6DeWow9Nf.jpg', '210648', '2015-09-27 17:23:43'),
(68, 1, 'data/data__mtbweb_com/upload/images/gYhkMNKBr3.jpg', '205370', '2015-09-27 17:23:44'),
(69, 1, 'data/data__mtbweb_com/upload/images/npjgiHD9s0.jpg', '308106', '2015-09-27 17:23:45'),
(70, 1, 'data/data__mtbweb_com/upload/images/lFGa3v8gI7.jpg', '290856', '2015-09-27 17:23:46'),
(71, 1, 'data/data__mtbweb_com/upload/images/XVurH0JS3O.jpg', '476018', '2015-09-27 17:23:47'),
(72, 1, 'data/data__mtbweb_com/upload/images/A9eIw6FaBt.jpg', '162667', '2015-09-27 17:26:20'),
(73, 1, 'data/data__mtbweb_com/upload/images/41dshpnXvI.jpg', '169370', '2015-09-27 17:26:21'),
(74, 1, 'data/data__mtbweb_com/upload/images/MtG1ngJVi0.jpg', '202086', '2015-09-27 17:26:22'),
(75, 1, 'data/data__mtbweb_com/upload/images/fFRxvb4QLS.jpg', '153072', '2015-09-27 17:26:23'),
(76, 1, 'data/data__mtbweb_com/upload/images/7NvO_HtInP.jpg', '172141', '2015-09-27 17:26:24'),
(77, 1, 'data/data__mtbweb_com/upload/images/BUMN15rnKE.jpg', '153249', '2015-09-27 17:26:25'),
(78, 1, 'data/data__mtbweb_com/upload/images/7RYUTBpISc.jpg', '145152', '2015-09-27 17:26:26'),
(79, 1, 'data/data__mtbweb_com/upload/images/93n8bWdJUt.jpg', '162556', '2015-09-27 17:26:28'),
(80, 1, 'data/data__mtbweb_com/upload/images/f0F2oYpD_y.jpg', '138252', '2015-09-27 17:26:29'),
(81, 1, 'data/data__mtbweb_com/upload/images/MT1RPYUiQ7.jpg', '225139', '2015-09-27 17:26:30'),
(82, 1, 'data/data__mtbweb_com/upload/images/4YNOyBCczr.jpg', '153966', '2015-09-27 17:26:31'),
(83, 1, 'data/data__mtbweb_com/upload/images/euB4Uq6yJW.jpg', '221342', '2015-09-27 17:26:32'),
(84, 1, 'data/data__mtbweb_com/upload/images/XvUbLBA8oQ.jpg', '151599', '2015-09-27 17:26:33'),
(85, 1, 'data/data__mtbweb_com/upload/images/BUlJYIw_TQ.jpg', '143688', '2015-09-27 17:26:34'),
(86, 1, 'data/data__mtbweb_com/upload/images/4XHOySLd0e.jpg', '146602', '2015-09-27 17:26:35'),
(87, 1, 'data/data__mtbweb_com/upload/images/mZta6eyl80.jpg', '139490', '2015-09-27 17:26:36'),
(88, 1, 'data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg', '282339', '2015-09-27 18:58:57'),
(89, 1, 'data/data__mtbweb_com/upload/images/62pz5FiqsC.jpg', '259687', '2015-09-27 18:59:03'),
(90, 1, 'data/data__mtbweb_com/upload/images/HZS2fiz4wa.jpg', '252661', '2015-09-27 18:59:10'),
(91, 1, 'data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg', '250704', '2015-09-27 18:59:16'),
(92, 1, 'data/data__mtbweb_com/upload/images/yXNLSZtBYg.jpg', '199744', '2015-09-27 22:46:50'),
(93, 1, 'data/data__mtbweb_com/upload/images/49SdNkQrnD.jpg', '252661', '2015-09-27 22:46:55'),
(94, 1, 'data/data__mtbweb_com/upload/images/WHqrIJ9wC7.jpg', '256485', '2015-09-27 22:47:03'),
(95, 1, 'data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg', '446439', '2015-09-27 22:48:39'),
(96, 1, 'data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg', '410982', '2015-09-27 22:50:12'),
(97, 1, 'data/data__mtbweb_com/upload/images/scJMun5Ckv.jpg', '879394', '2015-09-28 08:26:52'),
(98, 1, 'data/data__mtbweb_com/upload/images/Vx5Dni6C2A.jpg', '595284', '2015-09-28 08:26:53'),
(99, 1, 'data/data__mtbweb_com/upload/images/1iPSXlCQ6N.jpg', '845941', '2015-09-28 08:26:54'),
(100, 1, 'data/data__mtbweb_com/upload/images/MXyoEnxUKv.jpg', '775702', '2015-09-28 08:26:56'),
(101, 1, 'data/data__mtbweb_com/upload/images/2N5pX8JPfq.jpg', '780831', '2015-09-28 08:26:57'),
(102, 1, 'data/data__mtbweb_com/upload/images/E1yXkPhLFz.jpg', '561276', '2015-09-28 08:26:58'),
(103, 1, 'data/data__mtbweb_com/upload/images/UK6N8dpWZ3.jpg', '777835', '2015-09-28 08:26:59'),
(104, 1, 'data/data__mtbweb_com/upload/images/vL4dyWXUMe.jpg', '620888', '2015-09-28 08:27:00'),
(105, 1, 'data/data__mtbweb_com/upload/images/8gquIeajoA.jpg', '620888', '2015-10-12 04:04:21'),
(106, 1, 'data/data__mtbweb_com/upload/images/51tKiS_hbd.jpg', '355458', '2015-10-21 08:06:48'),
(107, 1, 'data/data__mtbweb_com/upload/images/U6nSE1ydbL.jpg', '177440', '2015-10-21 08:06:49'),
(108, 1, 'data/data__mtbweb_com/upload/images/cwz4JBQSVP.jpg', '472666', '2015-10-21 08:06:50'),
(109, 1, 'data/data__mtbweb_com/upload/images/aWo6MNQtdk.png', '4619', '2015-10-21 08:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` double NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` double NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lang_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `data`, `date_created`, `date_updated`, `created_by`, `delete`, `status`, `lang_id`) VALUES
(1, 'menu 1', '0', '2015-10-21 19:24:25', '2015-10-22 01:21:20', 0, 0, 1, 1),
(2, 'menu 2', '0', '2015-10-21 19:24:25', '2015-10-22 01:21:20', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE IF NOT EXISTS `object` (
  `id` double NOT NULL AUTO_INCREMENT,
  `parent` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `viewed` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` double NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`id`, `parent`, `type`, `viewed`, `date_created`, `date_updated`, `created_by`, `image`, `status`, `delete`, `secret`) VALUES
(23, ',33,', 3, '0', '2015-09-28 04:30:06', '2015-09-29 18:52:19', 0, 'data/data__mtbweb_com/upload/images/S0pxgOT_nB.jpg', 1, 0, '83354926159a349ce005f9cf6e48e3e6'),
(24, ',33,', 3, '0', '2015-09-28 04:38:02', '2015-09-30 02:30:44', 0, 'data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg', 1, 0, '36050220821bac6d82d2f967ce1e6e8e'),
(25, ',33,', 3, '0', '2015-09-28 07:43:58', '2015-09-30 02:30:57', 0, 'data/data__mtbweb_com/upload/images/jXE2FIOWAK.jpg', 1, 0, 'd8074304defe94055d6f9860f706937f'),
(26, ',33,', 3, '0', '2015-09-28 07:44:53', '2015-09-30 02:31:29', 0, 'data/data__mtbweb_com/upload/images/feXcbZ6k9i.jpg', 1, 0, 'ce2a0773519aa5f3e5f5f8f1a6a9a5fe'),
(27, ',0,', 3, '0', '2015-09-28 07:55:27', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/28.jpg', 1, 1, 'be910166ec998639938ec61a932a9bd1'),
(28, ',0,', 3, '0', '2015-09-28 08:24:19', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/R6g7ZiCBMG.jpg', 1, 1, '99b0a39ae2e390885fd15aaaa96ca0cd'),
(29, ',35,', 3, '0', '2015-09-28 08:28:07', '2015-09-30 02:31:14', 0, 'data/data__mtbweb_com/upload/images/Yhd3zM6lXC.jpg', 1, 0, '0eb621d225693f51c1a91606c1c1c6dd'),
(30, ',0,', 4, '0', '2015-09-28 18:54:08', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/UK6N8dpWZ3.jpg', 1, 1, 'fbd62a46abd6f78f07f564956d1ce1ba'),
(31, ',37,', 4, '0', '2015-09-28 18:54:40', '2015-09-29 04:30:10', 0, 'data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg', 1, 0, '6c70c36d522fccfba34db732d29eae8b'),
(32, ',37,', 4, '0', '2015-09-28 18:55:23', '2015-09-29 04:30:29', 0, 'data/data__mtbweb_com/upload/images/WHqrIJ9wC7.jpg', 1, 0, '8248d6b12c043c7e737212b6d64cb983'),
(33, ',0,', 1, '0', '2015-09-28 18:55:52', '2015-09-29 04:28:49', 0, 'data/data__mtbweb_com/upload/images/vL4dyWXUMe.jpg', 1, 0, '5706629f7e6496cc9e2e59b80b544221'),
(34, ',0,', 1, '0', '2015-09-28 18:56:16', '2015-09-29 04:29:05', 0, 'data/data__mtbweb_com/upload/images/vL4dyWXUMe.jpg', 1, 0, '1dfb3ac8a36607e147d8c7efd5054cdd'),
(35, ',0,', 1, '0', '2015-09-28 19:06:42', '2015-09-29 04:29:19', 0, 'data/data__mtbweb_com/upload/images/scJMun5Ckv.jpg', 1, 0, 'cee8ae9d6ac55c263fc4efde9552cc06'),
(36, ',35,', 1, '0', '2015-09-28 19:07:06', '2015-09-29 04:29:33', 0, 'data/data__mtbweb_com/upload/images/scJMun5Ckv.jpg', 1, 0, 'b84239a04f5fa12ef1b21bb337b60fb7'),
(37, ',0,', 2, '0', '2015-09-28 19:24:02', '2015-09-29 04:28:21', 0, 'data/data__mtbweb_com/upload/images/yXNLSZtBYg.jpg', 1, 0, '25832abb845a5e46f972ecb0eea97d6e'),
(38, ',35,', 3, '0', '2015-09-29 03:53:30', '2015-09-30 02:31:22', 0, 'data/data__mtbweb_com/upload/images/lFGa3v8gI7.jpg', 1, 0, 'c9d18468e75f197b0b80da178bcaea49'),
(39, ',35,', 3, '0', '2015-09-30 02:33:38', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/p2en49ySoI.jpg', 1, 0, '07034990f7d50b869f9977bb7fdae3f0'),
(40, ',35,', 3, '0', '2015-09-30 02:34:08', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/Pb7EnOR_zc.jpg', 1, 0, '3b14ea040531a9d7b284f527c1c24bd9'),
(41, ',35,', 3, '0', '2015-09-30 02:34:38', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/vL4dyWXUMe.jpg', 1, 0, 'ee1dde5949c4f70d65b62c1c97c7fbf6'),
(42, ',35,', 3, '0', '2015-09-30 02:34:51', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/Vx5Dni6C2A.jpg', 1, 0, 'c4849a0b2d0946eb272343eb233055d0'),
(43, ',35,', 3, '0', '2015-09-30 02:35:07', '0000-00-00 00:00:00', 0, 'data/data__mtbweb_com/upload/images/2N5pX8JPfq.jpg', 1, 0, '258d0bda238e31d535af25fea126d3c2'),
(44, ',35,', 3, '0', '2015-09-30 02:35:31', '2015-12-04 05:04:11', 0, 'data/data__mtbweb_com/upload/images/vL4dyWXUMe.jpg', 1, 0, '503effcec00044ae19b66128304f53e5');

-- --------------------------------------------------------

--
-- Table structure for table `object_description`
--

CREATE TABLE IF NOT EXISTS `object_description` (
  `id` double NOT NULL AUTO_INCREMENT,
  `object_id` double NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `nice_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=93 ;

--
-- Dumping data for table `object_description`
--

INSERT INTO `object_description` (`id`, `object_id`, `name`, `content`, `meta_keyword`, `short_description`, `nice_url`, `lang_id`) VALUES
(49, 23, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-10-56-21', 1),
(50, 23, '', '', '', '', '28-09-201528-09-2015-15-25-20', 2),
(51, 24, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-10-56-05', 1),
(52, 24, '', '', '', '', '28-09-2015-28-09-2015-15-25-52-28-09-2015-15-27-37', 2),
(53, 25, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-10-55-40', 1),
(54, 25, '', '', '', '', '28-09-201528-09-2015', 2),
(55, 26, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-10-55-01', 1),
(56, 26, '', '', '', '', '-29-09-2015-10-55-01', 2),
(57, 27, 'asdsadasd', '', '', '', 'asdsadasd', 1),
(58, 27, '', '', '', '', '', 2),
(59, 28, 'Test', '<p>asdasd</p>\r\n', 'asd', 'asdasd', 'test28-09-2015', 1),
(60, 28, '', '', '', '', '28-09-2015', 2),
(61, 29, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-10-54-23', 1),
(62, 29, '', '', '', '', '28-09-201528-09-2015-15-25-20-29-09-2015-10-54-23', 2),
(63, 30, 'aaaaaaaaaaaaaaaaaaaa ', '<p>&aacute;dasd<br />\r\n&nbsp;</p>\r\n', ' ád', 'ádasd', 'aaaaaaaaaaaaaaaaaaaa', 1),
(64, 30, 'tést', '<p>&aacute;dasd</p>\r\n', 'asdasaa,sd,a,sd,as,d', 'ádasd', 'test', 2),
(65, 31, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang', 1),
(66, 31, 'tést', '<p>&aacute;dasd</p>\r\n', 'asdasaa,sd,a,sd,as,d', 'ádasd', 'test-29-09-2015-11-30-11', 2),
(67, 32, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-11-30-30', 1),
(68, 32, 'tést', '<p>&aacute;dasd</p>\r\n', 'asdasaa,sd,a,sd,as,d', 'ádasd', 'test-29-09-2015-11-30-31', 2),
(69, 33, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang', 1),
(70, 33, '', '', '', '', '-29-09-2015-02-02-51', 2),
(71, 34, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-11-29-06', 1),
(72, 34, '', '', '', '', '-29-09-2015-02-02-29', 2),
(73, 35, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-11-29-20', 1),
(74, 35, '', '', '', '', '', 2),
(75, 36, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-29-09-2015-11-29-34', 1),
(76, 36, '', '', '', '', '-29-09-2015-02-07-07', 2),
(77, 37, 'Hello Xuan Hoang', '<p>Hello Xuan Hoang</p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang', 1),
(78, 37, '', '', '', '', '', 2),
(79, 38, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang', 1),
(80, 38, '', '', '', '', '-29-09-2015-10-53-31', 2),
(81, 39, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-30-09-2015-09-33-39', 1),
(82, 39, '', '', '', '', '-29-09-2015-10-53-31-30-09-2015-09-33-39', 2),
(83, 40, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-30-09-2015-09-34-09', 1),
(84, 40, '', '', '', '', '-29-09-2015-10-53-31-30-09-2015-09-34-09', 2),
(85, 41, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-30-09-2015-09-34-09-30-09-2015-09-34-39', 1),
(86, 41, '', '', '', '', '-29-09-2015-10-53-31-30-09-2015-09-34-09-30-09-2015-09-34-39', 2),
(87, 42, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-30-09-2015-09-34-52', 1),
(88, 42, '', '', '', '', '-29-09-2015-10-53-31-30-09-2015-09-34-52', 2),
(89, 43, 'Hello Xuan Hoang', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-30-09-2015-09-33-39-30-09-2015-09-35-08', 1),
(90, 43, '', '', '', '', '-29-09-2015-10-53-31-30-09-2015-09-33-39-30-09-2015-09-35-08', 2),
(91, 44, 'Hello Xuan Hoang ghgdh', '<h2>Hướng dẫn cơ bản cho người mới chơi - T&igrave;m hiểu về tướng</h2>\r\n\r\n<p>Đối với người mới chơi, việc t&igrave;m hiểu kĩ một vị tướng sẽ gi&uacute;p bạn cải thiện được khả năng l&agrave;m chủ vị tướng đ&oacute;.</p>\r\n\r\n<p>Hiện nay, Li&ecirc;n Minh Huyền Thoại đ&atilde; c&oacute; tổng cộng 121 vị tướng xuất hiện. C&aacute;c vị tướng n&agrave;y được ph&acirc;n loại theo vai tr&ograve; kh&aacute;c nhau ứng với khả năng của ch&uacute;ng trong một trận đấu.</p>\r\n\r\n<p>Video n&agrave;y sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu những yếu tố căn bản l&agrave;m n&ecirc;n một vị tướng . Những yếu tố đ&oacute; bao gồm c&aacute;c kỹ năng, c&aacute;c chỉ số,... Mỗi vị tướng sẽ c&oacute; một bộ kỹ năng ri&ecirc;ng biệt v&agrave; một v&agrave;i vị tướng đặc biệt thậm ch&iacute; c&oacute; tới 7 kỹ năng. Điều khiển th&agrave;nh tục một vị tướng ch&iacute;nh l&agrave; yếu tố then chốt gi&uacute;p bạn chiến thắng trận đấu.</p>\r\n\r\n<p><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/S4Wfni2kGM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/VwivKxzoLZ.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/QBXpnRxJTM.jpg" /><img alt="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" src="http://mtbweb.com/data/data__mtbweb_com/upload/images/yHgLFlZQn4.jpg" /></p>\r\n', 'Hello Xuan Hoang', 'Hello Xuan Hoang', 'hello-xuan-hoang-ghgdh', 1),
(92, 44, 'hfdfhdhdh', '', '', '', 'hfdfhdhdh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` double NOT NULL AUTO_INCREMENT,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-object-group',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `data`, `status`, `icon`) VALUES
(1, 'a:4:{i:0;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";s:7:"setting";a:11:{s:5:"bgurl";s:68:"http://mtbweb.com/data/data__mtbweb_com/upload/images/UK6N8dpWZ3.jpg";s:5:"wfull";s:4:"true";s:6:"bgfull";s:5:"false";s:7:"bgcolor";s:7:"#ff0000";s:10:"bordertype";s:5:"solid";s:10:"bordersize";s:1:"5";s:11:"bordercolor";s:7:"#800080";s:9:"bordertop";s:5:"false";s:10:"borderleft";s:5:"false";s:11:"borderright";s:5:"false";s:12:"borderbottom";s:4:"true";}}i:1;a:6:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:7:"setting";a:11:{s:5:"bgurl";s:0:"";s:5:"wfull";s:5:"false";s:6:"bgfull";s:5:"false";s:7:"bgcolor";s:7:"#d1d1d1";s:10:"bordertype";s:5:"solid";s:10:"bordersize";s:1:"5";s:11:"bordercolor";s:7:"#ffffff";s:9:"bordertop";s:5:"false";s:10:"borderleft";s:5:"false";s:11:"borderright";s:5:"false";s:12:"borderbottom";s:5:"false";}s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:2:{s:4:"size";s:1:"3";s:4:"data";a:2:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:12:"#Block Title";s:4:"data";s:0:"";}i:1;a:3:{s:8:"required";s:1:"0";s:5:"title";s:12:"#Block Title";s:4:"data";s:0:"";}}}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:2:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:0:"";s:4:"data";a:2:{s:5:"title";s:0:"";s:10:"moduleType";s:4:"info";}}i:1;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:2:{s:4:"size";s:1:"3";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:12:"#Block Title";s:4:"data";s:0:"";}}}}}}}i:2;a:5:{s:8:"required";s:1:"0";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"0";s:4:"data";a:3:{i:0;a:2:{s:4:"size";s:1:"3";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:0:"";s:4:"data";a:3:{s:5:"title";s:0:"";s:10:"moduleType";s:9:"post_list";s:10:"moduleData";a:4:{i:0;a:2:{s:4:"name";s:10:"sort_order";s:5:"value";s:6:"newest";}i:1;a:2:{s:4:"name";s:11:"post_number";s:5:"value";s:2:"10";}i:2;a:2:{s:4:"name";s:10:"sort_order";s:5:"value";s:6:"newest";}i:3;a:2:{s:4:"name";s:11:"post_number";s:5:"value";s:2:"10";}}}}}}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:2:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:10:"jghjghjhgj";s:4:"data";a:3:{s:5:"title";s:10:"jghjghjhgj";s:10:"moduleType";s:6:"banner";s:10:"moduleData";a:2:{i:0;a:2:{s:4:"name";s:11:"custom_text";s:5:"value";s:9:"gvujghjhg";}i:1;a:2:{s:4:"name";s:11:"custom_text";s:5:"value";s:0:"";}}}}i:1;a:3:{s:8:"required";s:1:"0";s:5:"title";s:0:"";s:4:"data";a:2:{s:5:"title";s:0:"";s:10:"moduleType";s:9:"post_list";}}}}i:2;a:2:{s:4:"size";s:1:"3";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:0:"";s:4:"data";a:3:{s:5:"title";s:0:"";s:10:"moduleType";s:9:"post_list";s:10:"moduleData";a:4:{i:0;a:2:{s:4:"name";s:10:"sort_order";s:5:"value";s:6:"newest";}i:1;a:2:{s:4:"name";s:11:"post_number";s:5:"value";s:2:"10";}i:2;a:2:{s:4:"name";s:10:"sort_order";s:5:"value";s:6:"newest";}i:3;a:2:{s:4:"name";s:11:"post_number";s:5:"value";s:2:"10";}}}}}}}}}}i:3;a:6:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";s:7:"setting";a:3:{s:5:"bgurl";s:68:"http://mtbweb.com/data/data__mtbweb_com/upload/images/yXNLSZtBYg.jpg";s:5:"wfull";s:4:"true";s:6:"bgfull";s:4:"true";}s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:4:"size";s:2:"12";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"0";s:5:"title";s:0:"";s:4:"data";a:2:{s:5:"title";s:0:"";s:10:"moduleType";s:4:"info";}}}}}}}}}', 1, 'fa-home'),
(2, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(3, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(4, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(5, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(6, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(7, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'fa-object-group'),
(8, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'header'),
(9, 'a:3:{i:0;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"1";s:6:"footer";s:1:"0";}i:1;a:5:{s:8:"required";s:1:"1";s:9:"important";s:1:"0";s:6:"header";s:1:"0";s:6:"footer";s:1:"0";s:4:"data";a:1:{i:0;a:2:{s:8:"required";s:1:"1";s:4:"data";a:3:{i:0;a:1:{s:4:"size";s:1:"3";}i:1;a:2:{s:4:"size";s:1:"6";s:4:"data";a:1:{i:0;a:3:{s:8:"required";s:1:"1";s:5:"title";s:8:"Required";s:4:"data";s:0:"";}}}i:2;a:1:{s:4:"size";s:1:"3";}}}}}i:2;a:4:{s:8:"required";s:1:"1";s:9:"important";s:1:"1";s:6:"header";s:1:"0";s:6:"footer";s:1:"1";}}', 1, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `page_description`
--

CREATE TABLE IF NOT EXISTS `page_description` (
  `id` double NOT NULL AUTO_INCREMENT,
  `page_id` double NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `nice_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `page_description`
--

INSERT INTO `page_description` (`id`, `page_id`, `name`, `nice_url`, `short_description`, `lang_id`) VALUES
(1, 1, 'Trang chu', 'home', 'Home page/Trang chu', 1),
(2, 1, 'Home page', 'home', 'Home page/Trang chu', 2),
(3, 2, 'Post view', 'post', 'Post', 1),
(4, 2, 'Post view', 'post', 'Post', 2),
(5, 3, 'Login', 'login', 'Login', 1),
(6, 3, 'Login', 'login', 'Login', 2),
(7, 4, 'Post category', 'post_category', 'Post category', 1),
(8, 4, 'Post category', 'post_category', 'Post category', 2),
(9, 5, 'Register', 'register', 'Register', 1),
(10, 5, 'Register', 'register', 'Register', 2),
(11, 6, 'Contact', 'contact', 'Contact', 1),
(12, 6, 'Contact', 'contact', 'Contact', 2),
(13, 7, 'About us', 'about_us', 'About us', 1),
(14, 7, 'About us', 'about_us', 'About us', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` double NOT NULL AUTO_INCREMENT,
  `object_id` double NOT NULL,
  `base_price` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `object_id`, `base_price`, `number`, `code`, `sort_order`) VALUES
(1, 13, '9999', '99', 'abcde12345', '0'),
(2, 14, '9999', '99', 'abcde12345', '0'),
(3, 15, '9999', '99', 'abcde12345', '0'),
(4, 16, '9999', '99', 'abcde12345', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` double NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` double NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lang_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `data`, `date_created`, `date_updated`, `created_by`, `delete`, `status`, `lang_id`) VALUES
(1, 'slider 1', '0', '2015-12-04 03:17:04', '0000-00-00 00:00:00', 0, 0, 1, 1),
(2, 'Slider 2', '0', '2015-12-04 03:17:04', '0000-00-00 00:00:00', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` double NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nice_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_type` int(11) NOT NULL,
  `object_id` double NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=261 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag_name`, `nice_url`, `object_type`, `object_id`, `lang_id`) VALUES
(189, 'abc', 'abc', 3, 27, 1),
(190, 'asd', 'asd', 3, 27, 1),
(197, '123', '123', 3, 28, 1),
(198, 'abc', 'abc', 3, 28, 1),
(207, 'ádasd', 'adasd', 4, 30, 1),
(208, 'a', 'a', 4, 30, 2),
(209, 'v', 'v', 4, 30, 2),
(210, 'b', 'b', 4, 30, 2),
(230, 'Hello Xuan Hoang', 'hello-xuan-hoang', 2, 37, 1),
(231, 'Hello Xuan Hoang', 'hello-xuan-hoang', 1, 33, 1),
(232, 'Hello Xuan Hoang', 'hello-xuan-hoang', 1, 34, 1),
(233, 'Hello Xuan Hoang', 'hello-xuan-hoang', 1, 35, 1),
(234, 'Hello Xuan Hoang', 'hello-xuan-hoang', 1, 36, 1),
(235, 'Hello Xuan Hoang', 'hello-xuan-hoang', 4, 31, 1),
(236, 'a', 'a', 4, 31, 2),
(237, 'v', 'v', 4, 31, 2),
(238, 'b', 'b', 4, 31, 2),
(239, 'Hello Xuan Hoang', 'hello-xuan-hoang', 4, 32, 1),
(240, 'a', 'a', 4, 32, 2),
(241, 'v', 'v', 4, 32, 2),
(242, 'b', 'b', 4, 32, 2),
(248, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 23, 1),
(249, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 24, 1),
(250, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 25, 1),
(251, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 29, 1),
(252, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 38, 1),
(253, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 26, 1),
(254, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 39, 1),
(255, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 40, 1),
(256, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 41, 1),
(257, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 42, 1),
(258, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 43, 1),
(260, 'Hello Xuan Hoang', 'hello-xuan-hoang', 3, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_data`
--

CREATE TABLE IF NOT EXISTS `web_data` (
  `id` double NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `database` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `web_data`
--

INSERT INTO `web_data` (`id`, `domain`, `admin_name`, `admin_pwd`, `hint`, `database`, `size`, `folder`, `startdate`, `date_end`) VALUES
(12, 'http://multisite.taka.com', 'xuanhoang', 'f82e62d7c3ea69cc12b5cdb8d621dab6', 'hoang', 'taka__hoang_taka_com', '1000', 'data__hoang_taka_com', '2015-09-11 03:28:26', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;