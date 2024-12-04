-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 04:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `day` varchar(10) NOT NULL,
  `date` date NOT NULL DEFAULT '2024-01-01',
  `time` time NOT NULL,
  `artist` varchar(255) NOT NULL,
  `background_type` varchar(255) DEFAULT NULL,
  `min_members` int(11) NOT NULL,
  `max_members` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `Phone_no_to_connect` varchar(255) DEFAULT NULL,
  `age_min` int(3) DEFAULT NULL,
  `age_max` int(3) DEFAULT NULL,
  `event_description` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `day`, `date`, `time`, `artist`, `background_type`, `min_members`, `max_members`, `price`, `Phone_no_to_connect`, `age_min`, `age_max`, `event_description`) VALUES
(1, 'Innovation Challenge', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 1, 10, 2999.00, '+91 809 7070 383', NULL, NULL, 'INNOVATIONS aims at cultivating the skills amongst the youth and all the technical aspirants by offering a robust platform to showcase your ideas and get recognised. Participants are supposed to compete with their project, concepts and innovative ideas. All the Futuristic, creative, innovative, sustainable projects/concepts are welcome. Projects which synchronises with the current needs of the industries and has the potential to disrupt the current course of technology will be Awarded. So, brace yourself and join in the League of INNOVATIONS.'),
(2, 'SumoBot', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 1, 3, 999.00, '+91 809 7070 383', NULL, NULL, NULL),
(3, 'Robo Soccer', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 3, 10, 2999.00, '+91 809 7070 383', NULL, NULL, NULL),
(4, 'FPV Car Racing', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 2, 10, 999.00, '+91 809 7070 383', NULL, NULL, NULL),
(5, 'Water Rocket', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 2, 10, 999.00, '+91 809 7070 383', NULL, NULL, NULL),
(6, 'Aero Modeling Challenge', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 5, 5, 3749.00, '+91 809 7070 383', NULL, NULL, NULL),
(7, 'Robowar', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 2, 10, 2999.00, '+91 809 7070 383', NULL, NULL, NULL),
(8, 'Reel Making Challenge', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 1, 1, 99.00, '+91 809 7070 383', NULL, NULL, NULL),
(9, 'BGMI Challenge', 'Saturday', '0000-00-00', '09:00:00', 'Krish Chaudhary', NULL, 1, 5, 499.00, '+91 829 1083 254', NULL, NULL, NULL),
(10, 'Amateur Astronomer Conference (seminar)', 'Saturday', '0000-00-00', '09:00:00', 'Nikil Jadav', NULL, 1, 1, 199.00, '+91 809 7070 383', NULL, NULL, NULL),
(11, 'event_name', 'day', '0000-00-00', '00:00:00', 'artist', 'background_type', 0, 0, 0.00, '+91 000 0000 000', 18, 21, 'test data ');

-- --------------------------------------------------------

--
-- Table structure for table `event_registrations`
--

