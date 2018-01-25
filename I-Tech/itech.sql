-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.2.0.4972
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for itech
CREATE DATABASE IF NOT EXISTS `itech` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `itech`;


-- Dumping structure for table itech.answer_quiz
CREATE TABLE IF NOT EXISTS `answer_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_quiz` varchar(3) NOT NULL,
  `label_quiz` varchar(50) NOT NULL,
  `text_quiz` varchar(200) NOT NULL,
  `status_quiz` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.answer_quiz: 320 rows
/*!40000 ALTER TABLE `answer_quiz` DISABLE KEYS */;
INSERT INTO `answer_quiz` (`id`, `code_quiz`, `label_quiz`, `text_quiz`, `status_quiz`) VALUES
	(1, 'qm', 'radioButton', 'The program shown on TV', 'F'),
	(2, 'qm', 'rdbtnTheEffectsOf', 'The effects of watching television on kids', 'T'),
	(3, 'qm', 'rdbtnWatchingTvIs', 'Watching TV is disadvantageous', 'F'),
	(4, 'qm', 'rdbtnReviewingTheRatings', 'Reviewing the ratings of TV shows is important', 'F'),
	(5, 'qm', 'radioButton_1', 'stress', 'F'),
	(6, 'qm', 'radioButton_2', 'being active', 'T'),
	(7, 'qm', 'radioButton_3', 'being aggressive', 'F'),
	(8, 'qm', 'radioButton_4', 'bedtime disruption', 'F'),
	(9, 'qm', 'radioButton_5', 'All TV programs are good for children', 'F'),
	(10, 'qm', 'radioButton_6', 'Children know what programs to watch', 'F'),
	(11, 'qm', 'radioButton_7', 'It is very important for children to have a TV set in their bedrooms', 'F'),
	(12, 'qm', 'radioButton_8', 'Spending too much time for watching TV may cause kids inactive', 'T'),
	(13, 'qm', 'radioButton_9', 'the parents review TV’s program', 'F'),
	(14, 'qm', 'radioButton_10', 'the parents limit the time to watch TV', 'F'),
	(15, 'qm', 'radioButton_11', 'the kid watches TV with his/her parents', 'F'),
	(16, 'qm', 'radioButton_12', 'the kid watches too much TV at bedtime', 'T'),
	(17, 'qm', 'rdbtnClean', 'Clean', 'F'),
	(18, 'qm', 'rdbtnCleaned', 'Cleaned', 'T'),
	(19, 'qm', 'rdbtnClear', 'Clear', 'F'),
	(20, 'qm', 'rdbtnCleans', 'Cleans', 'F'),
	(21, 'qm', 'rdbtnIs', 'Is', 'F'),
	(22, 'qm', 'rdbtnWas', 'Was', 'T'),
	(23, 'qm', 'rdbtnAre', 'Are', 'F'),
	(24, 'qm', 'rdbtnHave', 'have', 'F'),
	(25, 'qq0', 'rdbtnNewRadioButton', 'Deliver', 'F'),
	(26, 'qq0', 'rdbtnNewRadioButton_1', 'Delivers', 'F'),
	(27, 'qq0', 'rdbtnNewRadioButton_2', 'Delivery', 'F'),
	(28, 'qq0', 'rdbtnNewRadioButton_3', 'Delivered', 'T'),
	(29, 'qq0', 'rdbtnNewRadioButton_4', 'I telling the waitress this bill is wrong', 'F'),
	(30, 'qq0', 'rdbtnNewRadioButton_5', 'I told the waitress this bill is wrong', 'T'),
	(31, 'qq0', 'rdbtnNewRadioButton_6', 'I\'m telling the waitress bill wrong', 'F'),
	(32, 'qq0', 'rdbtnNewRadioButton_7', 'Don\'t know', 'F'),
	(33, 'qq0', 'rdbtnNewRadioButton_8', 'it is', 'F'),
	(34, 'qq0', 'rdbtnNewRadioButton_9', 'it really is', 'F'),
	(35, 'qq0', 'rdbtnNewRadioButton_10', 'is descending', 'F'),
	(36, 'qq0', 'rdbtnNewRadioButton_11', 'will be', 'T'),
	(37, 'qq0', 'rdbtnNewRadioButton_12', 'launch', 'F'),
	(38, 'qq0', 'rdbtnNewRadioButton_13', 'launching', 'F'),
	(39, 'qq0', 'rdbtnNewRadioButton_14', 'launched', 'T'),
	(40, 'qq0', 'rdbtnNewRadioButton_15', 'will launching', 'F'),
	(41, 'qq0', 'rdbtnNewRadioButton_16', 'delivery', 'F'),
	(42, 'qq0', 'rdbtnNewRadioButton_17', 'are delivery', 'T'),
	(43, 'qq0', 'rdbtnNewRadioButton_18', 'on time', 'F'),
	(44, 'qq0', 'rdbtnNewRadioButton_19', 'regularly', 'F'),
	(45, 'qq1', 'rdbtnNewRadioButton', 'An illegal gunfire trade', 'F'),
	(46, 'qq1', 'rdbtnNewRadioButton_1', 'A demolition of illegal slum dwellers', 'F'),
	(47, 'qq1', 'rdbtnNewRadioButton_2', 'A fight between the police officers and the soldiers', 'F'),
	(48, 'qq1', 'rdbtnNewRadioButton_3', 'A clash between the security forces and the slum dwellers', 'T'),
	(49, 'qq1', 'rdbtnNewRadioButton_4', 'illegal slum dwellers resisted the demolition of their homes', 'T'),
	(50, 'qq1', 'rdbtnNewRadioButton_5', 'the police officers and soldiers shot the dwellers', 'F'),
	(51, 'qq1', 'rdbtnNewRadioButton_6', 'nine people were killed by the security forces', 'F'),
	(52, 'qq1', 'rdbtnNewRadioButton_7', 'the police officers firing the dwellers', 'F'),
	(53, 'qq1', 'rdbtnNewRadioButton_8', 'ten police officers had to be evacuated', 'F'),
	(54, 'qq1', 'rdbtnNewRadioButton_9', 'ten police officers were killed in the fighting', 'F'),
	(55, 'qq1', 'rdbtnNewRadioButton_10', 'ten police officers were injured during the fighting', 'T'),
	(56, 'qq1', 'rdbtnNewRadioButton_11', 'some of the wounded people needed surgery', 'F'),
	(57, 'qq1', 'rdbtnNewRadioButton_12', 'would blame', 'F'),
	(58, 'qq1', 'rdbtnNewRadioButton_13', 'has blamed', 'F'),
	(59, 'qq1', 'rdbtnNewRadioButton_14', 'is blaming', 'F'),
	(60, 'qq1', 'rdbtnNewRadioButton_15', 'had blamed', 'T'),
	(61, 'qq1', 'rdbtnNewRadioButton_16', 'And also increases their motivation', 'F'),
	(62, 'qq1', 'rdbtnNewRadioButton_17', 'But also increasing their motivation', 'F'),
	(63, 'qq1', 'rdbtnNewRadioButton_18', 'And he also increases their motivation', 'F'),
	(64, 'qq1', 'rdbtnNewRadioButton_19', 'But also increases their motivation', 'T'),
	(65, 'qq1', 'rdbtnNewRadioButton_20', 'Was to get', 'F'),
	(66, 'qq1', 'rdbtnNewRadioButton_21', 'My get', 'F'),
	(67, 'qq1', 'rdbtnNewRadioButton_22', 'Would rather get', 'F'),
	(68, 'qq1', 'rdbtnNewRadioButton_23', 'Must have got', 'T'),
	(69, 'qq1', 'rdbtnNewRadioButton_24', 'Must have lived', 'T'),
	(70, 'qq1', 'rdbtnNewRadioButton_25', 'Might be living', 'F'),
	(71, 'qq1', 'rdbtnNewRadioButton_26', 'Ought to have lived', 'F'),
	(72, 'qq1', 'rdbtnNewRadioButton_27', 'Should be living', 'F'),
	(73, 'qq1', 'rdbtnNewRadioButton_28', 'Might', 'F'),
	(74, 'qq1', 'rdbtnNewRadioButton_29', 'May', 'F'),
	(75, 'qq1', 'rdbtnNewRadioButton_30', 'Can', 'F'),
	(76, 'qq1', 'rdbtnNewRadioButton_31', 'Must', 'T'),
	(77, 'qq1', 'rdbtnNewRadioButton_32', 'The medicine was taken regularly by the patient', 'F'),
	(78, 'qq1', 'rdbtnNewRadioButton_33', 'The doctor told the patient to take the medicine regularly', 'T'),
	(79, 'qq1', 'rdbtnNewRadioButton_34', 'The medicine had to be taken regularly by the patient', 'F'),
	(80, 'qq1', 'rdbtnNewRadioButton_35', 'The patient was told to take the medicine regularly', 'F'),
	(81, 'qq2', 'rdbtnNewRadioButton', 'is', 'F'),
	(82, 'qq2', 'rdbtnNewRadioButton_1', 'are', 'T'),
	(83, 'qq2', 'rdbtnNewRadioButton_2', 'be', 'F'),
	(84, 'qq2', 'rdbtnNewRadioButton_3', 'being', 'F'),
	(85, 'qq2', 'rdbtnNewRadioButton_4', 'was', 'F'),
	(86, 'qq2', 'rdbtnNewRadioButton_5', 'they were', 'T'),
	(87, 'qq2', 'rdbtnNewRadioButton_6', 'It was', 'F'),
	(88, 'qq2', 'rdbtnNewRadioButton_7', 'Were', 'F'),
	(89, 'qq2', 'rdbtnNewRadioButton_8', 'to form', 'T'),
	(90, 'qq2', 'rdbtnNewRadioButton_9', 'Are formed', 'F'),
	(91, 'qq2', 'rdbtnNewRadioButton_10', 'Forming', 'F'),
	(92, 'qq2', 'rdbtnNewRadioButton_11', 'Form', 'F'),
	(93, 'qq2', 'rdbtnNewRadioButton_12', 'To shape', 'F'),
	(94, 'qq2', 'rdbtnNewRadioButton_13', 'Shaping', 'T'),
	(95, 'qq2', 'rdbtnNewRadioButton_14', 'Shap', 'F'),
	(96, 'qq2', 'rdbtnNewRadioButton_15', 'Shaped', 'F'),
	(97, 'qq2', 'rdbtnNewRadioButton_16', 'Is the way', 'F'),
	(98, 'qq2', 'rdbtnNewRadioButton_17', 'That the way', 'F'),
	(99, 'qq2', 'rdbtnNewRadioButton_18', 'Which way do', 'F'),
	(100, 'qq2', 'rdbtnNewRadioButton_19', 'the way', 'T'),
	(101, 'qq2', 'rdbtnNewRadioButton_20', 'Both', 'F'),
	(102, 'qq2', 'rdbtnNewRadioButton_21', 'Which', 'T'),
	(103, 'qq2', 'rdbtnNewRadioButton_22', 'And', 'F'),
	(104, 'qq2', 'rdbtnNewRadioButton_23', 'It', 'F'),
	(105, 'qq3', 'rdbtnNewRadioButton', 'M, N', 'F'),
	(106, 'qq3', 'rdbtnNewRadioButton_1', 'K, N', 'T'),
	(107, 'qq3', 'rdbtnNewRadioButton_2', 'L, M', 'F'),
	(108, 'qq3', 'rdbtnNewRadioButton_3', 'P, K', 'F'),
	(109, 'qq3', 'rdbtnNewRadioButton_4', '28', 'F'),
	(110, 'qq3', 'rdbtnNewRadioButton_5', '30', 'F'),
	(111, 'qq3', 'rdbtnNewRadioButton_6', '32', 'T'),
	(112, 'qq3', 'rdbtnNewRadioButton_7', '34', 'F'),
	(113, 'qq3', 'rdbtnNewRadioButton_8', '15 m', 'T'),
	(114, 'qq3', 'rdbtnNewRadioButton_9', '16 m', 'F'),
	(115, 'qq3', 'rdbtnNewRadioButton_10', '20 m', 'F'),
	(116, 'qq3', 'rdbtnNewRadioButton_11', '25 m', 'F'),
	(117, 'qq3', 'rdbtnNewRadioButton_12', '20, 48', 'F'),
	(118, 'qq3', 'rdbtnNewRadioButton_13', '10, 46', 'F'),
	(119, 'qq3', 'rdbtnNewRadioButton_14', '20, 46', 'F'),
	(120, 'qq3', 'rdbtnNewRadioButton_15', '10, 48', 'T'),
	(121, 'qq3', 'rdbtnNewRadioButton_16', '17, 20', 'F'),
	(122, 'qq3', 'rdbtnNewRadioButton_17', '16, 22', 'T'),
	(123, 'qq3', 'rdbtnNewRadioButton_18', '20, 24', 'F'),
	(124, 'qq3', 'rdbtnNewRadioButton_19', '19, 22', 'F'),
	(125, 'qq3', 'rdbtnNewRadioButton_20', 'P, Q, P, R', 'F'),
	(126, 'qq3', 'rdbtnNewRadioButton_21', 'P, P, Q, P', 'F'),
	(127, 'qq3', 'rdbtnNewRadioButton_22', 'S, S, R, S', 'F'),
	(128, 'qq3', 'rdbtnNewRadioButton_23', 'R, R, S, R', 'T'),
	(129, 'qq3', 'rdbtnNewRadioButton_24', '30', 'F'),
	(130, 'qq3', 'rdbtnNewRadioButton_25', '25', 'T'),
	(131, 'qq3', 'rdbtnNewRadioButton_26', '24', 'F'),
	(132, 'qq3', 'rdbtnNewRadioButton_27', '20', 'F'),
	(133, 'qq3', 'rdbtnNewRadioButton_28', '13, 19', 'F'),
	(134, 'qq3', 'rdbtnNewRadioButton_29', '19, 20', 'F'),
	(135, 'qq3', 'rdbtnNewRadioButton_30', '14, 21', 'T'),
	(136, 'qq3', 'rdbtnNewRadioButton_31', '15, 23', 'F'),
	(137, 'qq3', 'rdbtnNewRadioButton_32', '\\u215F24', 'F'),
	(138, 'qq3', 'rdbtnNewRadioButton_33', '\\u215F12', 'T'),
	(139, 'qq3', 'rdbtnNewRadioButton_34', '\\u215F6', 'F'),
	(140, 'qq3', 'rdbtnNewRadioButton_35', '\\u215F14', 'F'),
	(141, 'qq3', 'rdbtnNewRadioButton_36', '4%', 'F'),
	(142, 'qq3', 'rdbtnNewRadioButton_37', '6%', 'F'),
	(143, 'qq3', 'rdbtnNewRadioButton_38', '10%', 'F'),
	(144, 'qq3', 'rdbtnNewRadioButton_39', '12%', 'T'),
	(145, 'qq4', 'rdbtnNewRadioButton', '5%', 'F'),
	(146, 'qq4', 'rdbtnNewRadioButton_1', '7.5%', 'F'),
	(147, 'qq4', 'rdbtnNewRadioButton_2', '12.50%', 'T'),
	(148, 'qq4', 'rdbtnNewRadioButton_3', '10%', 'F'),
	(149, 'qq4', 'rdbtnNewRadioButton_4', '1: 8.000.000', 'F'),
	(150, 'qq4', 'rdbtnNewRadioButton_5', '1: 800.000', 'T'),
	(151, 'qq4', 'rdbtnNewRadioButton_6', '1: 8.000', 'F'),
	(152, 'qq4', 'rdbtnNewRadioButton_7', '1: 800', 'F'),
	(153, 'qq4', 'rdbtnNewRadioButton_8', '12,25,32', 'T'),
	(154, 'qq4', 'rdbtnNewRadioButton_9', '12,25,30', 'F'),
	(155, 'qq4', 'rdbtnNewRadioButton_10', '17,26,33', 'F'),
	(156, 'qq4', 'rdbtnNewRadioButton_11', '18,27,34', 'F'),
	(157, 'qq4', 'rdbtnNewRadioButton_12', 'F,G,H,S', 'F'),
	(158, 'qq4', 'rdbtnNewRadioButton_13', 'E,F,G,S', 'T'),
	(159, 'qq4', 'rdbtnNewRadioButton_14', 'F,G,H,T', 'F'),
	(160, 'qq4', 'rdbtnNewRadioButton_15', 'E,F,G,T', 'F'),
	(161, 'qq4', 'rdbtnNewRadioButton_16', '-2', 'F'),
	(162, 'qq4', 'rdbtnNewRadioButton_17', '0', 'T'),
	(163, 'qq4', 'rdbtnNewRadioButton_18', '4', 'F'),
	(164, 'qq4', 'rdbtnNewRadioButton_19', '8', 'F'),
	(165, 'qq4', 'rdbtnNewRadioButton_20', '31/15', 'T'),
	(166, 'qq4', 'rdbtnNewRadioButton_21', '5/31', 'F'),
	(167, 'qq4', 'rdbtnNewRadioButton_22', '2 2/3', 'F'),
	(168, 'qq4', 'rdbtnNewRadioButton_23', '2 15/9', 'F'),
	(169, 'qq4', 'rdbtnNewRadioButton_24', '1/2', 'T'),
	(170, 'qq4', 'rdbtnNewRadioButton_25', '1/20', 'F'),
	(171, 'qq4', 'rdbtnNewRadioButton_26', '1/200', 'F'),
	(172, 'qq4', 'rdbtnNewRadioButton_27', '0,05', 'F'),
	(173, 'qq4', 'rdbtnNewRadioButton_28', 'Rp.1.210.000,00', 'F'),
	(174, 'qq4', 'rdbtnNewRadioButton_29', 'Rp.10.500.000,00', 'F'),
	(175, 'qq4', 'rdbtnNewRadioButton_30', 'Rp.11.000.000,00', 'T'),
	(176, 'qq4', 'rdbtnNewRadioButton_31', 'Rp.13.310.000,00', 'F'),
	(177, 'qq4', 'rdbtnNewRadioButton_32', '10%', 'F'),
	(178, 'qq4', 'rdbtnNewRadioButton_33', '25%', 'T'),
	(179, 'qq4', 'rdbtnNewRadioButton_34', '30%', 'F'),
	(180, 'qq4', 'rdbtnNewRadioButton_35', '35%', 'F'),
	(181, 'qq4', 'rdbtnNewRadioButton_36', '15 dus', 'T'),
	(182, 'qq4', 'rdbtnNewRadioButton_37', '12 dus', 'F'),
	(183, 'qq4', 'rdbtnNewRadioButton_38', '13 dus', 'F'),
	(184, 'qq4', 'rdbtnNewRadioButton_39', '14 dus', 'F'),
	(185, 'qq5', 'rdbtnNewRadioButton', '20, 30', 'F'),
	(186, 'qq5', 'rdbtnNewRadioButton_1', '20, 24', 'F'),
	(187, 'qq5', 'rdbtnNewRadioButton_2', '21, 25', 'T'),
	(188, 'qq5', 'rdbtnNewRadioButton_3', '21, 26', 'F'),
	(189, 'qq5', 'rdbtnNewRadioButton_4', 'Ujang', 'F'),
	(190, 'qq5', 'rdbtnNewRadioButton_5', 'Nana', 'T'),
	(191, 'qq5', 'rdbtnNewRadioButton_6', 'Nana dan Nini', 'F'),
	(192, 'qq5', 'rdbtnNewRadioButton_7', 'Ujang dan Nini', 'F'),
	(193, 'qq5', 'rdbtnNewRadioButton_8', 'U', 'T'),
	(194, 'qq5', 'rdbtnNewRadioButton_9', 'V', 'F'),
	(195, 'qq5', 'rdbtnNewRadioButton_10', 'T', 'F'),
	(196, 'qq5', 'rdbtnNewRadioButton_11', 'R', 'F'),
	(197, 'qq5', 'rdbtnNewRadioButton_12', '29,34', 'F'),
	(198, 'qq5', 'rdbtnNewRadioButton_13', '30,33', 'T'),
	(199, 'qq5', 'rdbtnNewRadioButton_14', '31,35', 'F'),
	(200, 'qq5', 'rdbtnNewRadioButton_15', '30,34', 'F'),
	(201, 'qq5', 'rdbtnNewRadioButton_16', '11-15-13', 'F'),
	(202, 'qq5', 'rdbtnNewRadioButton_17', '12-16-14', 'F'),
	(203, 'qq5', 'rdbtnNewRadioButton_18', '14-13-14', 'T'),
	(204, 'qq5', 'rdbtnNewRadioButton_19', '14-15-13', 'F'),
	(205, 'qq5', 'rdbtnNewRadioButton_20', '5', 'F'),
	(206, 'qq5', 'rdbtnNewRadioButton_21', '6', 'F'),
	(207, 'qq5', 'rdbtnNewRadioButton_22', '8', 'T'),
	(208, 'qq5', 'rdbtnNewRadioButton_23', '9', 'F'),
	(209, 'qq5', 'rdbtnNewRadioButton_24', '8', 'F'),
	(210, 'qq5', 'rdbtnNewRadioButton_25', '9', 'F'),
	(211, 'qq5', 'rdbtnNewRadioButton_26', '10', 'T'),
	(212, 'qq5', 'rdbtnNewRadioButton_27', '11', 'F'),
	(213, 'qq6', 'rdbtnNewRadioButton', 'ARPAnet', 'T'),
	(214, 'qq6', 'rdbtnNewRadioButton_1', 'NSFnet', 'F'),
	(215, 'qq6', 'rdbtnNewRadioButton_2', 'INTRAnet', 'F'),
	(216, 'qq6', 'rdbtnNewRadioButton_3', 'USnet', 'F'),
	(217, 'qq6', 'rdbtnNewRadioButton_4', 'Jenis akses internet', 'F'),
	(218, 'qq6', 'rdbtnNewRadioButton_5', 'Perangkat keras', 'F'),
	(219, 'qq6', 'rdbtnNewRadioButton_6', 'Fasilitas internet', 'F'),
	(220, 'qq6', 'rdbtnNewRadioButton_7', 'Browser', 'T'),
	(221, 'qq6', 'rdbtnNewRadioButton_8', 'Chatting', 'F'),
	(222, 'qq6', 'rdbtnNewRadioButton_9', 'Browsing', 'F'),
	(223, 'qq6', 'rdbtnNewRadioButton_10', 'Jaringan', 'F'),
	(224, 'qq6', 'rdbtnNewRadioButton_11', 'Internet', 'T'),
	(225, 'qq6', 'rdbtnNewRadioButton_12', 'Asymmetric Digital Subscriber Line', 'T'),
	(226, 'qq6', 'rdbtnNewRadioButton_13', 'Analog Discrete Service Line', 'F'),
	(227, 'qq6', 'rdbtnNewRadioButton_14', 'Analog Digital Subscriber Line', 'F'),
	(228, 'qq6', 'rdbtnNewRadioButton_15', 'Advanced Digital Subscriber Line', 'F'),
	(229, 'qq6', 'rdbtnNewRadioButton_16', 'Mencari informasi', 'T'),
	(230, 'qq6', 'rdbtnNewRadioButton_17', 'Membuat email', 'F'),
	(231, 'qq6', 'rdbtnNewRadioButton_18', 'Untuk chatting', 'F'),
	(232, 'qq6', 'rdbtnNewRadioButton_19', 'Untuk mailing list', 'F'),
	(233, 'qq6', 'rdbtnNewRadioButton_20', 'Local Arena Net', 'F'),
	(234, 'qq6', 'rdbtnNewRadioButton_21', 'Lokasi Area Network', 'F'),
	(235, 'qq6', 'rdbtnNewRadioButton_22', 'Local Area Network', 'T'),
	(236, 'qq6', 'rdbtnNewRadioButton_23', 'Local Arena Network', 'F'),
	(237, 'qq6', 'rdbtnNewRadioButton_24', 'Server Name', 'F'),
	(238, 'qq6', 'rdbtnNewRadioButton_25', 'TCP/IP', 'F'),
	(239, 'qq6', 'rdbtnNewRadioButton_26', 'ISDN', 'F'),
	(240, 'qq6', 'rdbtnNewRadioButton_27', 'DNS', 'T'),
	(241, 'qq6', 'rdbtnNewRadioButton_28', 'Hubungan Internet', 'F'),
	(242, 'qq6', 'rdbtnNewRadioButton_29', 'Hotspot Wi-Fi', 'F'),
	(243, 'qq6', 'rdbtnNewRadioButton_30', 'Jaringan Lokal', 'T'),
	(244, 'qq6', 'rdbtnNewRadioButton_31', 'Server Komputer', 'F'),
	(245, 'qq6', 'rdbtnNewRadioButton_32', 'ARPANET', 'T'),
	(246, 'qq6', 'rdbtnNewRadioButton_33', 'www', 'F'),
	(247, 'qq6', 'rdbtnNewRadioButton_34', 'http', 'F'),
	(248, 'qq6', 'rdbtnNewRadioButton_35', 'Website', 'F'),
	(249, 'qq6', 'rdbtnNewRadioButton_36', '108 Kbps', 'F'),
	(250, 'qq6', 'rdbtnNewRadioButton_37', '16 Kbps', 'F'),
	(251, 'qq6', 'rdbtnNewRadioButton_38', '1 Mbps', 'F'),
	(252, 'qq6', 'rdbtnNewRadioButton_39', '56 Kbps', 'T'),
	(253, 'qq7', 'rdbtnNewRadioButton', 'Ethertalk Card', 'F'),
	(254, 'qq7', 'rdbtnNewRadioButton_1', 'Media Access Control', 'F'),
	(255, 'qq7', 'rdbtnNewRadioButton_2', 'Network Interface Card', 'F'),
	(256, 'qq7', 'rdbtnNewRadioButton_3', 'Localtalk Connector', 'T'),
	(257, 'qq7', 'rdbtnNewRadioButton_4', 'www.plasa.com', 'F'),
	(258, 'qq7', 'rdbtnNewRadioButton_5', 'www.detik.com', 'F'),
	(259, 'qq7', 'rdbtnNewRadioButton_6', 'www.google.com', 'T'),
	(260, 'qq7', 'rdbtnNewRadioButton_7', 'www.opera.com', 'F'),
	(261, 'qq7', 'rdbtnNewRadioButton_8', 'wide web world', 'F'),
	(262, 'qq7', 'rdbtnNewRadioButton_9', 'web wide world', 'F'),
	(263, 'qq7', 'rdbtnNewRadioButton_10', 'world web wide', 'F'),
	(264, 'qq7', 'rdbtnNewRadioButton_11', 'world wide web', 'T'),
	(265, 'qq7', 'rdbtnNewRadioButton_12', 'ISDN', 'F'),
	(266, 'qq7', 'rdbtnNewRadioButton_13', 'ISP', 'T'),
	(267, 'qq7', 'rdbtnNewRadioButton_14', 'WAP', 'F'),
	(268, 'qq7', 'rdbtnNewRadioButton_15', 'NSP', 'F'),
	(269, 'qq7', 'rdbtnNewRadioButton_16', 'Mouse', 'F'),
	(270, 'qq7', 'rdbtnNewRadioButton_17', 'Speaker', 'F'),
	(271, 'qq7', 'rdbtnNewRadioButton_18', 'Monitor', 'T'),
	(272, 'qq7', 'rdbtnNewRadioButton_19', 'Modem', 'F'),
	(273, 'qq7', 'rdbtnNewRadioButton_20', 'Monitor', 'F'),
	(274, 'qq7', 'rdbtnNewRadioButton_21', 'Keyboard', 'F'),
	(275, 'qq7', 'rdbtnNewRadioButton_22', 'CPU', 'T'),
	(276, 'qq7', 'rdbtnNewRadioButton_23', 'Mouse', 'F'),
	(277, 'qq7', 'rdbtnNewRadioButton_24', 'membuat huruf capital', 'F'),
	(278, 'qq7', 'rdbtnNewRadioButton_25', 'memberi efek miring', 'F'),
	(279, 'qq7', 'rdbtnNewRadioButton_26', 'memberikan efek tebal', 'T'),
	(280, 'qq7', 'rdbtnNewRadioButton_27', 'menutup file dokumen', 'F'),
	(281, 'qq7', 'rdbtnNewRadioButton_28', 'New', 'F'),
	(282, 'qq7', 'rdbtnNewRadioButton_29', 'Open', 'F'),
	(283, 'qq7', 'rdbtnNewRadioButton_30', 'Cut', 'T'),
	(284, 'qq7', 'rdbtnNewRadioButton_31', 'Save As', 'F'),
	(285, 'qq7', 'rdbtnNewRadioButton_32', 'Align Left', 'F'),
	(286, 'qq7', 'rdbtnNewRadioButton_33', 'Align Right', 'T'),
	(287, 'qq7', 'rdbtnNewRadioButton_34', 'Center', 'F'),
	(288, 'qq7', 'rdbtnNewRadioButton_35', 'Justify', 'F'),
	(289, 'qq7', 'rdbtnNewRadioButton_36', 'Line telepon', 'F'),
	(290, 'qq7', 'rdbtnNewRadioButton_37', 'Satelit', 'F'),
	(291, 'qq7', 'rdbtnNewRadioButton_38', 'TV Kabel', 'F'),
	(292, 'qq7', 'rdbtnNewRadioButton_39', 'TV tuner', 'T'),
	(293, 'qq8', 'rdbtnNewRadioButton', 'Save', 'F'),
	(294, 'qq8', 'rdbtnNewRadioButton_1', 'e-mail picture', 'F'),
	(295, 'qq8', 'rdbtnNewRadioButton_2', 'download picture', 'F'),
	(296, 'qq8', 'rdbtnNewRadioButton_3', 'save picture', 'T'),
	(297, 'qq8', 'rdbtnNewRadioButton_4', 'mencari jalur yang terbaik dalam mentransmisikan data', 'F'),
	(298, 'qq8', 'rdbtnNewRadioButton_5', 'mengatur pesan antara dua protokol', 'F'),
	(299, 'qq8', 'rdbtnNewRadioButton_6', 'mengatur pesan yang melewati kabel', 'F'),
	(300, 'qq8', 'rdbtnNewRadioButton_7', 'menghubungkan komputer dengan Hub', 'T'),
	(301, 'qq8', 'rdbtnNewRadioButton_8', 'Print', 'F'),
	(302, 'qq8', 'rdbtnNewRadioButton_9', 'Print Area', 'F'),
	(303, 'qq8', 'rdbtnNewRadioButton_10', 'Print Preview', 'T'),
	(304, 'qq8', 'rdbtnNewRadioButton_11', 'Page Setup', 'F'),
	(305, 'qq8', 'rdbtnNewRadioButton_12', 'Formula Bar', 'F'),
	(306, 'qq8', 'rdbtnNewRadioButton_13', 'Menu Bar', 'T'),
	(307, 'qq8', 'rdbtnNewRadioButton_14', 'Title Bar', 'F'),
	(308, 'qq8', 'rdbtnNewRadioButton_15', 'Tab Lembar Kerja', 'F'),
	(309, 'qq8', 'rdbtnNewRadioButton_16', 'Undo', 'T'),
	(310, 'qq8', 'rdbtnNewRadioButton_17', 'Repeat', 'F'),
	(311, 'qq8', 'rdbtnNewRadioButton_18', 'Cut', 'F'),
	(312, 'qq8', 'rdbtnNewRadioButton_19', 'Copy', 'F'),
	(313, 'qq8', 'rdbtnNewRadioButton_20', 'Internet', 'T'),
	(314, 'qq8', 'rdbtnNewRadioButton_21', 'Intranet', 'F'),
	(315, 'qq8', 'rdbtnNewRadioButton_22', 'WWW', 'F'),
	(316, 'qq8', 'rdbtnNewRadioButton_23', 'FTP', 'F'),
	(317, 'qq8', 'rdbtnNewRadioButton_24', 'Protokol jaringan', 'F'),
	(318, 'qq8', 'rdbtnNewRadioButton_25', 'Address bar', 'F'),
	(319, 'qq8', 'rdbtnNewRadioButton_26', 'TCP/IP', 'F'),
	(320, 'qq8', 'rdbtnNewRadioButton_27', 'IP address', 'T');
