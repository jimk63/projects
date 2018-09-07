-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 30 Αυγ 2018 στις 09:40:37
-- Έκδοση διακομιστή: 5.7.21
-- Έκδοση PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `dba`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `buildings`
--

DROP TABLE IF EXISTS `buildings`;
CREATE TABLE IF NOT EXISTS `buildings` (
  `bi_id` int(11) NOT NULL AUTO_INCREMENT,
  `bi_map` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bi_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `buildings`
--

INSERT INTO `buildings` (`bi_id`, `bi_map`, `bi_address`) VALUES
(1, '', ''),
(2, 'https://goo.gl/maps/w7hkrwQTfTo', 'ΡΟΔΟΥ 181, ΣΕΠΟΛΙΑ, 104 43'),
(3, 'https://goo.gl/maps/zUAyQWiauyQ2', 'ΣΑΜΟΥ 95, ΑΘΗΝΑ, 104 40'),
(4, 'https://goo.gl/maps/9RS44jCUZ352', 'ΔΙΔΥΜΟΥ 21, ΑΘΗΝΑ, 104 40'),
(5, 'https://goo.gl/maps/WgbtrrQSJvq', 'ΔΟΜΟΚΟΥ 2, ΣΤΑΘΜΟΣ ΛΑΡΙΣΗΣ, 104 40'),
(19, 'https://goo.gl/maps/mLpMKWaXfuC2', 'ΘΕΜΙΣΤΟΚΛΕΟΥΣ 71, ΕΞΑΡΧΕΙΑ, 106 83'),
(20, 'https://goo.gl/maps/38sTwCz1hUS2', 'ΛΥΣΙΟΥ 3, ΠΛΑΚΑ, 105 56'),
(21, 'https://goo.gl/maps/23CCxMU7V9q', 'ΜΑΥΡΟΜΙΧΑΛΗ 63, ΝΕΑΠΟΛΗ, 106 80'),
(22, 'https://goo.gl/maps/sv2Q858y1Dy', 'ΜΙΧΑΗΛ ΒΟΔΑ 30, ΠΛ.ΒΑΘΗ, 104 39'),
(23, 'https://goo.gl/maps/R9bh2BaqJ772', 'ΝΟΤΑΡΑ 34 & ΔΕΛΗΓΙΑΝΝΗ, ΕΞΑΡΧΕΙΑ, 106 83'),
(24, 'https://goo.gl/maps/76P8fTb8iG42', 'ΠΕΙΡΑΙΩΣ 51, ΠΛ.ΚΟΥΜΟΥΝΔΟΥΡΟΥ, 105 53'),
(25, 'https://goo.gl/maps/df3ivWjL3sj', 'ΤΣΑΜΗ ΚΑΡΑΤΑΣΟΥ 64, ΚΟΥΚΑΚΙ, 117 41'),
(26, 'https://goo.gl/maps/fjTFoMW83yp', 'ΦΑΒΙΕΡΟΥ 17Α, ΠΛ. ΒΑΘΗ, 104 38'),
(27, 'https://goo.gl/maps/qx9qpVQssi12', 'ΑΝΑΞΑΡΧΟΥ 6, ΑΓ. ΑΡΤΕΜΙΟΣ ΓΟΥΒΑΣ, 116 31'),
(28, 'https://goo.gl/maps/2seC3UvaEJs', 'ΒΑΘΥΚΛΕΟΥΣ 17, ΑΓΙΟΣ ΑΡΤΕΜΙΟΣ, 116 31'),
(29, 'https://goo.gl/maps/aytzknCohX62', 'ΒΙΝΚΕΛΜΑΝ 4, ΑΓ. ΑΡΤΕΜΙΟΣ ΓΟΥΒΑΣ, 116 32'),
(30, 'https://goo.gl/maps/uHiZzUZwugN2', 'ΛΑΓΟΥΜΙΤΖΗ & ΘΥΜΟΧΑΡΟΥΣ, ΝΕΟΣ ΚΟΣΜΟΣ, 117 45'),
(31, 'https://goo.gl/maps/ANagYy3JSPU2', 'ΕΡΓΟΤΙΜΟΥ 22 & ΙΟΦΩΝΤΟΣ 3, ΠΑΓΚΡΑΤΙ, 116 34'),
(32, 'https://goo.gl/maps/KzGFzNqYgEn', 'ΠΡΩΤΑΓΟΡΟΥ 1 & ΑΡΑΤΟΥ, ΠΑΓΚΡΑΤΙ-ΣΤΑΔΙΟ, 116 35'),
(33, 'https://goo.gl/maps/RPsDTXzvDE72', 'ΠΥΘΕΟΥ & ΑΓΚΥΛΗΣ 30, ΚΥΝΟΣΑΡΓΟΥΣ, 117 43'),
(34, 'https://goo.gl/maps/kzJpPhZRStC2', 'ΚΡΙΝΑΓΟΡΟΥ 9, ΝΕΟΣ  ΚΟΣΜΟΣ, 117 45'),
(35, 'https://goo.gl/maps/fW7yvAGoREP2', 'ΚΡΙΝΑΓΟΡΟΥ 11, ΝΕΟΣ ΚΟΣΜΟΣ, 117 45'),
(36, 'https://goo.gl/maps/YWn8Ywar8hm', 'ΚΡΙΝΑΓΟΡΟΥ 13, ΝΕΟΣ  ΚΟΣΜΟΣ, 117 45'),
(37, 'https://goo.gl/maps/HL2qBbWjVxK2', 'ΝΙΚΟΣΘΕΝΟΥΣ 40, ΠΑΓΚΡΑΤΙ, 116 35'),
(38, 'https://goo.gl/maps/uRPi7bAhKXv', 'ΑΘΗΝΟΔΩΡΟΥ 61, Κ. ΠΕΤΡΑΛΩΝΑ, 118 53'),
(39, 'https://goo.gl/maps/Xm22me5owsk', 'ΑΛΟΠΗΣ 40, Κ. ΠΕΤΡΑΛΩΝΑ, 118 53'),
(40, 'https://goo.gl/maps/HM7AoEbW6L32', 'ΚΥΚΛΩΠΩΝ 9, Α. ΠΕΤΡΑΛΩΝΑ, 118 52'),
(41, 'https://goo.gl/maps/pKp8t9qqADz', 'ΠΕΡΣΕΩΣ 2 & ΣΥΜΜΑΧΙΔΩΝ, Κ. ΠΕΤΡΑΛΩΝΑ, 118 54'),
(42, 'https://goo.gl/maps/CQiW1CNtGbs', 'ΣΠΥΡΟΥ ΠΑΤΣΗ 56, ΒΟΤΑΝΙΚΟΣ, 118 55'),
(43, 'https://goo.gl/maps/KJZSSgU2HLA2', 'ΤΡΩΩΝ 45, Α. ΠΕΤΡΑΛΩΝΑ, 118 51'),
(44, 'https://goo.gl/maps/MzKGPtKy9Y22', 'ΘΕΡΜΟΠΥΛΩΝ ΚΑΙ ΛΕΩΝΙΔΟΥ, ΑΘΗΝΑ, 104 35'),
(45, 'https://goo.gl/maps/9boCPb23bwM2', 'ΣΙΩΚΟΥ 13 & ΑΥΛΩΝΟΣ, ΣΕΠΟΛΙΑ, 104 43'),
(46, 'https://goo.gl/maps/RyQqUDHWT3M2', 'ΓΕΡΑΚΗ 28, ΚΑΤΩ ΠΑΤΗΣΙΑ, 104 45'),
(47, 'https://goo.gl/maps/6Yvx28TRSoK2', 'ΕΠΙΔΑΥΡΟΥ 21, ΚΟΛΩΝΟΣ, 104 44'),
(48, 'https://goo.gl/maps/vk55bScJ7zs', 'ΕΠΙΔΑΥΡΟΥ 69, ΚΟΛΩΝΟΣ, 104 44'),
(49, 'https://goo.gl/maps/4MN4HMvtMg22', 'ΕΥΑΛΚΙΔΟΥ 55, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(50, 'https://goo.gl/maps/gxLw4aboyX62', 'ΕΥΑΛΚΙΔΟΥ 53, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(51, 'https://goo.gl/maps/GRtni1dGfiS2', 'ΙΩΑΝΝΙΝΩΝ 81, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(52, 'https://goo.gl/maps/vU1z6xV2MVC2', 'ΛΕΑΝΔΡΟΥ & ΙΦΙΓΕΝΕΙΑΣ 54, ΚΟΛΟΚΥΝΘΟΥ, 104 43'),
(53, 'https://goo.gl/maps/6H6b4ngjNst', 'ΜΑΝΟΥΣΟΓΙΑΝΝΗ 3, ΘΥΜΑΡΑΚΙΑ, 104 45'),
(54, 'https://goo.gl/maps/Ah8SWxrnZWw', 'ΜΕΤΡΩΝ 22 & ΤΜΩΛΟΥ, ΣΕΠΟΛΙΑ, 104 43'),
(55, 'https://goo.gl/maps/CTa5CxgoynN2', 'ΜΙΧΑΗΛ ΚΟΡΑΚΑ 11, ΑΧΑΡΝΩΝ-ΘΥΜΑΡΑΚΙΑ, 104 45'),
(56, 'https://goo.gl/maps/zmdWdMVwKgv', 'ΜΟΝΑΣΤΗΡΙΟΥ & ΠΑΛΑΜΗΔΙΟΥ, ΑΚ. ΠΛΑΤΩΝΟΣ, 104 41'),
(57, 'https://goo.gl/maps/UoULKU3fVzn', 'ΠΥΡΛΑ 21, ΚΑΤΩ ΠΑΤΗΣΙΑ, 111 45'),
(58, 'https://goo.gl/maps/a6RePaufGrP2', 'ΣΜΟΛΙΚΑ 23-25, ΣΕΠΟΛΙΑ, 104 43'),
(59, 'https://goo.gl/maps/ZS89M25o9D82', 'ΤΙΜΑΙΟΥ 2 & ΠΑΛΑΜΗΔΙΟΥ, ΑΚ. ΠΛΑΤΩΝΟΣ, 104 41'),
(60, 'https://goo.gl/maps/NLVJ22GEHzN2', 'ΜΑΛΑΚΑΣΗ 7, ΑΓ.ΕΛΕΥΘΕΡΙΟΣ, 111 43'),
(61, 'https://goo.gl/maps/4TKTGsZZcAG2', 'ΑΓΙΑΣ ΛΑΥΡΑΣ & ΡΟΣΤΑΝ 32, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(62, 'https://goo.gl/maps/a2fnyFgv9bx', 'ΑΜΑΣΙΟΥ 19, ΡΙΖΟΥΠΟΛΗ-ΠΡΟΜΠΟΝΑΣ, 111 43'),
(63, 'https://goo.gl/maps/k2xUNomPiYB2', 'ΑΜΑΣΙΟΥ 21, ΡΙΖΟΥΠΟΛΗ-ΠΡΟΜΠΟΝΑΣ, 111 43'),
(64, 'https://goo.gl/maps/DYBdYxYNuZA2', 'ΑΞΙΟΥΠΟΛΕΩΣ 33, ΡΙΖΟΥΠΟΛΗ, 111 42'),
(65, 'https://goo.gl/maps/9YSW211mAr42', 'ΔΗΜΗΤΡΙΟΥ ΡΑΛΛΗ 8, ΚΑΤΩ ΠΑΤΗΣΙΑ, 111 44'),
(66, 'https://goo.gl/maps/KCYJXayQovt', 'ΕΡΜΙΠΠΟΥ 11, ΠΡΟΜΠΟΝΑΣ, 111 43'),
(67, 'https://goo.gl/maps/xdW9JYRVWFB2', 'ΗΡΑΚΛΕΙΟΥ 58 & ΑΓ.ΛΑΥΡΑΣ, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(68, 'https://goo.gl/maps/aSw2JJgwiLR2', 'ΝΕΪΓΥ 62, ΑΝΩ ΠΑΤΗΣΙΑ, 111 43'),
(69, 'https://goo.gl/maps/KJLJxnbw1fm', 'ΡΟΣΤΑΝ 28 & ΠΟΛΥΛΑ 1, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(70, 'https://goo.gl/maps/gm3yCykkZYU2', 'ΧΑΛΕΠΑ 7, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(71, 'https://goo.gl/maps/kC6QYU9yY9z', 'ΔΟΜΟΚΟΥ 2 & ΠΑΙΩΝΙΟΥ, ΣΤΑΘΜΟΣ ΛΑΡΙΣΗΣ, 104 40'),
(72, 'https://goo.gl/maps/F2JTcbjHniq', 'ΘΑΥΜΑΝΤΟΣ 10, ΚΥΨΕΛΗ, 113 64'),
(73, 'https://goo.gl/maps/oHbNbiQRhmN2', 'ΚΡΙΣΣΗΣ 54, ΑΝΩ ΚΥΨΕΛΗ, 113 64'),
(74, 'https://goo.gl/maps/eMFCH7Xy83t', 'ΚΡΙΣΣΗΣ 15, ΑΝΩ ΚΥΨΕΛΗ, 113 64'),
(75, 'https://goo.gl/maps/KiHjkPGR3ns', 'ΚΥΚΛΑΔΩΝ 30, ΚΥΨΕΛΗ, 113 61'),
(76, 'https://goo.gl/maps/wVVKgZ67HcT2', 'ΛΕΣΒΟΥ 19, ΚΥΨΕΛΗ-ΑΝΙΑΤΩΝ, 112 56'),
(77, 'https://goo.gl/maps/dguDi5vru162', 'Λ.ΙΩΝΙΑΣ 86, ΑΓ.ΝΙΚΟΛΑΟΣ-ΑΧΑΡΝΩΝ, 104 46'),
(78, 'https://goo.gl/maps/tbD4gC6A89m', 'ΝΕΟΧΩΡΙΟΥ 5, ΚΥΨΕΛΗ, 113 63'),
(79, 'https://goo.gl/maps/mYZKS98Ba5F2', 'ΞΕΝΑΓΟΡΑ 6, ΛΕΒΙΔΙ - ΑΧΑΡΝΩΝ, 112 52'),
(80, 'https://goo.gl/maps/aescpeAz7CB2', 'ΠΥΘΙΑΣ 8, ΚΥΨΕΛΗ, 113 64'),
(81, 'https://goo.gl/maps/G4T7gyNXekH2', 'ΣΟΛΙΩΤΗ - ΑΛΑΣΤΩΡΟΣ & ΚΟΥΤΣΙΚΑΡΗ 49, ΑΘΗΝΑ, 115 22'),
(82, 'https://goo.gl/maps/GASeBpjcymN2', 'ΕΥΣΤΑΘΙΟΥ 12, ΠΟΛΥΓΩΝΟ, 115 24'),
(83, 'https://goo.gl/maps/QpMDMejsiKD2', 'ΛΕΩΦ. ΚΗΦΙΣΙΑΣ 128, ΕΛΛΗΝΟΡΩΣΩΝ, 115 26'),
(85, 'https://goo.gl/maps/CnkCWfA4cf92', 'ΚΟΤΥΑΙΟΥ 1, ΑΜΠΕΛΟΚΗΠΟΙ, 115 21'),
(86, 'https://goo.gl/maps/CoTjatS9qbu', 'ΛΑΜΨΑ & ΦΛΩΡΟΥ, ΓΗΡΟΚΟΜΕΙΟ, 115 24'),
(88, 'https://goo.gl/maps/PS2WFSa9UWU2', 'ΛΥΚΑΙΟΥ 67-73, ΓΚΥΖΗ, 114 76'),
(89, 'https://goo.gl/maps/WBRUFsBat6N2', 'ΜΕΣΟΓΕΙΩΝ 96, ΑΜΠΕΛΟΚΗΠΟΙ-ΕΡΥΘΡΟΣ, 115 27'),
(90, 'https://goo.gl/maps/ix1WA5K4nU32', 'ΣΕΒΑΣΤΟΥΠΟΛΕΩΣ 135, ΑΜΠΕΛΟΚΗΠΟΙ, 115 26'),
(91, 'https://goo.gl/maps/9Essq9xpixn', 'ΝΟΡΝΤΑΟΥ 2, ΓΚΥΖΗ, 114 74'),
(93, 'https://goo.gl/maps/MLdWqLg17FG2', 'ΦΘΙΩΤΙΔΟΣ 25, ΑΜΠΕΛΟΚΗΠΟΙ, 115 23'),
(96, 'https://goo.gl/maps/MKyGxJVMeVN2', 'ΛΑΚΩΝΟΣ 9 & ΤΡΙΦΥΛΛΙΑΣ, ΠΑΡΚΟ ΚΑΠΑΨ, ΠΑΝΟΡΜΟΥ, 115 24'),
(97, 'https://goo.gl/maps/fjTFoMW83yp', 'ΦΑΒΙΕΡΟΥ 17Α, ΠΛ. ΒΑΘΗ, 104 38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