CREATE TABLE `event_registrations` (
  `event_registration_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `ticket_type` enum('Team','Individual') NOT NULL,
  `registration_date` datetime NOT NULL,
  `payment_status` enum('Pending','Completed','Failed') DEFAULT 'Pending',
  `payment_method` varchar(50) DEFAULT 'Razorpay',
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_registrations`
--

INSERT INTO `event_registrations` (`event_registration_id`, `registration_id`, `event_id`, `ticket_type`, `registration_date`, `payment_status`, `payment_method`, `transaction_id`) VALUES
(1, 11, NULL, '', '2024-12-02 03:57:11', '', '1', '1'),
(5, 11, 8, '', '2024-12-02 04:08:21', '', '2', '2'),
(7, 11, 7, '', '2024-12-02 10:41:02', '', '', ''),
(9, 11, 10, '', '2024-12-02 10:54:57', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `Institute_Name` varchar(255) NOT NULL,
  `Udise_Code` varchar(50) NOT NULL,
  `School_Category` varchar(100) NOT NULL,
  `Lowest_Class` varchar(50) NOT NULL,
  `Highest_Class` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Institute_Type` enum('School','College','Other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `Institute_Name`, `Udise_Code`, `School_Category`, `Lowest_Class`, `Highest_Class`, `Address`, `Institute_Type`) VALUES
(11, 'AMACHGHAR SCHOOL', '27210700116', '3-pr. with Up.pr.sec. and H.Sec.', '1', '12', 'Mira Bhayander west', 'School'),
(12, 'ROYAL ENG SCHOOL UTTAN', '27210700117', '2-primary with Upper primary', '1', '7', 'royal school uttan bhayander west', 'School'),
(13, 'ROSENEIL HIGH ENGLIEH SCHOOL BYA WEST', '27210700119', '7 - Upper Pr. and Secondary', '8', '10', '101/A Kitty Villa Opp Congress office Station Road Bhayander west', 'School'),
(14, 'ST VINCENT DE PAUL HIGH ENG BYA WEST', '27210700120', '7 - Upper Pr. and Secondary', '8', '10', 'arihant C bldg, behind bhatewa jain temple, sta', 'School'),
(15, 'THE DON BOSCO SCHOOL,SHIV SENA G BHA (WEST)', '27210700121', '2 - Primary with Upper Primary', '1', '7', 'Mahesh Nagar no 3,Shiv Sena Lane,Bhayandar west Thane 401101', 'School'),
(16, 'ROYAL ENGLISH SCHOOL & JR. COLLEGE', '27210700123', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'royal school uttan bhayandar west', 'School'),
(17, 'ROYAL ENG SECONDARY SCH. BHAYANDAR(E)', '27210700124', '7 - Upper Pr. and Secondary', '8', '10', 'jain ngr., navghar naka , near hanuman mandir, bhayandar east, dist thane, 401105', 'School'),
(18, 'K S MAHETHA COLLEGE SCHOOL', '27210700125', '11 - Higher Secondary only/Jr. College', '11', '12', 'Sai Baba Nagar opp ganesh mandir  Mira road east', 'School'),
(19, 'ST.ANDREW PRI ENG S UTTAN', '27210700126', '6 - Pr. Up Pr. and Secondary Only', '1', '10', 'DONGRI CHOWK, BHAYANDER WEST PIN 401106', 'School'),
(20, 'REENA MEHTA HIGH SCH & COLLEGE BHA WEST', '27210700127', '11 - Higher Secondary only/Jr. College', '11', '12', 'NEAR FLY OVER OPP MXUES MALL 150 FEET ROAD BHAYANDAR WEST', 'School'),
(21, 'HOLY CROSS HIGH SCHOOL BHAYANDAR WEST', '27210700128', '7 - Upper Pr. and Secondary', '8', '10', 'Gautam nagar Near ambe mata mandir bhayander west', 'School'),
(22, 'RAM RATNA VIDYAMANDIR', '27210700129', '3 - Pr. with Up.Pr. sec. and H.Sec.', '5', '12', 'Keshav Srushti, Uttan, Bhayander West, Thane-401106.', 'School'),
(23, 'RAM RATNA INTERNATIONAL SCHOOL', '27210700130', '2 - Primary with Upper Primary', '1', '7', 'Keshav Srushti Uttan Gorai raod  Bhayandar west', 'School'),
(24, 'RAM RATNA INTERNATIONAL SEC SCHOOL', '27210700131', '7 - Upper Pr. and Secondary', '8', '10', 'Keshav Srushti utaan gorai road bhayandar west', 'School'),
(25, 'ADARSH VIDYAMANDIR RAI ENGLISH', '27210700132', '2 - Primary with Upper Primary', '1', '7', 'RAI GOAN UTTAN ROAD BHAYANDER WEST THANE 401101', 'School'),
(26, 'NEW ROYAL ENGLISH SCHOOL', '27210700133', '3 - Pr. with Up.Pr. sec. and H.Sec.', '1', '12', 'new royal school bhayandar west rai ', 'School'),
(27, 'BISHAP.U.P.E.S.,BHAYANDAR WEST', '27210700208', '2 - Primary with Upper Primary', '1', '7', 'Adjacent to New Railway Over Bridge Bhayandar West Thane', 'School'),
(28, 'BISHAP SEC SCHOOL', '27210700209', '7 - Upper Pr. and Secondary', '8', '10', 'Adjacent to New Railway Over Bridge Bhayandar West Thane', 'School'),
(29, 'CARMALIT CANVANT.U.P.E.S.,BHAYANDAR', '27210700210', '2 - Primary with Upper Primary', '1', '7', 'Ground floor, R.R Bunglow, Behind Shree Ram Bhavan Station Rd Bhayander West', 'School'),
(30, 'DISALVA\'.U.P.E.S.,BHAYANDAR', '27210700211', '2 - Primary with Upper Primary', '1', '7', 'Rishabh Apt No 2 B wing Behind Cosmos Bank Patel Nagar Station Road Bhayandar West', 'School'),
(31, 'DISALVA\'.S.E.S.,BHAYANDAR', '27210700212', '7 - Upper Pr. and Secondary', '8', '10', 'Rishabh Apt No 2 Bwing Behind Cosmos Bank Patel Nagar Station Road Bhayandar West', 'School'),
(32, 'J.H.P.P.E.S.,BHAYANDAR', '27210700213', '1-primary', '1', '4', 'J H Poddar High School,Cross Garden,Bhayandar west', 'School'),
(33, 'J.H.POTDAR SEC SCHOO ENG', '27210700214', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'J.H.PODDAR HIGH SCHOOL CROSS ROAD BHAYANDAR W DISTRICT THANE401101', 'School'),
(34, 'ROSENILE PRI ENG SCHOOL', '27210700219', '2 - Primary with Upper Primary', '1', '7', 'Mira Bhayandar, Bhayandar ', 'School'),
(35, 'MYRTLES.U.P.E.S.,BHAYANDAR', '27210700223', '2 - Primary with Upper Primary', '1', '7', '107, Gomes Street, Bhayandar West. Dist Thane 401101', 'School'),
(36, 'MOUNT MARRY.P.E.S.,BHAYANDAR', '27210700224', '2 - Primary with Upper Primary	', '1', '7', 'Station Road Bhayandar west', 'School'),
(37, 'MOUNT MERRY SEC SCHOOL', '27210700225', '7 - Upper Pr. and Secondary', '8', '10', 'Station road Bhayandar west', 'School'),
(38, 'NIRMALA NIKETAN PRI ENG SCHOOL', '27210700227', '2 - Primary with Upper Primary', '1', '7', 'Opp. Reliance Energy, Vinayak Road,', 'School'),
(39, 'NIRMALA.N.U.P.E.S.,BHAYANDAR', '27210700228', '7 - Upper Pr. and Secondary', '8', '10', 'Opp Adani Electricity Vinayak Road Bhayander west', 'School'),
(40, 'O.L.O.N.U.P.E.S.,BHAYANDAR', '27210700229', '2 - Primary with Upper Primary', '1', '7', 'Near Mirabhayandar Municipal Corporation', 'School'),
(41, 'HOUR LADY OF NAZRETH SEC SCH', '27210700230', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Behind MBMC Office Church Road Bhayandar West District Thane 401101', 'School'),
(42, 'O.L.O.V.P.E.S.,BHAYANDAR', '27210700231', '1 - Primary', '1', '4', 'Sai Villa  BUIL MODI PATEL ROAD Bhyandar west', 'School'),
(43, 'HOUR LADY OF VELANKANI SEC SCH', '27210700232', '3 - Pr. with Up.Pr. sec. and H.Sec.', '5', '12', 'Modi Patel road sai villa bhayandar west', 'School'),
(44, 'RUBINA ACAD.P.E.S.,BHAYANDAR', '27210700233', '2 - Primary with Upper Primary', '1', '7', 'mehta patel shooping center modi patel road bhayander w', 'School'),
(45, 'CARMELITE CONVENT ENGLISH SCHOOL', '27210700234', '7 - Upper Pr. and Secondary', '8', '10', 'Ground Floor, R.R Bunglow, Behind Shree Ram Bhavan, Station Rd, Bhayander West', 'School'),
(46, 'ST.X.U.P.E.S.,BHAYANDAR', '27210700237', '2 - Primary with Upper Primary', '1', '7', '60 feet road, near dev vatika hall, bhayandar W', 'School'),
(47, 'ST. ZEVIYAR SEC SCHOOL', '27210700238', '7 - Upper Pr. and Secondary', '8', '10', '60 FEET ROAD, NEAR DEV VATIKA HALL, BHAYANDAR WEST', 'School'),
(48, 'ST VINCENT DE PAUL.U.P.E.S.,BHAYANDAR', '27210700239', '2 - Primary with Upper Primary', '1', '7', 'arihant C bldg, behind bhatewa jain temple, stat', 'School'),
(49, 'T.D.B.U.P.E.S.,BHAYANDAR', '27210700242', '2 - Primary with Upper Primary', '1', '7', 'Salasar Bhakti , Venkatesh Park, 90feet road  Bhayander west 401101', 'School'),
(50, 'THE BOSKO SEC SCHOOL', '27210700243', '7 - Upper Pr. and Secondary', '8', '10', 'Geetashree 60 ft rd bhy w', 'School'),
(51, 'THE CARNESHAN ENG SCHOOL', '27210700245', '2 - Primary with Upper Primary', '1', '7', 'Bakery Lane, Bhayander West', 'School'),
(52, 'MATRALS SEC  HIGHSCHOOL', '27210700246', '7 - Upper Pr. and Secondary', '8', '10', '107, GOMES STREET, BHAYANDAR WEST. DIST THANE. 401101', 'School'),
(53, 'HOLY CROSS PRI SCHOOL BHA WEST', '27210700257', '2 - Primary with Upper Primary', '1', '7', 'Gautam nagqar, near ambe mata mandir bhayander west', 'School'),
(54, 'GRACIOUS ENG SCH.BYA EAST', '27210700260', '2 - Primary with Upper Primary', '1', '8', 'navghar fatak road bhayandar east', 'School'),
(55, 'S.L. PORWAL PRI SCH', '27210700261', '2 - Primary with Upper Primary', '1', '7', '90 FT ROAD, BHAYANDER WEST', 'School'),
(56, 'S.L. PORWAL SEC SCH', '27210700262', '7 - Upper Pr. and Secondary', '8', '10', '90ft road, Bhayander west', 'School'),
(57, 'HOLY ANGELS .E .PRI', '27210700263', '2 - Primary with Upper Primary', '1', '7', 'JYOTI PARK BUILDING NO. 4 BHAYANDER EAST THANE 401105', 'School'),
(58, 'HOLY ANNGEL E.SEC', '27210700264', '7 - Upper Pr. and Secondary', '8', '10', 'Jyoti Park Bhayander east thane 401105', 'School'),
(59, 'ST. JOSEPHS ENGLISH HIGH SCHOOL, UTTAN', '27210700267', '6 - Pr. Up Pr. and Secondary Only', '1', '10', 'Uttan Navghar,Church Road', 'School'),
(60, 'SANKAR NARAYAN JUNIAR COLLG BHA EAST', '27210700270', '11 - Higher Secondary only/Jr. College', '11', '12', 'Mahavidyalaya Marg, Navghar, Bhayandar E, Thane - 401105.', 'School'),
(61, 'ST ALOYSIUS ENGLISH PRI SCHOOL BHAYANDER EAST', '27210700271', '2 - Primary with Upper Primary', '1', '7', 'NAVGHAR GAON BHAYANDAR E DIST THANE', 'School'),
(62, 'ST ALOYSIUS ENGLISH SEC SCHOOL BHAYANDER EAST', '27210700272', '7 - Upper Pr. and Secondary', '8', '10', 'NAVGHAR GAON BHAYANDAR E DIST THANE', 'School'),
(63, 'S B S MEMORIAL HIGH SCHOOL (ENGLISH)', '27210700273', '7 - Upper Pr. and Secondary', '8', '10', 'PADMA COMPLEX NAVGHAR ROAD NEAR S N COLLEGE BHY EAST', 'School'),
(64, 'MOTHER TERESA HIGH SCHOOL PRIMARY', '27210700275', '2 - Primary with Upper Primary', '1', '7', 'Nand Dham Scoiety, Navghar Road, Bhayander East', 'School'),
(65, 'NARMADA MEMORIAL HIGH SCHOOL', '27210700276', '2 - Primary with Upper Primary', '1', '7', 'Saraswati Park No.2 Navghar Cross S V Road Bhayandar East Thane 401105', 'School'),
(66, 'MOTHER MARYS JR COLLEGE', '27210700277', '11 - Higher Secondary only/Jr. College', '11', '12', 'NAVGHAR ROAD BHAYANDAR EAST', 'School'),
(67, 'NARAYANA e-TECHNO SCHOOL BHA WEST', '27210700278', '2 - Primary with Upper Primary', '1', '8', 'SATYANANDJI MAHARAJ JI MARG BHAYANDAR WEST', 'School'),
(68, 'GRUKUL HIGH SCHOOL BHA WEST', '27210700279', '2 - Primary with Upper Primary', '1', '8', 'BP road Bhayandar East Dist Thane', 'School'),
(69, 'VIDYASAGAR INTERNATIONAL SEC SCHOOL BHA EAST', '27210700280', '7 - Upper Pr. and Secondary', '8', '10', 'navghar road bhayandar east', 'School'),
(70, 'M S CREATIVE SCHOOL', '27210700282', '8 - Secondary Only', '9', '10', 'Kanakia road, Mira Road Thane 401107', 'School'),
(71, 'AL-MUMINAH SCHOOL', '27210700283', '2 - Primary with Upper Primary', '1', '7', 'Heera Palace Opp Sai Fitness Off Mira Bhayandar Road Near Tanwar Hospital Mira Road East 401107', 'School'),
(72, 'TAPOVAN VIDYALAY', '27210700286', '8 - Secondary Only', '9', '10', 'TAPOVAN VIDHYALAY INDRALOK PHASE 4', 'School'),
(73, 'A.V.M.P.E.S.,BHYANDAR', '27210700301', '1 - Primary', '1', '4', 'Abhinav Education Campus, goddeo village, bhayandar east', 'School'),
(74, 'A.V.M.S.E.S.,BHAYANDAR', '27210700302', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'Abhinav Education Campus, goddeo phatak road, bhayandar east', 'School'),
(75, 'ADARSH VIDIYA NIKETAN.P.E.S.,BHAYANDAR', '27210700309', '2 - Primary with Upper Primary', '1', '7', 'Rishabh Complex B P Road Bhayandar East Thane', 'School'),
(76, 'A.J.V.M.U.P.E.S.,BHAYANDAR', '27210700310', '2 - Primary with Upper Primary', '1', '7', 'PLOT NO 10 C NAVGHAR CROSS ROAD SAIBABA NAGAR BHAYANDER EAST ', 'School'),
(77, 'AMAR JYOTI V MANDIR SEC SCHOOL', '27210700311', '7 - Upper Pr. and Secondary', '8', '10', 'plot no 10 c saibaba nagar navghar cross road bhayander east 401105', 'School'),
(78, 'BLOSSOM .U.P.E.S.,BHAY EAST', '27210700316', '2 - Primary with Upper Primary', '1', '7', 'Narmada Nagar Cabin Cross Road Bhayandar East', 'School'),
(79, 'MOTHER TERESA HIGH SCHOOL', '27210700318', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Nand Dham Society,  Navghar Road, Bhayander East', 'School'),
(80, 'DIVE DROP.U.P.E.S.,BHAYANDAR', '27210700319', '2 - Primary with Upper Primary', '1', '7', 'Mira Bhayandar Municipal corporation', 'School'),
(81, 'DIVINE HYMN ENGLISH HIGH SCHOOL', '27210700321', '7 - Upper Pr. and Secondary', '8', '10', 'B P X Road No 4 Kharigaon Bhayandar East', 'School'),
(82, 'BLOSAM SEC ENG SCHOOL', '27210700323', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Narmada Nagar Cabin Cross Road Bhayandar East', 'School'),
(83, 'DIVAIN HIM ENG SCHOOL', '27210700324', '2 - Primary with Upper Primary', '1', '7', 'B P X Road No 4 Kharigaon Bhayandar East Thane', 'School'),
(84, 'DON BOSCO PUBLIC.U.P.E.S.,BHA EAST', '27210700327', '2 - Primary with Upper Primary', '1', '7', 'SAI GURU KRIPA APT LATE GOVIND RAO PATIL MARG KASHI NAGAR BHAYANDER EAST', 'School'),
(85, 'FATHER.JOSEF.U.P.E.S.,BHAYANDAR', '27210700328', '2 - Primary with Upper Primary', '1', '7', 'NAVGHAR ROAD BHAYANDAR E', 'School'),
(86, 'FATHER JOSEPH SEC ENG SCHOOL', '27210700329', '7 - Upper Pr. and Secondary', '8', '10', 'KASTURI PARK NAVGHAR ROAD BHAYANDAR-E', 'School'),
(87, 'HOLY CROSS PRI ENG SCH', '27210700331', '2 - Primary with Upper Primary', '1', '7', 'SaibabaNagar Navghar Road Bhayander EAST', 'School'),
(88, 'HOLY CROSS HIGH SCHOOL', '27210700332', '7 - Upper Pr. and Secondary', '8', '10', 'SaibabaNagar Navghar Road Bhayander EAST', 'School'),
(89, 'I.J.U.P.E.S.,BHAYANDAR', '27210700334', '2 - Primary with Upper Primary', '1', '7', 'cabin road bhayandar east ', 'School'),
(90, 'J.&M.U.P.E.S.,BHAYANDAR', '27210700335', '2 - Primary with Upper Primary', '1', '7', 'talav road bhayandar east', 'School'),
(91, 'K.B.N.U.P.E.S.,BHAYANDAR', '27210700336', '2 - Primary with Upper Primary', '1', '7', '124 cabin road, khari gaon bhy east', 'School'),
(92, 'MAYKAR COVENT.U.P.E.S.,BHAYANDAR', '27210700344', '7 - Upper Pr. and Secondary', '8', '10', 'Anmol Villa No. 5, GCC Club Road, Shanti Vidyanagari, Mira Road East, Thane - 401107', 'School'),
(93, 'MOTHER MARYS.U.P.E.S.,BHAY EAST', '27210700345', '2 - Primary with Upper Primary', '1', '7', 'Rahul Park, Near Maruti Mandir, Bhayander East', 'School'),
(94, 'MATHOR MERRYJ SEC SCHOOL', '27210700346', '7 - Upper Pr. and Secondary', '8', '10', 'Rahul Park, Near Maruti Mandir, Bhayander East', 'School'),
(95, 'NATIONAL.U.P.E.S.,BHAYANDAR', '27210700348', '2 - Primary with Upper Primary', '1', '7', 'RAIGADH BLD B P ROAD ROAD BHAYANDER EAST', 'School'),
(96, 'NEW KEBRIJ PRI ENG SCH', '27210700352', '2 - Primary with Upper Primary', '1', '7', 'Kashigaon, Kashimira, Mira Road East', 'School'),
(97, 'NEW MODERN.P.E.S.,BHAYANDAR', '27210700354', '2 - Primary with Upper Primary', '1', '7', '171 Uttaracnchal Bhavan New Modern English High School Navghar Road Kasturi Park Bhayandar East', 'School'),
(98, 'OM SWAMI VIVEKANANAD.U.P.E.S.,BHAYANDAR', '27210700355', '2 - Primary with Upper Primary', '1', '7', 'OMSWAMIVIVEKANAND HIGH SCHOOL SHIRDI NAGAR BHAYANDAR THANE', 'School'),
(99, 'PAMS U.P.E.S.,BHAY EAST', '27210700362', '2 - Primary with Upper Primary', '1', '7', 'G-2, Kishenlal Darshan Navghar Road, Bhayander East Thane 401105', 'School'),
(100, 'PAYAS BUDS.U.P.E.S.,BHAYANDAR', '27210700363', '2 - Primary with Upper Primary', '1', '7', 'BHAIRAV DARSHAN TOWER CABIN ROAD BHAYANDAR EAST', 'School'),
(101, 'PAYAS BADAS SEC SCHOOL', '27210700364', '7 - Upper Pr. and Secondary', '8', '10', 'Bhairav darshan tower cabin road bhayandar east', 'School'),
(102, 'ROYAL PRI ENG SCH BHA EAST LOKMANIYE', '27210700367', '2 - Primary with Upper Primary', '1', '7', 'Jain ngr., navghar naka, near Hanuman temple, Bhayandar East, Dist . Thane 401105', 'School'),
(103, 'SARSWATI PRI ENG SCHOOL', '27210700369', '1 - Primary', '1', '4', 'cabin road, kharigaon,bhayandar east', 'School'),
(104, 'NEW CAMBRIDGE HIGH SCHOOL BHA EAST', '27210700370', '7 - Upper Pr. and Secondary', '8', '10', 'Kashigaon, Kashimira, Miraroad East', 'School'),
(105, 'SARWATI VIDYA  SEC ENG SCHOOL', '27210700372', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'CABIN ROAD ,KHARIGAON,BHAYANADAR EAST', 'School'),
(106, 'ST.AGNES.U.P.E.S.,BHAYANDAR', '27210700373', '2 - Primary with Upper Primary', '1', '7', 'NAVGHAR BHAYANDAR EAST DIST THANE', 'School'),
(107, 'ST AGNES ENG SEC SCHOOL BHA', '27210700374', '7 - Upper Pr. and Secondary', '8', '10', 'ST AGNES ENGLISH HIGH SCHOOL NAVGHAR  NAKA SN COLLEGE ROAD BHAYANDAR EAST', 'School'),
(108, 'ST.FRANCIS.U.P.E.S.,BHAY EST', '27210700375', '1 - Primary', '1', '4', 'JESAL PARK BHAYANDER -EAST', 'School'),
(109, 'ST FRANCIS.S.E.S.,BHAYANDAR', '27210700376', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'ST. FRANCIS HIGH SCHOOL                             JESAL PARK BHAYANDER -EAST PIN 401105', 'School'),
(110, 'ST.SOLDIER U P ENG SCHOOL BHA EAST', '27210700377', '2 - Primary with Upper Primary', '1', '7', 'St Soldier Public  School Plot 4 and 5 Jesal Park Bhd Kapoor Tower Bhayandar East Thane 401105', 'School'),
(111, 'ST SOLDIER SEC SCHOOL', '27210700378', '7 - Upper Pr. and Secondary', '8', '10', 'Plot no 4 and 5 Behind Kapoor tower Jesal Park Bhayander East Thane 401105', 'School'),
(112, 'DIVAEN IMAGE HIGHSCHOOL', '27210700380', '2 - Primary with Upper Primary', '1', '7', 'Ashoka 106 Bunderwadi Navghar Road Bhayander east ', 'School'),
(113, 'DEVHAIN EMAGE SEC SCHOOL', '27210700381', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', '106 Ashoka Bunderweaadi  Navghar Road Bhayander East Thane 401105hayander East Thane  401105 ', 'School'),
(114, 'DON BOSCO PUBLIC SEC S BHA EAST', '27210700382', '7 - Upper Pr. and Secondary', '8', '10', 'SAIGURUKUPA  CO OP HSG SOC KASHINAGAR BHYANDER EAST', 'School'),
(115, 'R K  MEMORIAL ENG PRI  SCHOOL', '27210700383', '1 - Primary', '1', '4', 'indrlok bhayandar east', 'School'),
(116, 'RAHUL ENG SCHOOL', '27210700384', '2 - Primary with Upper Primary', '1', '7', 'RAHUL ENG HIGH SCHOOL NEAR KASHIWISHWANATH TEMPLE S.V.ROAD BHAYANDAR EAST THANE', 'School'),
(117, 'HOLY TRINITI PRI SCH', '27210700386', '2 - Primary with Upper Primary', '1', '7', 'haunman chal fakta road bhayandar east', 'School'),
(118, 'MADHUSUDHAN GLOBAL SCHOOL', '27210700387', '2 - Primary with Upper Primary', '1', '7', 'madhusudhan global school near deepak hospital ,mira bhayandar road mira road east', 'School'),
(119, 'HOLY TRINITY ENG HIG SCHOOL', '27210700389', '7 - Upper Pr. and Secondary', '8', '10', 'haunman chal fakta road bhayandar east', 'School'),
(120, 'ADRASHA VIDYA NIKETAN ENG SEC', '27210700390', '7 - Upper Pr. and Secondary', '8', '10', 'Rishab Complex B P Road Bhayandar East', 'School'),
(121, 'MAYEKAR CONVENT SCHOOL', '27210700394', '2 - Primary with Upper Primary', '1', '7', 'Anmol Villa No. 5, GCC Club Road, Shanti Vidyanagari, Mira Road East, Thane - 401107', 'School'),
(122, 'JIJAS & MERRYJ SEC SCHOOL', '27210700395', '7 - Upper Pr. and Secondary', '8', '10', 'Talav road bhayandar east', 'School'),
(123, 'OXFORD ENG PRI SCHOOL', '27210700396', '2 - Primary with Upper Primary', '1', '7', 'bp road bhayandar east', 'School'),
(124, 'S M PUBLIC SEC HIGH SCHOOL KHARI', '27210700399', '7 - Upper Pr. and Secondary', '8', '10', 'TALAV ROAD BHAYANDAR EAST', 'School'),
(125, 'BANEGAR U.P.E.S.,MIRA ROAD(E.)', '27210700403', '2 - Primary with Upper Primary', '1', '7', 'Off Lodha Road   Opp Saryu Sargam  Banegar School Lane   Naya Nagar  Mira Road   East', 'School'),
(126, 'BANEGAR ENG SEC HIGH SCHOOL', '27210700404', '7 - Upper Pr. and Secondary', '8', '10', 'Off Lodha Road  Opp Saryu Sargam   Banegar School Lane  Naya Nagar   Mira Road  East', 'School'),
(127, 'HOLLY CROSS CON SCH MIRA ROAD E', '27210700405', '1 - Primary', '1', '4', 'St Josephs Nagar Mira Road  EDist Thane  401107', 'School'),
(128, 'HOLLY CROSS CON.E.S.,MIRA ROAD(E.)', '27210700406', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'MIRA BHAYANDAR  M.CORP, THANE', 'School'),
(129, 'HOLLY FAMAILY DAY ENG PRI MIRA R', '27210700407', '2 - Primary with Upper Primary', '1', '7', 'Learning Villa, Grishma Complex C wing, Gaurav Enclave Phase IV, Mira Road East,Thane-401107', 'School'),
(130, 'N.H ACADEMY  PRI ENG SCH', '27210700410', '2 - Primary with Upper Primary', '1', '7', 'Asmita Enclave Naya Nagar Mira Road 401107', 'School'),
(131, 'N.H. ACADEMY PRIENG HIGHSCHOOL', '27210700411', '7 - Upper Pr. and Secondary', '8', '10', 'Asmita Enclave, Mira Road', 'School'),
(132, 'NL.DALMIYA.P.E.S.,MIRA ROAD(E.)', '27210700412', '1 - Primary', '1', '4', 'Srishti,  Sector 1, Mira Road-East, Thane - 401107.', 'School'),
(133, 'NL DALMIYA.S.E.S.,MIRA ROAD(E.)', '27210700413', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'Mira Bhayander M.Corp.', 'School'),
(134, 'QUEEN.MERRY.U.P.E.S.,MIRA ROAD(E.)', '27210700414', '2 - Primary with Upper Primary', '1', '7', 'Golden Nest ph iii mira road ', 'School'),
(135, 'QUEEN MERIS ENG HIGHSCH MIRA R', '27210700415', '7 - Upper Pr. and Secondary', '8', '10', 'Golden Nest Ph III Mira Road e', 'School'),
(136, 'R.K.U.P.E.S.,MIRA ROAD(E.)', '27210700416', '2 - Primary with Upper Primary', '1', '7', 'School Bldg. Ramdev Park Mira Road', 'School'),
(137, 'ROYAL GIRLS ENG PRI SCH MIRA ROAD', '27210700417', '2 - Primary with Upper Primary', '1', '7', 'Royal Girls High School Royal College Campus Shrishti Penkarpada Mira Road Dist Thane', 'School'),
(138, 'THE RAVAL INTERNATIONAL SCHOOL PRI', '27210700418', '2 - Primary with Upper Primary', '1', '7', 'RAVAL NAGAR MIRA ROAD EAST ', 'School'),
(139, 'L P RAVALSEC & COLLEGE  MIRA R', '27210700419', '10 - Secondary with Higher Secondary', '9', '12', 'RAVAL NAGAR MIRA ROAD EAST', 'School'),
(140, 'PODAR INTERNATIONAL SCHOOL', '27210700420', '2 - Primary with Upper Primary', '1', '8', 'Besides JP Infra 60 Ft Road Shanti Vidya Nagri Mira Road 401107', 'School'),
(141, 'SARDAR VALABHBHAI .P.P.E.S.,MIRA ROAD(E.)', '27210700423', '1 - Primary', '1', '4', 'SARDAR VALLABHBHAI PATEL VIDYALAYA  SHIVAR GARDEN MIRA BHAYANDER HIGHWAY MIRA ROAD EAST', 'School'),
(142, 'SYMBIOSIS U.P.E.S.,MIRA ROAD(E.)', '27210700424', '2 - Primary with Upper Primary', '1', '7', 'Heena Avenue  lodha road naya nagar Mira road Thane ', 'School'),
(143, 'SINBAYASIS SEC ENG SCHOOL', '27210700425', '7 - Upper Pr. and Secondary', '8', '10', 'Heena Avenue Naya nagar Lodha road Mira road  Thane', 'School'),
(144, 'SHANTI.N.U.P.E.S.,MIRA ROAD(E.)', '27210700426', '1 - Primary', '1', '4', 'Sector 2, Behind Sai Baba Mandir, Mira Road', 'School'),
(145, 'SHANTI NAGAR SEC SCHOOL', '27210700427', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'SECTOR 2 BEHINDE SAIBABA TEMPLE, MIRA ROAD', 'School'),
(146, 'ST.ANDREWS.P.E.S.,MIRA ROAD(E.)', '27210700428', '2 - Primary with Upper Primary', '1', '7', 'BLDG no.25, Jay Vijay Nagar, Silver Park, Mira road East', 'School'),
(147, 'ST.AUGASTIN .P.E.S.,MIRA ROAD(E.)', '27210700430', '2 - Primary with Upper Primary', '1', '7', 'Bungalow no 4 and 5 , Mahavir nagar, Deepak hospital lane, mira bhy road mira road east 401107', 'School'),
(148, 'ST HARISE PRIM HIGH SCHOOL', '27210700431', '2 - Primary with Upper Primary', '1', '7', 'behind al-shams masjid, naya nagar mira road east, thane-401107.', 'School'),
(149, 'ST JOSEPH.U.P.S.,MIRA ROAD(E.)', '27210700432', '2 - Primary with Upper Primary', '1', '7', 'SANGHVI TOWER  NEAR SRUSHTI BRIGE SHANTI PARK  MIRA ROAD  E', 'School'),
(150, 'ST.JUDS U.P.E.S.,MIRA ROAD(E.)', '27210700433', '2 - Primary with Upper Primary', '1', '7', '101, Asma Apt. Dharti Complex, Opp. R.k.Avenue Hotel, Mira Road, Thane', 'School'),
(151, 'OXFORD ENG HIGH SCHOOL', '27210700434', '7 - Upper Pr. and Secondary', '8', '10', 'B P ROAD BHAYANDAR EAST', 'School'),
(152, 'ST.LOUIS U.P.S.,MIRA ROAD(E.)', '27210700435', '2 - Primary with Upper Primary', '1', '7', 'Sai shiddi varsha tower sheetal nagar Mira road Thane', 'School'),
(153, 'ST POAL ENG PRI SCHOOL', '27210700436', '2 - Primary with Upper Primary', '1', '7', 'ST.PAULS HIGH SCHOOL NITYANAND NAGAR GAURAV GALAXY PHASE II MIRA ROAD E THANE 401107', 'School'),
(154, 'ST POAL.SEC.E.S.,MIRA ROAD(E.)', '27210700437', '7 - Upper Pr. and Secondary', '8', '10', 'ST PAULS HIGH SCHOOL NITYANAND NAGAR GAURAV GALAXY MIRA ROAD E THANE 401107', 'School'),
(155, 'ST.THAMS.U.P.E.S.,MIRA ROAD(E.)', '27210700438', '2 - Primary with Upper Primary', '1', '7', 'FLAT.NO1203,BUILDING.NO.347,SRISHTI SECTOR3, KALPATARU COMPLEX, MIRA ROAD EAST, district- thane', 'School'),
(156, 'ST.X.U.P.E.S.,MIRA ROAD(E.)', '27210700439', '2 - Primary with Upper Primary', '1', '7', 'Nr green avenue buildg, Shanti park Mira rd E', 'School'),
(157, 'ST XAVIER SECONDARY SCHOOL MIRA ROAD', '27210700440', '7 - Upper Pr. and Secondary', '8', '10', 'Near green Avenue, Shantipark', 'School'),
(158, 'COSMOPOTITIN SCHOOL,MIRA ROAD', '27210700441', '2 - Primary with Upper Primary', '1', '7', 'shanti nagar mira road', 'School'),
(159, 'ST.M.TERESA PRI. SCHOOL', '27210700443', '2 - Primary with Upper Primary', '1', '7', 'MIRA BHAYANDAR EAST DIDT. THANE', 'School'),
(160, 'G.S. JANGID MEMORIAL', '27210700444', '2 - Primary with Upper Primary', '1', '7', 'Opp Happy Home complex, Shanti park, Phase-3, Miraroad', 'School'),
(161, 'ST. HARIS HIGH SCHOOL SEC SCH', '27210700445', '7 - Upper Pr. and Secondary', '8', '10', 'Behind al-shams Masjid, Naya nagar,Mira Road East-401107', 'School'),
(162, 'ST.ANTHONI ENG HIGH SCHOOL', '27210700449', '2 - Primary with Upper Primary', '1', '7', 'NAYA NAGAR MIRA ROAD EAST', 'School'),
(163, 'ST THOMAS HIGH SCHOOL', '27210700450', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'FLAT.NO1203,BUILDING.NO.347,SRISHTI SECTOR3, KALPATARU COMPLEX, MIRA ROAD EAST, district- thane', 'School'),
(164, 'COSMOPOLITIN HIGH SCHOOL MIRA ROAD', '27210700451', '7 - Upper Pr. and Secondary', '8', '10', 'shanti nagar mira road', 'School'),
(165, 'GRESIYAS SEC HIGHSCHOOL', '27210700452', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'POONAM SAGAR MIRA ROAD EAST', 'School'),
(166, 'G.S. JANGID MOMORIYAL HIGH SCH', '27210700453', '7 - Upper Pr. and Secondary', '8', '10', 'Opp Happy home complex, Shanti park, phase-III, Miraroad', 'School'),
(167, 'ST TRESA HIGHSCHOOL', '27210700454', '2 - Primary with Upper Primary', '1', '8', 'huda apt, nayanagar, miraroad east', 'School'),
(168, 'CHRIST PRI ENG SCHOOL', '27210700455', '2 - Primary with Upper Primary', '1', '7', '001, PARK PLAZA, QUEENS PARK, MIRA BHAYANDER ROAD', 'School'),
(169, 'VEDANT INTERNATIONAL HIGHSC', '27210700457', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Savaliya park, nr. Haria dream park, GCC lane, mira road', 'School'),
(170, 'GRESIYAS PRI ENG SCHOOL', '27210700459', '2 - Primary with Upper Primary', '1', '7', 'POONAM SAGAR MIRA ROAD EAST', 'School'),
(171, 'P.G.HORA ENG PRI SCHOOL', '27210700460', '2 - Primary with Upper Primary', '1', '7', 'Sai Complex, Opp. Shanti Vihar, Miraroad', 'School'),
(172, 'DON BASKO HIGHSCHOOL', '27210700461', '2 - Primary with Upper Primary', '1', '7', 'SHANTI PARK , MIRA ROAD E', 'School'),
(173, 'SARDAR VALLBHAI PATEL HIGHSC', '27210700462', '6 - Pr. Up Pr. and Secondary Only', '5', '10', 'SARDAR VALLABHBHAI PATEL VIDYALAYA SHIVAR GARDEN MIRA ROAD EAST THANE 401107', 'School'),
(174, 'HOLY FAMILY DAY SCHOOL & JR COLLEGE', '27210700463', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Poonam Sagar Complex, Sana house, Mira road East Dist thane 401107', 'School'),
(175, 'JAYANT DATTA HIGHSCHOOL', '27210700464', '7 - Upper Pr. and Secondary', '8', '10', 'SHREE LAXMI PARK BEVERLI PARK MIRA ROAD EAST', 'School'),
(176, 'R K ENGLISH PRI SCHOOL', '27210700465', '7 - Upper Pr. and Secondary', '8', '10', 'School Bldg. Ramdev Park Mira Road', 'School'),
(177, 'ST. JOSEPH SEC HIGH SCHOOL', '27210700468', '7 - Upper Pr. and Secondary', '8', '10', 'Sanghvi Tower Near Shrishti Bridge  Shanti Park Miraroad E', 'School'),
(178, 'RAMABEN KANKIYA SEC HIGHSCHOOL', '27210700469', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Beverly Park, Mira - Bhayander Road, Mira Road - E', 'School'),
(179, 'S. K. ENGKISH SCHOOL', '27210700471', '2 - Primary with Upper Primary', '1', '7', 'MUNISH PETALS, INDRALOK 3, BHAYANDAR East', 'School'),
(180, 'INDIYAN HIGH SCHOOL', '27210700473', '2 - Primary with Upper Primary', '1', '7', 'Opp GCC Club Hatkesh Mira Bhayander road Mira Road Thane 401107', 'School'),
(181, 'ROZARI HIGH SCHOOL', '27210700478', '2 - Primary with Upper Primary', '1', '7', 'Rythem Tower, Pooja Nagar Road, Naya Nagar, Miraroad East', 'School'),
(182, 'VIDYA SAGAR SCH', '27210700486', '2 - Primary with Upper Primary', '1', '7', 'navghar road bhayandar east', 'School'),
(183, 'S.M.PUBLIC SCHOOL', '27210700487', '2 - Primary with Upper Primary', '1', '7', 'TALAV ROAD BHAYANDAR EAST', 'School'),
(184, 'ST. PETER SCHOOL', '27210700488', '2 - Primary with Upper Primary', '1', '7', 'ground flor, B wing, om mahavir apartment, Near naresh steel, S.V road, kasturi park, bhayander east', 'School'),
(185, 'CHRIST ENG HIGH SCHOOL KASHI', '27210700489', '7 - Upper Pr. and Secondary', '8', '10', 'A001 PARK PLAZA QUEENS PARK MIRA BHAYANDER ROAD', 'School'),
(186, 'ST APPOLLONIAS CON ENG SEC SCH B E', '27210700490', '7 - Upper Pr. and Secondary', '8', '10', 'Shiv Shakti Nagar, Navghar Road , Bhayander East', 'School'),
(187, 'ST AUGUSTINS ENG HIGH SEC SCH MIRA R', '27210700491', '7 - Upper Pr. and Secondary', '8', '10', 'Bungalow 4 and 5  MahAvir nagar deepak hospital lane Mira-Bhayander road Miraroad East', 'School'),
(188, 'P.G.VORA HIGH SCHOOL', '27210700492', '7 - Upper Pr. and Secondary', '8', '10', 'SAI COMPLEX, MIRA ROAD', 'School'),
(189, 'ST.XEVIERS HIGH SCHOOL KASHIGAON', '27210700493', '7 - Upper Pr. and Secondary', '8', '10', 'BEHIND SAIKRUPA COMPLEX KASHIGAON MIRA ROAD DIST THANE 401107', 'School'),
(190, 'ST.JOHN\'S HIGH SCHOOL KASHIGAON', '27210700495', '2 - Primary with Upper Primary', '1', '7', 'Sai krupa complex kashigaon mira road Thane', 'School'),
(191, 'MOMAI GLOBAL SCHOOL', '27210700496', '2 - Primary with Upper Primary', '1', '7', 'Bharati Park, opp. Mc Donald, Mira bhayander Rd , mira road 401107', 'School'),
(192, 'SHARDHABAN PRANJEEVAN BAI ENG SCHOOL', '27210700497', '2 - Primary with Upper Primary', '1', '7', 'GCC club Rashmi complex mira road ', 'School'),
(193, 'BRIGHT INTERNATIONAL SCHOOL', '27210700498', '7 - Upper Pr. and Secondary', '8', '10', 'Near Kanakia Police Station,Mira Road East,Thane-401107', 'School'),
(194, 'INDIAN HIGH SCHOOL SECONDRY', '27210700499', '7 - Upper Pr. and Secondary', '8', '10', 'Opp GCC CLUB  Hatkesh Mira Bhayander Road Mira Road Thane 401107', 'School'),
(195, 'B.M.S.U.P.S.,KASHI', '27210700501', '2 - Primary with Upper Primary', '1', '7', 'Opp. Vitthal Mandir, Kashimira, Miraroad, Thane 401', 'School'),
(196, 'B M S SEC ENG SCHOOL', '27210700502', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'opp. Vithhal mandir, Kashimira, Miraroad, Thane 401107', 'School'),
(197, 'ST.JEROM.P.S.,KASHI', '27210700519', '2 - Primary with Upper Primary', '1', '7', 'st.JEROME CONVENT HIGH SCHOOL, KASHIMIRA P.O MIRA THANE 401107', 'School'),
(198, 'ST.MARYS.U.P.S.,KASHI', '27210700520', '2 - Primary with Upper Primary', '1', '7', 'Mira CHS, Behind Hotel Amar Palace, Miragaon, Mira Road-E, Thane 401107', 'School'),
(199, 'TRINITY ENG P.S.,KASHI', '27210700522', '2 - Primary with Upper Primary', '1', '7', 'Penkar pada Mira road east', 'School'),
(200, 'AABID PATEL MEMO PRI ENG SCH', '27210700526', '2 - Primary with Upper Primary', '1', '7', 'Patel complex, Mira village', 'School'),
(201, 'ABID PATEL MEMORIAL SHCOOL', '27210700527', '11 - Higher Secondary only/Jr. College', '11', '12', 'PATEL COMPLEX MIRAGAON MIRAROAD', 'School'),
(202, 'ST. XEVIOR SCH PRI', '27210700528', '2 - Primary with Upper Primary', '1', '7', 'BEHIND SAIKRUPA COMPLEX KASHIGAON MIRA RAOD DIST THANE 401107', 'School'),
(203, 'TRINITY ENG SEC SCHOOL', '27210700529', '7 - Upper Pr. and Secondary', '8', '10', 'Penkar pada mira road east', 'School'),
(204, 'ST MERRYJ SEC SCHOOL', '27210700532', '7 - Upper Pr. and Secondary', '8', '10', 'MIRA CHS, BEHIND HOTEL AMAR PALACE, MIRAGAON, MIRA ROAD-E, THANE 401107', 'School'),
(205, 'ST. DOMNIC SAVIO PRI', '27210700540', '2 - Primary with Upper Primary', '1', '7', 'hatkesh mira road east', 'School'),
(206, 'SEVEN SQUARE ACADEMY', '27210700541', '2 - Primary with Upper Primary', '1', '7', 'SEVEN ELEVEN EDUCATION SOCIETY SEVEN ELEVEN MANSION DEEPAK HOSPITAL LANE IDEAL PARK MIRA RAOD EAST', 'School'),
(207, 'K.S.MEHTA HIGH SCHOOL', '27210700542', '2 - Primary with Upper Primary', '1', '7', 'sai baba nagar mira road ', 'School'),
(208, 'SANTHOME PUBLIC SCHOOL', '27210700543', '2 - Primary with Upper Primary', '1', '7', 'PLOT NO. 270, KANAKIA ROAD, NR SHALOM RESIDENCY, MIRA ROAD EAST ,DIST, THANE', 'School'),
(209, 'BARIGHT INTE RNATIONAL PRI SCHOOL', '27210700544', '2 - Primary with Upper Primary', '1', '7', 'Near Kanakia Police Station Beverly Park Mira Road-East Thane', 'School'),
(210, 'K S MAHTA SEC ENG SCHOOL KASHI', '27210700547', '7 - Upper Pr. and Secondary', '8', '10', 'Sai Baba Nagar, Mira Road ', 'School'),
(211, 'ST DOMINIC SAVIO SEC ENG SCHOOL KASHI', '27210700548', '7 - Upper Pr. and Secondary', '8', '10', 'hatkesh mira road east', 'School'),
(212, 'ST JUDES HIGH SCH SEC MIRA R', '27210700549', '7 - Upper Pr. and Secondary', '8', '10', '101, Asma Apt. Dharti Complex, Opp. R.K. Avenue Hotel, Mira Road', 'School'),
(213, 'R B K GLOBAL ENG SCH MIRA E', '27210700550', '2 - Primary with Upper Primary', '1', '8', 'INDRALOK, PHASE 6, BHAYANDER EAST, THANE - 401105', 'School'),
(214, 'RELEVANT PRI ENG SCH MIRA R', '27210700551', '2 - Primary with Upper Primary', '1', '7', 'near deepak hospital mira bhayander', 'School'),
(215, 'RELEVANT SEC ENG SCH MIRA R', '27210700552', '7 - Upper Pr. and Secondary', '8', '10', 'near deepak hospital mira road', 'School'),
(216, 'TAPOVAN VIDHYALAY ENG SC BHA EAST', '27210700553', '2 - Primary with Upper Primary', '1', '8', 'opp. sai ram tower,indralok phase iv,new golden nest rd,bhayander east', 'School'),
(217, 'JAYANT DUTTA  PRI ENG HIGH SCHOOL M,IRA ROAD', '27210700555', '2 - Primary with Upper Primary', '1', '7', 'SHREE LAXMI PARK,BEVERLI PARK,MIRAROAD EAST', 'School'),
(218, 'DON BOSKO HIGH SCHOOL SHANTI PARK(ENG)', '27210700556', '7 - Upper Pr. and Secondary', '8', '10', 'SHANTI PARK MIRA RD E', 'School'),
(219, 'ST.JOHN ENG.HIGH SCHOOL,KASHIGAON', '27210700557', '7 - Upper Pr. and Secondary', '8', '10', 'Sai krupa complex kashigaon mira road Thane401107', 'School'),
(220, 'ST.TREZA ENG. HIGH SCHOOL,MIRAROAD', '27210700558', '7 - Upper Pr. and Secondary', '8', '10', 'huda apt naya nagar,miraroad east', 'School'),
(221, 'AADARSH VIDYANIKETAN ENG.(PRI),KASHIMIRA', '27210700559', '2 - Primary with Upper Primary', '1', '7', 'Adarsh Vidya Niketan, Kashimira, Miraroad, East', 'School'),
(222, 'AADARSH VIDYANIKETAN ENG.(SEC),KASHIMIRA', '27210700560', '7 - Upper Pr. and Secondary', '8', '10', 'Adarsh Vidya Niketan, Kashimira, Miraroad East', 'School'),
(223, 'ROYAL ENGLISH HIGH SCHOOL,DALMIYA', '27210700562', '7 - Upper Pr. and Secondary', '8', '10', 'Royal Girls High School , Royal College Campus, Shrishtii, Penkarpada, Mira Road, Thane 401107', 'School'),
(224, 'SANTHOM PUBLIC SCHOOL,MIRAROAD', '27210700563', '7 - Upper Pr. and Secondary', '8', '10', 'PLOT NO 270, KANAKIA ROAD, NR SHALOM RESIDENCY, MIRA ROAD ,EAST DIST, THANE', 'School'),
(225, 'WESTERN ENGLISH SCHOOL', '27210700564', '2 - Primary with Upper Primary', '1', '8', '154, Western Park, Kashimira, Mira Road E Thane 401107', 'School'),
(226, 'ST.ANDRUJ ENGLISH SCHOOL', '27210700565', '7 - Upper Pr. and Secondary', '8', '10', 'BLD 23 Jay Vijay Nagar, Inside Chandresh Acciord, Opp Silver Park, Mira Road East', 'School'),
(227, 'ST. ANTHONY HIGH SCHOOL', '27210700566', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'NAYA NAGAR MIRA ROAD EAST', 'School'),
(228, 'SANJEEVAN LEARNING CENTER', '27210700567', '2 - Primary with Upper Primary', '1', '7', 'ROSE APARTMENT,  BHARTI PARK, OPP R.K.INN HOTEL, MIRA ROAD EAST', 'School'),
(229, 'U.S.OSTWAL ENG.ACADAMY PRI.', '27210700568', '2 - Primary with Upper Primary', '1', '7', 'Ajd.to GCC Club,Mira Road East Thane ', 'School'),
(230, 'U.S.OSTWAL ENG.ACADAMY SEC.', '27210700569', '7 - Upper Pr. and Secondary', '8', '10', 'Mira Bhayandar Municipal corporation', 'School'),
(231, 'VEDANT INTERNATIONAL HIGH SCHOOL', '27210700570', '2 - Primary with Upper Primary', '1', '7', 'SAVLIYA PARK, NR. HARIA DREAM PARK, GCC LANE, MIRA ROAD ', 'School'),
(232, 'A.P.INTERNATIONAL SEC.SCHOOL', '27210700571', '7 - Upper Pr. and Secondary', '8', '10', 'MIRA VILLAGE, MIRA ROAD', 'School'),
(233, 'ROSARY HIGH SCHOOL', '27210700572', '7 - Upper Pr. and Secondary', '8', '10', 'Rythem Tower, Pooja Nagar Rd, Naya Nagar, Miraroad east', 'School'),
(234, 'THE DON BOSCO HIGH SCHOOL, MIRA ROAD EAST', '27210700573', '6 - Pr. Up Pr. and Secondary Only', '1', '10', 'PLEASANT PARK MIRA ROAD EAST', 'School'),
(235, 'SEVEN SQUEREACADMY SEC', '27210700574', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'SEVEN ELEVEN EDUCATION SOCIETY  SEVEN ELEVEN MANSION IDEAL PARK MIRA ROAD EAST', 'School'),
(236, 'MOUNT CARMEL SCHOOL MIRA ROAD', '27210700575', '2 - Primary with Upper Primary', '1', '8', 'Anubhav, Shanti Nagar, Mira road east', 'School'),
(237, 'PATRIOT HIGH SCHOOL MIRA R', '27210700576', '2 - Primary with Upper Primary', '1', '7', '104 A Asmita Hill View Naya Nagar Mira Road East Thane 401107', 'School'),
(238, 'RASSAZ INTERNATIONAL SCHOOL', '27210700577', '2 - Primary with Upper Primary', '1', '8', 'Evershine Nagar, Mira Road East', 'School'),
(239, 'OUR LADY OF FATIMA SCHOOL', '27210700578', '2 - Primary with Upper Primary', '1', '8', 'MIRA GAON NEAR AMAR PALACE HOTEL KASHIMIRA MIRA ROAD EAST', 'School'),
(240, 'DEEPJYOTI SCHOOL,MIRAROAD EAST', '27210700579', '2 - Primary with Upper Primary', '1', '8', 'Poonam Sagar Complex, Mira Road East, Thane-401107', 'School'),
(241, 'ASMITA COLLEGE OF ARTS& COMMERCE', '27210700580', '11 - Higher Secondary only/Jr. College', '11', '12', 'Mira Bhayandar Mahanagar Palika Bhayandar West', 'School'),
(242, 'MOMAI GLOBAL SCHOOL', '27210700581', '7 - Upper Pr. and Secondary', '8', '10', 'Bharati Park , opp, to Mc donald , Mira Bhayander RD Mira road', 'School'),
(243, 'RAJA SHIVAJI ENGLISH PRIMARY SCHOOL,GHODBANDAR', '27210700582', '1 - Primary', '1', '4', 'Raja shivaji english primary school,ghodbunder village', 'School'),
(244, 'FALAH ENGLISH HIGH SCHOOL', '27210700583', '8 - Secondary Only', '9', '10', 'ROSE APARTMENT,  BHARTI PARK, OPP R.K.INN HOTEL, MIRA ROAD EAST', 'School'),
(245, 'WESTERN ENGLISH HIGH SCHOOL', '27210700584', '8 - Secondary Only', '9', '10', '154, Western Park, Kashimira Mira Road E Thane 401107', 'School'),
(246, 'RAHUL INTERNATIONAL SCHOOL CBSE', '27210700585', '3 - Pr. with Up.Pr. sec. and H.Sec.', '1', '12', 'Near Shree L.R. Tiwari Engineering College, Kanakia Road, Mira road', 'School'),
(247, 'RAHUL INTERNATIONAL SCHOOL IGCSE', '27210700586', '3 - Pr. with Up.Pr. sec. and H.Sec.', '1', '12', ' Kanakia Park Mira Road  East Thane  401107', 'School'),
(248, 'SARDAR VALLABHBHAI PATEL COLLEGE OF COMMERECE AND SCIENCE', '27210700590', '11 - Higher Secondary only/Jr. College', '11', '12', 'NEAR SHIVAR GARDEN MIRA BHAYANDER ROAD  MIRA ROAD EAST', 'School'),
(249, 'R K ENG PRI SCHOOL', '27210700603', '2 - Primary with Upper Primary', '1', '7', 'School Building ,RamdevPark, Mira Road ', 'School'),
(250, 'K B NARAVAT ENG SEC SCHOOL', '27210700604', '7 - Upper Pr. and Secondary', '8', '10', '124, cabin road, khari gaon bhy east', 'School'),
(251, 'JACK & JILL PRI SCHOOL', '27210700606', '2 - Primary with Upper Primary', '1', '7', 'Shiv SHakti Nagar, Near Sachin Tendulkar Ground, Navghar Road Bhayander', 'School'),
(252, 'RAHUL ENG SEC SCHOOL', '27210700607', '7 - Upper Pr. and Secondary', '8', '10', 'S.V Road near Kashiwishwanath temple Bhayandar east', 'School'),
(253, 'NEW MODARN ENG SCHOOL', '27210700608', '7 - Upper Pr. and Secondary', '8', '10', '171/6 Uttaranchal Bhavan New Modern English High School Navghar Road Kasturi Park Bhayandar  East', 'School'),
(254, 'NARMADA MEMOREEL SEC ENG SCH', '27210700609', '7 - Upper Pr. and Secondary', '8', '10', 'Saraswati Park No.2. Navghar Cross S V Road Bhayandar East Thane 401105', 'School'),
(255, 'R K MEMOREEL SEC ENG SCHOOL', '27210700610', '3 - Pr. with Up.Pr. sec. and H.Sec.', '5', '12', 'indra lok bhayandar east', 'School'),
(256, 'INFANT JIJAS ENG SEC SCHOOL', '27210700612', '7 - Upper Pr. and Secondary', '8', '10', 'cabin road bhayandar east ', 'School'),
(257, 'AMARJYOTI JR.COLLEGE', '27210700616', '11 - Higher Secondary only/Jr. College', '11', '12', 'plot no 10 c salasar nagar saibaba nagar navghar cross road bhayander east thane 401105', 'School'),
(258, 'PREMA LAXMAN V E P', '27210700617', '2 - Primary with Upper Primary', '1', '7', 'prema laxman vidyalaya penkar pada', 'School'),
(259, 'SHIKHAR INTERNATIONAL P E MIRA R', '27210700619', '2 - Primary with Upper Primary', '1', '7', 'Ground floor, Building no. A-6, Sector-4, Shanti Nagar, Mira Road east', 'School'),
(260, 'GOLDEN NEST P E', '27210700620', '2 - Primary with Upper Primary', '1', '7', 'Sonmam Madhuban New Golden nest ph 9 Bhayander East', 'School'),
(261, 'ST.JEROME CONVENT H E SCH', '27210700622', '7 - Upper Pr. and Secondary', '8', '10', 'ST JEROME CONVENT HIGH SCHOOL KASHIMIRA MIRA ROAD THANE 401107', 'School'),
(262, 'GOLDEN NEST ENGLISH HIGH SCHOOL', '27210700623', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'Aims Junction Indra lok ph 6 Bhayander East', 'School'),
(263, 'PREMA LAXMAN V ENG SEC MIRA R', '27210700624', '7 - Upper Pr. and Secondary', '8', '10', 'prema laxman vidyalaya penkar pada', 'School'),
(264, 'NATIONAL HIGH SCH ENG SEC BHAY EAST', '27210700626', '7 - Upper Pr. and Secondary', '8', '10', 'RAIGADH BULD B P ROAD BHAYANDER EAST', 'School'),
(265, 'BANEGAR ENGLISH SCHOOL & HAFIZA JR COLLEGE OF ARTS SCI &COM', '27210700627', '11 - Higher Secondary only/Jr. College', '11', '12', 'Off Lodha Road Opp Saryu Sargam Naya Nagar Mira Road E 401107', 'School'),
(266, 'SEVEN ELEVEN SCHOLASTIC SCHOOL', '27210700628', '6 - Pr. Up Pr. and Secondary Only', '1', '10', 'UNIQUE GARDEN, NEAR JANGID ENCLAVE, KANAKIA ROAD, MIRA ROAD EAST 401107', 'School'),
(267, 'MADHUSUDHAN GLOBAL SCHOOL', '27210700629', '7 - Upper Pr. and Secondary', '8', '10', 'MADHUSUDHAN GLOBAL SCHOOL . MIRA BHAYANDER ROAD MIRA ROAD EAST', 'School'),
(268, 'R.B.K ENG SCH PRI ICSE', '27210700630', '2 - Primary with Upper Primary', '1', '7', 'Beverly Park, Mira Road E', 'School'),
(269, 'M S CREATIVE SCHOOL MIRA ROAD', '27210700631', '2 - Primary with Upper Primary', '1', '8', 'vasudev planet commercial no 1, near laxmi park opp.vandana heights kanakia road mira road EThane', 'School'),
(270, 'SINGAPORE INTERNATIONAL SCHOOL', '27210700633', '3 - Pr. with Up.Pr. sec. and H.Sec.', '1', '12', 'ON NH 8,Mira Road-East,Thane-401104', 'School'),
(271, 'GCC INTERNATIONAL SCHOOL', '27210700634', '2 - Primary with Upper Primary', '1', '8', 'opp gcc hotel and club mira road east', 'School'),
(272, 'ST.JOHNS HIGH SCHOOL', '27210700636', '2 - Primary with Upper Primary', '1', '8', 'NARENDRA PARK NAYA NAGAR MIRA ROAD EAST', 'School'),
(273, 'MOUNT CARMEL SCHOOL', '27210700638', '8 - Secondary Only', '9', '10', 'Mount Carmel School, ANUBHAV,  MIRA ROAD EAST', 'School'),
(274, 'SHRI L R TIWARI JUNIOR COLLEGE OF COMMERCE AND SCIENSE', '27210700639', '11 - Higher Secondary only/Jr. College', '11', '12', 'shree l.r tiwari educational campus kanakia road mira road east', 'School'),
(275, 'GLOBAL INTERNATIONAL PRIMARY SCHOOL', '27210700134', '2 - Primary with Upper Primary', '1', '8', 'PRATIBHA BLD., OPP MBMC SCHOOL, MURDHA GAON, UTTAN ROAD, BHAYANDAR WEST', 'School'),
(276, 'MANJUL VIDYA MANDIR U P HINDI', '27210700222', '2 - Primary with Upper Primary', '1', '7', 'road view bldg, 60 feet road, bhy west', 'School'),
(277, 'MANJUL VIDYA MANDIR SEC HINDI', '27210700249', '7 - Upper Pr. and Secondary', '8', '10', 'road view bldg, 60 feet road, 1st floor, bhy west', 'School'),
(278, 'SUBODH VIDYALAY SEC MARATHI BHY WEST', '27210700268', '7 - Upper Pr. and Secondary', '8', '10', 'Siddhivinayak marg Bekary  galli Bihind ice   factory  Bhayandar  west', 'School'),
(279, 'LALIT VIDYA NIKETAN BHA EAST', '27210700269', '1 - Primary', '1', '4', 'PANDURANG CHHAYA BLD B P ROAD BYHAYANDAR EAST', 'School'),
(280, 'S B S MEMORIAL HIGH SCHOOL (HINDI)', '27210700274', '7 - Upper Pr. and Secondary', '8', '10', 'PADMA COMPLEX NAVGHAR RD NEAR S N COLLEGE BHY EAST', 'School'),
(281, 'RBK INTERNATIONAL SCHOOL', '27210700284', '6 - Pr. Up Pr. and Secondary Only', '1', '10', 'RBK INTERNATIONAL SCHOOL , INDRALOK PHASE 6, NEAR SHALOM HOSPITAL, BHAYANDER - E ', 'School'),
(282, 'DIVE DROP.U.P.H.S.,BHAYANDAR', '27210700320', '2 - Primary with Upper Primary', '1', '7', 'Kashigaon, Kashimira, Miraroad - East', 'School'),
(283, 'NATIONAL.U.P.H.S.,BHAYANDAR', '27210700349', '2 - Primary with Upper Primary', '1', '7', 'RAIGADH BLDG B P ROAD BHAYANDER EAST', 'School'),
(284, 'NEW CAMBRIGE PRI HINDI SCHOOL', '27210700353', '2 - Primary with Upper Primary', '1', '7', 'Near Sai baba Temple, Murdha Rai Village, Bhayander West ', 'School'),
(285, 'OM SWAMI VIVEKANAND U.P.H.S.,BHAYANDAR', '27210700357', '2 - Primary with Upper Primary', '1', '7', 'Yogiraj apt Shirdi nagar bhayandar east', 'School'),
(286, 'OM SAI VIVEKANAD SEC HINDI SCH', '27210700358', '7 - Upper Pr. and Secondary', '8', '10', 'g8 yagiraj apt shirdi nagar bhayandar thane', 'School'),
(287, 'R.V.N.U.P.H.S.,BHAYANDAR', '27210700365', '2 - Primary with Upper Primary', '1', '7', 'Near Kashi Vishwanath Mandir, S.V. Road, R.N.P. Park, Bhayander East, Thane - 401 105', 'School'),
(288, 'SHREE SAI BABA.P.H.S.,BHA EAST', '27210700368', '2 - Primary with Upper Primary', '1', '7', 'Sai GuruKupa CHS Kashi Nagar Bhayander', 'School'),
(289, 'INDIAN KEBRIG SHOOL', '27210700385', '2 - Primary with Upper Primary', '1', '7', ' pooja building,narmada nagar bhayander east', 'School'),
(290, 'ANJUMAN YATAMA URDU SEC SCHOOL', '27210700402', '7 - Upper Pr. and Secondary', '8', '10', 'MIRA ROAD, NAYA NAGAR ,DIST THANE .401107', 'School'),
(291, 'SHARADA VIDYALAYA PRI. SCHOOL', '27210700442', '2 - Primary with Upper Primary', '1', '7', 'TRIVEDI COMPLEX, SHEETAL NAGAR, CHURCH ROAD, MIRA ROAD EAST DIST THANE 401107', 'School'),
(292, 'SHARADA VIDYALAYA SEC MAR SCH', '27210700446', '5 - Up. Pr. Secondary and Higher Sec', '8', '12', 'TRIVEDI COMPLEX, SHEETAL NAGAR, CHURCH ROAD,MIRA ROAD EAST DIST THANE 401107', 'School'),
(293, 'NOORJAHAN URDU PRI SCHOOL', '27210700466', '2 - Primary with Upper Primary', '1', '7', 'Mira Bhayandar  mira road thane', 'School'),
(294, 'RELIVENT PRI HINDI SCHOOL', '27210700472', '2 - Primary with Upper Primary', '1', '7', 'deepak hostipal mira road', 'School'),
(295, 'SWAMI DYANAND PRI SCHOOL', '27210700481', '2 - Primary with Upper Primary', '1', '7', 'Sai krupa complex kashigaon kashimira Mira Road Thane 401107', 'School'),
(296, 'Open', '0', 'non', 'non', 'non', 'non', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ticket_type` enum('Individual','Team') NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `additional_request` text DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `verification_status` enum('Pending','Verified','Rejected') DEFAULT 'Pending',
  `payment_status` enum('Pending','Paid','Failed') DEFAULT 'Pending',
  `age` int(255) DEFAULT NULL,
  `unique_code` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration_id`, `full_name`, `email`, `phone`, `password`, `ticket_type`, `institution`, `event`, `additional_request`, `registration_date`, `verification_status`, `payment_status`, `age`, `unique_code`) VALUES
(0, 'vishnu', 'kalilinux16112004@gmail.com', '9930420669', '$2y$10$9LXSslscqkeaT0WqnuT82OzSpnOTw9o2Y82NHXzrg0uubYlCBsQQ.', 'Team', 'Open', 'Innovation Challenge', 'hi', '2024-12-01 20:01:25', 'Pending', 'Pending', 1, '0b727'),
(11, 'vishnu', 'vishnurajvishwakarma@gmail.com', '9322871984', '$2y$10$S79qaRjbFF8vQNBUoYZCTO3S7P9wzo5Oxl6ADbV73z/FtLNzYSGdS', 'Team', 'ADARSH VIDYAMANDIR RAI ENGLISH', 'Robo Soccer', '1', '2024-11-30 08:35:23', 'Pending', 'Pending', 21, '0aa7c');

--
-- Triggers `registrations`
--
DELIMITER $$
CREATE TRIGGER `generate_unique_code` BEFORE INSERT ON `registrations` FOR EACH ROW BEGIN
    SET NEW.unique_code = LEFT(REPLACE(UUID(), '-', ''), 5);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `member_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `event_registration_id` int(11) DEFAULT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_email` varchar(255) NOT NULL,
  `member_phone` varchar(20) NOT NULL,
  `member_institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`event_registration_id`),
  ADD KEY `registration_id` (`registration_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `registration_id` (`registration_id`),
  ADD KEY `event_registration_id` (`event_registration_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_registrations`
--
ALTER TABLE `event_registrations`
  MODIFY `event_registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD CONSTRAINT `event_registrations_ibfk_1` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`registration_id`),
  ADD CONSTRAINT `event_registrations_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`registration_id`),
  ADD CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`event_registration_id`) REFERENCES `event_registrations` (`event_registration_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