/*!40000 ALTER TABLE `answer_quiz` ENABLE KEYS */;


-- Dumping structure for table itech.buku_tamu
CREATE TABLE IF NOT EXISTS `buku_tamu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_bt` varchar(5) NOT NULL,
  `nama_bt` varchar(50) NOT NULL,
  `alamat_bt` varchar(250) NOT NULL,
  `telp_bt` varchar(20) NOT NULL,
  `sekolah_bt` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.buku_tamu: 1 rows
/*!40000 ALTER TABLE `buku_tamu` DISABLE KEYS */;
INSERT INTO `buku_tamu` (`id`, `no_bt`, `nama_bt`, `alamat_bt`, `telp_bt`, `sekolah_bt`) VALUES
	(1, '1', 'Frans', 'Cibubur', '0888111222333', 'SMU Suka Maju');
/*!40000 ALTER TABLE `buku_tamu` ENABLE KEYS */;


-- Dumping structure for table itech.ccit_ftui
CREATE TABLE IF NOT EXISTS `ccit_ftui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coloumn_name` varchar(250) NOT NULL,
  `total` varchar(50) NOT NULL,
  `sem1` varchar(50) NOT NULL,
  `sem2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table itech.ccit_ftui: 0 rows
/*!40000 ALTER TABLE `ccit_ftui` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccit_ftui` ENABLE KEYS */;


