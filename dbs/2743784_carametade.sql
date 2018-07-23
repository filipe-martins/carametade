-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: pdb25.awardspace.net
-- Generation Time: 23-Jul-2018 às 06:58
-- Versão do servidor: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2743784_carametade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_admins`
--

CREATE TABLE `ph7_admins` (
  `profileId` tinyint(3) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `timeZone` varchar(6) NOT NULL DEFAULT '-6',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `ban` enum('0','1') DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `hashValidation` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_admins`
--

INSERT INTO `ph7_admins` (`profileId`, `username`, `password`, `email`, `firstName`, `lastName`, `sex`, `lang`, `timeZone`, `joinDate`, `lastActivity`, `lastEdit`, `ban`, `ip`, `isTwoFactorAuth`, `twoFactorAuthSecret`, `hashValidation`) VALUES
(1, 'admin', '$2y$12$x3cwkz.ozua6W49nLAn9zupE7AsuNySRFMpjTBDi9RqX/cwUnQ9zS', 'filipe.martins.400@gmail.com', 'Luis', 'Martins', 'male', 'en_US', '-6', '2018-07-16 15:39:52', '2018-07-22 13:16:46', NULL, '0', '178.166.54.23', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_admins_attempts_login`
--

CREATE TABLE `ph7_admins_attempts_login` (
  `attemptsId` int(10) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `lastLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_admins_log_login`
--

CREATE TABLE `ph7_admins_log_login` (
  `logId` mediumint(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_admins_log_login`
--

INSERT INTO `ph7_admins_log_login` (`logId`, `email`, `username`, `password`, `status`, `ip`, `dateTime`) VALUES
(1, 'filipe.martins.400@gmail.com', 'admin', '*****', 'Logged in!', '178.166.54.23', '2018-07-16 20:51:03'),
(2, 'filipe.martins.400@gmail.com', 'admin', '*****', 'Logged in!', '178.166.54.23', '2018-07-22 18:16:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_admins_log_sess`
--

CREATE TABLE `ph7_admins_log_sess` (
  `profileId` tinyint(3) UNSIGNED NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) UNSIGNED NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_ads`
--

CREATE TABLE `ph7_ads` (
  `adsId` smallint(4) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) UNSIGNED DEFAULT NULL,
  `height` smallint(3) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clicks` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_ads`
--

INSERT INTO `ph7_ads` (`adsId`, `name`, `code`, `active`, `width`, `height`, `views`, `clicks`) VALUES
(1, 'Sponsor pH7CMS 1 (728x90)', '<a href="#0"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90, 0, 0),
(2, 'Sponsor pH7CMS 2 (728x90)', '<a href="#0"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90, 0, 0),
(3, 'Sponsor pH7CMS 3 (200x200)', '<a href="#0"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200, 0, 0),
(4, 'Sponsor pH7CMS 4 (200x200)', '<a href="#0"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200, 0, 0),
(5, 'Sponsor pH7CMS 5 (250x250)', '<a href="#0"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250, 0, 0),
(6, 'Sponsor pH7CMS 6 (250x250)', '<a href="#0"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250, 0, 0),
(7, 'Sponsor pH7CMS 7 (468x60)', '<a href="#0"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60, 0, 0),
(8, 'Sponsor pH7CMS 8 (468x60)', '<a href="#0"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60, 0, 0),
(9, 'Sponsor pH7CMS 9 (300x250)', '<a href="#0"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250, 0, 0),
(10, 'Sponsor pH7CMS 10 (300x250)', '<a href="#0"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250, 0, 0),
(11, 'Sponsor pH7CMS 11 (336x280)', '<a href="#0"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280, 0, 0),
(12, 'Sponsor pH7CMS 12 (336x280)', '<a href="#0"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280, 0, 0),
(13, 'Sponsor pH7CMS 13 (120x600)', '<a href="#0"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600, 0, 0),
(14, 'Sponsor pH7CMS 14 (120x600)', '<a href="#0"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600, 0, 0),
(15, 'Sponsor pH7CMS 15 (160x600)', '<a href="#0"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600, 0, 0),
(16, 'Sponsor pH7CMS 16 (160x600)', '<a href="#0"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_ads_affiliates`
--

CREATE TABLE `ph7_ads_affiliates` (
  `adsId` smallint(4) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) UNSIGNED DEFAULT NULL,
  `height` smallint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_ads_affiliates`
--

INSERT INTO `ph7_ads_affiliates` (`adsId`, `name`, `code`, `active`, `width`, `height`) VALUES
(1, 'Affiliate Banner 1 (728x90)', '<a href="%affiliate_url%"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90),
(2, 'Affiliate Banner 2 (728x90)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/728x90" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 728, 90),
(3, 'Affiliate Banner 3 (200x200)', '<a href="%affiliate_url%"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200),
(4, 'Affiliate Banner 4 (200x200)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/200x200" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 200, 200),
(5, 'Affiliate Banner 5 (250x250)', '<a href="%affiliate_url%"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250),
(6, 'Affiliate Banner 6 (250x250)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/250x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 250, 250),
(7, 'Affiliate Banner 7 (468x60)', '<a href="%affiliate_url%"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60),
(8, 'Affiliate Banner 8 (468x60)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/468x60" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 468, 60),
(9, 'Affiliate Banner 9 (300x250)', '<a href="%affiliate_url%"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250),
(10, 'Affiliate Banner 10 (300x250)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/300x250" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 300, 250),
(11, 'Affiliate Banner 11 (336x280)', '<a href="%affiliate_url%"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280),
(12, 'Affiliate Banner 12 (336x280)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/336x280" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 336, 280),
(13, 'Affiliate Banner 13 (120x600)', '<a href="%affiliate_url%"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600),
(14, 'Affiliate Banner 14 (120x600)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/120x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 120, 600),
(15, 'Affiliate Banner 15 (160x600)', '<a href="%affiliate_url%"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600),
(16, 'Affiliate Banner 16 (160x600)', '<a href="%affiliate_url%/signup"><img data-src="holder.js/160x600" alt="%site_name% by %software_name%" title="%site_name% powered by %software_name%" /></a>', '0', 160, 600);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates`
--

CREATE TABLE `ph7_affiliates` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `birthDate` date DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `totalPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPaymentDate` datetime DEFAULT NULL,
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `refer` int(10) UNSIGNED DEFAULT '0',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `affiliatedId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ban` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_affiliates`
--

INSERT INTO `ph7_affiliates` (`profileId`, `username`, `firstName`, `lastName`, `password`, `email`, `sex`, `birthDate`, `ip`, `bankAccount`, `amount`, `totalPayment`, `lastPayment`, `lastPaymentDate`, `lang`, `hashValidation`, `isTwoFactorAuth`, `twoFactorAuthSecret`, `refer`, `joinDate`, `lastActivity`, `lastEdit`, `affiliatedId`, `active`, `ban`) VALUES
(1, 'aff1', 'Matthew', 'Rayen', 'd891de2cc887c8bfb546043050acb171c90aa208', 'aff@affiliate.cow', 'male', '1986-10-13', '37.205.56.35', 'bank_account@demo.cow', 0.00, 0.00, 0.00, NULL, 'en_US', NULL, '0', NULL, 0, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates_attempts_login`
--

CREATE TABLE `ph7_affiliates_attempts_login` (
  `attemptsId` int(10) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `lastLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates_countries`
--

CREATE TABLE `ph7_affiliates_countries` (
  `countryId` tinyint(3) UNSIGNED NOT NULL,
  `countryCode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_affiliates_countries`
--

INSERT INTO `ph7_affiliates_countries` (`countryId`, `countryCode`) VALUES
(1, 'AD'),
(2, 'AE'),
(3, 'AF'),
(4, 'AG'),
(5, 'AI'),
(6, 'AL'),
(7, 'AM'),
(8, 'AN'),
(9, 'AO'),
(10, 'AQ'),
(11, 'AR'),
(12, 'AS'),
(13, 'AT'),
(14, 'AU'),
(15, 'AW'),
(16, 'AX'),
(17, 'AZ'),
(18, 'BA'),
(19, 'BB'),
(20, 'BD'),
(21, 'BE'),
(22, 'BF'),
(23, 'BG'),
(24, 'BH'),
(25, 'BI'),
(26, 'BJ'),
(27, 'BM'),
(28, 'BN'),
(29, 'BO'),
(30, 'BR'),
(31, 'BS'),
(32, 'BT'),
(33, 'BV'),
(34, 'BW'),
(35, 'BY'),
(36, 'BZ'),
(37, 'CA'),
(38, 'CC'),
(39, 'CD'),
(40, 'CF'),
(41, 'CG'),
(42, 'CH'),
(43, 'CI'),
(44, 'CK'),
(45, 'CL'),
(46, 'CM'),
(47, 'CN'),
(48, 'CO'),
(49, 'CR'),
(50, 'CU'),
(51, 'CV'),
(52, 'CX'),
(53, 'CY'),
(54, 'CZ'),
(55, 'DE'),
(56, 'DJ'),
(57, 'DK'),
(58, 'DM'),
(59, 'DO'),
(60, 'DZ'),
(61, 'EC'),
(62, 'EE'),
(63, 'EG'),
(64, 'EH'),
(65, 'ER'),
(66, 'ES'),
(67, 'ET'),
(68, 'FI'),
(69, 'FJ'),
(70, 'FK'),
(71, 'FM'),
(72, 'FO'),
(73, 'FR'),
(74, 'FX'),
(75, 'GA'),
(76, 'GD'),
(77, 'GE'),
(78, 'GF'),
(79, 'GH'),
(80, 'GI'),
(81, 'GL'),
(82, 'GM'),
(83, 'GN'),
(84, 'GP'),
(85, 'GQ'),
(86, 'GR'),
(87, 'GS'),
(88, 'GT'),
(89, 'GU'),
(90, 'GW'),
(91, 'GY'),
(92, 'HK'),
(93, 'HM'),
(94, 'HN'),
(95, 'HR'),
(96, 'HT'),
(97, 'HU'),
(98, 'ID'),
(99, 'IE'),
(100, 'IL'),
(101, 'IN'),
(102, 'IO'),
(103, 'IQ'),
(104, 'IR'),
(105, 'IS'),
(106, 'IT'),
(107, 'JM'),
(108, 'JO'),
(109, 'JP'),
(110, 'KE'),
(111, 'KG'),
(112, 'KH'),
(113, 'KI'),
(114, 'KM'),
(115, 'KN'),
(116, 'KP'),
(117, 'KR'),
(118, 'KW'),
(119, 'KY'),
(120, 'KZ'),
(121, 'LA'),
(122, 'LB'),
(123, 'LC'),
(124, 'LI'),
(125, 'LK'),
(126, 'LR'),
(127, 'LS'),
(128, 'LT'),
(129, 'LU'),
(130, 'LV'),
(131, 'LY'),
(132, 'MA'),
(133, 'MC'),
(134, 'MD'),
(135, 'MG'),
(136, 'MH'),
(137, 'MK'),
(138, 'ML'),
(139, 'MM'),
(140, 'MN'),
(141, 'MO'),
(142, 'MP'),
(143, 'MQ'),
(144, 'MR'),
(145, 'MS'),
(146, 'MT'),
(147, 'MU'),
(148, 'MV'),
(149, 'MW'),
(150, 'MX'),
(151, 'MY'),
(152, 'MZ'),
(153, 'NA'),
(154, 'NC'),
(155, 'NE'),
(156, 'NF'),
(157, 'NG'),
(158, 'NI'),
(159, 'NL'),
(160, 'NO'),
(161, 'NP'),
(162, 'NR'),
(163, 'NU'),
(164, 'NZ'),
(165, 'OM'),
(166, 'PA'),
(167, 'PE'),
(168, 'PF'),
(169, 'PG'),
(170, 'PH'),
(171, 'PK'),
(172, 'PL'),
(173, 'PM'),
(174, 'PN'),
(175, 'PR'),
(176, 'PT'),
(177, 'PW'),
(178, 'PY'),
(179, 'QA'),
(180, 'RE'),
(181, 'RO'),
(182, 'RU'),
(183, 'RW'),
(184, 'SA'),
(185, 'SB'),
(186, 'SC'),
(187, 'SD'),
(188, 'SE'),
(189, 'SG'),
(190, 'SH'),
(191, 'SI'),
(192, 'SJ'),
(193, 'SK'),
(194, 'SL'),
(195, 'SM'),
(196, 'SN'),
(197, 'SO'),
(198, 'SR'),
(199, 'ST'),
(200, 'SV'),
(201, 'SY'),
(202, 'SZ'),
(203, 'TC'),
(204, 'TD'),
(205, 'TF'),
(206, 'TG'),
(207, 'TH'),
(208, 'TJ'),
(209, 'TK'),
(210, 'TM'),
(211, 'TN'),
(212, 'TO'),
(213, 'TP'),
(214, 'TR'),
(215, 'TT'),
(216, 'TV'),
(217, 'TW'),
(218, 'TZ'),
(219, 'UA'),
(220, 'UG'),
(221, 'UK'),
(222, 'UM'),
(223, 'US'),
(224, 'UY'),
(225, 'UZ'),
(226, 'VA'),
(227, 'VC'),
(228, 'VE'),
(229, 'VG'),
(230, 'VI'),
(231, 'VN'),
(232, 'VU'),
(233, 'WF'),
(234, 'WS'),
(235, 'YE'),
(236, 'YT'),
(237, 'YU'),
(238, 'ZA'),
(239, 'ZM'),
(240, 'ZW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates_info`
--

CREATE TABLE `ph7_affiliates_info` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `businessName` varchar(100) DEFAULT NULL,
  `taxId` varchar(40) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `description` text,
  `website` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_affiliates_info`
--

INSERT INTO `ph7_affiliates_info` (`profileId`, `middleName`, `businessName`, `taxId`, `address`, `street`, `country`, `city`, `state`, `zipCode`, `phone`, `fax`, `description`, `website`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'US', 'New York', 'NYC', '10001', NULL, NULL, 'My Website is very nice!', 'http://hizup.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates_log_login`
--

CREATE TABLE `ph7_affiliates_log_login` (
  `logId` mediumint(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_affiliates_log_sess`
--

CREATE TABLE `ph7_affiliates_log_sess` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) UNSIGNED NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_albums_pictures`
--

CREATE TABLE `ph7_albums_pictures` (
  `albumId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_albums_videos`
--

CREATE TABLE `ph7_albums_videos` (
  `albumId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_analytics_api`
--

CREATE TABLE `ph7_analytics_api` (
  `analyticsId` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_analytics_api`
--

INSERT INTO `ph7_analytics_api` (`analyticsId`, `name`, `code`, `active`) VALUES
(1, 'Analytics Code', '', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_block_countries`
--

CREATE TABLE `ph7_block_countries` (
  `countryId` tinyint(3) UNSIGNED NOT NULL,
  `countryCode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_block_ip`
--

CREATE TABLE `ph7_block_ip` (
  `ipId` smallint(5) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL,
  `expiration` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_blogs`
--

CREATE TABLE `ph7_blogs` (
  `blogId` mediumint(10) UNSIGNED NOT NULL,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_blogs_categories`
--

CREATE TABLE `ph7_blogs_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `blogId` mediumint(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_blogs_data_categories`
--

CREATE TABLE `ph7_blogs_data_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_blogs_data_categories`
--

INSERT INTO `ph7_blogs_data_categories` (`categoryId`, `name`) VALUES
(1, 'Affiliate'),
(2, 'Business'),
(3, 'Company'),
(4, 'Dating'),
(5, 'Education'),
(6, 'Family'),
(7, 'Food'),
(8, 'Game'),
(9, 'Health'),
(10, 'Hobby'),
(11, 'Movie'),
(12, 'Music'),
(13, 'News'),
(14, 'Programming'),
(15, 'Recreation'),
(16, 'Shopping'),
(17, 'Society'),
(18, 'Sports'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_bottom_menus`
--

CREATE TABLE `ph7_bottom_menus` (
  `menuId` smallint(4) UNSIGNED NOT NULL,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) UNSIGNED DEFAULT NULL,
  `grandParentMenu` smallint(4) UNSIGNED DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_blog`
--

CREATE TABLE `ph7_comments_blog` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` mediumint(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_game`
--

CREATE TABLE `ph7_comments_game` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_note`
--

CREATE TABLE `ph7_comments_note` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_picture`
--

CREATE TABLE `ph7_comments_picture` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_profile`
--

CREATE TABLE `ph7_comments_profile` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_comments_video`
--

CREATE TABLE `ph7_comments_video` (
  `commentId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `recipient` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_custom_code`
--

CREATE TABLE `ph7_custom_code` (
  `code` text,
  `codeType` enum('css','js') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_custom_code`
--

INSERT INTO `ph7_custom_code` (`code`, `codeType`) VALUES
('/* Your custom CSS code here */\r\n', 'css'),
('/* Your custom JS code here */\r\n', 'js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_forums`
--

CREATE TABLE `ph7_forums` (
  `forumId` mediumint(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT 'New forum',
  `description` varchar(255) NOT NULL,
  `categoryId` smallint(4) UNSIGNED DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_forums`
--

INSERT INTO `ph7_forums` (`forumId`, `name`, `description`, `categoryId`, `createdDate`, `updatedDate`) VALUES
(1, 'Hello', 'Free dating site', 1, NULL, NULL),
(2, 'Online Dating', 'Discussion about the online dating websites', 2, NULL, NULL),
(3, 'The Best Dating Site', 'The best dating site', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_forums_categories`
--

CREATE TABLE `ph7_forums_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `title` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_forums_categories`
--

INSERT INTO `ph7_forums_categories` (`categoryId`, `title`) VALUES
(3, 'Business'),
(2, 'Free Online Dating Site'),
(1, 'General');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_forums_messages`
--

CREATE TABLE `ph7_forums_messages` (
  `messageId` int(10) UNSIGNED NOT NULL,
  `topicId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_forums_topics`
--

CREATE TABLE `ph7_forums_topics` (
  `topicId` int(10) UNSIGNED NOT NULL,
  `forumId` mediumint(10) UNSIGNED DEFAULT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_games`
--

CREATE TABLE `ph7_games` (
  `gameId` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT '',
  `title` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT '',
  `thumb` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `categoryId` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `downloads` int(9) UNSIGNED DEFAULT '0',
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_games`
--

INSERT INTO `ph7_games` (`gameId`, `name`, `title`, `description`, `keywords`, `thumb`, `file`, `categoryId`, `addedDate`, `downloads`, `votes`, `score`, `views`) VALUES
(1, '', 'America Fights Back', 'Think you can do better in the war? Well heres your chance.Use your mouse and click to fire your guns! Watch your energy level to make sure you dont die. There are no second chances or extra', 'America Fights Back', 'america_strikes_back.png', 'america_strikes_back.swf', 2, '2018-07-16 15:36:43', 0, 0, 0, 0),
(2, '', 'Altex', 'Be fast and shoot them all!', 'Altex', 'altex.png', 'altex.swf', 2, '2018-07-16 15:36:43', 0, 0, 0, 0),
(3, '', 'Alpine Escape', 'Catch the brides falling from the airship but don\'t shoot it down - shoot down the fighter plane in', 'Alpine Escape', 'alpine_escape.png', 'alpine_escape.swf', 2, '2018-07-16 15:36:43', 0, 0, 0, 0),
(4, '', 'Flashblox', 'Tetris clone', '', 'tetris_clone.png', 'tetris_clone.swf', 1, '2018-07-16 15:36:43', 0, 0, 0, 0),
(5, '', 'Bell Boys', 'Help the bell boy to deliver their orders to the right floor by controling the elevators', '', 'bell_boys.png', 'bell_boys.swf', 1, '2018-07-16 15:36:43', 0, 0, 0, 0),
(6, '', 'Frogger', 'This is a real classic simple and addictive. Just help the frog to cross the street with heavy traffic', '', 'frogger.png', 'frogger.swf', 1, '2018-07-16 15:36:43', 0, 0, 0, 0),
(7, '', 'Blackjack', 'This is a nice Blackjack games that allow playing upto 5 hands at once', '', 'blackjack.png', 'blackjack.swf', 3, '2018-07-16 15:36:43', 0, 0, 0, 0),
(8, '', 'The Blackjack Casino', 'One of the most popular Casino games', '', 'blackjack_casino.png', 'blackjack_casino.swf', 3, '2018-07-16 15:36:43', 0, 0, 0, 0),
(9, '', 'Casino - Let It Ride', 'Click on the chip amount you wish to bet. Press DEAL button to get cards. Determine if your hand is worth keeping or dropping one of your bets.', '', 'let_ride.png', 'let_ride.swf', 3, '2018-07-16 15:36:43', 0, 0, 0, 0),
(10, '', 'Boeing', 'NA', 'Boeing', 'boeing.jpg', 'boeing.swf', 4, '2018-07-16 15:36:43', 0, 0, 0, 0),
(11, '', 'Book', 'NA', 'Book', 'book.jpg', 'book.swf', 4, '2018-07-16 15:36:43', 0, 0, 0, 0),
(12, '', 'Burj_al_Arab', 'NA', 'Burj_al_Arab', 'burj_al_arab.jpg', 'burj_al_arab.swf', 4, '2018-07-16 15:36:43', 0, 0, 0, 0),
(13, '', 'Asteroid Field+', 'Hit as many asteriods as possible in the asteroid field', '', 'asteroid.png', 'asteroid.swf', 5, '2018-07-16 15:36:43', 0, 0, 0, 0),
(14, '', 'Brighton Bounty Hunter', 'Shoot all that you can see on screen', '', 'brighton_bounty_hunter.png', 'brighton_bounty_hunter.swf', 5, '2018-07-16 15:36:43', 0, 0, 0, 0),
(15, '', 'Sheepteroids', 'It is Sheep-teroids that we are shooting!', '', 'sheepteroids.png', 'sheepteroids.swf', 5, '2018-07-16 15:36:43', 0, 0, 0, 0),
(16, '', 'Blackjack Fever', 'Blackjack Las Vegas style - Double Down Split and More - Get your practice in before making your t', 'Blackjack Fever', 'bjfever.png', 'bjfever.swf', 6, '2018-07-16 15:36:43', 0, 0, 0, 0),
(17, '', 'Beermat', 'A game about fliking beermats.', 'Beermat', 'beermat.png', 'beermat.swf', 6, '2018-07-16 15:36:43', 0, 0, 0, 0),
(18, '', 'Beeku Big Adventure Ch1', 'Run around as Beeku blast away bugs and critters with your machine gun.', 'Beeku\'s Big Adventure Ch1', 'beeku_big_adventure.png', 'beeku_big_adventure.swf', 6, '2018-07-16 15:36:43', 0, 0, 0, 0),
(19, '', 'Addem Up', 'Place the next tile from the queue on the board. If all surrounding tiles add up to that number they', 'Addem Up', 'addem_up.png', 'addem_up.swf', 7, '2018-07-16 15:36:43', 0, 0, 0, 0),
(20, '', 'Aga Maze', 'A mazing game', 'Aga Maze', 'aga_maze.png', 'aga_maze.swf', 7, '2018-07-16 15:36:43', 0, 0, 0, 0),
(21, '', 'Air Heads', 'Fly your balloon across building but avoid the smog above.', 'Air Heads', 'air_heads.png', 'air_heads.swf', 7, '2018-07-16 15:36:43', 0, 0, 0, 0),
(22, '', 'Stai Ruere', 'Protesters have gathered around a barracks area! It\'s your duty to control them and maintain peace a', 'Stai Ruere', 'stai_ruere.png', 'stai_ruere.swf', 8, '2018-07-16 15:36:43', 0, 0, 0, 0),
(23, '', 'Stay The Distance', 'Great horse racing game. Easy but a bit harsh.', 'Stay The Distance', 'stay_the_distance.png', 'stay_the_distance.swf', 8, '2018-07-16 15:36:43', 0, 0, 0, 0),
(24, '', 'TGFG Racing', 'Race around the track smashing into your opponents to knock them off and picking up turbo so you can', 'TGFG Racing', 'tgfg_racing.png', 'tgfg_racing.swf', 8, '2018-07-16 15:36:43', 0, 0, 0, 0),
(25, '', '12 Puzzle', 'Fit the puzzle pieces together to solve the puzzle!', '12 Puzzle', '12_puzzle.png', '12_puzzle.swf', 9, '2018-07-16 15:36:43', 0, 0, 0, 0),
(26, '', '24 Puzzle', 'Align the 24 numbers in order from 1-24 in this 3D puzzle.', '24 Puzzle', '24_puzzle.png', '24_puzzle.swf', 9, '2018-07-16 15:36:43', 0, 0, 0, 0),
(27, '', '3D Frogger', 'Frogger takes on a new look in this 3 dimensional version of the classic game. Make your way across', '3D Frogger', '3d_frogger.png', '3d_frogger.swf', 9, '2018-07-16 15:36:43', 0, 0, 0, 0),
(28, '', 'Amok Madman', 'Get tought by an expert in this fun shooting game.', 'Amok Madman', 'amok.png', 'amok.swf', 10, '2018-07-16 15:36:43', 0, 0, 0, 0),
(29, '', 'Aderans Forest', 'Aderans Forest is under attack. Shoot all the enemies before they destroy it! Click the mouse to shoot.', 'Aderans Forest', 'aderans_forest.png', 'aderans_forest.swf', 10, '2018-07-16 15:36:43', 0, 0, 0, 0),
(30, '', 'AO-War On Iraq', 'Shoot down Iraqi Terrorists Jeeps Grenaders and hostile villagers using AK Machine guns.', 'AO-War On Iraq', 'war_on_iraq.png', 'war_on_iraq.swf', 10, '2018-07-16 15:36:43', 0, 0, 0, 0),
(31, '', 'Bullseye', 'Play this classic darts game.', 'Bullseye', 'bullseye.png', 'bullseye.swf', 11, '2018-07-16 15:36:43', 0, 0, 0, 0),
(32, '', 'Billiards', 'Billiards Flash Game. So famous, you have to play with our Cue Sports game right now. Finally, our Billiards flash game is simple to use, smart and modern.', 'Cue Sports, Cuesports, Billiard, Billiards, Snooker, poll, Billiards balls, Pool Balls', 'billiards.png', 'billiards.swf', 11, '2018-07-16 15:36:43', 0, 0, 0, 0),
(33, '', 'Bowling', 'Here you are. A superb bowling game. Turn your speakers up!Throw the ball when you see the sign. In order to throw the ball push the go botton. Keep it pressed until the yellow field at t', 'Bowling', 'bowling.png', 'bowling.swf', 11, '2018-07-16 15:36:43', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_games_categories`
--

CREATE TABLE `ph7_games_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_games_categories`
--

INSERT INTO `ph7_games_categories` (`categoryId`, `name`) VALUES
(1, 'Action'),
(2, 'Arcade'),
(3, 'Casino'),
(4, 'Drawing'),
(5, 'Fighting'),
(6, 'Other'),
(7, 'Puzzle'),
(8, 'Racing'),
(9, 'Retro'),
(10, 'Shooting'),
(11, 'Sports');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_languages_info`
--

CREATE TABLE `ph7_languages_info` (
  `langId` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `charset` varchar(15) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `author` varchar(60) NOT NULL,
  `website` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_languages_info`
--

INSERT INTO `ph7_languages_info` (`langId`, `name`, `charset`, `active`, `direction`, `author`, `website`, `email`) VALUES
('en_US', 'English', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://ph7.me', 'hi@ph7.me');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_likes`
--

CREATE TABLE `ph7_likes` (
  `keyId` varchar(255) NOT NULL,
  `votes` int(10) UNSIGNED NOT NULL,
  `lastVote` datetime NOT NULL,
  `lastIp` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_log_error`
--

CREATE TABLE `ph7_log_error` (
  `logId` mediumint(10) UNSIGNED NOT NULL,
  `logError` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members`
--

CREATE TABLE `ph7_members` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `sex` enum('male','female','couple') NOT NULL DEFAULT 'female',
  `matchSex` set('male','female','couple') NOT NULL DEFAULT 'male',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `groupId` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `membershipDate` datetime DEFAULT NULL,
  `userStatus` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `avatar` char(5) DEFAULT NULL,
  `approvedAvatar` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `featured` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `views` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reference` varchar(255) DEFAULT NULL,
  `votes` int(11) DEFAULT '0',
  `score` float DEFAULT '0',
  `credits` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `affiliatedId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ban` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_members`
--

INSERT INTO `ph7_members` (`profileId`, `email`, `username`, `password`, `firstName`, `lastName`, `birthDate`, `sex`, `matchSex`, `ip`, `bankAccount`, `groupId`, `membershipDate`, `userStatus`, `joinDate`, `lastActivity`, `lastEdit`, `avatar`, `approvedAvatar`, `featured`, `lang`, `hashValidation`, `isTwoFactorAuth`, `twoFactorAuthSecret`, `views`, `reference`, `votes`, `score`, `credits`, `affiliatedId`, `active`, `ban`) VALUES
(1, 'ghost@ghost', 'ghost', 'cbb992649ba5e85b750569b1fcf0bd5d3b5da2f0', 'Ghost', 'The Ghost', '1001-01-01', 'female', 'male', '00.000.00.00', NULL, 2, NULL, 1, '2018-07-16 15:36:43', '2018-07-16 15:36:43', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(2, 'demo2@demo.cow', 'garcia', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Grace', 'Park', '1992-11-21', 'female', 'male', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(3, 'demo3@demo.cow', 'peter22', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Peter', 'Backhard', '1977-12-21', 'male', 'female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(4, 'demo4@demo.cow', 'katin', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Katin', 'Layjyr', '1988-12-21', 'female', 'male', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(5, 'demo5@demo.cow', 'trinityI', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Trinity', 'Rivic', '1988-12-21', 'female', 'male,female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(6, 'demo6@demo.cow', 'JohnH', 'd891de2cc887c8bfb546043050acb171c90aa208', 'John', 'Pittsburgh', '1988-12-21', 'male', 'female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(7, 'demo7@demo.cow', 'AntonR', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Anton', 'Storn', '1968-12-21', 'male', 'female,couple', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(8, 'demo8@demo.cow', 'kate62', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Kate', 'Slater', '1988-12-21', 'female', 'male,female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(9, 'demo9@demo.cow', 'MarkO', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Mark', 'Yohir', '1978-01-21', 'male', 'male,female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(10, 'demo10@demo.cow', 'Tom4', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Tomy', 'Pittsburgh', '1992-12-21', 'male', 'female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(11, 'demo11@demo.cow', 'rachO0O', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Rachel', 'Žarko', '1968-02-10', 'female', 'male', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(12, 'demo12@demo.cow', 'Stive', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Stive', 'Upton', '1988-12-21', 'male', 'male,female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(13, 'demo13@demo.cow', 'EmmaR', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Emma', 'Solon', '1992-06-16', 'female', 'male,female,couple', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(14, 'demo14@demo.cow', 'scarlaaa', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Scarlett', 'Stewart', '1990-05-26', 'female', 'male', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(15, 'demo15@demo.cow', 'lolo22', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Lola', 'Weisz', '1991-06-09', 'female', 'male,female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(16, 'demo16@demo.cow', 'bartys', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Bart', 'San', '1978-11-01', 'male', 'female', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0),
(17, 'demo17@demo.cow', 'wenwen', 'd891de2cc887c8bfb546043050acb171c90aa208', 'Wendy', 'Beaumnt', '1965-06-10', 'female', 'male,couple', '37.205.56.35', NULL, 2, NULL, 1, '2018-07-16 15:36:52', '2018-07-16 15:36:52', NULL, NULL, 1, 0, 'en_US', NULL, '0', NULL, 0, NULL, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_memberships`
--

CREATE TABLE `ph7_memberships` (
  `groupId` tinyint(2) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `expirationDays` tinyint(2) UNSIGNED NOT NULL,
  `enable` enum('1','0') DEFAULT '1',
  `orderId` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_memberships`
--

INSERT INTO `ph7_memberships` (`groupId`, `name`, `description`, `permissions`, `price`, `expirationDays`, `enable`, `orderId`) VALUES
(1, 'Visitor (not visible)', 'This subscription is offered to all visitors who visit the site.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:17:"instant_messaging";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', 0.00, 0, '1', 1),
(2, 'Regular (Free)', 'Free Membership.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', 0.00, 0, '1', 3),
(4, 'Platinum', 'The membership for the small budget.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', 9.99, 5, '1', 4),
(5, 'Silver', 'The premium membership!', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', 19.99, 10, '1', 5),
(6, 'Gold', 'The must membership! The Gold!!!', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', 29.99, 30, '1', 6),
(9, 'Pending (not visible)', 'Pending subscription provisional migration to a different subscription.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:17:"instant_messaging";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', 0.00, 15, '0', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_attempts_login`
--

CREATE TABLE `ph7_members_attempts_login` (
  `attemptsId` int(10) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) UNSIGNED NOT NULL,
  `lastLogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_background`
--

CREATE TABLE `ph7_members_background` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `file` varchar(5) NOT NULL,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_countries`
--

CREATE TABLE `ph7_members_countries` (
  `countryId` tinyint(3) UNSIGNED NOT NULL,
  `countryCode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_members_countries`
--

INSERT INTO `ph7_members_countries` (`countryId`, `countryCode`) VALUES
(1, 'AD'),
(2, 'AE'),
(3, 'AF'),
(4, 'AG'),
(5, 'AI'),
(6, 'AL'),
(7, 'AM'),
(8, 'AN'),
(9, 'AO'),
(10, 'AQ'),
(11, 'AR'),
(12, 'AS'),
(13, 'AT'),
(14, 'AU'),
(15, 'AW'),
(16, 'AX'),
(17, 'AZ'),
(18, 'BA'),
(19, 'BB'),
(20, 'BD'),
(21, 'BE'),
(22, 'BF'),
(23, 'BG'),
(24, 'BH'),
(25, 'BI'),
(26, 'BJ'),
(27, 'BM'),
(28, 'BN'),
(29, 'BO'),
(30, 'BR'),
(31, 'BS'),
(32, 'BT'),
(33, 'BV'),
(34, 'BW'),
(35, 'BY'),
(36, 'BZ'),
(37, 'CA'),
(38, 'CC'),
(39, 'CD'),
(40, 'CF'),
(41, 'CG'),
(42, 'CH'),
(43, 'CI'),
(44, 'CK'),
(45, 'CL'),
(46, 'CM'),
(47, 'CN'),
(48, 'CO'),
(49, 'CR'),
(50, 'CU'),
(51, 'CV'),
(52, 'CX'),
(53, 'CY'),
(54, 'CZ'),
(55, 'DE'),
(56, 'DJ'),
(57, 'DK'),
(58, 'DM'),
(59, 'DO'),
(60, 'DZ'),
(61, 'EC'),
(62, 'EE'),
(63, 'EG'),
(64, 'EH'),
(65, 'ER'),
(66, 'ES'),
(67, 'ET'),
(68, 'FI'),
(69, 'FJ'),
(70, 'FK'),
(71, 'FM'),
(72, 'FO'),
(73, 'FR'),
(74, 'FX'),
(75, 'GA'),
(76, 'GD'),
(77, 'GE'),
(78, 'GF'),
(79, 'GH'),
(80, 'GI'),
(81, 'GL'),
(82, 'GM'),
(83, 'GN'),
(84, 'GP'),
(85, 'GQ'),
(86, 'GR'),
(87, 'GS'),
(88, 'GT'),
(89, 'GU'),
(90, 'GW'),
(91, 'GY'),
(92, 'HK'),
(93, 'HM'),
(94, 'HN'),
(95, 'HR'),
(96, 'HT'),
(97, 'HU'),
(98, 'ID'),
(99, 'IE'),
(100, 'IL'),
(101, 'IN'),
(102, 'IO'),
(103, 'IQ'),
(104, 'IR'),
(105, 'IS'),
(106, 'IT'),
(107, 'JM'),
(108, 'JO'),
(109, 'JP'),
(110, 'KE'),
(111, 'KG'),
(112, 'KH'),
(113, 'KI'),
(114, 'KM'),
(115, 'KN'),
(116, 'KP'),
(117, 'KR'),
(118, 'KW'),
(119, 'KY'),
(120, 'KZ'),
(121, 'LA'),
(122, 'LB'),
(123, 'LC'),
(124, 'LI'),
(125, 'LK'),
(126, 'LR'),
(127, 'LS'),
(128, 'LT'),
(129, 'LU'),
(130, 'LV'),
(131, 'LY'),
(132, 'MA'),
(133, 'MC'),
(134, 'MD'),
(135, 'MG'),
(136, 'MH'),
(137, 'MK'),
(138, 'ML'),
(139, 'MM'),
(140, 'MN'),
(141, 'MO'),
(142, 'MP'),
(143, 'MQ'),
(144, 'MR'),
(145, 'MS'),
(146, 'MT'),
(147, 'MU'),
(148, 'MV'),
(149, 'MW'),
(150, 'MX'),
(151, 'MY'),
(152, 'MZ'),
(153, 'NA'),
(154, 'NC'),
(155, 'NE'),
(156, 'NF'),
(157, 'NG'),
(158, 'NI'),
(159, 'NL'),
(160, 'NO'),
(161, 'NP'),
(162, 'NR'),
(163, 'NU'),
(164, 'NZ'),
(165, 'OM'),
(166, 'PA'),
(167, 'PE'),
(168, 'PF'),
(169, 'PG'),
(170, 'PH'),
(171, 'PK'),
(172, 'PL'),
(173, 'PM'),
(174, 'PN'),
(175, 'PR'),
(176, 'PT'),
(177, 'PW'),
(178, 'PY'),
(179, 'QA'),
(180, 'RE'),
(181, 'RO'),
(182, 'RU'),
(183, 'RW'),
(184, 'SA'),
(185, 'SB'),
(186, 'SC'),
(187, 'SD'),
(188, 'SE'),
(189, 'SG'),
(190, 'SH'),
(191, 'SI'),
(192, 'SJ'),
(193, 'SK'),
(194, 'SL'),
(195, 'SM'),
(196, 'SN'),
(197, 'SO'),
(198, 'SR'),
(199, 'ST'),
(200, 'SV'),
(201, 'SY'),
(202, 'SZ'),
(203, 'TC'),
(204, 'TD'),
(205, 'TF'),
(206, 'TG'),
(207, 'TH'),
(208, 'TJ'),
(209, 'TK'),
(210, 'TM'),
(211, 'TN'),
(212, 'TO'),
(213, 'TP'),
(214, 'TR'),
(215, 'TT'),
(216, 'TV'),
(217, 'TW'),
(218, 'TZ'),
(219, 'UA'),
(220, 'UG'),
(221, 'UK'),
(222, 'UM'),
(223, 'US'),
(224, 'UY'),
(225, 'UZ'),
(226, 'VA'),
(227, 'VC'),
(228, 'VE'),
(229, 'VG'),
(230, 'VI'),
(231, 'VN'),
(232, 'VU'),
(233, 'WF'),
(234, 'WS'),
(235, 'YE'),
(236, 'YT'),
(237, 'YU'),
(238, 'ZA'),
(239, 'ZM'),
(240, 'ZW');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_friends`
--

CREATE TABLE `ph7_members_friends` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `friendId` int(10) UNSIGNED NOT NULL,
  `requestDate` datetime DEFAULT NULL,
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_info`
--

CREATE TABLE `ph7_members_info` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  `socialNetworkSite` varchar(120) DEFAULT NULL,
  `height` tinyint(3) UNSIGNED DEFAULT NULL,
  `weight` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_members_info`
--

INSERT INTO `ph7_members_info` (`profileId`, `middleName`, `description`, `address`, `street`, `city`, `state`, `zipCode`, `country`, `phone`, `website`, `socialNetworkSite`, `height`, `weight`) VALUES
(1, NULL, 'This profile doesn\'t exist anymore. So I\'m the ghost who replaces him/her during this time', 'The Ghost City', 'Ghost Street', 'Ghost Town', 'Ghost State', '000000', 'US', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'Hello to all', NULL, NULL, 'New York', 'New York', '11226', 'US', NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'Hi all, my name is Anton.', NULL, NULL, 'Abinsk', 'Abinsk', '353320', 'RU', NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'Hi baby!<br /> I am a handsome man tall and dark as women love.<br /> Come talk to me because you will not regret it!', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Hello to all', NULL, NULL, 'Dolton', 'Illinois', '60419', 'US', NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'Hi :D', NULL, NULL, 'Soho', 'Westminster London', '139 L8', 'UK', NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'Hi you y\'all, what\'s up? :-)', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'Hello to YOU. How are you?', NULL, NULL, 'Dolton', 'Illinois', '60419', 'US', NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'Hello to all', NULL, NULL, 'Manhattan', 'Manhattan', '10002', 'US', NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Want to see new people!! :)', NULL, NULL, 'Soho', 'Westminster London', '139 L8', 'UK', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_log_login`
--

CREATE TABLE `ph7_members_log_login` (
  `logId` mediumint(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_log_sess`
--

CREATE TABLE `ph7_members_log_sess` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) UNSIGNED NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_notifications`
--

CREATE TABLE `ph7_members_notifications` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `enableNewsletters` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `newMsg` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `friendRequest` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_members_notifications`
--

INSERT INTO `ph7_members_notifications` (`profileId`, `enableNewsletters`, `newMsg`, `friendRequest`) VALUES
(1, 0, 0, 0),
(2, 0, 0, 0),
(3, 0, 0, 0),
(4, 0, 0, 0),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 0),
(12, 0, 0, 0),
(13, 0, 0, 0),
(14, 0, 0, 0),
(15, 0, 0, 0),
(16, 0, 0, 0),
(17, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_privacy`
--

CREATE TABLE `ph7_members_privacy` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `privacyProfile` enum('all','only_members','only_me') NOT NULL DEFAULT 'all',
  `searchProfile` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userSaveViews` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_members_privacy`
--

INSERT INTO `ph7_members_privacy` (`profileId`, `privacyProfile`, `searchProfile`, `userSaveViews`) VALUES
(1, 'all', 'yes', 'yes'),
(2, 'all', 'yes', 'yes'),
(3, 'all', 'yes', 'yes'),
(4, 'all', 'yes', 'yes'),
(5, 'all', 'yes', 'yes'),
(6, 'all', 'yes', 'yes'),
(7, 'all', 'yes', 'yes'),
(8, 'all', 'yes', 'yes'),
(9, 'all', 'yes', 'yes'),
(10, 'all', 'yes', 'yes'),
(11, 'all', 'yes', 'yes'),
(12, 'all', 'yes', 'yes'),
(13, 'all', 'yes', 'yes'),
(14, 'all', 'yes', 'yes'),
(15, 'all', 'yes', 'yes'),
(16, 'all', 'yes', 'yes'),
(17, 'all', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_wall`
--

CREATE TABLE `ph7_members_wall` (
  `wallId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post` text CHARACTER SET armscii8,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_members_who_views`
--

CREATE TABLE `ph7_members_who_views` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `visitorId` int(10) UNSIGNED NOT NULL,
  `lastVisit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_messages`
--

CREATE TABLE `ph7_messages` (
  `messageId` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `recipient` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sendDate` datetime DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `trash` set('sender','recipient') NOT NULL DEFAULT '',
  `toDelete` set('sender','recipient') NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_messenger`
--

CREATE TABLE `ph7_messenger` (
  `messengerId` int(10) UNSIGNED NOT NULL,
  `fromUser` varchar(40) NOT NULL DEFAULT '',
  `toUser` varchar(40) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime DEFAULT NULL,
  `recd` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_meta_main`
--

CREATE TABLE `ph7_meta_main` (
  `langId` varchar(5) NOT NULL DEFAULT '',
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `headline` varchar(50) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `promoText` text,
  `metaRobots` varchar(50) NOT NULL DEFAULT '',
  `metaAuthor` varchar(50) NOT NULL DEFAULT '',
  `metaCopyright` varchar(55) NOT NULL DEFAULT '',
  `metaRating` varchar(50) NOT NULL DEFAULT '',
  `metaDistribution` varchar(50) NOT NULL DEFAULT '',
  `metaCategory` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_meta_main`
--

INSERT INTO `ph7_meta_main` (`langId`, `pageTitle`, `metaDescription`, `metaKeywords`, `headline`, `slogan`, `promoText`, `metaRobots`, `metaAuthor`, `metaCopyright`, `metaRating`, `metaDistribution`, `metaCategory`) VALUES
('en_US', 'Home', 'The Best Online Social Dating Service to meet people and keep in touch with your friends', 'meet people, community, single, friends, meet singles, women, men, dating site, dating service, dating website, online dating website', 'Be on the right place!', 'The Place to Meet Lovely People', 'You\'re on the best place for meeting new people nearby! Chat, Flirt, Socialize and have Fun!<br />Create any Social Dating Web Apps or Websites like this one with the #1 <a href="http://ph7cms.com">Dating Web App Builder</a>. It\'s Professional, Modern, Open Source, and gives you the Best Way to launch a new Social/Dating Business!', 'index, follow, all', 'Pierre-Henry Soria', 'Copyright Pierre-Henry Soria. All Rights Reserved.', 'general', 'global', 'dating');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_modules`
--

CREATE TABLE `ph7_modules` (
  `moduleId` smallint(4) UNSIGNED NOT NULL,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `version` varchar(6) NOT NULL,
  `uri` varchar(40) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_modules`
--

INSERT INTO `ph7_modules` (`moduleId`, `vendorName`, `moduleName`, `version`, `uri`, `path`, `active`) VALUES
(1, 'pH7CMS', 'SQL System Schema', '1.4.6', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_notes`
--

CREATE TABLE `ph7_notes` (
  `noteId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `thumb` char(24) DEFAULT NULL,
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_notes_categories`
--

CREATE TABLE `ph7_notes_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `noteId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_notes_data_categories`
--

CREATE TABLE `ph7_notes_data_categories` (
  `categoryId` smallint(4) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_notes_data_categories`
--

INSERT INTO `ph7_notes_data_categories` (`categoryId`, `name`) VALUES
(1, 'Business'),
(2, 'Companies'),
(3, 'Dating'),
(4, 'Education'),
(5, 'Family'),
(6, 'Food'),
(7, 'Game'),
(8, 'Health'),
(9, 'Hobby'),
(10, 'Movie'),
(11, 'Music'),
(12, 'News'),
(13, 'Pets'),
(14, 'Recreation'),
(15, 'Shopping'),
(16, 'Society'),
(17, 'Sports'),
(18, 'Study'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_pictures`
--

CREATE TABLE `ph7_pictures` (
  `pictureId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `albumId` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file` varchar(40) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_report`
--

CREATE TABLE `ph7_report` (
  `reportId` smallint(4) UNSIGNED NOT NULL,
  `reporterId` int(10) UNSIGNED DEFAULT NULL,
  `spammerId` int(10) UNSIGNED DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `contentType` enum('user','avatar','mail','comment','picture','video','forum','note') NOT NULL DEFAULT 'user',
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_settings`
--

CREATE TABLE `ph7_settings` (
  `settingName` varchar(64) NOT NULL,
  `settingValue` varchar(150) DEFAULT '',
  `description` varchar(120) DEFAULT '' COMMENT 'Informative desc about the setting',
  `settingGroup` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_settings`
--

INSERT INTO `ph7_settings` (`settingName`, `settingValue`, `description`, `settingGroup`) VALUES
('adminEmail', 'filipe.martins.400@gmail.com', '', 'email'),
('affActivationType', '1', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('autoplayVideo', '1', '1 = Autoplay is enabled, 0 = Autoplay is disabled', 'video'),
('avatarManualApproval', '0', '0 to disable or 1 to enable ', 'moderation'),
('backgroundColor', '', 'Override background color. Leave empty to disable', 'design'),
('banWordReplace', '[removed]', '', 'security'),
('bgProfileManualApproval', '0', 'Background Profile Manual Approval. 0 to disable or 1 to enable ', 'moderation'),
('bgSplashVideo', '1', '0 to disable or 1 to enable the background splash video', 'homepage'),
('captchaCaseSensitive', '1', '1 to enable captcha case sensitive | 0 to enable', 'spam'),
('captchaComplexity', '5', 'number of captcha complexity', 'spam'),
('chatApi', 'https://ph7cms.com/addons/chat/?name=%site_name%&url=%site_url%&skin=4', 'Chat Api URL', 'api'),
('chatrouletteApi', 'https://ph7cms.com/addons/chatroulette/?name=%site_name%&url=%site_url%&skin=1', 'Chatroulette Api URL', 'api'),
('cleanComment', '0', 'Delete comments older than X days. 0 = Disable', 'pruning'),
('cleanMessenger', '0', 'Delete IM messages older than X days. 0 = Disable', 'pruning'),
('cleanMsg', '0', 'Delete messages older than X days. 0 = Disable', 'pruning'),
('cookieConsentBar', '0', 'Enable the cookie consent bar to prevent your users that your site uses cookies. 0 = Disable | 1 = Enable', 'general'),
('cronSecurityHash', 'change_this_secret_cron_word_by_yours', 'The secret word for the URL of the cron', 'automation'),
('DDoS', '0', '0 to disabled or 1 to enabled DDoS attack protection', 'security'),
('defaultLanguage', 'en_US', '', 'language'),
('defaultMembershipGroupId', '2', 'Default Membership Group', 'registration'),
('defaultSysModule', 'user', 'The default module running by default on the index page. Recommended to keep the "user" module', 'general'),
('defaultTemplate', 'datelove', '', 'design'),
('defaultVideo', 'https://www.youtube.com/watch?v=q-1eHnBOg4A', 'Video by default if no video is found', 'video'),
('disclaimer', '0', 'Enable a disclaimer to enter to the site. This is useful for sites with adult content. 0 = Disable | 1 = Enable', 'general'),
('displayPoweredByLink', '1', 'Show or not the branding link in the footer.', 'general'),
('emailName', 'pH7CMS', '', 'email'),
('feedbackEmail', 'filipe.martins.400@gmail.com', '', 'email'),
('footerLinkColor', '', 'Override footer links color. Leave empty to disable', 'design'),
('fullAjaxSite', '0', 'enable = 1 or disable = 0', 'general'),
('googleApiKey', '', 'Google Maps API key https://developers.google.com/maps/documentation/javascript/get-api-key', 'api'),
('ipApi', 'https://whatismyipaddress.com/ip/', 'IP Api URL', 'api'),
('ipLogin', '', '', 'security'),
('isAdminLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isAffiliateLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isCaptchaAffiliateSignup', '0', '0 to disable or 1 to enable', 'spam'),
('isCaptchaComment', '0', '0 to disable or 1 to enable', 'spam'),
('isCaptchaForum', '0', '0 to disable or 1 to enable', 'spam'),
('isCaptchaMail', '0', '0 to disable or 1 to enable', 'spam'),
('isCaptchaNote', '0', '0 to disable or 1 to enable', 'spam'),
('isCaptchaUserSignup', '0', '0 to disable or 1 to enable', 'spam'),
('isSiteValidated', '0', '0 = site not validated | 1 = site validated', 'security'),
('isSoftwareNewsFeed', '1', 'Enable the news feed. 0 = Disable | 1 = Enable', 'general'),
('isUserLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('linkColor', '', 'Override links color. Leave empty to disable', 'design'),
('linkHoverColor', '', 'Override links hover color. Leave empty to disable', 'design'),
('loginAdminAttemptTime', '120', 'Time before a new connection attempt, in minutes!', 'security'),
('loginAffiliateAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('loginUserAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('mailType', 'mail', '', 'email'),
('mapType', 'roadmap', 'Choose between: \'roadmap\', \'hybrid\', \'terrain\', \'satellite\'', 'map'),
('maxAdminLoginAttempts', '10', 'Maximum login attempts before blocking', 'security'),
('maxAffiliateLoginAttempts', '20', 'Maximum login attempts before blocking', 'security'),
('maxAgeRegistration', '99', '', 'registration'),
('maxPasswordLength', '60', '', 'security'),
('maxUserLoginAttempts', '30', 'Maximum login attempts before blocking', 'security'),
('maxUsernameLength', '30', '', 'registration'),
('minAgeRegistration', '18', '', 'registration'),
('minPasswordLength', '6', '', 'security'),
('minUsernameLength', '3', '', 'registration'),
('noteManualApproval', '0', '0 to disable or 1 to enable ', 'moderation'),
('nudityFilter', '0', '1 = enable | 0 = disable', 'moderation'),
('numberProfileSplashPage', '44', 'Number of profiles to display on the splash homepage', 'homepage'),
('pictureManualApproval', '0', '0 to disable or 1 to enable ', 'moderation'),
('profileWithAvatarSet', '0', '1 to display only the profiles with a profile photo.', 'homepage'),
('requireRegistrationAvatar', '1', '', 'registration'),
('returnEmail', 'filipe.martins.400@gmail.com', 'Generally noreply@yoursite.com', 'email'),
('securityToken', '0', '0 to disable or 1 to enable the CSRF security token in the forms', 'security'),
('securityTokenLifetime', '720', 'Time in seconds to the CSRF security token. Default 720 seconds (12 mins)', 'security'),
('sendReportMail', '1', 'Send the Report by eMail (1 = enable, 0 = disable)', 'security'),
('siteName', 'Cara Metade', '', 'general'),
('siteStatus', 'enable', 'enable or maintenance', 'general'),
('sizeWatermarkTextImage', '2', 'Between 0 to 5', 'image'),
('smtpHostName', 'mail.example.com', '', 'email'),
('smtpPassword', '123456', '', 'email'),
('smtpPort', '25', '', 'email'),
('socialMediaWidgets', '0', 'Enable the Social Media Widgets such as Like and Sharing buttons. 0 = Disable | 1 = Enable', 'general'),
('splashPage', '1', 'Use Splash Page | enable = 1 or disable = 0', 'homepage'),
('textColor', '', 'Override text color. Leave empty to disable', 'design'),
('timeDelayAffRegistration', '2880', '2880 minutes = 2 days (in minutes!)', 'spam'),
('timeDelaySendComment', '5', 'Waiting time to send a new comment, in minutes!', 'spam'),
('timeDelaySendForumMsg', '10', 'Waiting time to send a reply message in the same topic, in minutes!', 'spam'),
('timeDelaySendForumTopic', '5', 'Waiting time to send a new topic in the forum, in minutes!', 'spam'),
('timeDelaySendMail', '3', 'Waiting time to send a new message, in minutes!', 'spam'),
('timeDelaySendNote', '20', 'Waiting time to add a new note post, in minutes!', 'spam'),
('timeDelayUserRegistration', '1440', '1440 minutes = 24 hours (in minutes!)', 'spam'),
('userActivationType', '1', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('usersBlock', '1', '0 to disable | 1 to enable the profile photos on the homepage', 'homepage'),
('userTimeout', '1', 'User inactivity timeout. The number of minutes that a member becomes inactive (offline)', 'automation'),
('videoManualApproval', '0', '0 to disable or 1 to enable ', 'moderation'),
('watermarkTextImage', 'pH7CMS.com', 'Watermark text', 'image'),
('webcamPictureManualApproval', '0', '0 to disable or 1 to enable', 'moderation');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_static_files`
--

CREATE TABLE `ph7_static_files` (
  `staticId` smallint(4) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `fileType` enum('css','js') NOT NULL,
  `active` enum('1','0') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_static_files`
--

INSERT INTO `ph7_static_files` (`staticId`, `file`, `fileType`, `active`) VALUES
(1, '//s7.addthis.com/js/250/addthis_widget.js', 'js', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_subscribers`
--

CREATE TABLE `ph7_subscribers` (
  `profileId` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `joinDate` datetime DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `hashValidation` varchar(40) DEFAULT NULL,
  `affiliatedId` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_sys_mods_enabled`
--

CREATE TABLE `ph7_sys_mods_enabled` (
  `moduleId` tinyint(2) UNSIGNED NOT NULL,
  `moduleTitle` varchar(50) NOT NULL,
  `folderName` varchar(20) NOT NULL,
  `premiumMod` enum('0','1') NOT NULL DEFAULT '0',
  `enabled` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ph7_sys_mods_enabled`
--

INSERT INTO `ph7_sys_mods_enabled` (`moduleId`, `moduleTitle`, `folderName`, `premiumMod`, `enabled`) VALUES
(1, 'Affiliate', 'affiliate', '0', '1'),
(2, 'Chat', 'chat', '1', '1'),
(3, 'Chatroulette', 'chatroulette', '1', '1'),
(4, 'Picture', 'picture', '0', '1'),
(5, 'Video', 'video', '0', '0'),
(6, 'Hot or Not', 'hotornot', '0', '1'),
(7, 'Forum', 'forum', '0', '0'),
(8, 'Note (blog for users)', 'note', '0', '0'),
(9, 'Blog (company blog)', 'blog', '0', '1'),
(10, 'Love Calculator', 'love-calculator', '0', '1'),
(11, 'Mail (private message)', 'mail', '0', '1'),
(12, 'Instant Messaging (IM)', 'im', '0', '1'),
(13, 'Friends', 'friend', '0', '0'),
(14, 'Related Profiles', 'related-profile', '0', '1'),
(15, 'User Dashboard', 'user-dashboard', '0', '1'),
(16, 'Dating-Style Profile Page', 'cool-profile-page', '0', '1'),
(17, 'Game', 'game', '0', '0'),
(18, 'Newsletter', 'newsletter', '0', '1'),
(19, 'Invite Friends', 'invite', '0', '0'),
(20, 'Social Media Auth (connect module)', 'connect', '0', '0'),
(21, 'Webcam', 'webcam', '0', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_top_menus`
--

CREATE TABLE `ph7_top_menus` (
  `menuId` smallint(4) UNSIGNED NOT NULL,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) UNSIGNED DEFAULT NULL,
  `grandParentMenu` smallint(4) UNSIGNED DEFAULT NULL,
  `onlyForUsers` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ph7_videos`
--

CREATE TABLE `ph7_videos` (
  `videoId` int(10) UNSIGNED NOT NULL,
  `profileId` int(10) UNSIGNED NOT NULL,
  `albumId` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  `votes` int(9) UNSIGNED DEFAULT '0',
  `score` float UNSIGNED DEFAULT '0',
  `views` int(10) UNSIGNED DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `duration` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ph7_admins`
--
ALTER TABLE `ph7_admins`
  ADD PRIMARY KEY (`profileId`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ph7_admins_attempts_login`
--
ALTER TABLE `ph7_admins_attempts_login`
  ADD PRIMARY KEY (`attemptsId`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `ph7_admins_log_login`
--
ALTER TABLE `ph7_admins_log_login`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `ph7_admins_log_sess`
--
ALTER TABLE `ph7_admins_log_sess`
  ADD PRIMARY KEY (`profileId`),
  ADD KEY `sessionHash` (`sessionHash`),
  ADD KEY `lastActivity` (`lastActivity`);

--
-- Indexes for table `ph7_ads`
--
ALTER TABLE `ph7_ads`
  ADD PRIMARY KEY (`adsId`);

--
-- Indexes for table `ph7_ads_affiliates`
--
ALTER TABLE `ph7_ads_affiliates`
  ADD PRIMARY KEY (`adsId`);

--
-- Indexes for table `ph7_affiliates`
--
ALTER TABLE `ph7_affiliates`
  ADD PRIMARY KEY (`profileId`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `bankAccount` (`bankAccount`),
  ADD KEY `birthDate` (`birthDate`);

--
-- Indexes for table `ph7_affiliates_attempts_login`
--
ALTER TABLE `ph7_affiliates_attempts_login`
  ADD PRIMARY KEY (`attemptsId`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `ph7_affiliates_countries`
--
ALTER TABLE `ph7_affiliates_countries`
  ADD PRIMARY KEY (`countryId`),
  ADD UNIQUE KEY `countryCode` (`countryCode`);

--
-- Indexes for table `ph7_affiliates_info`
--
ALTER TABLE `ph7_affiliates_info`
  ADD PRIMARY KEY (`profileId`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `ph7_affiliates_log_login`
--
ALTER TABLE `ph7_affiliates_log_login`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `ph7_affiliates_log_sess`
--
ALTER TABLE `ph7_affiliates_log_sess`
  ADD PRIMARY KEY (`profileId`),
  ADD KEY `sessionHash` (`sessionHash`),
  ADD KEY `lastActivity` (`lastActivity`);

--
-- Indexes for table `ph7_albums_pictures`
--
ALTER TABLE `ph7_albums_pictures`
  ADD PRIMARY KEY (`albumId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_albums_videos`
--
ALTER TABLE `ph7_albums_videos`
  ADD PRIMARY KEY (`albumId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_analytics_api`
--
ALTER TABLE `ph7_analytics_api`
  ADD PRIMARY KEY (`analyticsId`);

--
-- Indexes for table `ph7_block_countries`
--
ALTER TABLE `ph7_block_countries`
  ADD PRIMARY KEY (`countryId`),
  ADD UNIQUE KEY `countryCode` (`countryCode`);

--
-- Indexes for table `ph7_block_ip`
--
ALTER TABLE `ph7_block_ip`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `ipId` (`ipId`);

--
-- Indexes for table `ph7_blogs`
--
ALTER TABLE `ph7_blogs`
  ADD PRIMARY KEY (`blogId`),
  ADD UNIQUE KEY `postId` (`postId`);

--
-- Indexes for table `ph7_blogs_categories`
--
ALTER TABLE `ph7_blogs_categories`
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `blogId` (`blogId`);

--
-- Indexes for table `ph7_blogs_data_categories`
--
ALTER TABLE `ph7_blogs_data_categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ph7_bottom_menus`
--
ALTER TABLE `ph7_bottom_menus`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `ph7_comments_blog`
--
ALTER TABLE `ph7_comments_blog`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_comments_game`
--
ALTER TABLE `ph7_comments_game`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_comments_note`
--
ALTER TABLE `ph7_comments_note`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_comments_picture`
--
ALTER TABLE `ph7_comments_picture`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_comments_profile`
--
ALTER TABLE `ph7_comments_profile`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_comments_video`
--
ALTER TABLE `ph7_comments_video`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_forums`
--
ALTER TABLE `ph7_forums`
  ADD PRIMARY KEY (`forumId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `ph7_forums_categories`
--
ALTER TABLE `ph7_forums_categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `ph7_forums_messages`
--
ALTER TABLE `ph7_forums_messages`
  ADD PRIMARY KEY (`messageId`),
  ADD KEY `topicId` (`topicId`);

--
-- Indexes for table `ph7_forums_topics`
--
ALTER TABLE `ph7_forums_topics`
  ADD PRIMARY KEY (`topicId`),
  ADD KEY `forumId` (`forumId`);

--
-- Indexes for table `ph7_games`
--
ALTER TABLE `ph7_games`
  ADD PRIMARY KEY (`gameId`);

--
-- Indexes for table `ph7_games_categories`
--
ALTER TABLE `ph7_games_categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ph7_languages_info`
--
ALTER TABLE `ph7_languages_info`
  ADD PRIMARY KEY (`langId`);

--
-- Indexes for table `ph7_likes`
--
ALTER TABLE `ph7_likes`
  ADD UNIQUE KEY `keyId` (`keyId`);

--
-- Indexes for table `ph7_log_error`
--
ALTER TABLE `ph7_log_error`
  ADD PRIMARY KEY (`logId`);
ALTER TABLE `ph7_log_error` ADD FULLTEXT KEY `logError` (`logError`);

--
-- Indexes for table `ph7_members`
--
ALTER TABLE `ph7_members`
  ADD PRIMARY KEY (`profileId`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `groupId` (`groupId`),
  ADD KEY `birthDate` (`birthDate`);

--
-- Indexes for table `ph7_memberships`
--
ALTER TABLE `ph7_memberships`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `ph7_members_attempts_login`
--
ALTER TABLE `ph7_members_attempts_login`
  ADD PRIMARY KEY (`attemptsId`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `ph7_members_background`
--
ALTER TABLE `ph7_members_background`
  ADD PRIMARY KEY (`profileId`);

--
-- Indexes for table `ph7_members_countries`
--
ALTER TABLE `ph7_members_countries`
  ADD PRIMARY KEY (`countryId`),
  ADD UNIQUE KEY `countryCode` (`countryCode`);

--
-- Indexes for table `ph7_members_friends`
--
ALTER TABLE `ph7_members_friends`
  ADD KEY `profileId` (`profileId`),
  ADD KEY `friendId` (`friendId`);

--
-- Indexes for table `ph7_members_info`
--
ALTER TABLE `ph7_members_info`
  ADD PRIMARY KEY (`profileId`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `ph7_members_log_login`
--
ALTER TABLE `ph7_members_log_login`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `ph7_members_log_sess`
--
ALTER TABLE `ph7_members_log_sess`
  ADD PRIMARY KEY (`profileId`),
  ADD KEY `sessionHash` (`sessionHash`),
  ADD KEY `lastActivity` (`lastActivity`);

--
-- Indexes for table `ph7_members_notifications`
--
ALTER TABLE `ph7_members_notifications`
  ADD PRIMARY KEY (`profileId`);

--
-- Indexes for table `ph7_members_privacy`
--
ALTER TABLE `ph7_members_privacy`
  ADD PRIMARY KEY (`profileId`);

--
-- Indexes for table `ph7_members_wall`
--
ALTER TABLE `ph7_members_wall`
  ADD PRIMARY KEY (`wallId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_members_who_views`
--
ALTER TABLE `ph7_members_who_views`
  ADD KEY `profileId` (`profileId`),
  ADD KEY `visitorId` (`visitorId`);

--
-- Indexes for table `ph7_messages`
--
ALTER TABLE `ph7_messages`
  ADD PRIMARY KEY (`messageId`),
  ADD KEY `recipient` (`recipient`);

--
-- Indexes for table `ph7_messenger`
--
ALTER TABLE `ph7_messenger`
  ADD PRIMARY KEY (`messengerId`),
  ADD KEY `fromUser` (`fromUser`),
  ADD KEY `toUser` (`toUser`);

--
-- Indexes for table `ph7_meta_main`
--
ALTER TABLE `ph7_meta_main`
  ADD PRIMARY KEY (`langId`);

--
-- Indexes for table `ph7_modules`
--
ALTER TABLE `ph7_modules`
  ADD PRIMARY KEY (`moduleId`);

--
-- Indexes for table `ph7_notes`
--
ALTER TABLE `ph7_notes`
  ADD PRIMARY KEY (`noteId`),
  ADD UNIQUE KEY `postId` (`postId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_notes_categories`
--
ALTER TABLE `ph7_notes_categories`
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `noteId` (`noteId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_notes_data_categories`
--
ALTER TABLE `ph7_notes_data_categories`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `ph7_pictures`
--
ALTER TABLE `ph7_pictures`
  ADD PRIMARY KEY (`pictureId`),
  ADD KEY `albumId` (`albumId`),
  ADD KEY `profileId` (`profileId`);

--
-- Indexes for table `ph7_report`
--
ALTER TABLE `ph7_report`
  ADD PRIMARY KEY (`reportId`),
  ADD KEY `reporterId` (`reporterId`),
  ADD KEY `spammerId` (`spammerId`);

--
-- Indexes for table `ph7_settings`
--
ALTER TABLE `ph7_settings`
  ADD PRIMARY KEY (`settingName`);

--
-- Indexes for table `ph7_static_files`
--
ALTER TABLE `ph7_static_files`
  ADD PRIMARY KEY (`staticId`);

--
-- Indexes for table `ph7_subscribers`
--
ALTER TABLE `ph7_subscribers`
  ADD PRIMARY KEY (`profileId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ph7_sys_mods_enabled`
--
ALTER TABLE `ph7_sys_mods_enabled`
  ADD PRIMARY KEY (`moduleId`);

--
-- Indexes for table `ph7_top_menus`
--
ALTER TABLE `ph7_top_menus`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `ph7_videos`
--
ALTER TABLE `ph7_videos`
  ADD PRIMARY KEY (`videoId`),
  ADD KEY `albumId` (`albumId`),
  ADD KEY `profileId` (`profileId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ph7_admins`
--
ALTER TABLE `ph7_admins`
  MODIFY `profileId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ph7_admins_attempts_login`
--
ALTER TABLE `ph7_admins_attempts_login`
  MODIFY `attemptsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_admins_log_login`
--
ALTER TABLE `ph7_admins_log_login`
  MODIFY `logId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ph7_ads`
--
ALTER TABLE `ph7_ads`
  MODIFY `adsId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ph7_ads_affiliates`
--
ALTER TABLE `ph7_ads_affiliates`
  MODIFY `adsId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ph7_affiliates`
--
ALTER TABLE `ph7_affiliates`
  MODIFY `profileId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ph7_affiliates_attempts_login`
--
ALTER TABLE `ph7_affiliates_attempts_login`
  MODIFY `attemptsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_affiliates_countries`
--
ALTER TABLE `ph7_affiliates_countries`
  MODIFY `countryId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `ph7_affiliates_log_login`
--
ALTER TABLE `ph7_affiliates_log_login`
  MODIFY `logId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_albums_pictures`
--
ALTER TABLE `ph7_albums_pictures`
  MODIFY `albumId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_albums_videos`
--
ALTER TABLE `ph7_albums_videos`
  MODIFY `albumId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_analytics_api`
--
ALTER TABLE `ph7_analytics_api`
  MODIFY `analyticsId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ph7_block_countries`
--
ALTER TABLE `ph7_block_countries`
  MODIFY `countryId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_block_ip`
--
ALTER TABLE `ph7_block_ip`
  MODIFY `ipId` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_blogs`
--
ALTER TABLE `ph7_blogs`
  MODIFY `blogId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_blogs_data_categories`
--
ALTER TABLE `ph7_blogs_data_categories`
  MODIFY `categoryId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ph7_bottom_menus`
--
ALTER TABLE `ph7_bottom_menus`
  MODIFY `menuId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_blog`
--
ALTER TABLE `ph7_comments_blog`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_game`
--
ALTER TABLE `ph7_comments_game`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_note`
--
ALTER TABLE `ph7_comments_note`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_picture`
--
ALTER TABLE `ph7_comments_picture`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_profile`
--
ALTER TABLE `ph7_comments_profile`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_comments_video`
--
ALTER TABLE `ph7_comments_video`
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_forums`
--
ALTER TABLE `ph7_forums`
  MODIFY `forumId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ph7_forums_categories`
--
ALTER TABLE `ph7_forums_categories`
  MODIFY `categoryId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ph7_forums_messages`
--
ALTER TABLE `ph7_forums_messages`
  MODIFY `messageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_forums_topics`
--
ALTER TABLE `ph7_forums_topics`
  MODIFY `topicId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_games`
--
ALTER TABLE `ph7_games`
  MODIFY `gameId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ph7_games_categories`
--
ALTER TABLE `ph7_games_categories`
  MODIFY `categoryId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ph7_log_error`
--
ALTER TABLE `ph7_log_error`
  MODIFY `logId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_members`
--
ALTER TABLE `ph7_members`
  MODIFY `profileId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ph7_memberships`
--
ALTER TABLE `ph7_memberships`
  MODIFY `groupId` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ph7_members_attempts_login`
--
ALTER TABLE `ph7_members_attempts_login`
  MODIFY `attemptsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_members_countries`
--
ALTER TABLE `ph7_members_countries`
  MODIFY `countryId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `ph7_members_log_login`
--
ALTER TABLE `ph7_members_log_login`
  MODIFY `logId` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_members_wall`
--
ALTER TABLE `ph7_members_wall`
  MODIFY `wallId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_messages`
--
ALTER TABLE `ph7_messages`
  MODIFY `messageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_messenger`
--
ALTER TABLE `ph7_messenger`
  MODIFY `messengerId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_modules`
--
ALTER TABLE `ph7_modules`
  MODIFY `moduleId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ph7_notes`
--
ALTER TABLE `ph7_notes`
  MODIFY `noteId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_notes_data_categories`
--
ALTER TABLE `ph7_notes_data_categories`
  MODIFY `categoryId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ph7_pictures`
--
ALTER TABLE `ph7_pictures`
  MODIFY `pictureId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_report`
--
ALTER TABLE `ph7_report`
  MODIFY `reportId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_static_files`
--
ALTER TABLE `ph7_static_files`
  MODIFY `staticId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ph7_subscribers`
--
ALTER TABLE `ph7_subscribers`
  MODIFY `profileId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_sys_mods_enabled`
--
ALTER TABLE `ph7_sys_mods_enabled`
  MODIFY `moduleId` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ph7_top_menus`
--
ALTER TABLE `ph7_top_menus`
  MODIFY `menuId` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ph7_videos`
--
ALTER TABLE `ph7_videos`
  MODIFY `videoId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `ph7_admins_log_sess`
--
ALTER TABLE `ph7_admins_log_sess`
  ADD CONSTRAINT `ph7_admins_log_sess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_admins` (`profileId`);

--
-- Limitadores para a tabela `ph7_affiliates_info`
--
ALTER TABLE `ph7_affiliates_info`
  ADD CONSTRAINT `ph7_affiliates_info_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_affiliates` (`profileId`);

--
-- Limitadores para a tabela `ph7_affiliates_log_sess`
--
ALTER TABLE `ph7_affiliates_log_sess`
  ADD CONSTRAINT `ph7_affiliates_log_sess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_affiliates` (`profileId`);

--
-- Limitadores para a tabela `ph7_albums_pictures`
--
ALTER TABLE `ph7_albums_pictures`
  ADD CONSTRAINT `ph7_albums_pictures_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_albums_videos`
--
ALTER TABLE `ph7_albums_videos`
  ADD CONSTRAINT `ph7_albums_videos_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_blogs_categories`
--
ALTER TABLE `ph7_blogs_categories`
  ADD CONSTRAINT `ph7_blogs_categories_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `ph7_blogs` (`blogId`);

--
-- Limitadores para a tabela `ph7_comments_blog`
--
ALTER TABLE `ph7_comments_blog`
  ADD CONSTRAINT `ph7_comments_blog_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_blogs` (`blogId`);

--
-- Limitadores para a tabela `ph7_comments_game`
--
ALTER TABLE `ph7_comments_game`
  ADD CONSTRAINT `ph7_comments_game_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_games` (`gameId`);

--
-- Limitadores para a tabela `ph7_comments_note`
--
ALTER TABLE `ph7_comments_note`
  ADD CONSTRAINT `ph7_comments_note_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_notes` (`noteId`);

--
-- Limitadores para a tabela `ph7_comments_picture`
--
ALTER TABLE `ph7_comments_picture`
  ADD CONSTRAINT `ph7_comments_picture_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_pictures` (`pictureId`);

--
-- Limitadores para a tabela `ph7_comments_profile`
--
ALTER TABLE `ph7_comments_profile`
  ADD CONSTRAINT `ph7_comments_profile_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_comments_video`
--
ALTER TABLE `ph7_comments_video`
  ADD CONSTRAINT `ph7_comments_video_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_videos` (`videoId`);

--
-- Limitadores para a tabela `ph7_forums`
--
ALTER TABLE `ph7_forums`
  ADD CONSTRAINT `ph7_forums_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `ph7_forums_categories` (`categoryId`);

--
-- Limitadores para a tabela `ph7_forums_messages`
--
ALTER TABLE `ph7_forums_messages`
  ADD CONSTRAINT `ph7_forums_messages_ibfk_1` FOREIGN KEY (`topicId`) REFERENCES `ph7_forums_topics` (`topicId`);

--
-- Limitadores para a tabela `ph7_forums_topics`
--
ALTER TABLE `ph7_forums_topics`
  ADD CONSTRAINT `ph7_forums_topics_ibfk_1` FOREIGN KEY (`forumId`) REFERENCES `ph7_forums` (`forumId`);

--
-- Limitadores para a tabela `ph7_members`
--
ALTER TABLE `ph7_members`
  ADD CONSTRAINT `ph7_members_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `ph7_memberships` (`groupId`);

--
-- Limitadores para a tabela `ph7_members_background`
--
ALTER TABLE `ph7_members_background`
  ADD CONSTRAINT `ph7_members_background_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_friends`
--
ALTER TABLE `ph7_members_friends`
  ADD CONSTRAINT `ph7_members_friends_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_members_friends_ibfk_2` FOREIGN KEY (`friendId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_info`
--
ALTER TABLE `ph7_members_info`
  ADD CONSTRAINT `ph7_members_info_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_log_sess`
--
ALTER TABLE `ph7_members_log_sess`
  ADD CONSTRAINT `ph7_members_log_sess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_notifications`
--
ALTER TABLE `ph7_members_notifications`
  ADD CONSTRAINT `ph7_members_notifications_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_privacy`
--
ALTER TABLE `ph7_members_privacy`
  ADD CONSTRAINT `ph7_members_privacy_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_wall`
--
ALTER TABLE `ph7_members_wall`
  ADD CONSTRAINT `ph7_members_wall_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_members_who_views`
--
ALTER TABLE `ph7_members_who_views`
  ADD CONSTRAINT `ph7_members_who_views_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_members_who_views_ibfk_2` FOREIGN KEY (`visitorId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_messages`
--
ALTER TABLE `ph7_messages`
  ADD CONSTRAINT `ph7_messages_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_messenger`
--
ALTER TABLE `ph7_messenger`
  ADD CONSTRAINT `ph7_messenger_ibfk_1` FOREIGN KEY (`fromUser`) REFERENCES `ph7_members` (`username`),
  ADD CONSTRAINT `ph7_messenger_ibfk_2` FOREIGN KEY (`toUser`) REFERENCES `ph7_members` (`username`);

--
-- Limitadores para a tabela `ph7_notes`
--
ALTER TABLE `ph7_notes`
  ADD CONSTRAINT `ph7_notes_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_notes_categories`
--
ALTER TABLE `ph7_notes_categories`
  ADD CONSTRAINT `ph7_notes_categories_ibfk_1` FOREIGN KEY (`noteId`) REFERENCES `ph7_notes` (`noteId`),
  ADD CONSTRAINT `ph7_notes_categories_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_pictures`
--
ALTER TABLE `ph7_pictures`
  ADD CONSTRAINT `ph7_pictures_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7_albums_pictures` (`albumId`),
  ADD CONSTRAINT `ph7_pictures_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_report`
--
ALTER TABLE `ph7_report`
  ADD CONSTRAINT `ph7_report_ibfk_1` FOREIGN KEY (`reporterId`) REFERENCES `ph7_members` (`profileId`),
  ADD CONSTRAINT `ph7_report_ibfk_2` FOREIGN KEY (`spammerId`) REFERENCES `ph7_members` (`profileId`);

--
-- Limitadores para a tabela `ph7_videos`
--
ALTER TABLE `ph7_videos`
  ADD CONSTRAINT `ph7_videos_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7_albums_videos` (`albumId`),
  ADD CONSTRAINT `ph7_videos_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7_members` (`profileId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
