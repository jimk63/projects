-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 30 Αυγ 2018 στις 09:40:13
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
-- Δομή πίνακα για τον πίνακα `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_mn` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `st_type` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `st_build` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `st_dk` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `st_order` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `st_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `st_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `st_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`st_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `stations`
--

INSERT INTO `stations` (`st_id`, `st_mn`, `st_type`, `st_build`, `st_dk`, `st_order`, `st_name`, `st_phone`, `st_email`, `st_closed`) VALUES
(1, 0, 2, 2, 0, '', 'ΑΥΤΟΤΕΛΕΣ ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ', '210 5135736', 'dimvrefa@cosmotemail.gr', 0),
(2, 1, 3, 2, 0, '', 'ΓΡΑΦΕΙΟ ΓΡΑΜΜΑΤΕΙΑΣ ΠΡΟΕΔΡΟΥ-ΑΝΤΙΠΡΟΕΔΡΟΥ', '210 5102490', '', 0),
(3, 1, 3, 2, 0, '', 'ΓΡΑΦΕΙΟ ΕΠΙΚΟΙΝΩΝΙΑΣ & ΔΗΜΟΣΙΩΝ ΣΧΕΣΕΩΝ', '210 5102489', '', 0),
(4, 1, 3, 2, 0, '', 'ΓΡΑΦΕΙΟ ΙΣΤΟΡΙΚΟΥ ΑΡΧΕΙΟΥ', '210 5102415', 'dba.ha@cosmotemail.gr', 0),
(5, 0, 2, 2, 0, '', 'ΑΥΤΟΤΕΛΕΣ ΤΜΗΜΑ ΝΟΜΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ', '210 5102494', 'dbany@otenet.gr', 0),
(6, 0, 2, 2, 0, '', 'ΔΙΕΥΘΥΝΣΗ ΔΙΟΙΚΗΤΙΚΟΥ-ΠΡΟΣΩΠΙΚΟΥ', '210 5102454', 'dbadad@otenet.gr', 0),
(7, 6, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΡΟΣΩΠΙΚΟΥ', '210 5102468', 'dbaorgp1@otenet.gr', 0),
(8, 6, 3, 2, 0, '', 'ΤΜΗΜΑ ΜΙΣΘΟΔΟΣΙΑΣ', '210 5102461', 'dbamist@otenet.gr', 0),
(9, 6, 3, 2, 0, '', 'ΤΜΗΜΑ ΓΡΑΜΜΑΤΕΙΑΣ Δ.Σ. & Ε.Ε.', '210 5102491', 'dbadsee@otenet.gr', 0),
(10, 6, 3, 2, 0, '', 'ΤΜΗΜΑ ΔΙΟΙΚΗΤΙΚΗΣ ΜΕΡΙΜΝΑΣ, ΠΡΩΤΟΚΟΛΛΟΥ & ΔΙΕΚΠΕΡΑΙΩΣΗΣ', '210 5102401', 'dbaprot@otenet.gr', 0),
(11, 6, 3, 2, 0, '', 'ΤΜΗΜΑ ΜΕΤΑΦΟΡΙΚΩΝ ΜΕΣΩΝ', '210 5102404', 'dbauto@otenet.gr', 0),
(12, 0, 2, 2, 0, '', 'ΔΙΕΥΘΥΝΣΗ Π. Ο. Π. & Α. Α. Π.', '210 5102476', 'dbaadmin@otenet.gr', 0),
(13, 12, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΡΟΓΡΑΜΜΑΤΙΣΜΟΥ ΚΑΙ ΟΡΓΑΝΩΣΗΣ', '210 5102455', 'dba_ee@otenet.gr', 0),
(14, 12, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΑΙΔΑΓΩΓΙΚΟΥ ΠΡΟΓΡΑΜΜΑΤΙΣΜΟΥ', '210 5102459', 'dbatpaid@otenet.gr', 0),
(15, 12, 3, 2, 0, '', 'ΤΜΗΜΑ ΑΝΑΠΤΥΞΗΣ ΑΝΘΡΩΠΙΝΩΝ ΠΟΡΩΝ', '210 5102465', 'dbaeap@otenet.gr', 0),
(16, 12, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΛΗΡΟΦΟΡΙΚΗΣ', '210 5102426', 'dba.it@cosmotemail.gr', 0),
(17, 0, 2, 2, 0, '', 'ΔΙΕΥΘΥΝΣΗ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 5102478', 'dbadps@otenet.gr', 0),
(18, 17, 3, 2, 0, '', 'ΤΜΗΜΑ ΕΠΙΛΟΓΗΣ ΑΙΤΗΣΕΩΝ ΚΑΙ ΠΑΡΑΚΟΛΟΥΘΗΣΗΣ ΕΓΓΡΑΦΩΝ', '210 5102484', 'dbatps@otenet.gr', 0),
(19, 17, 3, 19, 1, '', '1 Δ.Κ. ΘΕΜΙΣΤΟΚΛΕΟΥΣ', '210 3300880', 'dba.1dk.themistokleous@cosmotemail.gr', 0),
(20, 17, 3, 20, 1, '', '1 Δ.Κ. ΛΥΣΙΟΥ', '210 3225681', 'dba.1dk.lisiou@cosmotemail.gr', 0),
(21, 17, 3, 21, 1, '', '1 Δ.Κ. ΜΑΥΡΟΜΙΧΑΛΗ', '210 3604668', 'dba.1dk.mavromichali@cosmotemail.gr', 0),
(22, 17, 3, 22, 1, '', '1 Δ.Κ. ΜΙΧΑΗΛ ΒΟΔΑ', '210 8219574', 'dba.1dk.m.voda@cosmotemail.gr', 0),
(23, 17, 3, 23, 1, '', '1 Δ.Κ. ΝΟΤΑΡΑ & ΔΕΛΗΓΙΑΝΝΗ', '210 8222588', 'dba.1dk.notara@cosmotemail.gr', 0),
(24, 17, 3, 24, 1, '', '1 Δ.Κ. ΠΕΙΡΑΙΩΣ', '210 3252158', 'dba.1dk.peiraios@cosmotemail.gr', 0),
(25, 17, 3, 25, 1, '', '1 Δ.Κ. ΤΣΑΜΗ ΚΑΡΑΤΑΣΟΥ', '210 9235086', 'dba.1dk.ts.katarasou@cosmotemail.gr', 0),
(26, 17, 3, 26, 1, '', '1 Δ.Κ. ΦΑΒΙΕΡΟΥ', '210 5225292', 'dba.1dk.favierou@cosmotemail.gr', 0),
(27, 17, 3, 27, 2, '', '2 Δ.Κ. ΑΝΑΞΑΡΧΟΥ', '210 7564531', 'dba.2dk.anaxarchou@cosmotemail.gr', 0),
(28, 17, 3, 28, 2, '', '2 Δ.Κ. ΒΑΘΥΚΛΕΟΥΣ', '210 7514742', 'dba.2dk.vathikleous@cosmotemail.gr', 0),
(29, 17, 3, 29, 2, '', '2 Δ.Κ. ΒΙΝΚΕΛΜΑΝ', '210 7512666', 'dba.2dk.vinkelman@cosmotemail.gr', 0),
(30, 17, 3, 30, 2, '', '2 Δ.Κ. ΛΑΓΟΥΜΙΤΖΗ', '210 9017300', 'dba.2dk.lagoumitzi@cosmotemail.gr', 0),
(31, 17, 3, 31, 2, '', '2 Δ.Κ. ΠΑΓΚΡΑΤΙΟΥ', '210 7221123', 'dba.2dk.pagratiou@cosmotemail.gr', 0),
(32, 17, 3, 32, 2, '', '2 Δ.Κ. ΠΡΩΤΑΓΟΡΑ', '210 7525002', 'dba.2dk.protagora@cosmotemail.gr', 0),
(33, 17, 3, 33, 2, '', '2 Δ.Κ. ΠΥΘΕΟΥ', '210 9239200', 'dba.2dk.pitheou@cosmotemail.gr', 0),
(34, 17, 3, 34, 2, '', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Α', '210 9010336', 'dba.2dk.krinagorou.a@cosmotemail.gr', 0),
(35, 17, 3, 35, 2, '', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Β', '210 9017341', 'dba.2dk.krinagorou.b@cosmotemail.gr', 0),
(36, 17, 3, 36, 2, '', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Γ', '210 9012773', 'dba.2dk.krinagorou.c@cosmotemail.gr', 0),
(37, 17, 3, 37, 2, '', '2 Δ.Κ. ΝΙΚΟΣΘΕΝΟΥΣ', '210 7241205', 'dba.2dk.nikosthenous@cosmotemail.gr', 0),
(38, 17, 3, 38, 3, '', '3 Δ.Κ. ΑΘΗΝΟΔΩΡΟΥ', '210 3424987', 'dba.3dk.athinodorou@cosmotemail.gr', 0),
(39, 17, 3, 39, 3, '', '3 Δ.Κ. ΑΛΟΠΗΣ', '210 5229242', 'dba.3dk.alopis@cosmotemail.gr', 0),
(40, 17, 3, 40, 3, '', '3 Δ.Κ. ΚΥΚΛΩΠΩΝ', '210 3466588', 'dba.3dk.kiklopon@cosmotemail.gr', 0),
(41, 17, 3, 41, 3, '', '3 Δ.Κ. ΠΕΡΣΕΩΣ', '210 3422361', 'dba.3dk.perseos@cosmotemail.gr', 0),
(42, 17, 3, 42, 3, '', '3 Δ.Κ. ΣΠΥΡΟΥ ΠΑΤΣΗ', '210 3462958', 'dba.3dk.s.patsi@cosmotemail.gr', 0),
(43, 17, 3, 43, 3, '', '3 Δ.Κ. ΤΡΩΩΝ', '210 3470275', 'dba.3dk.troon@cosmotemail.gr', 0),
(44, 17, 3, 44, 3, '', '3 Δ.Κ. ΘΕΡΜΟΠΥΛΩΝ', '210 5150761', 'dba.3dk.thermopylon@cosmotemail.gr', 0),
(45, 17, 3, 45, 4, '', '4 Δ.Κ. Α ΣΕΠΟΛΙΩΝ', '210 5154225', 'dba.4dk.a.sepolion@cosmotemail.gr', 0),
(46, 17, 3, 46, 4, '', '4 Δ.Κ. ΓΕΡΑΚΗ', '210 8320098', 'dba.4dk.geraki@cosmotemail.gr', 0),
(47, 17, 3, 47, 4, '', '4 Δ.Κ. ΕΠΙΔΑΥΡΟΥ Α', '210 5125837', 'dba.4dk.epidavrou.a@cosmotemail.gr', 0),
(48, 17, 3, 48, 4, '', '4 Δ.Κ. ΕΠΙΔΑΥΡΟΥ Β', '210 5125039', 'dba.4dk.epidavrou.b@cosmotemail.gr', 0),
(49, 17, 3, 49, 4, '', '4 Δ.Κ. ΕΥΑΛΚΙΔΟΥ Α', '210 5152656', 'dba.4dk.evalkidou.a@cosmotemail.gr', 0),
(50, 17, 3, 50, 4, '', '4 Δ.Κ. ΕΥΑΛΚΙΔΟΥ Β', '210 5134870', 'dba.4dk.evalkidou.b@cosmotemail.gr', 0),
(51, 17, 3, 51, 4, '', '4 Δ.Κ. ΙΩΑΝΝΙΝΩΝ', '210 5155620', 'dba.4dk.ioanninon@cosmotemail.gr', 0),
(52, 17, 3, 52, 4, '', '4 Δ.Κ. ΛΕΝΟΡΜΑΝ', '210 5125634', 'dba.4dk.lenorman@cosmotemail.gr', 0),
(53, 17, 3, 53, 4, '', '4 Δ.Κ. ΜΑΝΟΥΣΟΓΙΑΝΝΗ', '210 8313747', 'dba.4dk.manousogianni@cosmotemail.gr', 0),
(54, 17, 3, 54, 4, '', '4 Δ.Κ. ΜΕΤΡΩΝ', '210 5127294', 'dba.4dk.metron@cosmotemail.gr', 0),
(55, 17, 3, 55, 4, '', '4 Δ.Κ. ΜΙΧΑΗΛ ΚΟΡΑΚΑ', '210 8311169', 'dba.4dk.m.koraka@cosmotemail.gr', 0),
(56, 17, 3, 56, 4, '', '4 Δ.Κ. ΠΑΛΑΜΗΔΙΟΥ', '210 5140662', 'dba.4dk.palamidiou@cosmotemail.gr', 0),
(57, 17, 3, 57, 4, '', '4 Δ.Κ. ΠΥΡΛΑ', '210 8313626', 'dba.4dk.pirla@cosmotemail.gr', 0),
(58, 17, 3, 58, 4, '', '4 Δ.Κ. ΣΜΟΛΙΚΑ', '210 5126519', 'dba.4dk.smolika@cosmotemail.gr', 0),
(59, 17, 3, 59, 4, '', '4 Δ.Κ. ΤΙΜΑΙΟΥ', '210 5134426', 'dba.4dk.timeou@cosmotemail.gr', 0),
(60, 17, 3, 60, 5, '', '5 Δ.Κ. ΑΓΙΟΥ ΕΛΕΥΘΕΡΙΟΥ', '210 2017710', 'dba.5dk.ag.eleftheriou@cosmotemail.gr', 0),
(61, 17, 3, 61, 5, '', '5 Δ.Κ. ΑΓΙΑΣ ΛΑΥΡΑΣ', '210 2023217', 'dba.5dk.ag.lavras@cosmotemail.gr', 0),
(62, 17, 3, 62, 5, '', '5 Δ.Κ. ΑΜΑΣΙΟΥ Α', '210 2518086', 'dba.5dk.amasiou.a@cosmotemail.gr', 0),
(63, 17, 3, 63, 5, '', '5 Δ.Κ. ΑΜΑΣΙΟΥ Β', '210 2518010', 'dba.5dk.amasiou.b@cosmotemail.gr', 0),
(64, 17, 3, 64, 5, '', '5 Δ.Κ. ΑΞΙΟΥΠΟΛΕΩΣ', '210 2584831', 'dba.5dk.axioupoleos@cosmotemail.gr', 0),
(65, 17, 3, 65, 5, '', '5 Δ.Κ. ΔΗΜΗΤΡΙΟΥ ΡΑΛΛΗ', '210 2232105', 'dba.5dk.d.ralli@cosmotemail.gr', 0),
(66, 17, 3, 66, 5, '', '5 Δ.Κ. ΕΡΜΙΠΠΟΥ', '210 2526265', 'dba.5dk.ermippou@cosmotemail.gr', 0),
(67, 17, 3, 67, 5, '', '5 Δ.Κ. ΗΡΑΚΛΕΙΟΥ', '210 2234126', 'dba.5dk.irakliou@cosmotemail.gr', 0),
(68, 17, 3, 68, 5, '', '5 Δ.Κ. ΝΕΪΓΥ', '210 2529566', 'dba.5dk.neigi@cosmotemail.gr', 0),
(69, 17, 3, 69, 5, '', '5 Δ.Κ. ΡΟΣΤΑΝ & ΠΟΛΥΛΑ', '210 2285800', 'dba.5dk.polila@cosmotemail.gr', 0),
(70, 17, 3, 70, 5, '', '5 Δ.Κ. ΧΑΛΕΠΑ', '210 2230808', 'dba.5dk.chalepa@cosmotemail.gr', 0),
(71, 17, 3, 71, 6, '', '6 Δ.Κ. ΑΥΞΕΝΤΙΟΥ', '210 8222245', 'dba.6dk.afxentiou@cosmotemail.gr', 0),
(72, 17, 3, 72, 6, '', '6 Δ.Κ. ΘΑΥΜΑΝΤΟΣ', '210 8612743', 'dba.6dk.thavmantos@cosmotemail.gr', 0),
(73, 17, 3, 73, 6, '', '6 Δ.Κ. ΚΡΙΣΣΗΣ Α', '210 8659279', 'dba.6dk.krissis.a@cosmotemail.gr', 0),
(74, 17, 3, 74, 6, '', '6 Δ.Κ. ΚΡΙΣΣΗΣ Β', '210 8625679', 'dba.6dk.krissis.b@cosmotemail.gr', 0),
(75, 17, 3, 75, 6, '', '6 Δ.Κ. ΚΥΚΛΑΔΩΝ', '210 8811244', 'dba.6dk.kikladon@cosmotemail.gr', 0),
(76, 17, 3, 76, 6, '', '6 Δ.Κ. ΛΕΣΒΟΥ', '210 8678882', 'dba.6dk.lesvou@cosmotemail.gr', 0),
(77, 17, 3, 77, 6, '', '6 Δ.Κ. ΛΕΩΦΟΡΟΣ ΙΩΝΙΑΣ', '210 8655044', 'dba.6dk.l.ionias@cosmotemail.gr', 0),
(78, 17, 3, 78, 6, '', '6 Δ.Κ. ΝΕΟΧΩΡΙΟΥ', '210 5133565', 'dba.6dk.neochoriou@cosmotemail.gr', 0),
(79, 17, 3, 79, 6, '', '6 Δ.Κ. ΞΕΝΑΓΟΡΑ', '210 8674237', 'dba.6dk.xenagora@cosmotemail.gr', 0),
(80, 17, 3, 80, 6, '', '6 Δ.Κ. ΠΥΘΙΑΣ', '210 8658900', 'dba.6dk.pithias@cosmotemail.gr', 0),
(81, 17, 3, 81, 7, '', '7 Δ.Κ. ΑΛΑΣΤΩΡΟΣ', '210 6440231', 'dba.7dk.alastoros@cosmotemail.gr', 0),
(82, 17, 3, 82, 7, '', '7 Δ.Κ. ΕΥΣΤΑΘΙΟΥ', '210 6913330', 'dba.7dk.efstathiou@cosmotemail.gr', 1),
(83, 17, 3, 83, 7, '', '7 Δ.Κ. ΚΗΦΙΣΙΑΣ Α', '210 6927017', 'dba.7dk.kifisias.a@cosmotemail.gr', 0),
(84, 17, 3, 83, 7, '', '7 Δ.Κ. ΚΗΦΙΣΙΑΣ Β', '210 6913057', 'dba.7dk.kifisias.b@cosmotemail.gr', 0),
(85, 17, 3, 85, 7, '', '7 Δ.Κ. ΚΟΤΥΑΙΟΥ', '210 6425121', 'dba.7dk.kotieou@cosmotemail.gr', 0),
(86, 17, 3, 86, 7, '', '7 Δ.Κ. ΛΑΜΨΑ Α', '210 6925028', 'dba.7dk.lampsa.a@cosmotemail.gr', 0),
(87, 17, 3, 86, 7, '', '7 Δ.Κ. ΛΑΜΨΑ Β', '210 6926380', 'dba.7dk.lampsa.b@cosmotemail.gr', 0),
(88, 17, 3, 88, 7, '', '7 Δ.Κ. ΛΥΚΑΙΟΥ', '210 6411120', 'dba.7dk.likeou@cosmotemail.gr', 0),
(89, 17, 3, 89, 7, '', '7 Δ.Κ. ΜΕΣΟΓΕΙΩΝ', '210 7777105', 'dba.7dk.mesogeion@cosmotemail.gr', 0),
(90, 17, 3, 90, 7, '', '7 Δ.Κ. ΜΙΚΡΟ ΧΡΙΣΤΟΔΟΥΛΑΚΕΙΟ', '210 6911219', 'dba.7dk.m.christodoulakeio@cosmotemail.gr', 0),
(91, 17, 3, 91, 7, '', '7 Δ.Κ. ΝΟΡΝΤΑΟΥ', '210 6423602', 'dba.7dk.norntaou@cosmotemail.gr', 0),
(92, 17, 3, 90, 7, '', '7 Δ.Κ. ΣΕΒΑΣΤΟΥΠΟΛΕΩΣ', '210 6917664', 'dba.7dk.sevastoupoleos@cosmotemail.gr', 0),
(93, 17, 3, 93, 7, '', '7 Δ.Κ. ΦΘΙΩΤΙΔΟΣ', '210 6455368', 'dba.7dk.fthiotidos@cosmotemail.gr', 0),
(94, 17, 3, 90, 7, '', '7 Δ.Κ. ΧΡΙΣΤΟΔΟΥΛΑΚΕΙΟ', '210 6927895', 'dba.7dk.christodoulakeio@cosmotemail.gr', 0),
(95, 17, 3, 2, 0, '', 'ΤΜΗΜΑ ΥΠΗΡΕΣΙΩΝ ΙΑΤΡΙΚΗΣ ΚΑΙ ΔΗΜΟΣΙΑΣ ΥΓΕΙΑΣ', '210 5102479', 'dbaped@otenet.gr', 0),
(96, 17, 3, 96, 0, '', 'ΤΜΗΜΑ ΨΥΧΟΛΟΓΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ ΚΑΙ ΣΥΜΒΟΥΛΕΥΤΙΚΗΣ', '210 8670030', 'dbacounc@otenet.gr', 0),
(97, 17, 3, 97, 0, '', 'ΤΜΗΜΑ ΚΟΙΝΩΝΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ', '210 5142576', 'dbakinyp@otenet.gr', 0),
(98, 17, 3, 3, 0, '', 'ΤΜΗΜΑ ΣΥΝΤΗΡΗΣΗΣ ΚΑΙ ΑΥΤΕΠΙΣΤΑΣΙΑΣ', '210 8222671', 'dbatech@otenet.gr', 0),
(99, 17, 3, 4, 0, '', 'ΞΥΛΟΥΡΓΕΙΟ', '210 8838951', 'dbawood@otenet.gr', 0),
(100, 17, 3, 1, 0, '', '1ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 3479412', 'dba1td@otenet.gr', 0),
(101, 17, 3, 1, 0, '', '2ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 9235085', 'dba2td@otenet.gr', 0),
(102, 17, 3, 1, 0, '', '3ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 5147678', 'dba3td@otenet.gr', 0),
(103, 17, 3, 1, 0, '', '4ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 2528731', 'dba4td@otenet.gr', 0),
(104, 17, 3, 1, 0, '', '5ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 8831400', 'dba5td@otenet.gr', 0),
(105, 0, 2, 2, 0, '', 'ΔΙΕΥΘΥΝΣΗ ΠΡΟΜΗΘΕΙΩΝ, ΔΙΑΧΕΙΡΙΣΗΣ ΥΛΙΚΩΝ ΚΑΙ ΕΣΤΙΑΣΗΣ', '210 5102407', 'dbadprom@otenet.gr', 0),
(106, 105, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΡΟΜΗΘΕΙΩΝ ΚΑΙ ΔΗΜΟΠΡΑΣΙΩΝ', '210 5102408', 'dbasup@otenet.gr', 0),
(107, 105, 3, 2, 0, '', 'ΤΜΗΜΑ ΑΠΟΘΗΚΗΣ ΚΑΙ ΔΙΑΧΕΙΡΙΣΗΣ ΥΛΙΚΩΝ', '210 5102414', 'dbadypa@otenet.gr', 0),
(108, 105, 3, 5, 0, '', 'Αποθήκη 1 (Στ. Λαρίσης)', '210 8222379', 'dbadypa@otenet.gr', 0),
(109, 105, 3, 2, 0, '', 'Αποθήκη 2 (Ρόδου) ', '210 5102419', 'dbadypa@otenet.gr', 0),
(110, 105, 3, 2, 0, '', 'ΤΜΗΜΑ ΕΣΤΙΑΣΗΣ', '210 5102411', 'dbadysa@otenet.gr', 0),
(111, 105, 3, 2, 0, '', 'Μαγειρείο Α', '210 5102417', 'dbafooda@otenet.gr', 0),
(112, 105, 3, 1, 0, '', 'Μαγειρείο Β', '210 6922507', 'dbafoodb@otenet.gr', 0),
(113, 0, 2, 2, 0, '', 'ΔΙΕΥΘΥΝΣΗ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΙ ΠΕΡΙΟΥΣΙΑΣ', '210 5102427', 'dbaoik@otenet.gr', 0),
(114, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΡΟΫΠΟΛΟΓΙΣΜΟΥ', '210 5102429', 'dbbudget@otenet.gr', 0),
(115, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΛΟΓΙΣΤΗΡΙΟΥ', '210 5102435', 'dba_log@otenet.gr', 0),
(116, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΕΚΚΑΘΑΡΙΣΗΣ ΚΑΙ ΕΝΤΟΛΗΣ ΔΑΠΑΝΩΝ', '210 5102436', 'dbateked@otenet.gr', 0),
(117, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΤΑΜΕΙΑΚΗΣ ΥΠΗΡΕΣΙΑΣ', '210 5102430', 'dbatayp@otenet.gr', 0),
(118, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΕΣΟΔΩΝ', '210 5102439', 'dbapros@otenet.gr', 0),
(119, 113, 3, 2, 0, '', 'ΤΜΗΜΑ ΠΕΡΙΟΥΣΙΑΣ', '210 5102432', 'dba_klir@otenet.gr', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