-- Dumping structure for table itech.final_score
CREATE TABLE IF NOT EXISTS `final_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPendaftar` varchar(5) NOT NULL,
  `score_value` varchar(14) NOT NULL,
  `price_value` varchar(10) NOT NULL,
  KEY `Index 1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.final_score: ~1 rows (approximately)
/*!40000 ALTER TABLE `final_score` DISABLE KEYS */;
INSERT INTO `final_score` (`id`, `noPendaftar`, `score_value`, `price_value`) VALUES
	(1, '1', '28.75', '12.000.000');
/*!40000 ALTER TABLE `final_score` ENABLE KEYS */;


-- Dumping structure for table itech.grade
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coloumn_name` varchar(250) NOT NULL,
  `total` varchar(50) NOT NULL,
  `sem1` varchar(50) NOT NULL,
  `sem2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table itech.grade: 0 rows
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;


-- Dumping structure for table itech.login
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.login: 2 rows
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`, `username`, `password`) VALUES
	(1, 'aska', 'keren'),
	(2, 'admin', 'admin123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table itech.pendaftarandatadiri
CREATE TABLE IF NOT EXISTS `pendaftarandatadiri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPendaftar` varchar(5) NOT NULL,
  `programStudi` varchar(100) NOT NULL,
  `foto` longblob NOT NULL,
  `namaLengkap` varchar(100) NOT NULL,
  `namaPanggilan` varchar(100) NOT NULL,
  `tempatLahir` varchar(25) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `agama` varchar(25) NOT NULL,
  `jenisKelamin` varchar(15) NOT NULL,
  `alamatTinggal` varchar(100) NOT NULL,
  `nomorTelp` varchar(15) NOT NULL,
  `nomorHp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `statusNikah` varchar(15) NOT NULL,
  `statusKerja` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.pendaftarandatadiri: 1 rows
/*!40000 ALTER TABLE `pendaftarandatadiri` DISABLE KEYS */;
INSERT INTO `pendaftarandatadiri` (`id`, `noPendaftar`, `programStudi`, `foto`, `namaLengkap`, `namaPanggilan`, `tempatLahir`, `tanggalLahir`, `agama`, `jenisKelamin`, `alamatTinggal`, `nomorTelp`, `nomorHp`, `email`, `statusNikah`, `statusKerja`) VALUES
/*!40000 ALTER TABLE `pendaftarandatadiri` ENABLE KEYS */;


-- Dumping structure for table itech.pendaftarandatalain
CREATE TABLE IF NOT EXISTS `pendaftarandatalain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPendaftar` varchar(5) NOT NULL,
  `namaBapak` varchar(100) NOT NULL,
  `pekerjaanBapak` varchar(50) NOT NULL,
  `namaIbu` varchar(100) NOT NULL,
  `pekerjaanIbu` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `sumberBiaya` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.pendaftarandatalain: 1 rows
/*!40000 ALTER TABLE `pendaftarandatalain` DISABLE KEYS */;
INSERT INTO `pendaftarandatalain` (`id`, `noPendaftar`, `namaBapak`, `pekerjaanBapak`, `namaIbu`, `pekerjaanIbu`, `penghasilan`, `sumberBiaya`) VALUES
	(1, '1', 'asd', '', 'asd', '', 'Rp. 1.000.000 - Rp. 3.000.000', 'Orang Tua');
/*!40000 ALTER TABLE `pendaftarandatalain` ENABLE KEYS */;


-- Dumping structure for table itech.pendaftarandatasekolah
CREATE TABLE IF NOT EXISTS `pendaftarandatasekolah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPendaftar` varchar(5) NOT NULL,
  `namaSMP` varchar(50) NOT NULL,
  `jurusanSMP` varchar(50) DEFAULT NULL,
  `alamatSMP` varchar(50) NOT NULL,
  `lulusSMP` varchar(4) NOT NULL,
  `namaSMU` varchar(50) NOT NULL,
  `jurusanSMU` varchar(50) NOT NULL,
  `alamatSMU` varchar(50) NOT NULL,
  `lulusSMU` varchar(4) NOT NULL,
  `tingkatPendidikan` varchar(5) DEFAULT NULL,
  `namaInstitusi` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `lulus` varchar(4) DEFAULT NULL,
  `ipk` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.pendaftarandatasekolah: 1 rows
/*!40000 ALTER TABLE `pendaftarandatasekolah` DISABLE KEYS */;
INSERT INTO `pendaftarandatasekolah` (`id`, `noPendaftar`, `namaSMP`, `jurusanSMP`, `alamatSMP`, `lulusSMP`, `namaSMU`, `jurusanSMU`, `alamatSMU`, `lulusSMU`, `tingkatPendidikan`, `namaInstitusi`, `jurusan`, `alamat`, `lulus`, `ipk`) VALUES
	(1, '1', 'asd', '', 'asd', 'asd', 'asda', 'asd', 'asd', 'aad', '', '', '', '', '', '');
/*!40000 ALTER TABLE `pendaftarandatasekolah` ENABLE KEYS */;


-- Dumping structure for table itech.pendaftarandatasumber
CREATE TABLE IF NOT EXISTS `pendaftarandatasumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPendaftar` varchar(5) NOT NULL,
  `surat` varchar(100) DEFAULT NULL,
  `selebaran` varchar(100) DEFAULT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `perwakilan` varchar(100) DEFAULT NULL,
  `presentasi` varchar(100) DEFAULT NULL,
  `iklan` varchar(100) DEFAULT NULL,
  `rekomendasi` varchar(100) DEFAULT NULL,
  `pameran` varchar(100) DEFAULT NULL,
  `lainnya` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table itech.pendaftarandatasumber: 1 rows
/*!40000 ALTER TABLE `pendaftarandatasumber` DISABLE KEYS */;
INSERT INTO `pendaftarandatasumber` (`id`, `noPendaftar`, `surat`, `selebaran`, `poster`, `perwakilan`, `presentasi`, `iklan`, `rekomendasi`, `pameran`, `lainnya`) VALUES
	(1, '1', 'Iklan STTI NIIT I-Tech yang saya lihat di koran/majalah', 'Rekomendasi dari teman/keluarga/seseorang yang berkecimpung dibidang komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `pendaftarandatasumber` ENABLE KEYS */;


-- Dumping structure for table itech.ranking
CREATE TABLE IF NOT EXISTS `ranking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coloumn_name` varchar(250) NOT NULL,
  `total` varchar(50) NOT NULL,
  `sem1` varchar(50) NOT NULL,
  `sem2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table itech.ranking: 0 rows
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;


-- Dumping structure for table itech.telkom_pdc
CREATE TABLE IF NOT EXISTS `telkom_pdc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coloumn_name` varchar(250) NOT NULL,
  `total` varchar(50) NOT NULL,
  `sem1` varchar(50) NOT NULL,
  `sem2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table itech.telkom_pdc: 0 rows
/*!40000 ALTER TABLE `telkom_pdc` DISABLE KEYS */;
/*!40000 ALTER TABLE `telkom_pdc` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;