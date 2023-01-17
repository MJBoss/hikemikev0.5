-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 11:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mike`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `emp_id` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`emp_id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
('10021', '1', '1', 'email1@gmail.com', '12/12/2012'),
('10022', '1', '1', 'email1@gmail.com', '12/13/2012'),
('10023', '1', '1', 'email1@gmail.com', '12/14/2012'),
('10024', '1', '1', 'email1@gmail.com', '12/15/2012'),
('10025', '1', '1', 'email1@gmail.com', '12/16/2012'),
('10026', '1', '1', 'email1@gmail.com', '12/17/2012'),
('10027', '1', '1', 'email1@gmail.com', '12/18/2012'),
('10028', '1', '1', 'email1@gmail.com', '12/19/2012'),
('10029', '1', '1', 'email1@gmail.com', '12/20/2012'),
('10030', '1', '1', 'email1@gmail.com', '12/21/2012'),
('10031', '1', '1', 'email1@gmail.com', '12/22/2012'),
('10032', '1', '1', 'email1@gmail.com', '12/23/2012'),
('10033', '1', '1', 'email1@gmail.com', '12/24/2012'),
('10034', '1', '1', 'email1@gmail.com', '12/25/2012'),
('10035', 'Fname15', 'Lname15', 'email1@gmail.com', '12/26/2012'),
('10036', 'Fname16', 'Lname16', 'email1@gmail.com', '12/27/2012'),
('10037', 'Fname17', 'Lname17', 'email1@gmail.com', '12/28/2012'),
('10038', 'Fname18', 'Lname18', 'email1@gmail.com', '12/29/2012'),
('10039', 'Fname19', 'Lname19', 'email1@gmail.com', '12/30/2012'),
('10040', 'Fname20', 'Lname20', 'email1@gmail.com', '12/31/2012'),
('10041', 'Fname6', 'updated6', 'email1@gmail.com', '1/1/2013'),
('10042', 'Fname7', 'updated7', 'email1@gmail.com', '1/2/2013'),
('10043', 'Fname8', 'updated8', 'email1@gmail.com', '1/3/2013'),
('10044', 'Fname9', 'updated9', 'email1@gmail.com', '1/4/2013'),
('10045', 'Fname10', 'updated10', 'email1@gmail.com', '1/5/2013'),
('10046', 'fnm6', 'Lname21', 'email1@gmail.com', '1/6/2013'),
('10047', 'fnm7', 'Lname22', 'email1@gmail.com', '1/7/2013');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `c_id` int(20) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(20) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_code`, `course_desc`) VALUES
(1, 'BSIT', 'Bachelor of Science in Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grades`
--

CREATE TABLE `tbl_grades` (
  `grd_id` int(20) NOT NULL,
  `s_id` varchar(50) NOT NULL,
  `sbj_id` int(10) NOT NULL,
  `sy_id` int(10) NOT NULL,
  `sem_id` int(10) NOT NULL,
  `prelim` varchar(10) NOT NULL,
  `midterm` varchar(10) NOT NULL,
  `prefinal` varchar(10) NOT NULL,
  `final` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_grades`
--

INSERT INTO `tbl_grades` (`grd_id`, `s_id`, `sbj_id`, `sy_id`, `sem_id`, `prelim`, `midterm`, `prefinal`, `final`) VALUES
(1449, 'SCC-21-00012754', 3, 1, 1, '2.2', '1.9', '1', '1'),
(1450, 'SCC-21-00012377', 3, 1, 1, '1.9', '1.9', '1', '1'),
(1451, 'SCC-21-00014673', 3, 1, 1, '2.6', '2.3', '1', '1'),
(1452, 'SCC-21-00012759', 3, 1, 1, '2.2', '2.1', '1', '1'),
(1453, 'SCC-12-000787', 3, 1, 1, '2.2', '1.9', '1', '1'),
(1454, 'SCC-21-00014484', 3, 1, 1, '2.3', '2.2', '1', '1'),
(1455, 'SCC-21-00013902', 3, 1, 1, '2.2', '2.2', '1', '1'),
(1456, 'SCC-21-00014043', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1457, 'SCC-21-00013949', 3, 1, 1, '2.2', '2', '1', '1'),
(1458, 'SCC-21-00012758', 3, 1, 1, '2.3', '2.1', '1', '1'),
(1459, 'SCC-21-00012668', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1460, 'SCC-19-0009366', 3, 1, 1, '2.5', '2.2', '1', '1'),
(1461, 'SCC-21-00012952', 3, 1, 1, '2.2', '2.1', '1', '1'),
(1462, 'SCC-19-0009641', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1463, 'SCC-19-0009640', 3, 1, 1, '2.5', '2.2', '1', '1'),
(1464, 'SCC-21-00012780', 3, 1, 1, '2.5', '2.2', '1', '1'),
(1465, 'SCC-19-00010435', 3, 1, 1, '2.6', '2.3', '1', '1'),
(1466, 'SCC-21-00014629', 3, 1, 1, '2', '2', '1', '1'),
(1467, 'SCC-21-00012059', 3, 1, 1, '2.4', '2.3', '1', '1'),
(1468, 'SCC-21-00014548', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1469, 'SCC-21-00012365', 3, 1, 1, '2', '2.1', '1', '1'),
(1470, 'SCC-18-0006278', 3, 1, 1, '2.1', '2.2', '1', '1'),
(1471, 'SCC-21-00014672', 3, 1, 1, '1.7', '2', '1', '1'),
(1472, 'SCC-21-00013063', 3, 1, 1, '2.3', '2.2', '1', '1'),
(1473, 'SCC-21-00012170', 3, 1, 1, '1.7', '1.9', '1', '1'),
(1474, 'SCC-21-00013940', 3, 1, 1, '2.3', '2.1', '1', '1'),
(1475, 'SCC-21-00014313', 3, 1, 1, '2.1', '2.1', '1', '1'),
(1476, 'SCC-18-0007148', 3, 1, 1, '2.3', '2.2', '1', '1'),
(1477, 'SCC-21-00012584', 3, 1, 1, '2', '1.9', '1', '1'),
(1478, 'SCC-19-0008942', 3, 1, 1, '1.9', '1.9', '1', '1'),
(1479, 'SCC-18-0006655', 3, 1, 1, '2.1', '2', '1', '1'),
(1480, 'SCC-21-00013876', 3, 1, 1, '2.5', '2.3', '1', '1'),
(1481, 'SCC-21-00012762', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1482, 'SCC-21-00012221', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1483, 'SCC-21-00012085', 3, 1, 1, '1.4', '1.7', '1', '1'),
(1484, 'SCC-19-0009860', 3, 1, 1, '2.2', '2.2', '1', '1'),
(1485, 'SCC-21-00012098', 3, 1, 1, '1.5', '1.8', '1', '1'),
(1486, 'SCC-21-00012034', 3, 1, 1, '1.4', '1.8', '1', '1'),
(1487, 'SCC-21-00013844', 3, 1, 1, '2.3', '2.1', '1', '1'),
(1488, 'SCC-21-00012205', 3, 1, 1, '2.5', '2.2', '1', '1'),
(1489, 'SCC-19-0009877', 3, 1, 1, '2.1', '2', '1', '1'),
(1490, 'SCC-21-00013117', 3, 1, 1, '2.4', '2.2', '1', '1'),
(1491, 'SCC-21-00013979', 3, 1, 1, '2.3', '2.1', '1', '1'),
(1492, 'SCC-21-00012290', 3, 1, 1, '1.8', '2', '1', '1'),
(1493, 'SCC-21-00013433', 3, 1, 1, '1.8', '1.9', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `post_date` varchar(30) NOT NULL,
  `post_desc` longtext NOT NULL,
  `post_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sem`
--

CREATE TABLE `tbl_sem` (
  `sem_id` int(20) NOT NULL,
  `sem_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sem`
--

INSERT INTO `tbl_sem` (`sem_id`, `sem_desc`) VALUES
(1, '1st Semester'),
(2, '2nd Semester'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `s_id` varchar(20) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_bdate` varchar(15) NOT NULL,
  `s_gender` varchar(10) NOT NULL,
  `s_address` longtext NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `s_pass` varchar(200) NOT NULL,
  `s_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`s_id`, `s_name`, `s_bdate`, `s_gender`, `s_address`, `s_status`, `s_pass`, `s_email`) VALUES
('SCC-11-000170', 'Mondido, Kassy M.', '2/3/2003', 'Female', 'Tulay Minglanilla Cebu', 'Single', '$2y$10$91n0xpVy3vnWAj4fUi41mu99T.3l0mbgjxKt4nWO/vZIP0O3TWT7y', ''),
('SCC-11-000267', 'Sapio, Rafael H', '11/18/1999', 'Male', 'Upper Tungha-an Minglanilla, Cebu', 'Single', '$2y$10$Ub0etAoWv4IF2VnE7UbaCebMTaHB3qU5Yu4Nia4ngo6Y6RO.gSTT2', ''),
('SCC-11-000414', 'Calumpang, Jeff Rae R', '6/26/2001', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$5omoccnWuogTwmzJp7aPju2K.LliKDHfnZ5oFnUuAZ3oZJW6P4aoa', ''),
('SCC-11-00042', 'Frangos, Khyne C.', '5/8/2002', 'Male', 'Bacay Minglanilla Cebu', 'Single', '$2y$10$ZQPRCHnGUxmLvP3iBvnkK.hACClepkopKzjrDq7rGtU.91TZC5aU2', ''),
('SCC-12-000787', 'Arcamo, Catherine P.', '11/28/2002', 'Female', 'Sitio Tabay, Tunghaan Minglanilla Cebu', 'Single', '$2y$10$Iveb0Ui1hALS9kL3LykzCe5n4voRDu4zLIw.IWvrO4GvrJ6226ZbK', ''),
('SCC-12-000822', 'Bonghanoy, Faith Paul F.', '11/18/1998', 'Male', 'Pob. Ward II, Minglanilla Cebu', 'Single', '$2y$10$lwujOLCxAqxrxkNczf40Wu2Jv9mPmIAbFGT6ENjzn.vK8QSlaooNm', ''),
('SCC-13-0001146', 'Reroma, Jan Kane T.', '6/5/1999', 'Male', 'Springwoods Subd. Minglanilla Cebu', 'Single', '$2y$10$poeyrpTfEFzk37uQrez0SecLLSqhAXN3u2x1ofq3S4in2ALK0kh.6', ''),
('SCC-14-0001232', 'Javeluna, James ', '10/30/2001', 'Male', 'Kingswood Village, Lipata Minglanilla Cebu', 'Single', '$2y$10$Y4uf7FV58SFRaUJBkvam7.oZrcHffKOErKdztQs4ZEamAX3W9Iscy', ''),
('SCC-14-0001246', 'Dedumo, Vincent A.', '5/9/2001', 'Male', 'Mankikis Tangke, Naga City, Cebu', 'Single', '$2y$10$fTIXajY54xwu/gpm0qY6pejmJa1Wyn0j2KTM7KTS0avygspHSgKli', ''),
('SCC-14-0001275', 'Abendan, Nino Rashean T.', '2/12/2002', 'Male', 'Ward 2 pob., Minglanilla, Cebu ', 'Single', '$2y$10$Wq3wcaw2XzDy3BDBt1h2g..8/T.fTPqeoIV4OUud.xCr68DahZPKG', ''),
('SCC-14-0001379', 'Canton, Amiel D.', '9/11/2000', 'Male', 'Tubod, Minglanilla Cebu', 'Single', '$2y$10$sXmT.cbDbH0yy3U2vzqmMOmsLD4.lm9BLZF/1HrrMDufFIeWCj1wu', ''),
('SCC-14-0001528', 'Cabello, Sharah Mae L.', '9/29/1997', 'Female', 'Tunghaan, Minglanilla, Cebu ', 'Single', '$2y$10$GfHRonLJxU9umaRV6TikJOM1zXx4OAvOHdcMDl5tT.ycoFqWHePiW', ''),
('SCC-14-0001771', 'Tan, John Jade A.', '5/31/1994', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$d4gLPVqvAKV1TWC7s6jzVOugpySWnCgHW89LDUmGsJgPeIxjeKn0m', ''),
('SCC-15-0002698', 'Llanos, Jean Mariel L.', '8/22/1998', 'Female', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$xbtEOTc0VMe4Q27u0oO0Su.gVOY7iR52RzTNgdwat4uPDBEa/nNVO', ''),
('SCC-16-0002817', 'Amizola, Chris Lee S.', '8/24/2003', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$T3FYKMvBD6tSoofs8dVFUugjd0SRPXfLbkvaY05cq9NU1NbyarMh6', ''),
('SCC-16-0002818', 'Boiser, Melvin C.', '4/25/2004', 'Male', 'Proper Pakigne Minglanilla Cebu', 'Single', '$2y$10$nuM3ft/3Zux/kP1i0XQkQ..qkt93qSMkD9pcboKSCw2/w/g2kIxX2', ''),
('SCC-16-0002838', 'Suansing, John Michael ', '5/29/2004', 'Male', 'Lower Calajoan Minglanilla Cebu', 'Single', '$2y$10$W5d2yEI18XtuM6fWk2pL4eanpFJlABr2Grw5tQn5JjUmDPhTl4rfC', ''),
('SCC-16-0002902', 'Villarina, Roise Reyvir A.', '12/21/2003', 'Male', '5368 St. Peter\'s Village Tunghaan Minglanilla Cebu', 'Single', '$2y$10$hqdOd2tgaT9j7.VF2yvL..w6qGTNLTFcpPaZ77001sLAWX/hVGCmK', ''),
('SCC-16-0002907', 'Getuaban, Cedric Jade P.', '8/13/2003', 'Male', 'Acoy Vito, Minglanilla, Cebu', 'Single', '$2y$10$2QrJY785LPnfQ4ThHk6Lfe/8OHVO6t9IDKb2W4JrccV2Q32CeK7s.', ''),
('SCC-16-0003403', 'Sumalinao, Niño D.', '1/9/1998', 'Male', 'Lower Calajo-an, Minglanilla, Cebu', 'Single', '$2y$10$BkPzLJI0Vd9gsStH4LWsB.u/a19ic5BmqhTCSZfNcG97CKivruj1e', ''),
('SCC-16-0003858', 'Plarisan, Jiemar A.', '7/15/1999', 'Male', 'Poblacion, Ward II, Minglanilla Cebu', 'Single', '$2y$10$HkvbfvFRlWib5W.ttXgx2eiuCuDLIXoIVNTo5rQQgRBJxUZiYcQk2', ''),
('SCC-16-0004137', 'Racoma, Reymart ', '11/2/1999', 'Male', 'Tunghaan Minglanilla', 'Single', '$2y$10$3LlSSlpv/MJtFs8UdhZmiO.EBoLJNZp9XV4ug/qUt8qPOXu6avt.u', ''),
('SCC-16-0004160', 'Manalon, Emmanuel ', '12/6/1998', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$fKC9WYJbJ0nRtkCVM6sJkeqFmrbpgLSMjx34gwp6NHloyIsKvkjx.', ''),
('SCC-16-0004226', 'Coraza, Miafe P.', '6/8/1999', 'Female', 'Wartd IV Minglanilla Cebu', 'Single', '$2y$10$ugEKi3J0u48Z8UwUelDdoePlv.HbJGGRVuJfuzfRKNSYOstDBtZke', ''),
('SCC-17-0004402', 'Albarico, Archie ', '10/10/2000', 'Male', 'TUNGHA-AN, MINGLANILLA, CEBU', 'Single', '$2y$10$ev5DRus9VXQ1hOrR33EbIO0Gc9omE6lgEtsN6iJrSGDwIQV8wwOFG', ''),
('SCC-17-0004460', 'Babon, Joel Janzel ', '4/15/2004', 'Male', 'Velpal I Estate 1 Blk 18 Lot 15', 'Single', '$2y$10$7qjbSzrhJ0OJvqJTSvNsXeJsjtdz1rTr/XIf5ZtpE7Iugc4GnsurG', ''),
('SCC-17-0004609', 'Pingol, Hannah May H.', '6/25/2001', 'Female', 'GUINDARUHAN, MINGLANILLA', 'Single', '$2y$10$zq/bPH4/1jWugDBpUftgVuP/exrF2yqvaMi13HSLboBwFZyQA/f4e', ''),
('SCC-17-0004621', 'Tradio, Rodney S.', '5/27/1997', 'Male', 'Tulay Minglanilla Cebu', 'Single', '$2y$10$9ezpEzTOWd2xZ7zc6I9A6e4oJmu1OhEMNOBVwYjr2RUh.ddgQ3Bq.', ''),
('SCC-17-0004643', 'Camara, Jessa Mae ', '8/30/1999', 'Female', 'CAYAM, COLON, CITY OF NAGA', 'Single', '$2y$10$ZEIKG/4QwiDeUsjyZuDXau4O9WaVWWu9MGYNSdoK1B4b7xYyhCoKO', ''),
('SCC-17-0004665', 'Paradero, Lira Mae T.', '5/17/2000', 'Female', 'TUNGKOP, MINGLANILLA', 'Single', '$2y$10$cV4vUwhkh4xgEaAVRbRcU..x54Kff3TMr03xAb32Vw/Wbv.yj.vYy', ''),
('SCC-17-0004726', 'Perales, Ariel C.', '7/29/1998', 'Male', 'Tungkop Nazareth Mingllanilla Cebu', 'Single', '$2y$10$DkoqLSDPu5lHHvd1CYPmZOXGSTz.As9FcaRGySh5fkmO9/1S15/zu', ''),
('SCC-17-0004761', 'Austria, Rich Rhynor M', '8/11/2000', 'Male', 'Poblacion Ward II Ompot Minglanilla Cebu', 'Single', '$2y$10$Ypc3Zz2Sp2.CdMbERfxXtulLdCiD6Y2wwukQX4dbW6T3tBJT5TeCG', ''),
('SCC-17-0004783', 'Villarosa, Jessah ', '1/2/2000', 'Female', 'Costa Plaza Bacay Minglanilla Cebu', 'Single', '$2y$10$hsh7pPD1Nzwjmrop1rP09Oghh89C0AndhNL5x8YtEm2h.MHtuMXgS', ''),
('SCC-17-0004823', 'Omalay, Isaias S.', '5/27/2001', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$V5TZSGkYDnLdcdDv74xjuunHbz7LINphfvUKRSQTKKwDEZq.2atgi', ''),
('SCC-17-0005119', 'Carmen, Toscanny Joy S.', '5/28/2000', 'Male', 'Bayong Minglanilla', 'Single', '$2y$10$TlfhCrRaG67OhBb7Gq59FOSUAjhjRWkxJyHI4nsRW2oC.sI0Q5xom', ''),
('SCC-17-0005121', 'Delicano, Mary Greece C.', '10/5/1999', 'Female', 'Vito Minglanilla Cebu', 'Single', '$2y$10$cGV4BNRrdPS4n17sCuisyujEKUGMZcN6fmMskDEWtyvTMi2Bz.vL6', ''),
('SCC-17-0005183', 'Parages, Quizel Jhon L.', '3/17/2000', 'Male', 'Tagaytay Vito Minglanilla Cebu', 'Single', '$2y$10$bZlyU5CyUy2GSi2DXqgwsu7qcNMApgzvjUYizPV8GfWSv8pnc5AIi', ''),
('SCC-17-0005243', 'Samante, Ma. Ivy M.', '10/26/1999', 'Female', 'Bayong Cadulawan Minglanilla Cebu', 'Single', '$2y$10$ZhtTaShR8HZJRaKhoDC1xuQS05I7wVb0ynGZV7UvB3dNnP6jGA3xC', ''),
('SCC-17-0005276', 'Alvarado, Dexter Q.', '7/12/1999', 'Male', 'Babayongan Dalaguete Cebu', 'Single', '$2y$10$h/62uFMdB7RQO2GHjcJueO93vUMTQ31fF2Dgvn9GP/6ot66hov.hC', ''),
('SCC-17-0005338', 'Mangila, Mike Daryl T.', '9/30/2000', 'Male', 'Tubod Minglanilla Cebu', 'Single', '$2y$10$Mv8D.wckrkHr5sIvsMT2c.yUtibjzJaQg.M/YOP4NC3Z.kU9ftCKK', ''),
('SCC-17-0005643', 'Gutang, Romelyn A.', '5/3/1998', 'Female', 'DECA HOMES,TUNGKIL,MINGLANILLA,CEBU', 'Single', '$2y$10$iiUkOPeo5iwYjeFad2NiWuZx4oJ.OePdrkc9iSk5bZURA/izqikFm', ''),
('SCC-17-0005673', 'Villarasa, Ed Lorenz N.', '7/15/2003', 'Male', '870 Tiber Pob. Ward III Minglanilla Cebu', 'Single', '$2y$10$gUOxQLexu6KcwNIASJHble44h/qrAn96phUo1vKs3Him53Gvv4qSS', ''),
('SCC-18-0006048', 'Alicaya, Ralph Lorync D.', '1/17/2000', 'Male', 'Lower Pakigne, Minglanilla Cebu', 'Single', '$2y$10$89KM.tYQBi3vBYttQzw.Dua1.BFgI/m4NDdFeXzmB6DPZL5zmkfHO', ''),
('SCC-18-0006063', 'Belarma, Ziel-Car ', '3/18/2002', 'Male', 'Lower Calajo-an, Minglanilla Cebu', 'Single', '$2y$10$SRpT6wEP/QEh08M9lKykPuWR3bKqOabFV5/7sC1C/AMd4KOXNZUfO', ''),
('SCC-18-0006079', 'Mangaron, Charles Francis A.', '10/25/2001', 'Male', 'Purok Jasmine, Tungkil, Minglanilla, Cebu', 'Single', '$2y$10$8tGxxxDUMCxgNNZmL.FqdefW7rYVBI3M.YYO/n7xedwuEyi.4ccMi', ''),
('SCC-18-0006267', 'Lawas, Mark Ardon ', '11/17/2000', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$F0vBJlWdy6CNXX/aLnmakONnaVBAiHeye/Uqo0jyZX3LFlPStAEq6', ''),
('SCC-18-0006278', 'Kasayan, Marc Aldwin B.', '8/5/2001', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$0Wn6YibU4tHnXJ7uPiepuOgHg7xeo/UXYHBJdTn.XonZ.6ExnlRyW', ''),
('SCC-18-0006287', 'Aniñon, Mark Eliezon U.', '12/12/2000', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$eS6ywbofdn/u/9WvFdJEFOui9TEWXNA/tHD7q46hPotF291hVpyUm', ''),
('SCC-18-0006487', 'Siton, Edgardo Jr. A.', '8/20/2000', 'Male', 'Lower Calajo-an, Minglailla, Cebu', 'Single', '$2y$10$9I1NsLt4YfjZdSbhDhZb9u6P8cJdbPKsA4dYR87/.FOfg.e7ZKYu.', ''),
('SCC-18-0006529', 'Cansancio, Jefferson S.', '4/30/2001', 'Male', 'Pob. Ward II, Minglanilla Cebu', 'Single', '$2y$10$Hssu/bJL3FEOTlORLWcRMuMShmUh814hFKLbuy2NMjrTNpOFczAoi', ''),
('SCC-18-0006539', 'Cabusas, Mary Rose M.', '5/4/2001', 'Female', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$W07sGNwiTZkz.R603FCDy.IFNVlB7p6oO3keLmmJq4GDIoLI8eIY2', ''),
('SCC-18-0006655', 'Omandam, Kant Mark C', '1/30/2001', 'Male', 'Lower Linao, Minglanilla Cebu', 'Single', '$2y$10$9JOYi44/WKeXcPDLCsZbYOBMa3plzsZW2Z6/qsB9QN2hnO2nS3NOm', ''),
('SCC-18-0006686', 'Sellon, Terence B', '10/14/2001', 'Male', 'Tubod , MInglanilla Cebu', 'Single', '$2y$10$0mNv8HcxKNKM7xYgZwLY2eyJr8cHW9JHnUnkyfSjF2oqLUh7mGeGO', ''),
('SCC-18-0006758', 'Llego, Leomark D.', '2/12/2001', 'Male', 'Inayagan, City Of Naga, Cebu', 'Single', '$2y$10$9fVe4Wra0c7WvHeVX/yIoeGSFbLlcbRJ7PIyZo9V8lUR0V05WoDu2', ''),
('SCC-18-0006772', 'Ortega, Christian Jacob L.', '12/29/2000', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$4xcuMGs5ERwrebY34ZIWjOjiKu9JfHahIwxCSN8NoKciZmB2UQD2q', ''),
('SCC-18-0006939', 'Lumapay, Kayle Louise R.', '4/6/2001', 'Male', 'Brgy. Tungkil Minglanilla Cebu', 'Single', '$2y$10$PMQyEEKin1.OJRrinl5Gx.15mOEX.3e5tTc.OF3tgNKgGX7JqPx1y', ''),
('SCC-18-0006985', 'Ipon, Darla Kayla M.', '3/26/2001', 'Female', 'Proper Tunghaan Minglanilla Cebu', 'Single', '$2y$10$aMZbeaQk6oBxyToZ7kWj2.L1Tsm9R6cUydyocRiGgrQA8KIkWGJHy', ''),
('SCC-18-0007148', 'Mancao, Ley Ivy ', '12/18/2002', 'Female', 'Sta. Cruz, Tubod, Minglanilla, Cebu', 'Single', '$2y$10$8QcVR7OO3Un2Ap94t0fMve9ComPeVzPfA7geNRiQXBxBDB7zJOpK.', ''),
('SCC-18-0007235', 'Vildosola, Marvin Anthony P', '6/11/1998', 'Male', 'Pitalo San Fernando Cebu', 'Single', '$2y$10$kfGltKiLwycV8a3CKU78HuUGYwqIrkl7iNHXgrGSro8GFSZY/pCK6', ''),
('SCC-18-0007440', 'Base, Jev Adrian ', '11/8/2001', 'Male', 'Sambag, Tuyan, City of Naga, Cebu', 'Single', '$2y$10$NUwZ.xEuHXnXkLt8SU/tV.meBCQqO/K/3jA6vThrmrP4tmJ2ZOKQi', ''),
('SCC-18-0007686', 'Mañacap, Vince Edward C.', '9/10/2003', 'Male', 'Pinggan, Pakigne, Minglanilla, Cebu', 'Single', '$2y$10$AsAAx89Gieb9axPwt8KB/uwCCpeCfLFvhDZbD16q14iM4G4.z5mKm', ''),
('SCC-18-0007793', 'Adlawan, Ealla Marie ', '11/7/1999', 'Female', 'Spring Village Pakigne, Minglanilla', 'Single', '$2y$10$tMEsyGAcLwK5zarpLGI6W.1TrAVV.k9d4lRIN8R/VOK54I9nTFTv2', ''),
('SCC-18-0007848', 'Aguilar, Jaymar C', '2/22/2000', 'Male', 'North Poblacion, San Fernando, Cebu', 'Single', '$2y$10$Sawd4IR6zqwxxO4lS2BOP.Ml5b1GUhXG1hVxYuRYDbL8uRFtn0FNi', ''),
('SCC-18-0008097', 'Nadela, Jovelito R.', '1/10/2000', 'Male', 'Malubog Gen. Climaco Toledo City', 'Single', '$2y$10$.ogApIgw8JM6jm4ViGVUm.uVyvHdCzBQKSDfUiGJZS6xI7OFo0Wz2', ''),
('SCC-18-0008212', 'Panonce, Nelson Jr. ', '3/8/2000', 'Female', 'Vito, Tagaytay, Minglanilla Cebu, City', 'Single', '$2y$10$X/daocGix4581Q6.QvVM2u55p.hUm53cSG24B8fcmgpNORRx7cqH2', ''),
('SCC-18-0008221', 'Merlan, Bryan Christopher S', '11/28/2000', 'Male', '1009 Estaca, Tungha-an, Minglanilla Cebu', 'Single', '$2y$10$6Fl0DJ.7NpNo0LRSYRFLJ.dDqIivMg8IwRppmTjz/6/58uX8xzLbK', ''),
('SCC-18-0008225', 'Sacaday, Jules Seth Y', '6/11/1999', 'Male', 'South Poblacion, San Fernando Cebu', 'Single', '$2y$10$vAT.Vh.ua7gskUh7DUnuT.BYu5aLi7ZFTcNx4/66N/17Z8DuCx53u', ''),
('SCC-18-0008320', 'Fuentes, Justine Nico ', '3/24/2001', 'Male', 'Panadtaran, San Fernando, Cebu', 'Single', '$2y$10$YJ.wXUErIzvCho3CqiMyI.ofFk/UvDJ0ay/f.qDLnJuVcHX5CS4MW', ''),
('SCC-18-0008454', 'Maglangit, Jade Pearl T.', '2/12/2000', 'Female', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$gOo3iHeROMceqaJZCSfZYezZBsaXuQRoDLdHSiA1bSlhERf99M4Ku', ''),
('SCC-18-0008472', 'Cañeda, Loraine S', '7/20/1999', 'Female', 'HollowBlock Tabunok Talisay City Cebu', 'Single', '$2y$10$RjYnIvehFX7mxzH/YeVsauZsCrN0c9yitVxY42N6UJX4RQbx1V1dq', ''),
('SCC-18-0008640', 'Pestaño, Miguel Greco P.', '1/24/1997', 'Male', 'Minglanilla, Cebu', 'Single', '$2y$10$bivI1Sa1m45B/OCB/KzcneupUfyRfGloq/1JCu0XTOeIzKpBaq.SW', ''),
('SCC-18-0008720', 'Pielago, Micheal Roy L.', '8/10/1997', 'Male', 'Tina-an City of Naga Cebu', 'Single', '$2y$10$WncDcetGcO8ArTgwL.GUF.pXhlpg3EZHRY7uSbUlByMR1spnahv0u', ''),
('SCC-18-0008724', 'Arcamo Jr., Emmanuel P.', '10/1/1997', 'Male', 'Sitio Tabay Tunghaan, Minglanilla Cebu', 'Single', '$2y$10$49M9xxFLqrZQXrkWdHfsROUto5MrZpQUeQAI0J5npYG7aQXU2Ac3e', ''),
('SCC-19-00010119', 'Canonigo, Jhennymae D', '6/2/2000', 'Female', 'Lutac, City of Naga Cebu', 'Single', '$2y$10$bXYKxtRy1RyOyHkd9ItAUO.30sgMFcRf1vm2fl8eNgoMQcDKozlRa', ''),
('SCC-19-00010140', 'Lariego, Leo Niño C.', '1/31/2003', 'Male', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$x/fRVuASJNjiFBLg67v9huoDe0T9/O00w6KgyNukj/Rmkoyj3fJK2', ''),
('SCC-19-00010224', 'Montano, Jerome ', '6/1/2002', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$jI.lNBXPNDqam3u.atool.Zqz0HQtV/hVNdeB3jv577UfpBqOX3Da', ''),
('SCC-19-00010246', 'Getuaban, Justine Dave M', '4/4/2000', 'Male', 'Lower Tunghaan Minglanilla Cebu', 'Single', '$2y$10$HBeRL3Bk4Tu8RiofSMjCkeDrbOrCzkyvEdzXrhILZWnYT6Hk12qy.', ''),
('SCC-19-00010248', 'Wamilda, Arnel ', '1/3/2003', 'Male', 'Bas Perrelos Carcar Cebu', 'Single', '$2y$10$YGxJ0TKxMS/GshcFjlCDeeh4N0repgYk/lTfnoLf81P4w.KTJlRjK', ''),
('SCC-19-00010298', 'Deguit, Calj\'Z C.', '3/7/2000', 'Female', 'Tungkil Minglanilla', 'Single', '$2y$10$sWY8iEzVtiJwBIzzkJ1UkOD8Q/bLWGyRC8/5Xkh9YA/uSS/S24Mh6', ''),
('SCC-19-00010322', 'Rivera, Gian Carlo ', '11/14/1998', 'Male', 'ward IIII Minglanilla Cebu', 'Single', '$2y$10$2UWyEFPBHYSksO3RJt9Mfu9P0nuT3kDDoELVuROqT5mEeY1WpndIu', ''),
('SCC-19-00010326', 'Dalit, Allan Kendrick B.', '2/15/2000', 'Male', 'Bacay Tulay Minglanilla Cebu ', 'Single', '$2y$10$3sEZ8MfUszdhiR6wOWTDPuWg3OJrVRVMhdNQAEH9gJYTzxQmKqTMO', ''),
('SCC-19-00010356', 'Pesiao, Elgrace C.', '9/14/2000', 'Female', 'Jaguinit City of Naga Cebu', 'Single', '$2y$10$wySEOnbNJpKF1.OvhNWB5uWx3q0JnJ3FRbyIe1QwqbQgIukYXvpxO', ''),
('SCC-19-00010398', 'Alterado, Jay Mike M.', '9/22/2001', 'Male', 'Sitio Hagdanan, Linao, Talisay City, Cebu', 'Single', '$2y$10$kxP37nLQxL7cuHdUByfaqeIn1WeLamlp/9qdeqRXZ2aLFadok5ooW', ''),
('SCC-19-00010435', 'Edullantes, Christian A.', '8/8/2002', 'Male', 'Tunghaan, Minglanilla, Cebu', 'Single', '$2y$10$JK1ypD7e5ohEWzchFKr9eO9kNo6rufAgA756TzCYHfW1l.qxYbLMu', ''),
('SCC-19-00010480', 'Ortega, Matt Lovell P.', '7/2/2000', 'Male', 'Poblacion Ward II Minglanilla', 'Single', '$2y$10$Ols4SmLCZqAQsT2sClMx/.lMI6iDXTb0NTLfSfZNuPIxRpiqbTddG', ''),
('SCC-19-00010487', 'Amarille, Kim Ryan M', '10/31/1997', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$by2zPR1gBXul3JmUhlmb5uh4FhYBo20bRjKRzBI0rHscd6mD3/BuW', ''),
('SCC-19-00010489', 'Lozano, Chriciel ', '2/12/1999', 'Female', 'Kinasang-an Pardo', 'Single', '$2y$10$9nzqV8MQ1Vh14G6A/es3v.IYsvjMVI5Dd3hc8ZV24.8NJJFZ1PAXa', ''),
('SCC-19-00010521', 'Booc, Aloysius A.', '6/6/1996', 'Male', 'Babag Lapulapu City', 'Single', '$2y$10$jvvTbPqEMrQxJ.FfEV7AYO3kI/u82IciiBfZMEMovOrpAGUMRBQUO', ''),
('SCC-19-00010575', 'Laspuña, Mary Grace G.', '5/21/2000', 'Female', 'Vito Minglanilla Cebu', 'Single', '$2y$10$fs2dfH3NMneyWKKq3ATlZeUD78vmGkIdrDlvzcF591dKkTAtW0HLe', ''),
('SCC-19-00010586', 'Lawas, John Nicole ', '2/11/2001', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$RRVoSH8Vs.7RScwxcY4tLejwieO56RbXqguWmjMlcKS/Ic39K2vTC', ''),
('SCC-19-00010593', 'Cavan, Christian Jake A.', '4/28/1999', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$3i8yAkCSTAgc9l.hB1rbsuK8eswYpXlYwGYKMm/VRhZ/irFp/rT1W', ''),
('SCC-19-00010620', 'Tortusa, Dane O.', '1/27/1989', 'Male', 'Ward II, Minglanilla Cebu', 'Single', '$2y$10$AwiUjBXgAbhP4vuqvsywEuJSeRk3qB52Q/Sw2UtM.KZ5r0cqUWmWi', ''),
('SCC-19-00010625', 'Alferez Jr., Bernardino S.', '8/12/1999', 'Male', 'Cantao-an Naga Cebu', 'Single', '$2y$10$7vJ78Ff8FvsS/vFgeNilVu7yK12t.DGdwaBStqquE2hugKJdYrFMm', ''),
('SCC-19-00010689', 'Arsenal, Myrene Shayne H.', '7/30/2000', 'Female', 'Mohon Talisay City Cebu', 'Single', '$2y$10$oSOkNwWhL5W0UBfAWvlKGu1zgC5ZG42EqH1H1kKVCUjZFlmhidgAS', ''),
('SCC-19-0008853', 'Recaña, Gian Heinrich R.', '3/9/2003', 'Male', 'Lower Pakigne Minglanilla Cebu', 'Single', '$2y$10$SiyR/Zn4.xHJI4DMpAAsy.cnpgnt1K/upcsNPhFei1GQ.cW/RcW1C', ''),
('SCC-19-0008876', 'Quines, Ernest James B.', '10/10/2002', 'Male', 'Lower, Pakigne, Minglanilla, Cebu', 'Single', '$2y$10$gyRwsWrcghjobxkqfGVWgezgxddFDaB5e2DJqrH5Tx2vjZAKgBZ3u', ''),
('SCC-19-0008877', 'Laroa, Ryan Ky O.', '4/18/2002', 'Male', 'Cuanos Minglanilla Cebu', 'Single', '$2y$10$rGJiiCtmEWmgxJsfF3hb2.m8fd5xLB.Ta4/5GojEKuNKItQzfHk1u', ''),
('SCC-19-0008891', 'Celis, Rodel D', '11/20/2002', 'Male', 'Tungkop National High School', 'Single', '$2y$10$TISPieDaYqEHnPwPq3ULEOspGrBX6Fq.EuCBFKLlHGBTTi60jux2K', ''),
('SCC-19-0008918', 'Navarro, Jei ', '12/12/2002', 'Male', 'Tungkop, Minglanilla, Cebu', 'Single', '$2y$10$Sq9N4zkNxErSEt1C/Nlfi.evvwRlXybkwMh6fd.AjQSZfIOykEi92', ''),
('SCC-19-0008931', 'Canono, Christian O.', '12/12/2002', 'Male', 'Langtad, City of Naga, Cebu', 'Single', '$2y$10$wu2rlyF5TUf74CtjYZHMsewL7bofiZogq0t5FO8evYdT0sqr15BA6', ''),
('SCC-19-0008942', 'Nazareno, Keith Vincent A.', '4/11/2002', 'Male', 'Colon, City of Naga, Cebu', 'Single', '$2y$10$Lp8OjEy6/vL7zAaSgUw8Quy74SQtVMfgZ0UKP7GxCq0FeNkrwNFEW', ''),
('SCC-19-0008957', 'Villareal, Arthur O.', '9/25/2002', 'Male', 'Inayagan, City of Naga Cebu', 'Single', '$2y$10$dTC3jPHqjfy1ZM26rc3CIOAE4RkWn7yDVzcZdEAI1CUnwDYvyge4y', ''),
('SCC-19-0008982', 'Martinez, Francis Vincent M.', '7/23/2002', 'Male', 'Tina-an City of Naga Cebu', 'Single', '$2y$10$cBckjKEmclTMN6bhqe0pfO7X2cad7AVaaT613g.jD9B/XjBWjAWCS', ''),
('SCC-19-0008995', 'Biaco, Irene  Joy P.', '8/27/2002', 'Female', ' Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$FK5Ob.VIGh9OcXPU6ZmHyeG5ckZlLYQQ48Z.AEOuaDuH4BRuEbgsS', ''),
('SCC-19-0008996', 'De Fiesta, Jay R.', '8/22/2002', 'Male', 'Tuyan Suba City of Naga Cebu', 'Single', '$2y$10$eKjkFez9yXAdq2ktmYZHKepVdz0n6hAyg.ybTGKYJ6fXtm7sl3D8G', ''),
('SCC-19-0009016', 'Casia, Sweet Venice T.', '8/10/2003', 'Female', 'Tubod Crossing Minglanilla Cebu', 'Single', '$2y$10$cxbTm1HuvLKj1dl6LHFt.O9jCAtJRcdps4rwvhErf6s.OATxVL6ku', ''),
('SCC-19-0009149', 'Albiso, Creshell Mary M.', '6/18/2003', 'Female', 'Bairan, City of Naga, Cebu', 'Single', '$2y$10$S2U1.MJglhUcJIDgLq.fcOnm.5PGBrHjVGdpCCXl.f/gud1XikkD2', ''),
('SCC-19-0009224', 'Gersane, Jovilito C.', '7/13/2002', 'Male', 'Upper Linao, Minglanilla, Cebu', 'Single', '$2y$10$LUYlfbYZbd5jMpfKTSkrOOxHeV/nskbzKY0EPz/3cn1szLPXHWYi.', ''),
('SCC-19-0009291', 'Getuaban, Gerald G.', '3/7/2001', 'Male', 'Tubod Minglanilla Cebu', 'Single', '$2y$10$y5odJoVg9F/nwe2whM4VleZaAiq5K/Mg1KXJzXzhqI0AfCLTs8VhK', ''),
('SCC-19-0009338', 'Nallares, Junjie ', '4/6/1998', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$52NVDyGcaVbhksdC86AcPuqPPLdqbHgaI4HhvIZsscI6K/Ff5ap2O', ''),
('SCC-19-0009366', 'Degamo, Jhonry C.', '6/20/2002', 'Male', 'Tulay Bacay Minglanilla Cebu', 'Single', '$2y$10$KEXlu95imi9EzOtNaoncdu2IVtJuhZFQchCqKz4BxsVour.nSCd0i', ''),
('SCC-19-0009384', 'Toquero, Jeffrey S.', '9/23/2002', 'Male', 'Riles Bacay, Minglanilla, Cebu', 'Single', '$2y$10$yNDaU2Q4fjNMgKw.PL4pN.ggKLTE24wgy8sUuKCnulR1GRnpZKiMm', ''),
('SCC-19-0009585', 'Ortega, Edwin Jr. L.', '8/14/2002', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$03GXlTGRswLvA.sUUpU0POUMkKogc9y/NmKjJ/5/orf.J/l9.WrrS', ''),
('SCC-19-0009590', 'Biabado, John Carl Z.', '4/14/2003', 'Male', 'Ward II, Minglanilla, Cebu', 'Single', '$2y$10$cO0/v2IG/n4zKe.JsfbE7.pDWi2hKt0hBRoQI04o9xubBJ0uS6tLK', ''),
('SCC-19-0009611', 'Marcelo, Ujhie Marc T.', '12/3/1999', 'Male', '621 COUNTRYSIDE VILLAGE, LIPATA, MINGLANILLA,CEBU', 'Single', '$2y$10$UIjGZfHxqmo94QT4SBtKG.RSaGh9abW7swkIpFNIWGfUdT19B5HoS', ''),
('SCC-19-0009640', 'Dela Peña, March Anton ', '3/1/2003', 'Male', 'Cagbao, Cogon City of Naga Cebu', 'Single', '$2y$10$pQjnSFZTPPWPgJ3Jz/m7x.QvGvg7hqR/yEcj3gamNcLgLWEFhi.kW', ''),
('SCC-19-0009641', 'Dela Peña, March Anthony ', '3/1/2003', 'Male', 'Cagbao Cogon City of Naga Cebu', 'Single', '$2y$10$76NZp6bBXuq/YiTv1yvyZ.UtqlpApP3Ce4ZbiSNEhjvpoLPW73Fd2', ''),
('SCC-19-0009667', 'Daclan, Xavier V.', '9/15/2002', 'Male', 'Upper Bayong Inayagan  City of Naga Cebu', 'Single', '$2y$10$6l4.LnvpHamO9v74Jiy84ekFZ6eRz5aw50stQPp2Z3nsRi8HjgOYC', ''),
('SCC-19-0009694', 'Beroy, Peter John Z.', '10/3/2002', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$JYqQvJZqKF5.2PHGXEXDx.b2RtPPffx/q2OLxX.594lvIsXSfET5q', ''),
('SCC-19-0009772', 'Arriola, Stefano Luis I.', '7/3/2002', 'Male', 'Nazareth Tungkop Minglanilla Cebu', 'Single', '$2y$10$c59wEqhM.imwt5gWvqqCCuLAQAMmN.PUTRIxAoHfK74mKkDH0TjRq', ''),
('SCC-19-0009804', 'Siena, Mike Angelo D.', '11/29/2002', 'Male', 'Tungha-an, Minglanilla, Cebu', 'Single', '$2y$10$iNJfbyy4ZYVT/9xh9fXQpuRHfMtrqzedlMJNPea3bYIeAQQYVzwU6', ''),
('SCC-19-0009814', 'Villeta, Harley B.', '10/10/2002', 'Male', 'Acoy, Vito, Minglanilla, Cebu', 'Single', '$2y$10$mtn2QetyRNYu6SNR6NUM7.YqXrEEY/qyuX4HnMSebHMhlj2AO0Uxm', ''),
('SCC-19-0009829', 'Cardenas, Riche Ace A.', '7/4/2001', 'Male', 'Tinubdan San Fernando Cebu', 'Single', '$2y$10$tU2Wxms00nDuDGX7kx/JWupHLYpGhJ6yEcjM5jdN6olwPDurR8O9e', ''),
('SCC-19-0009860', 'Rodriguez, Andrew ', '12/26/2001', 'Male', 'Tungkil, Minglanilla, Cebu', 'Single', '$2y$10$Ptr8TWn3JXv6kxYM1NIw7enuBsn7YH3VDyyYakWQdHHlSRkX0pgLa', ''),
('SCC-19-0009877', 'Tabelon, Christian Dominic P.', '1/6/2003', 'Female', 'G. Mendoza St. Tangke City of Naga Cebu', 'Single', '$2y$10$.DIuiKe//LfKrmYllGT8kOGZvZKgl.N/inU.f0eYKTNJE/WMWL36.', ''),
('SCC-19-0009881', 'Paragoso, Angelo G.', '1/27/1995', 'Male', 'Inayagan, City of Naga', 'Single', '$2y$10$zZR9wkFnrI5nHPPFRHvzT.j23fkyQxKN0tNcHpoqkIyA7ia5aX..e', ''),
('SCC-19-0009987', 'Almendras, Alistair A', '4/21/2000', 'Male', 'Purok Mahogany, Sambag Kolo, Tuyan City of Naga, Cebu', 'Single', '$2y$10$rqhG7NcE0F9A8wtP2C9QAey/MarvNNezBZawCeBDNP4mbVmHh34kC', ''),
('SCC-20-00010754', 'Ferolino, Yesha Paula Nicolai C', '11/19/2003', 'Female', 'Proper Tunghaan Mingalanilla Cebu', 'Single', '$2y$10$bKElL1XMD6Gg5WHsjHdGkOsHPhAGh6VMgfMpd6HNYicI9uaN/EKV.', ''),
('SCC-20-00010778', 'Plameran, Johnbert D.', '8/5/2003', 'Male', 'Sta. Cruz Tungkil Minglanilla Cebu', 'Single', '$2y$10$wUp03d0ShuafWimPFIjYY.n16jbw0VpmJ5QcHWDilwfzgYYW3YygG', ''),
('SCC-20-00010784', 'Saga, Danica E.', '6/27/2004', 'Female', 'JAGUIMIT CITY OF NAGA CEBU', 'Single', '$2y$10$AhhYOcVHQC6V7iNc8vEPUenfGcHOE6P4YOkFyuL/wo0Ll98wT4h5S', ''),
('SCC-20-00010795', 'Gondao, Daisy Rey ', '10/14/2002', 'Female', 'Lower Pakigne Mingllanila Cebu City ', 'Single', '$2y$10$f8RExOZhrFe8LVOiTyjs9.QuBJl8QlDqiOIxDAXcgVd9d//NyQbd6', ''),
('SCC-20-00010841', 'Peritos, Jeralyn ', '8/12/2004', 'Female', 'Costa Plaza Bacay Tulay, Minglanilla, Cebu', 'Single', '$2y$10$..M/gjE0h5P1n7pNGoTy8.hvKV3DTHATduHUoSDYThIQSlGUtmbhm', ''),
('SCC-20-00010845', 'Herminio, Brylle Justin G.', '12/25/2003', 'Male', 'Estaka Tunghaan, Minglanilla, Cebu', 'Single', '$2y$10$5V6Xjb39mbf8IICP9LH2dOf5zqC/E.ZTweKIVQJTe5mXZV3ojygLC', ''),
('SCC-20-00010846', 'Abendan, Christian James A.', '4/27/2004', 'Male', 'Pob. Ward 2 Minglanilla, Cebu', 'Single', '$2y$10$I2MXdXL1fotPzmA9oq1ZY.aBgg.8.4eJ3kMQTh8Z8J8PEN0n9reKe', ''),
('SCC-20-00010854', 'Ibañez, Arnel Kurt M.', '6/7/2004', 'Male', 'Bacay, Tulay, Minglanilla, Cebu', 'Single', '$2y$10$DhYLqNtPH77Int5B2Y29AOT6kRhDGTSsTOXkHjfUaGhAdsbItdena', ''),
('SCC-20-00010861', 'Impas, Carl Y.', '11/2/2003', 'Male', 'Deca Homes Phase 2 Tungkil, Minglanilla, Cebu', 'Single', '$2y$10$bm73Q0mNh5pBr1lO5hOsvugEXTvFfE2POjnwYdVt4hcTWuvIVceNm', ''),
('SCC-20-00010862', 'Adlawan, Eljohn Dave L.', '10/31/2003', 'Male', 'Spring Village Pakigne MInglanilla Cebu', 'Single', '$2y$10$LK2mpprVtIaBgXCx15MBm.PaeNMtU80K4vU3wIC7J0b9QAItqsP3y', ''),
('SCC-20-00010896', 'Lapiña, Elizabeth R.', '11/14/2002', 'Female', 'Teves, Vito, Minglanilla, Cebu', 'Single', '$2y$10$MWemU4Vi4f1V9ol5T.IbHOZAuunnYdual/TPwUXtE8mMGxsU5EmVe', ''),
('SCC-20-00010916', 'Quiñanola, Jose Ralph Audrey T.', '3/19/2003', 'Male', 'Pob.Ward 2, Minglanilla, Cebu', 'Single', '$2y$10$fFIlQyKuXGplV.eToWwSGOBDOlv/jE5E.B064GSjOu0yjkd9yOI.e', ''),
('SCC-20-00010936', 'Lipon, Mike Justine P.', '7/18/2003', 'Male', 'Langtad City of Naga Cebu', 'Single', '$2y$10$9BI39z9RNah/w7NyQpn9tOefHZbNmshUd1.6Olm/L.m5sWfm/RF8y', ''),
('SCC-20-00010947', 'Alivio, Mae Flor Q.', '5/24/2003', 'Female', 'Lawaan III Talisay City , Cebu', 'Single', '$2y$10$o1LZ/Ouk5HHq3HvNzSoqz.QUX34vrt6SiYfiUPa7W6x8ov7Wi5nzq', ''),
('SCC-20-00010949', 'Almidella, Jhon Mark P.', '6/28/2003', 'Male', 'Bacay Tulay Minglanilla, Cebu', 'Single', '$2y$10$MEcMLHdWE7tw8ozVgx25Oee1scmgbVsNFhVRsS06zbHfesMoQ7ED2', ''),
('SCC-20-00010970', 'Anuba, Jamaica C.', '11/5/2003', 'Female', 'Purok 1 Sitio Cabutoy Pooc Talisay City, Cebu', 'Single', '$2y$10$waYJ3F6IYceam64PgS72IultF3hvhE.SWD1w59XyNMqLB7Y/ycAVS', ''),
('SCC-20-00010974', 'Aquino, Alyssa Mae A.', '9/13/2004', 'Female', 'Tulay Minglanilla, Cebu', 'Single', '$2y$10$NkRQBcbShbpw12itRMTvsugbqaoigvs0oBfClZnBhWVseE17XZNgS', ''),
('SCC-20-00010983', 'Melgar, John Carlo C.', '5/14/2004', 'Male', 'Inuboran, City of Naga, Cebu', 'Single', '$2y$10$EIRWsXA1Zt810U5OEvCHou1h.5SBkstQeeMiZDXqrjSDZWssBnRLi', ''),
('SCC-20-00010993', 'Rosellosa, Paul John V.', '11/13/2003', 'Male', 'Poblacion Ward I, Minglanilla, Cebu ', 'Single', '$2y$10$rA4MGP64zBjBeJ8SZTWA8uqRQDAMLXdK3tWPmX4IqvEjNUwxlcRjG', ''),
('SCC-20-00011000', 'Morte, Irene  Mae Q.', '10/28/2003', 'Female', 'Purok Proper, Jaguimit City of Naga', 'Single', '$2y$10$snY/z6zIg.EjldSvcX5j1ONnZhvZtkWMR6Uo.ylQ0BLrdHsI4sVrC', ''),
('SCC-20-00011023', 'Sabio Jr., Ross B.', '2/21/2004', 'Male', 'Inayagan Naga, Cebu', 'Single', '$2y$10$hiF6C0agugj04D8fST4YtOfw5pS4GoqS4Cbj6PtSD8EKZvZtutsaC', ''),
('SCC-20-00011038', 'Basalo, Jovigen ', '9/11/2003', 'Female', 'Purok 6 Proper Cantao-an City of Naga, Cebu', 'Single', '$2y$10$Y5Mf62ysbofpM.fFbsou0eQthjPud0MQJfDu4yLZnh0dFm5DeD9HC', ''),
('SCC-20-00011063', 'Sellote, Marielle Anthony ', '2/23/2002', 'Male', 'Bayong Cadulawan, Minglanilla Cebu', 'Single', '$2y$10$nqgpn3nUOv45GYQ95wsq8uoaOOI9a.xyTAFP4bfIQSQC4zIFJXA36', ''),
('SCC-20-00011078', 'Butar, April Joy B.', '4/5/2004', 'Female', 'Pitalo San Fernando, Cebu', 'Single', '$2y$10$ad.gTLRU9nzo4RPfmdOchOc5O3EVe5RWPo5xpclAuhvk0qeSlm3VG', ''),
('SCC-20-00011112', 'Cañete, Angel I.', '3/27/2004', 'Female', 'EStac Tunghaan Minglanilla, Cebu', 'Single', '$2y$10$Sbl7spOmj2qhBENDwpunuumSlwZdDjMcgLLCOa6ju2Exhz0fKCUye', ''),
('SCC-20-00011130', 'Cansancio, Ryan H.', '2/21/2003', 'Male', 'Pob. Ward 2 Minglanilla, Cebu', 'Single', '$2y$10$KBhpQRy07rz2i/xCoSgHveaHwCZizkQcENZ5M88n/vbe9QIm91mEG', ''),
('SCC-20-00011152', 'Toñacao, Christine B.', '12/22/2003', 'Female', 'Guindaruhan Minglanilla, Cebu', 'Single', '$2y$10$UFECnLGg6VB/tNaCHmBC5eCW2psIyOL2aUhE9V3o75ZxUtEWoUdDq', ''),
('SCC-20-00011153', 'Tradio, Ian S.', '11/25/2002', 'Male', 'Tulay Minglanilla, Cebu', 'Single', '$2y$10$WgJdR3BnSIinm6Qz6zXNX.dQck7D69UDNP8uDtgcBU8hu3FV1VitK', ''),
('SCC-20-00011173', 'Collantes, Jaime Jr. S.', '7/31/2003', 'Male', 'Panadtaran San Fernando, Cebu', 'Single', '$2y$10$y9cYCpTGP2bPm.cvtBM0QOVi8C82XUW6cp201D4KKFI7nVaqkSghm', ''),
('SCC-20-00011247', 'Degamo, Benjie T.', '4/23/2004', 'Male', 'tulay Bacay, Minglanilla, Cebu', 'Single', '$2y$10$xw5Chl2gimaTO.0WJA01j.TtLVqxjwv.m1orNbDQDT/x0DFLnB/GW', ''),
('SCC-20-00011282', 'Lucero, Joshua S.', '1/14/2002', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$nKWrtYsWUgrwOREbFPjcGOqMc1obX.CpQteKcRDF6QSo/bWBSL7Ia', ''),
('SCC-20-00011299', 'Toradio, Rochiel A.', '9/25/2003', 'Female', 'Lower Calajo-an, Minglanilla Cebu', 'Single', '$2y$10$dmioqz5IrThj.uzVGsmii.vYQUmhOnlLCNsdX70jNc2Jg1Wv2T8uy', ''),
('SCC-20-00011311', 'Derecho, Anthony Josh B.', '10/14/2002', 'Male', '315 Mahogany Street,Kingswood Lipata Linao, Minglanilla, Cebu', 'Single', '$2y$10$/I/jKfYmX6B5pEsry345qup6wq/l8rMftzfAQJq2ksVmY61/mvSHO', ''),
('SCC-20-00011331', 'Barbadillo, Reca S.', '9/30/2000', 'Female', 'Pakigne Minglanilla Cebu', 'Single', '$2y$10$pmfitheWWo9t7StkDOqKNO.El8AgJfYP.PNOV8MCjZcqZZBfxQDr.', ''),
('SCC-20-00011346', 'Ongria, Justin G.', '7/27/2000', 'Male', 'Bacay Tulay, Minglanilla Cebu', 'Single', '$2y$10$F8jNrRYhb4HuGBURMNmmPepKpjo7msgkMxAWup9UYoyveZhakxg0G', ''),
('SCC-20-00011373', 'Pescadero, Vic John ', '1/24/2003', 'Male', 'Upper Linao, Minglanilla, Cebu', 'Single', '$2y$10$8/xLP8xlSZf55aDjXxtVVe0SFfDbGCHLTVh672URfLwAJwVLKkXai', ''),
('SCC-20-00011458', 'Sanchez, Allen Chrisve ', '12/18/2000', 'Male', 'Lower Calajoan, Minglanilla Cebu', 'Single', '$2y$10$qg6i91EXD2KWJRziLvFb5eQ2BeJhdG1bdR4C8PmNMsEM4TKjXZtku', ''),
('SCC-20-00011464', 'Otlang, Jafaith C.', '3/26/2003', 'Male', 'Kry-ass Tungkop, Minglanilla Cebu', 'Single', '$2y$10$GVWPePHZj1b.kwIJA1SjreZKLGLFgVUy2yplCOkzWAr9LcLVVpWOC', ''),
('SCC-20-00011473', 'Dejan, Cristian Lyle Q.', '11/23/2002', 'Male', 'Estaca Tunghaan, Minglanilla, Cebu', 'Single', '$2y$10$0H7XsSNkStRBIw7OowY9Lef37sAVbqJa.f0TANLXpJfxdxXqNuy2a', ''),
('SCC-20-00011495', 'Clamonte, Jimuel M.', '9/25/2003', 'Male', 'San Jose Panaghiusa II', 'Single', '$2y$10$Z6BgpW5afNsJvJ5L0gPL8efMGbA9QyhVb/MAXE4CsGyGAI6BIR5x2', ''),
('SCC-20-00011497', 'Canu-Ot, Vina Marie R.', '4/19/2004', 'Female', 'Tayad-Tayad Cantao-an City of Naga ', 'Single', '$2y$10$naQH7i62C4c70LixsnaSXOmi7Jf1.c7S4ISYPMYE4s1Ty/OaKy/vm', ''),
('SCC-20-00011518', 'Taraya, Glendon Dave R.', '3/5/2004', 'Male', 'Sto.Niño Riverside, Tunghaan Minglanilla, Cebu', 'Single', '$2y$10$HUK5xfT9LF8.Dv.lXFAhyu0x9jAmp0MUB4oQrodE9diYUCsLNdiFC', ''),
('SCC-20-00011548', 'Bolo, Jonaline D.', '6/16/2003', 'Female', 'Vito Minglanilla Cebu', 'Single', '$2y$10$9EuVahJbavhcTYNr85oiDOHpBKWSe7piDOCO4SQeDeiMeizct.P8q', ''),
('SCC-20-00011550', 'Agan, Rosegene ', '11/1/2003', 'Female', 'Lawaan 3 Talisay City Cebu', 'Single', '$2y$10$/qd.lOQ3LwCcqrk3NO9s0uxJJzJuRKnaCV1mD3U2bK570JmKXDsnK', ''),
('SCC-20-00011552', 'Baraclan, Genesis S.', '11/12/1999', 'Male', 'Bacay Tulay Minglanilla Cebu', 'Single', '$2y$10$/tlLq5wuwE5yBg4ti9OjluHy5Lh0X99HAjbqShr7uDgXgLFFCFb9a', ''),
('SCC-20-00011553', 'Villagracia, Rohanna ', '9/14/2004', 'Female', 'Tubod, Minglanilla Cebu', 'Single', '$2y$10$VZ0ISF2id9MrluerHW7PHO8LmOryZN1l2qtlMn8SSHEBDxGA5pdOi', ''),
('SCC-20-00011565', 'Mendoza, Josh Leigh B.', '4/15/2003', 'Male', 'Pob. Ward III Minglanilla Cebu', 'Single', '$2y$10$Je43N6TQwJrDcevDPzIUfeHz7w5bo8uJVWlkZr5fhdAGdaktQNqIq', ''),
('SCC-20-00011581', 'Villondo, David Sailas ', '2/12/2003', 'Male', 'Lower Lipata Minglanilla Cebu', 'Single', '$2y$10$mVlQEg/16m32x9AFLCQ2c.3z.Czp1OlzEwnMcVo.gi4RkZFVtafW.', ''),
('SCC-20-00011620', 'Baquerosa, Felix Jr. L.', '8/12/2004', 'Male', 'Bacay Tulay Minglanilla Cebu', 'Single', '$2y$10$UgIXrRfv3qZyn6pvxK3iremGgWIDokD3lJk2QlKlQ7/UTX3XG/XHe', ''),
('SCC-20-00011720', 'Limetarez, Mary Rose T.', '1/26/2001', 'Female', 'Panadtaran San Fernando Cebu', 'Single', '$2y$10$HiUd2Dh/dZ5lNXwQMifptudJ/BY4rAVKUEM.UHa4VXlCWM70PfUIe', ''),
('SCC-20-00011826', 'Parame, Ralph ', '6/16/2003', 'Male', 'Ward 3 Minglanilla Cebu', 'Single', '$2y$10$ZumAwBfwOpiPBtLU3MzrGeBI0l4ciNQVuuxPT9TbfhR84k3dYMCx2', ''),
('SCC-20-00011858', 'Padriga, Baby Boy M.', '11/16/2003', 'Male', 'Mainit City of Naga Cebu', 'Single', '$2y$10$vSIo.4qyzf6C5J4tTWJN7OsU9Wm4ts1I489QB9AkR74/pQYmZFVSy', ''),
('SCC-20-00011860', 'Andales, Maria Hazen ', '3/17/2004', 'Female', 'Mainit City of Naga Cebu', 'Single', '$2y$10$fp/2fK3lkNmZauRAgAQZruECJ0Pgg979IW68Xi6nPNwigfVjIaW/6', ''),
('SCC-20-00011875', 'Deiparine, Myrnalen D.', '12/24/2001', 'Female', 'Langtad Naga Cebu', 'Single', '$2y$10$rQlJtOzmXIjQAoPvRmG7H.uS2s0r9P8o3E.oIfa/g962r8tWY.roG', ''),
('SCC-20-00011880', 'Creer, Mikaila Monique E.', '8/9/2000', 'Female', '882 Del Socorro Compund Tunghaan Minglanilla Cebu', 'Single', '$2y$10$atyzX2cefRShg5QF0ITKN.NAwIvZgwxV1I44ugaLnppk9X19cnozm', ''),
('SCC-20-00011944', 'Rebojo, Orencio Jr. A.', '8/29/1997', 'Male', 'Pob. Ward 4 Minglanilla Cebu', 'Single', '$2y$10$uGXZhmW0Y.sj78N7CPYG9.SBtXJSP2zR.CtswUUj5vKSD53Ll4Tru', ''),
('SCC-20-00011975', 'Sanchez, Angelyn U.', '12/19/2001', 'Female', 'Lower Pakigne Minglanilla Cebu', 'Single', '$2y$10$Jc6vkBKu2M4bGgwtnIpU8OaRAj8QvrNr4AH7EGu3m/S0ZFaJM5av6', ''),
('SCC-20-00011991', 'Bacarisas, Vince Michael ', '8/1/2003', 'Male', 'Upper Lipata Minglanilla Cebu', 'Single', '$2y$10$xchRdysoJwqUZt5pcPf9vugtmTEDRLWhGPDKBrXDCThVZRwtag04.', ''),
('SCC-20-00011998', 'Ubas, Junril J.', '2/27/2003', 'Male', 'Balirong City of Naga Cebu', 'Single', '$2y$10$dD61W8pSte32VIXorw02KuHbVJqetDBDRypJM/D8Cp/ZcFrxePngO', ''),
('SCC-21-00012034', 'Salmeron, Hariell G.', '10/18/2001', 'Female', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$pTcacphKToR9ZQS0Sy3Z5e8qlxWvS/4U851UX7.CGFxFV1VaMhpNq', ''),
('SCC-21-00012056', 'Bendanillo, Christine G.', '12/21/2000', 'Female', 'Kantangkas Dumanjug, Cebu', 'Single', '$2y$10$PwXSu0h/quQPS8RzQO1v3eS.ahjGPINT.W8GncJU7ES6W9O.UtIki', ''),
('SCC-21-00012059', 'Feriol, Shiela Mae P.', '7/22/2001', 'Female', 'Guindarohan Minglanilla Cebu', 'Single', '$2y$10$9ig64saPkTZRzsocSzDigOlSQ0.4L0jFXNTiG30b3hDtUMGYRRfJK', ''),
('SCC-21-00012085', 'Restauro, Harjie G.', '8/29/2001', 'Male', 'Balirong City of Naga Cebu', 'Single', '$2y$10$rsW6GJF090ruCCuOaepNSu9tNcth1LttHyjF0WTK/hZl9nwXIY4XG', ''),
('SCC-21-00012098', 'Salmeron, Hardeil G.', '11/3/2000', 'Male', 'Kry-ass Tungkop Minglanilla Cebu', 'Single', '$2y$10$qQWu/uVjR0PIxdVyv9bYCewdVC5C19uoA/moE2nBYGIyRqGpz39Pi', ''),
('SCC-21-00012170', 'Lopez, Roland Shane V.', '8/19/2001', 'Male', 'Poblacion Ward 4 Minglanilla Cebu', 'Single', '$2y$10$ZIYylZrFJY.KhdUXgrxgKus4BHNJ2NjfXLgMJo10wCjDGolWclXWu', ''),
('SCC-21-00012205', 'Sismar, Wency V.', '2/26/2001', 'Male', 'Lutopan, Toledo City', 'Single', '$2y$10$IRzgRguhc5549sm3a/jh.ufk0/z9Fg3ljq074bd62r3wTyW4HY2/q', ''),
('SCC-21-00012221', 'Plameran, Shenny E.', '5/4/2000', 'Female', 'Seaside Tungkil Minglanilla', 'Single', '$2y$10$9WODlS6IPHsvODB9ViJk3uVDsJEHYbI/vgbg1G2MyZrfWO39KAVD6', ''),
('SCC-21-00012290', 'Tormis, Joma Lay M', '11/28/2001', 'Female', 'Cagay, Sibonga, Cebu', 'Single', '$2y$10$4LOJZT0zc.TpppWA9AHqauhf39APsy6OPw3OP.0r2l.cpsau0m4cy', ''),
('SCC-21-00012360', 'Carazo, Jeremy L.', '10/7/2002', 'Female', 'Balao Barili Cebu', 'Single', '$2y$10$FwW0fO8W1FP1PQd5aeckuO0EX8gbJ5urI58bXNtxRVyqUdfAV.Wni', ''),
('SCC-21-00012363', 'Sismar, James Adrian T.', '7/1/2002', 'Male', 'Lower Pakigne Minglanilla, Cebu', 'Single', '$2y$10$toKV39dp.Nm3MbJ7BMJp1OFw7wXmwq5qz62sfM/d13G48iuUpgnbm', ''),
('SCC-21-00012365', 'Jumamoy, Joshua E.', '11/13/2000', 'Male', 'Lower Linao Minglanilla, cebu', 'Single', '$2y$10$0OUxtdGd55Ie9ADZXADKne4CVoLNdvd6CRfKWzY60VgbZr5KXl4ua', ''),
('SCC-21-00012377', 'Acidillo, Baby John V.', '7/21/2000', 'Male', 'Bairan City of Naga', 'Single', '$2y$10$t9bUUr8AWzzgcdjjTky3iOmEuqKfR9byQUN1YGESZuDfstI4W4TB6', ''),
('SCC-21-00012381', 'Doron, Francis Quedenie P.', '8/24/2003', 'Male', 'Pob. Ward II Minglanilla Cebu', 'Single', '$2y$10$vauOVmobL9Zxh1hYi5AaI.i.BkOaLmg73I4zUBZsPfJaDw2eABoGK', ''),
('SCC-21-00012390', 'Arnido, Jay Ann E.', '9/12/2002', 'Female', 'Pancil Barili Cebu', 'Single', '$2y$10$whxdYhFZlDVAiwjgRcjKt.wpnB36OnnXo2BaHv3lk6gkzJas3AO8e', ''),
('SCC-21-00012391', 'Sabanal, Chona B.', '8/27/2002', 'Female', 'Budbud, Barili Cebu', 'Single', '$2y$10$/6uEqQUawqnQYiz6vWCTYODZ7W4shfDvTO5kl/64Td5dGWuArJnoO', ''),
('SCC-21-00012392', 'Saylanon, Maudy A.', '7/20/2002', 'Female', 'Pancil Barili Cebu', 'Single', '$2y$10$q5lcEJzuqIeFev0MSNJbp.PEosWyghAqkzbzXTuURaqnuXNuz6PSG', ''),
('SCC-21-00012433', 'Yape, Juanito C.', '12/9/1998', 'Male', 'Bulacao Talisay Cebu', 'Single', '$2y$10$qthv5Ma.JlDF.Lkf4FztEePi2zL0wK7ew4EW0zMubCl0QwjR69/jy', ''),
('SCC-21-00012447', 'Serencio, Darin S.', '12/14/1998', 'Male', 'Poblacion Santander Cebu', 'Single', '$2y$10$pVUZGCU.KI56vE4Nyu6jMeNEaExHICqugkzvPesn2r2LaLNkY0aMW', ''),
('SCC-21-00012492', 'Salmeron, Harfeil G.', '12/2/2002', 'Male', 'Kryass tungkop Minglanilla Cebu', 'Single', '$2y$10$Mww9woNLjnG3WSZtdNiZ.u59LniUvqnJFFigja5m4L9vrmkd0T58i', ''),
('SCC-21-00012584', 'Mangila Ii, Rodulfo O.', '5/25/2002', 'Male', 'Sandayong St. Upper Lipata Linao Minglanilla Cebu', 'Single', '$2y$10$Cj.XQH.lsEOg5cYhA1dSx..Eg9a3qQFZH3rty8qVBTLH6PlwrweU6', ''),
('SCC-21-00012615', 'Alde, Charniño G.', '1/19/2003', 'Male', 'Pangdan City of Naga Cebu', 'Single', '$2y$10$8sPVCX.Gw6l1g8jVkFwL.ur90DQNL/bOM9O4PHZ20e3tuSkEXaQLC', ''),
('SCC-21-00012668', 'Concepcion, Shaniel Q.', '2/18/2002', 'Male', 'Lower Pakigne Cebu', 'Single', '$2y$10$4C61eSsjV8OdOl51ZH7HA.ANJZyGFNuDetx8lloa9e3iHJKbHY8u2', ''),
('SCC-21-00012675', 'Puerto, Jeralyn ', '8/20/2002', 'Female', 'Bulacao Talisay Cebu City', 'Single', '$2y$10$WInDXNQ0y2e8I52zlWPQ.O0GW52VjMNzkH/gzqnE.bXRByRviS3nG', ''),
('SCC-21-00012688', 'Amante, Christel Mae L.', '7/10/2003', 'Female', 'Zaragosa, Badian Cebu', 'Single', '$2y$10$3p9Mrujs/ho3k5WvmrBmKeUpxoCFh5eP3wR.olsqLd/h/Abmk5.Sy', ''),
('SCC-21-00012698', 'Caminos, Sarah P.', '2/23/2003', 'Male', 'Zaragos Badian, Cebu', 'Single', '$2y$10$y/jAqJjLGL2h5X1YmktKV.SJsUabraTWs6TxFaazhHot2Bw0Ad5F6', ''),
('SCC-21-00012723', 'Velarde, Angelica S', '4/5/2003', 'Female', 'Bahigan, Badian, Cebu', 'Single', '$2y$10$H5LP5hAGL5CarOvufwJJ/.k5mamYpYMapG6CtkfWBx3kDlbjJlevy', ''),
('SCC-21-00012725', 'Pocong, Raylen Joy Q.', '7/12/2001', 'Female', 'Lambug, Badian, Cebu', 'Single', '$2y$10$iSa2w75Rh1jI3tqASEd3WebbBLR6eiZHYTO3Q0wzHw4ERe61AzR4e', ''),
('SCC-21-00012737', 'Omambac, Junmark D', '5/5/2000', 'Male', 'Patag, City of Naga, Cebu', 'Single', '$2y$10$ctW0jXHrni8LbL7jatoxNuIKbomHXe/VgHiXpeMzn6eELoqaSCxw2', ''),
('SCC-21-00012754', 'Abellana, Ariel L', '10/1/2002', 'Male', 'Basak, Sibonga, Cebu', 'Single', '$2y$10$EgrsYCHFpIKhOIAnodVIqeaFHUEdvjCpt8qHLbl5pmTFZC5MRrw.6', ''),
('SCC-21-00012758', 'Cantos, Leonora A.', '1/1/2001', 'Female', 'Tagjaguimit, City of Naga Cebu', 'Single', '$2y$10$o0s6m8eC1jZllsSJ3m3mReka8gYWPheGtUb6jnSoTpZJZJaJhEcJm', ''),
('SCC-21-00012759', 'Alferez, Edelyne T', '5/9/2001', 'Female', 'Tagjagumit, City of Naga', 'Single', '$2y$10$veeain9Eg9XTn04th9ECqeiI/8eLy2XEyNR9gevzW4wv9ZVb/9c6i', ''),
('SCC-21-00012762', 'Oros, Vincent ', '3/23/2002', 'Male', 'Mayana City of Naga Cebu', 'Single', '$2y$10$IPK9NEHh8w./uiEtWm2ihOaGVO2JXw6RfNkYh9PvLtvUjFbLATr1i', ''),
('SCC-21-00012780', 'Delicano, Ryle Aaron C.', '11/20/2002', 'Male', 'San Vicente Tunghaan Minglanilla Cebu', 'Single', '$2y$10$F1CRsFQpSbF3ly3sg1x0OOSEX9rMPhfkIl33WQistPiHoJ6at/.g6', ''),
('SCC-21-00012853', 'Villarin, Wilmar B', '9/27/2000', 'Male', 'Linao Minglanilla Cebu', 'Single', '$2y$10$/rJNPLmIopEF2UAItob7eO7nio/CT3PBJqOdtaidrikI2DnIuSxTi', ''),
('SCC-21-00012897', 'Villafuerte, Aeron G.', '2/20/2003', 'Female', 'Usmad, Argao Cebu', 'Single', '$2y$10$CNcVyz3cSU.o9YfuoAuY9.T.PQnz8rWOCzF5mPJVrck8.a2j/CRwe', ''),
('SCC-21-00012952', 'Deiparine, Caryll  Jean C', '6/30/2003', 'Female', 'Mangyan Sibonga Cebu', 'Single', '$2y$10$K9su3njdjsEHk5TnsEmBzeWzue.ke9oU6dooq75waiIGm3xFB/Uay', ''),
('SCC-21-00013023', 'Tarega, Ian L', '3/31/2001', 'Male', 'Poblacion Ward2, Minglanilla Cebu', 'Single', '$2y$10$0yjiNi1K3l6K8Q/itZ1lteChnSOe3l9tgjvCtU3TXndrnaS6MWRWS', ''),
('SCC-21-00013063', 'Labora, Justine B', '5/3/2003', 'Male', 'Budbud, Barili Cebu', 'Single', '$2y$10$yRvP6xEt9Rl5LhU2m2WeWu49r8NfRMZM0aiupTK.4hcP1qcYuXd3m', ''),
('SCC-21-00013077', 'Canoy, Joseph ', '10/15/2002', 'Male', 'Pob. Ward2 Minglanilla Cebu', 'Single', '$2y$10$i25Px3avGfwO2BNOCEE3B.n7VeG9Fq1YPSLEDr0q0dT0vNQg4Upxi', ''),
('SCC-21-00013078', 'Canoy, John ', '10/15/2002', 'Male', 'Ward IV Minglanilla Cebu', 'Single', '$2y$10$od4r31K08YynlY/9aOEgUeIzVeypuRDSNCNr8CQ7uVsrjYBd7KJqm', ''),
('SCC-21-00013117', 'Taña, Jefferson N', '5/1/2003', 'Male', 'Tagjaguimit, City of Naga, Cebu', 'Single', '$2y$10$WFjDfU1UNko5AWR2dXQOV.LkboPcwk.RoHwypZ8EBdZxTLnbSmh3m', ''),
('SCC-21-00013154', 'Lastimoso, Charlene E', '11/7/2001', 'Female', 'Tiago San Isidro Talisay City Cebu', 'Single', '$2y$10$nRzkEStRCRTlQv7Jf3O7yuq2P6t8jtcx.v9WayQtLJpAP88yobRgK', ''),
('SCC-21-00013258', 'Reales, Darren D', '9/8/2001', 'Male', 'Tagaytay Vito, Minglanilla Cebu', 'Single', '$2y$10$9UeVTwUKLQhCEAa1kqONneIvpsl61Is3YEry4.c.GbI9tnRqotqbi', ''),
('SCC-21-00013292', 'Torrejas, Sherwin C', '10/12/2000', 'Male', 'Ugoy Vito Minglanilla Cebu', 'Single', '$2y$10$pYLrQ3.o7mnEO38Fj9fjS.w1D3HcbpZp0wGZjbW3pr9bNMHeAAMQ2', ''),
('SCC-21-00013363', 'Padigos, Vhaugn Vincent D', '2/11/2001', 'Male', 'Poblacion Talisay Cebu', 'Single', '$2y$10$QEP1JpPRgz7lKKtOg6fu8.eYWdrJAyLZ/T7RwENrUuo3g7x1IK1be', ''),
('SCC-21-00013373', 'Isidoro, Kyle D', '6/10/2002', 'Male', 'Poblacion Talisay Cebu', 'Single', '$2y$10$g0uIrLfzfoYTQg9QSv0KruLS3xW8Usz.vNUCeiGdj5wklawsYVxBe', ''),
('SCC-21-00013433', 'Tumampo, Carl Jake C', '3/22/2002', 'Male', 'Dasug 3, Lutopan Toledo City', 'Single', '$2y$10$GRyPeloHtBYEEs0CzpHYOeYYvnuWSU1OrKxdPiEpirt0aLFW0YpYe', ''),
('SCC-21-00013504', 'Rabadon, Sam Cedrek ', '8/6/2003', 'Male', 'Calajo-an Minglanilla Cebu', 'Single', '$2y$10$7pJRZWlnuLCMiuD4jPyQze/ui/7GIHQMoouGNmJ.C4Ph4pvd.Db8y', ''),
('SCC-21-00013554', 'Cano, John Paul B.', '4/18/2003', 'Male', 'Tinaan City of Naga Cebu', 'Single', '$2y$10$L2S1Vxeo5ig4QWuGW/vVUuXivm9oha6ahV7X4JN710xUQ7oXpUXba', ''),
('SCC-21-00013556', 'Lapiz, Maria Ana C.', '2/8/2003', 'Female', 'Tagjaguimit City of Naga Cebu', 'Single', '$2y$10$GOcal3EM.j6w6TIapcZ3G.eiOQo2XEO2VaK0LrR3fD68/qz5Cofo.', ''),
('SCC-21-00013580', 'Requinto, Bernadette T.', '4/18/2003', 'Female', 'Tagjaguimit City of Naga', 'Single', '$2y$10$v2idHzrmlDQG8QT3ZOs51.22gLAmIm1ATB/0SeWQwJ4GqnoG1y3/K', ''),
('SCC-21-00013581', 'Requinto, Rico Zen P.', '6/10/2003', 'Male', 'Tagbuag-tubig Tagjaguimit City of Naga Cebu', 'Single', '$2y$10$mPJfQHIg54rCWpbqVvUrT.tUg22KNiBXlO/vm2aIut6xK8r5wPlfG', ''),
('SCC-21-00013589', 'Tapic, Angelin ', '7/20/2002', 'Female', 'Purok Naughang Sapa Inayagan City of Naga', 'Single', '$2y$10$QLyPNm4AX7RjYWd2PQaP1u.mPmWkuup/OASBY1OjMZqCYqOU3u75C', ''),
('SCC-21-00013709', 'Ngalis, Ryzo Mitchell F.', '11/27/2002', 'Male', 'Calajo-an Minglanilla Cebu', 'Single', '$2y$10$D.b3mMtSAY/5M5njpgLLc.jZrfJda/HGYmeA5hCJVot56lasPHyx2', ''),
('SCC-21-00013795', 'Rafayla, Angelo T.', '5/15/2002', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$BKaJXfJ/DTUXiLUFRyvUNeJp7y9wUTz4uD4p8nnAFBSe0PVlNpDLO', ''),
('SCC-21-00013811', 'Sabella, Lovely Joy N.', '3/20/2002', 'Female', 'Camp 4 City of Talisay Cebu', 'Single', '$2y$10$78oDVm8DfNYKMQFKVIbQ5u3wgiGwdjAEJCFkevTcN7nPH7YKwHfZy', ''),
('SCC-21-00013844', 'Sambrana, Nickel Son V', '5/27/2001', 'Male', 'Usmad, Aragao Cebu', 'Single', '$2y$10$UMlMlvBijrITUJaPEtYUqev3LPAuTqBaj0dai.MfOQZSXd7Xb7F5W', ''),
('SCC-21-00013873', 'Bongato, Cheryl D', '9/16/2002', 'Female', 'Corazon, Village II, San Isisdro Talisay City Cebu', 'Single', '$2y$10$t2GouFahj1JzQS7uKAvZFOhORN0LfoL1zBnB84782TNZ/rBcdLqNa', ''),
('SCC-21-00013876', 'Ombing, Stven Jhon G', '2/26/2003', 'Male', 'Nonon Tabunok Talisay City', 'Single', '$2y$10$7GwQaF.hgeFyFOoEejEmGO7y4bJ9jGzmbChYeQC.uGsDNrzrml8rS', ''),
('SCC-21-00013902', 'Caballero, Kc Kharl J.', '10/4/2001', 'Male', 'North Poblacion City of Naga Cebu', 'Single', '$2y$10$jqGOSd7YQtaXWTTKB30z4OT68fLf.nKR0YfGw7Qxkm2gttL9Mu7/K', ''),
('SCC-21-00013917', 'Ubas, Jose Nathaniel C', '10/3/2002', 'Male', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$TVcov7Yf3iZUweCr5aYrJemUfwJxlbIRhJ.5ehGmTg66GCcTYMlm2', ''),
('SCC-21-00013921', 'Tapere, Judy C.', '7/6/2003', 'Female', 'Cabutongan Santander Cebu ', 'Single', '$2y$10$2pXi6q7imPMKGeupFKWH5OhUc1cVDkpQ.dT/SktgfY8hdhmlh2uay', ''),
('SCC-21-00013940', 'Luzano, Artchel James L.', '6/9/2003', 'Male', 'Candamiang Santander Cebu', 'Single', '$2y$10$E12UUjFiPn6CTGXQiGtnuOfpmFNmRK4uFExjUZlwljaWkxEmEeIBG', ''),
('SCC-21-00013949', 'Canteveros, Nur-Ain Mae R.', '7/28/2003', 'Female', 'Lipata Minglanilla Cebu', 'Single', '$2y$10$IXB7p.LJuthpwxXX/JSPvO/m78Qe2U6jhfuK3Bpces4bl0qAyyfpC', ''),
('SCC-21-00013979', 'Tangaro, Aljunito P.', '3/6/2002', 'Male', 'Liburon Sanfernando Cebu', 'Single', '$2y$10$P7Ki4RgY6r9N5duxGk6gFOkeJpLuqo2hv7dAeNQcG/TUGSZmUfLHS', ''),
('SCC-21-00014018', 'Warain, Mae R.', '5/14/1998', 'Female', 'Rosario Aloguinsan Cebu', 'Single', '$2y$10$.wPQND6SAZ.myXkkIPOBuuRXdM.9YtZ8tdozNKTx2M4ZLHS77.hNC', ''),
('SCC-21-00014027', 'Gabutero, Angel ', '5/4/2002', 'Female', 'Liano Minglanilla Cebu', 'Single', '$2y$10$xHwj6/E6ugwVAwC0TRhweuRlTTydZCwuirjcuJsh.6mTNBebvepNu', ''),
('SCC-21-00014043', 'Candilasa, Russell P.', '12/14/1995', 'Male', 'St. Central Poblacion City of Naga ', 'Single', '$2y$10$P4wo5m6QBrndTiOKySKRBe8m10oCqnh0k2qCBNKniJiaL1XjFmU/S', ''),
('SCC-21-00014261', 'Lawas, Rey ', '3/5/2002', 'Male', 'Tungkop Ming', 'Single', '$2y$10$krNzGyVga6BFnOsYg49A1.f3uy7ptgzZOqeNwBFE.p6JkVEgY5C1.', ''),
('SCC-21-00014313', 'Macua, Cosam John A', '7/6/2000', 'Male', 'Tagaytay, Vitto Minglanilla', 'Single', '$2y$10$oFTnAXRH9RmUHB4JPIpXsuFmg9niUYaqz4FnwDeBDHLJ.m5TlgUp.', ''),
('SCC-21-00014412', 'Papalid, John Paul F.', '8/1/1998', 'Male', 'Pooc Talisay City Cebu', 'Single', '$2y$10$j8sqTNX5Sdi7kCiEeMerx.Lj.ARbcrEZcIiHz8vyqZbz5Mr/sfWQa', ''),
('SCC-21-00014484', 'Bacacao, Welin B.', '9/27/1994', 'Female', 'Pob. Ward IV Minglanilla Cebu', 'Single', '$2y$10$Q941BMyPwc.3E38/L7OA6.Oij3r/rjpiDTEFf1UIiiBaucuzqpaim', ''),
('SCC-21-00014490', 'Adona, Carl Macel C.', '3/29/2002', 'Male', 'Pob. Ward IV Minglanilla Cebu', 'Single', '$2y$10$851BFOhZNI2Mh.Tizo2RP.VoxiGGsph5MAHHaNUP2WC/4xMSoFSOa', ''),
('SCC-21-00014548', 'Geraldez, Kean Mark G.', '12/27/2002', 'Male', 'Tagjaguimit City of Naga Cebu', 'Single', '$2y$10$Adeoo0m72j3hn2uUDVZ.YuQ9sF1hAt6ioMqq691dXvMNuhsmcdwtS', ''),
('SCC-21-00014608', 'Mojado, Mark Japhzel A.', '5/19/2001', 'Male', 'Pangdan City of Naga Cebu', 'Single', '$2y$10$CuacVCEdeouMBhldaKumV.lzgJRXvqL4IRLZkSMKNfM.Ta0nf1YgK', ''),
('SCC-21-00014629', 'Egas Jr., Jaime D.', '2/11/2001', 'Male', 'Tubod Minglanilla Cebu', 'Single', '$2y$10$15M6kzHDtzjokSqifqyt2.mB1QC14HlP3Hjo74JRBQKYkuzzS77Z6', ''),
('SCC-21-00014639', 'Paran, Mary Claire U.', '9/7/2002', 'Female', 'Tubod Crossing Minglanilla Cebu', 'Single', '$2y$10$r/hNAOL/DdZZoVkr64mE4.2WAw2OHOWD6R31/pE.04LSYx9d7zzQC', ''),
('SCC-21-00014672', 'Labid, Ruffa Mae M.', '4/3/2002', 'Female', 'Tagjaguimit City of Naga Cebu', 'Single', '$2y$10$BD.hmfkHf.1u2WRwMD6fW.Wuo2bgkPgZZ8Pnnjj3tEhEk0UMrC/uK', ''),
('SCC-21-00014673', 'Alegado, John Raymon B.', '1/9/2002', 'Male', 'Tagjaguimit City of Naga Cebu ', 'Single', '$2y$10$g9V56pP8w.oz9.xBt/BwheRoUUIthuE1N.XdE4MhUsj2KxEpbp/06', ''),
('SCC-21-00014738', 'Apas, Jeremy ', '7/22/1998', 'Male', 'Tubod Minglanilla Cebu', 'Single', '$2y$10$3NWA9Bd2e9bYQhq6BdZ.4ut0khBGmTFGn04hjEEmu9.2Q2IFxSwle', ''),
('SCC-22-00014749', 'Aniban, Ian Kylle C', '9/1/2001', 'Male', 'Matagangtang, Placer, Masbate', 'Single', '$2y$10$ommI5JKJ/VtOVd2oLJPgJuFIvopQIu./yhOlaVrCSri/Lz5zeo9bq', ''),
('SCC-22-00014854', 'Opsima, Joshua D.', '12/6/2004', 'Male', 'Villa San Pedro Tulay Minglanilla Cebu', 'Single', '$2y$10$qm3PsYwLBYWcLfcgTWYJKe9lDAK7epMtGHUluonSCOlZHUws18b7e', ''),
('SCC-22-00014856', 'Espinosa, Mark Anthony P.', '8/31/2002', 'Male', 'Pob. Ward I Minglanilla Cebu', 'Single', '$2y$10$8ns2EcAQvwe8AwH2ItxQ.eaAQiSMa8s9AGfgGOJq8ugAC8whWCSyS', ''),
('SCC-22-00014859', 'Sepayla, John Harold A.', '10/12/2003', 'Male', 'Pob Ward I Minglanilla Cebu', 'Single', '$2y$10$C5KXjNCSEen0V69X0Qy3MO1ESk63erv8.gTk/kqpOdWEEpl1owq92', ''),
('SCC-22-00014861', 'Anave, Wayne ', '7/10/2000', 'Male', 'Colon City of Naga Cebu', 'Single', '$2y$10$WZwEdsNcZt8GJb0D6W6hYuyjX.ilBICMA2aAfFh5mqopACCOj6AMO', ''),
('SCC-22-00014867', 'Cabillo, Mae P.', '8/9/2001', 'Female', 'Cogon City of Naga Cebu', 'Single', '$2y$10$txbcoSI5edXcLVBpaHnqkORq6x.rrQeMpg5u74/Tv37VGvaXquuCW', ''),
('SCC-22-00014868', 'Abogada, Krystel Mae C.', '12/29/2033', 'Female', 'Rita Homes Subdivision San Carlos City (Present: Kry-Ass Abuno Minglanilla Cebu)', 'Single', '$2y$10$rXWbnD6QK/wWgLV.jDiRteeQl1GuebbHiU6jqYS2WAbFt1eJr5lca', ''),
('SCC-22-00014879', 'Macarat, Jhon Dexter B.', '6/8/2001', 'Male', 'Tagaytay Vito Minglanilla Cebu', 'Single', '$2y$10$bwXNdTXk4kOZ7RX5CMTp7evSqCu77rwVNxzqZZXZeAdkxhr/.q5/S', ''),
('SCC-22-00014885', 'Purisima, Mark Ken ', '9/28/2003', 'Male', 'Lower Linao Minglanilla Cebu', 'Single', '$2y$10$VKf4I91I3wS6OaRGV2.8yuzE06E2TwpboEwjsTxwkaTtvT8lKe/Ke', ''),
('SCC-22-00014886', 'Delantar, Aljun R.', '11/24/2003', 'Male', 'Purok Chilos Lower Linao Minglanilla Cebu', 'Single', '$2y$10$RqBCohTpJgpF3MByy3bDpeM7tqZdZxjKXIsLxfZp2UPbXsVcCJgTe', ''),
('SCC-22-00014927', 'Almendras, Josh Vincent S.', '9/4/2003', 'Male', '1823 Lawaan Talisay City Cebu', 'Single', '$2y$10$LrSxSPA8LdnFBD0GfcCOa.JhKWgH9XAMyoJKQ195MWEnJ7ikPsE/S', ''),
('SCC-22-00015007', 'Bendanillo, Shiro Joe L.', '10/2/2003', 'Male', 'San Roque Street', 'Single', '$2y$10$SQb4BFdLhp2MKlGEgR6ipuYLslwTl6PnHjrKYinJjjhcLVQ6tHLFu', ''),
('SCC-22-00015137', 'Silva, Mark Stephen ', '8/31/2004', 'Male', 'Pakigne Minglanilla Cebu', 'Single', '$2y$10$Wn4bqGGylWYd0Xuq2LOqTeG3sgwNG/nLnwF28dkSdaXtEbgojsSvu', ''),
('SCC-22-00015154', 'Tolentino, Shaira Mae C.', '5/14/2004', 'Female', 'Lutac City of Naga Cebu', 'Single', '$2y$10$oV.vfZljWgGtolHmGlLOF.D72AnvTAnaoQn1B/ily4n2ov1VFVCV6', ''),
('SCC-22-00015162', 'Repollo, Therese Mae N.', '5/30/2003', 'Female', 'Whiteland Tuyan City of Naga Cebu', 'Single', '$2y$10$EP9iU7UfX5Zfykebp/FsE.VttUhowpm37nVf91WIHu.9FIUcl9BHa', ''),
('SCC-22-00015168', 'Canillas, Edlein Joshua ', '4/4/2002', 'Male', 'Tunghaan Proper Minglanilla Cebu', 'Single', '$2y$10$E2FxnqbirRfN75Gc2Qyq7.RyiTu.Qh.l5H6jwKn11ZRSnX2ZkTJqO', ''),
('SCC-22-00015175', 'Adlawan, John Philip R.', '6/24/2002', 'Male', 'Lower Lipata Minglanilla Cebu', 'Single', '$2y$10$foVWxS6V8ifMmuoQ974CheWwdPvT64BJ9KBFG92A0Odm31MYLe.e6', ''),
('SCC-22-00015261', 'Cornesio, Alfred B.', '9/23/2001', 'Male', 'Panadtaran San Fernando Cebu', 'Single', '$2y$10$YBwgCKoczfxVAs7O0.z2WeCmuTvStvpG47uJJNdMnGo7PVcQEz29.', '');
INSERT INTO `tbl_students` (`s_id`, `s_name`, `s_bdate`, `s_gender`, `s_address`, `s_status`, `s_pass`, `s_email`) VALUES
('SCC-22-00015266', 'Espanillo, Joshua ', '1/29/1997', 'Male', 'Colon City of Naga Cebu', 'Single', '$2y$10$yR.Y1kDCzI9V0Fy/rDu6gua6pdUmPxQIDadoMc2.I4/wE5z4.NUMi', ''),
('SCC-22-00015303', 'Sabroso, Daniel L.', '4/8/2002', 'Male', 'Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$6tzRGyfgGlrCiNbKdpu9MeZJZGlKlwV.kQzFt7/1QFfNLY48uw/5.', ''),
('SCC-22-00015307', 'Sabroso, Diana L.', '12/3/2003', 'Female', 'Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$5WuyJfKltNKfI4ysGxgX7ubPgLfZFOVGr9bJmc6PUHlgm7l5mQcNG', ''),
('SCC-22-00015310', 'Cañon, Kimberly B.', '3/16/2004', 'Female', 'Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$FE4T/kJaLpxx4H46vhAYLeeDSsGVxqNzWUNIwGXUFMaho3i9EYaI.', ''),
('SCC-22-00015315', 'Omaque, Vince Jhon Hitler T.', '3/21/2004', 'Male', 'Batuan Cantao-an City of Naga Cebu', 'Single', '$2y$10$CP1cWQY7QI3XHPRXAIeBBe/8k5eJLCY78mNn9FZKnGaf44v1tlqvG', ''),
('SCC-22-00015318', 'Teves, Joshua B.', '11/5/2003', 'Male', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$Pn4BTucZN04dJ8yXhiyW0u/Py3E03FOdoKLIoOnyXImaTDJTpicla', ''),
('SCC-22-00015321', 'Repunte, Mary Kathleen M.', '12/4/2003', 'Female', 'Proper Cantao-an City of Naga Cebu', 'Single', '$2y$10$bi5nO8YPgnpOrcy0CppgouTn9PEroMXTey9I.jH28xAN7p0OEnfMq', ''),
('SCC-22-00015323', 'Lazaga, Julito Jr. T.', '1/24/2004', 'Male', 'Guindaruhan Minglanilla Cebu', 'Single', '$2y$10$hc6rF1SEPNxlu3eK9zbmzugI/PncKxDrRJA5GRXtJy2R3.yzNvWNq', ''),
('SCC-22-00015329', 'Rubio, Lymhar Jhude G.', '6/20/2002', 'Male', 'Panadtaran San Fernando Cebu', 'Single', '$2y$10$o2jlAYChyfcPAh8Jv5g6pO0WRTS55tdD3LMmNs0WwZEtR1NhTe9Hi', ''),
('SCC-22-00015330', 'Lapay, Andie Fey C.', '2/3/2003', 'Female', 'Purok Saka-on Inayagan City of Naga Cebu', 'Single', '$2y$10$RRWI9nx/A/fNMsQOvyMZC.xSQfEQXKRZi7QRZsObgqzC7ziW4hTe6', ''),
('SCC-22-00015335', 'Plarisan, Carl Vincent S.', '6/30/2003', 'Male', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$uxc7Y7M2K5VVbrcb6.07WOGQ1tLTVL1ihoECG.XpHLbEYFFrz/Mru', ''),
('SCC-22-00015336', 'Abella, Joseph B.', '3/19/2000', 'Male', 'Camarin Vito Minglanilla Cebu', 'Single', '$2y$10$1fBtgIPlvEtko1a0kV61NenNG0ExbD063BTa/yEIGzbjORQLySnGS', ''),
('SCC-22-00015338', 'Sayaboc, Mary Grace D.', '12/24/1989', 'Female', 'Lagtang Talisay Cebu', 'Married', '$2y$10$87j/SIzrsUPpQ5BHOBn4zuI46oM6xCDl4C3k0/BJoZTgE0xOJJyhG', ''),
('SCC-22-00015340', 'Jangad, Jaynu D.', '8/22/2003', 'Male', 'Lower Calajo-an Minglanilla Cebu', 'Single', '$2y$10$8./UAPMdodpKIiE7hfaTrufSQD4mg1YD2EOuLwpRHK0UIgtT33hLy', ''),
('SCC-22-00015378', 'Unsod, Zoren F.', '4/19/2003', 'Male', 'Poblacion Ward 4 Minglanilla C ebu', 'Single', '$2y$10$y.znOHFzq9fRQPczsEld3e5a6USMTIKK0/mVlDdL2dI2hfh7UNNVG', ''),
('SCC-22-00015464', 'Herbias, Danreb Q.', '2/28/2001', 'Male', 'Vito NHS', 'Single', '$2y$10$FaCWrsg6mlGvQfdUOc7OB.K79slMFWa6nns6GfeRUY0nMBUPJb9fq', ''),
('SCC-22-00015511', 'Pable, John Steven ', '11/19/2002', 'Male', 'Pakigne Minglanilla Cebu', 'Single', '$2y$10$Vft4bVfWutI/CsoMiUeUD.V9ly5hZOCyyVp8sXWbKHCrf3wT8niJO', ''),
('SCC-22-00015513', 'Cañete, John Keybird A.', '1/12/2004', 'Male', 'Pob. Ward II Minglanilla Cebu', 'Single', '$2y$10$Br8Z.89DeNQqs6l9V.PHWuBWSo8r3.h3ilsTMBSnPymeNozfWfDyi', ''),
('SCC-22-00015515', 'Suelez, Kent Clefford E.', '3/14/2004', 'Male', 'Guindaruhan Minglanilla Cebu', 'Single', '$2y$10$0yID9heoCJZYoQaUe1aI2ODMDNhSh0fOmiedk1iG/z4zb03xg.1y2', ''),
('SCC-22-00015518', 'Rosaceña, Sherniel Fhel B.', '6/16/2002', 'Male', 'Tuyan City of Naga Cebu', 'Single', '$2y$10$EQWTPdN3x1Q6Blf3Z7rz0uk.GHVoOp7Vc9wQMj2PzYbqLF9l5lvYi', ''),
('SCC-22-00015520', 'De La Cruz, Jay Adrian S.', '6/18/2004', 'Male', 'Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$Z2GdZJuaMlwa2GgX8Js9h.rgaFuByCqSPvTyx0Jv1iBAr/fYrcW2C', ''),
('SCC-22-00015523', 'Rivera, Iris Kamylle ', '12/16/2003', 'Female', 'Tubod National High School', 'Single', '$2y$10$YKMaT.4tkAHCDG4riku.ae20TGBGxzgY99IJf2hN4P2dyGOx7gMee', ''),
('SCC-22-00015634', 'Andales, Andrian P.', '5/14/2003', 'Male', 'Tangke II City of Naga Cebu', 'Single', '$2y$10$Or5Mkjq.uRNGgCnNWZqRH.xulElCQ1no0J4Hi9wS6SAj.QM715kAu', ''),
('SCC-22-00015636', 'Juarez, Bart Jay D.', '6/10/2004', 'Male', 'Cadulawan Minglanilla Cebu', 'Single', '$2y$10$g2AachmpGdSqFenGUUrdheHKNiKGTgyeInsxg.UCNE3w2fFSsvYN2', ''),
('SCC-22-00015637', 'Sellote, Kyle ', '12/6/2003', 'Male', 'Camarin Vito Minglanill Cebu', 'Single', '$2y$10$cEZISbfXxVUIazMIJ1B83.xKOUBxGNl.1Hog1GlT6LT41c5O4EoiS', ''),
('SCC-22-00015642', 'Mayormita, John William ', '4/13/2004', 'Male', 'Badian Cebu ( Present: Pakigne Minglanilla Cebu)', 'Single', '$2y$10$Ac8cvrBZsN7h5TiAQDsQsOznSD9uAFYDhJnlCWPXO5jg1Nx0JhurK', ''),
('SCC-22-00016008', 'Ompad, King Robert B.', '4/13/2003', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$cteJ4hvFB4VI/joA5kdG5uKP8wU3lTWM8F1.dTK4nsf8DSJqqAdtW', ''),
('SCC-22-00016009', 'Rubio, Ernest John G.', '5/15/2001', 'Male', 'Sanfernando Cebu', 'Single', '$2y$10$BLfcmqCtyIPz2A/EL4bzZuLYgV0sYJuenJoTYVxx5Uwe5BMyh3iNq', ''),
('SCC-22-00016019', 'Montebon, Neil G.', '4/23/2000', 'Male', 'Naga Cebu', 'Single', '$2y$10$bqSj0X04C/6c.y3TW09eOeaqi.Riv1bQDY.MOF4KtgWJiFpkD6yKu', ''),
('SCC-22-00016023', 'Ybas, Rosalia Brookeshiled D.', '3/1/2002', 'Female', 'Dumlog Talisay City Cebu', 'Single', '$2y$10$0xPinlwNV0Xm5Kirjh6WFu94amId1ZRLviLY9.0ByMmPGGusBzcnm', ''),
('SCC-22-00016097', 'Dalupere, Jose Miguel L.', '9/8/2001', 'Male', 'Tabtuy Tuyan City of Naga Cebu', 'Single', '$2y$10$yujDdA9wdwAZoN4Zq7K/aeooi5JgmnXKL5wQKifbRuSVKhbM.Ya0m', ''),
('SCC-22-00016146', 'Delima, Jaric C.', '1/9/2003', 'Male', 'Linao Lipata Minglanilla Cebu', 'Single', '$2y$10$3ydB701j9Jn4hzD.mU5XtOWWcwIHL4xtDG8Z.XjCPmXiqMWV1zOpa', ''),
('SCC-22-00016147', 'Unabia, Louenceque O.', '8/22/2003', 'Male', 'Ward IV Minglanilla Cebu', 'Single', '$2y$10$u946hGcN8DmJAMNF3vFiBO7MVATpUyfwMpe7E4OzmdwWPWHmw.PA.', ''),
('SCC-22-00016237', 'Dela Cuesta, John Michael G.', '4/7/2001', 'Male', 'Calajoan Minglanilla', 'Single', '$2y$10$oj7jC3t.4vF2dH8rsuDlyek4GsmiHAqoNv5B/Mz7JwoH.XzEKeUvm', ''),
('SCC-22-00016266', 'Cabag, Kent Christian M.', '10/20/2003', 'Male', 'Colon City Of Naga Cebu', 'Single', '$2y$10$BJY8VdQZOJ.1Y8wVT.4mbenRvkqDvecdxKWeRYd952rcrWaDYOF/i', ''),
('SCC-22-00016269', 'Galapin, Vhasj Gyorgii B.', '12/12/2003', 'Male', 'Tinaan City of Naga Cebu', 'Single', '$2y$10$iRVgNb72J/8g8/qJpoxqd.Zny6Nj.uKPD/1FP3PVJ73lsPKVEa9U.', ''),
('SCC-22-00016270', 'Misa, Shernan Jules T.', '7/9/2003', 'Male', 'Tangke 2 City of Naga', 'Single', '$2y$10$HFzQbUMCAR172ODmKpNXzeltz6idGySyhSx32yIBlG2BOLa/GJ7z2', ''),
('SCC-22-00016301', 'Labajo, Kem Andry V.', '4/4/2002', 'Male', 'Camarin Vito Minglanilla Cebu', 'Single', '$2y$10$/K7ShNXbOVW9t657PObXpuubWwClnw36yBCQhaEiDXTL1IWsHxTrC', ''),
('SCC-22-00016338', 'Sesante, Jomel S.', '1/6/2003', 'Male', 'Calajoan Minglanilla Cebu', 'Single', '$2y$10$02NWf3iegtthwTdsGZT2/u0lofxfJn4vMfinsJKpW2CH1BgUeD5bG', ''),
('SCC-22-00016339', 'Tejada, Ralph Kessenth F.', '10/6/2004', 'Male', 'Ward 3 Minglanilla Cebu', 'Single', '$2y$10$ZMu8GjFB7una0XkMcAqWM.yKjF807k9m7Q6csRtiojNop71g4OhUC', ''),
('SCC-22-00016342', 'Encina, Madelyn B.', '3/21/2001', 'Female', 'Tagjaguimit City Of Naga Cebu', 'Single', '$2y$10$nvCYObGz.pHFLvllh3XwruC192oJa57Wdwc0QOIfBXldQrYVAwFRu', ''),
('SCC-22-00016344', 'Dumangcas, Sachie R.', '11/15/2002', 'Female', 'Vito Minglanilla Cebu', 'Single', '$2y$10$Jd1mTb/L2dqjVskgkh9Pe.UPC9zx5kSphjWD9KCNX6h.jwte7zx2m', ''),
('SCC-22-00016345', 'Zabate, Jhon Mcrio G.', '12/15/2003', 'Male', 'Bairan City Of Naga Cebu', 'Single', '$2y$10$w.JCiRBiHJ1A/UdDLLY1VuqNLN8V3Gsa0H9yoCiWXAcbz5v4PbP.2', ''),
('SCC-22-00016346', 'Gabule, Earl Stanley ', '4/26/2000', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$deRMz/e81SVhZv3ACvGX7O5qO8pz5qlnRTLKiFpDInjBHhSptvoaa', ''),
('SCC-22-00016347', 'Pacure, John Rey J.', '6/19/2004', 'Male', 'Inayagan City Of Naga Cebu', 'Single', '$2y$10$O1WZX84kJi1xwyZP8hUfW.gpnHQ.5jFg3TO6Ya9He2/4iF6y7Ceiu', ''),
('SCC-22-00016349', 'Deiparine, Charles Brian D.', '11/18/2002', 'Male', 'San Isidro Talisay City Cebu', 'Single', '$2y$10$FKk.G374U13l2FpGWS33heicrWUkYc4ZvmCzl9u3UmKi5qsuI83TG', ''),
('SCC-22-00016440', 'Carba, John Ray E.', '12/20/1997', 'Male', 'Vito Minglanilla Cebu', 'Single', '$2y$10$5QZ2dD58U7lzM6Mfn4fLlO2rUf2j76UZ5z7qyajDvJ9nPuP8OjuC2', ''),
('SCC-22-00016448', 'Sabañeco, Tj L.', '8/15/2003', 'Male', 'Tulay Minglanilla Cebu', 'Single', '$2y$10$f.T3BHtQbLD1pKKO/EdR7.tPOWtgd0Qfrl2oDyMktBsGMIIP7Kppa', ''),
('SCC-22-00016450', 'Violon, Vhinz Henrich F.', '3/14/2004', 'Male', 'Ward 3 Minglanilla Cebu', 'Single', '$2y$10$zmXUsVB8g11VOu26xK3iZu4r2MFJWpkL4px3ymzjbz0rl1pO1KHem', ''),
('SCC-22-00016485', 'Capacite, Jake D.', '8/2/2004', 'Male', 'Poblacion Ward II, Minglanilla Cebu', 'Single', '$2y$10$2GGlnIYC2qCZ6HmagJhFNOB78F9bDACQ4tAlLLTNF0pZh2at.ZTDS', ''),
('SCC-22-00016488', 'Dinglasa, Adolfo ', '12/13/2003', 'Male', 'Poblacion Ward II Minglanilla Cebu', 'Single', '$2y$10$wNYBM8eUZgx7kWg/Xl.7DOB4QxEoH4Y1WSylYmJ9LGANlr24Beusa', ''),
('SCC-22-00016513', 'Alfanta, Izzy D.', '6/28/2004', 'Female', 'Colon City Of Naga Cebu', 'Single', '$2y$10$gRqkU84.fJYU6DRh9lTTVe/397Htd.pjq885zj8Ma3Xu995amQ6mG', ''),
('SCC-22-00016516', 'Cañizares, Lucky S.', '1/29/2004', 'Male', 'Tulay Minglanilla Cebu', 'Single', '$2y$10$V2FEVuloQxEHbbg66N3m8.d//zyVaYTDi4AYoywhHgZqoJHG0kYdK', ''),
('SCC-22-00016517', 'Cueva, Melchor S.', '1/6/2001', 'Male', 'Upper Linao Minglanilla Cebu', 'Single', '$2y$10$dLdPAE6Exa3juRu/XB9RIu1.ZVRuQi7FfsrQ41cIyqgVTnJ3j77W2', ''),
('SCC-22-00016519', 'Geonzon, Vincent ', '12/24/2003', 'Male', 'Vito Minglanilla Cebu', 'Single', '$2y$10$w17KUwuQ0q0nlJY9SQBlj..WnpWEgjw6Vk52mzJb1i7pjLh2sPO1m', ''),
('SCC-22-00016520', 'Traya, Janneth A.', '7/9/1996', 'Female', 'Ward 1 Minglanilla Cebu', 'Single', '$2y$10$KXVz8Z8FnGEPx3aYYMsjSO4zAGrMBCCEMN6kMe0M3twGKSw4oXL2u', ''),
('SCC-22-00016521', 'Nable, Joshua Elmer D.', '5/16/2004', 'Male', 'Pob. Ward 4 Minglanilla Cebu', 'Single', '$2y$10$DiXWU1279EFSn1ZpRKKb7e1iiLpUWYF71/Gg5NaEX9mODqwQsHcva', ''),
('SCC-22-00016527', 'Bayate, Luke Enriq M.', '11/27/2004', 'Male', 'Bacay Tulay Minglanilla Cebu', 'Single', '$2y$10$rX2aLZ9afPyhpGmKe5vGi.VhVo8iJ5gxSZDqyl8PMKR2pG8C8YlSy', ''),
('SCC-22-00016536', 'Andrade, Kent Mark L.', '10/5/2003', 'Male', 'Manduang Minglanilla Cebu', 'Single', '$2y$10$koCpXkWlxPakF4bW/BORHO2xrS7gPeq0S5P6jx/DuE6yf6X/fMdsG', ''),
('SCC-22-00016539', 'Padin, Cristyl Mae ', '6/15/2004', 'Female', 'Lawaan II, Talisay City, Cebu', 'Single', '$2y$10$LhJyRgtkKBS.h0KFMeeVJubKxjsh.mtlBdMoG22ZSXx.kzduAlj.a', ''),
('SCC-22-00016544', 'Ababon, Angely B.', '3/15/2003', 'Female', 'Purok 11, Gumamela, Cadulawan, Minglanilla Cebu', 'Single', '$2y$10$mlqhlzt/FNaBKrHVCSTdzuBjjnp5ulho4CR8T0anodtif0oije83a', ''),
('SCC-22-00016549', 'Esmalde, John Berth B.', '1/25/2004', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$uPt5mxP4ckCN1Sz5c7RSNufd/ofLg1LJ09FhHWao4PTEyMqfPBtm.', ''),
('SCC-22-00016555', 'La Rosa, Genesis S.', '8/22/2002', 'Male', 'Bacay Tulay Minglanilla Cebu', 'Single', '$2y$10$0Qp.BS3kkUcXGgt/paCoOe1QEt6Mrh8UcxvlFqKwWy6niHqC3UTfy', ''),
('SCC-22-00016556', 'Laparan, John Dave A.', '3/19/2003', 'Male', 'Lunas, Calidngan City of Carcar', 'Single', '$2y$10$6yECI1feL0RloZ8fxRLnWuXsFd4tI7/.IF51/UVIXuZwKXbEu/tzq', ''),
('SCC-22-00016561', 'Cantiveros, Cipriano ', '8/22/1999', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$CC49a8oh0lAucsqWe1FiMuPD0ciWB1W9oMhKJ7aQUFEBFHZ2eCBNi', ''),
('SCC-22-00016571', 'Pangan, John Rey N.', '12/19/2003', 'Male', 'Tungkil Minglanilla Cebu', 'Single', '$2y$10$KkaGfUkk1Xh2zv1l.EkBVeNEShrHTvqCR3F5NLAVlfbqNTvqgY.3W', ''),
('SCC-22-00016576', 'Camus, Kobe G.', '12/3/2002', 'Male', 'Tonggo Sanfernando Cebu', 'Single', '$2y$10$WjHBxIofxkYB/y6ViyDgyO1/LD3zVK8nRYcuAoQ6qb1/ygADDYtIy', ''),
('SCC-22-00016581', 'Lasola, Chris Divino P.', '9/2/2001', 'Male', 'Tungkil Minglanilla Cebu', 'Single', '$2y$10$Z31.VheA/bWYLuJ2FZiFCeiIZpeqo3PHsDB7MvtUl.IQlD0lX6BG.', ''),
('SCC-22-00016585', 'Omadlao, Jilmie B.', '6/29/2000', 'Female', 'Tonggo San Fernando, Cebu', 'Single', '$2y$10$R44DSPUzEEl4eKaANYVmyO3fLd7lnyf71lk/wFbNB33ijhYUNN5Ly', ''),
('SCC-22-00016610', 'Panilag, Jean Cristy A.', '9/7/2003', 'Female', 'Cantao-an City of Naga Cebu', 'Single', '$2y$10$IXt.xaQhRhmelUlAyIoBnu842OLekOD9M0HGo.nSJ7ji6Enc8p7aO', ''),
('SCC-22-00016629', 'Alfornon, Mark Vincent ', '5/11/2010', 'Male', 'Tuyan City of Naga Cebu', 'Single', '$2y$10$WOBQ6w4KEKlfGIKPzRXw4eeLJUmDs1OHu/sgunLE4DaLU1RMELR5G', ''),
('SCC-22-00016630', 'Arpilang, James S.', '7/21/2000', 'Male', 'Tabunok Talisay City', 'Single', '$2y$10$QGFJYzGMJCYc3IezMdeuv.1/1KNmQZLAxwWsM0oleE0JhJI.0EEFi', ''),
('SCC-22-00016640', 'Rapon, Elmer S.', '12/16/2003', 'Male', 'Pob. Ward 4 Minglanilla Cebu', 'Single', '$2y$10$5qZTP944bMMtQz3x0HiTAOIIh9NSvxqbcIPb20N0ub899q8NTDiaq', ''),
('SCC-22-00016652', 'Bercero, Ronald Kyle C.', '6/14/2004', 'Male', 'San Isidro, San Fernando Cebu', 'Single', '$2y$10$K49uqB6D8PZKojAR.OIrDeaKEnH5KjE1PzOaWMlo53gu0cc7g11mm', ''),
('SCC-22-00016655', 'Repuesto, Marc Gerard P.', '12/13/2003', 'Male', 'Purok dos, Grayrocks, Pangdan City of Naga', 'Single', '$2y$10$yXOTyoIh0FNYCXGpCWSOkObwU1IGizc3.AeeqkewXLZyHJWKj.BS6', ''),
('SCC-22-00016663', 'Palanog, Kryzel Mynn G.', '8/8/2004', 'Female', 'Lutac City Of Naga Cebu', 'Single', '$2y$10$IJLl/SJG7nwA4yaN7OlN1.lzKbz93bk0xqdRFGSw/wP3SICTwtRby', ''),
('SCC-22-00016712', 'Lasdoce, Jerome A.', '9/2/1994', 'Male', 'STIO YLAYA JAPITAN BARILI CEBU', 'Single', '$2y$10$G5Ghx545H/A.NhG3wCjcWu5BjbhrltMJROnc.GiFlQxH8WPkm88fu', ''),
('SCC-22-00016715', 'Hermosa, Julianne O', '4/6/2004', 'Female', 'Tubad Diyot Minglanilla Cebu City', 'Single', '$2y$10$nR1OPGI21HO6WB5qMk8UWewkbsUj/rtbUk1qAF3LQziitmVrBC12e', ''),
('SCC-22-00016730', 'Butaya, Kathleen C', '11/4/2003', 'Female', 'Guindarohan Minglanilla Cebu', 'Single', '$2y$10$cW/A8fRXAnMqhfHx.RiMRuKjHHVGoRFgOr002Utwe6sGAQ8/WirtK', ''),
('SCC-22-00016790', 'Victorillo, Jhonard C.', '6/3/2003', 'Male', 'Purok Camansilis Mayana City of Naga Cebu', 'Single', '$2y$10$HgezaG36r6ofs/g17eK5tOd2NKKC.H.L055C3lypyKMIPcs6a7jri', ''),
('SCC-22-00016813', 'Enot, Johanna Mae D', '9/1/2004', 'Female', 'Inayagan Naga City of Cebu', 'Single', '$2y$10$4TOYeCs8.MFhGGIrLvdyuuPol01YQchkHew75ofAYo8TAuOp2yjFe', ''),
('SCC-22-00016831', 'Balorio, Mark Joseph S', '4/25/2002', 'Male', 'Purok Bangus, Acacia Tungkop, Minglanilla Cebu', 'Single', '$2y$10$m0EguEuJulritraRMsh8eu81UFnvajJgrW.KQAtFYzjaJ0oqEp2CS', ''),
('SCC-22-00016833', 'Balorio, Shaira S', '5/15/2001', 'Female', 'Acacia Tungkop Minglanilla Cebu', 'Single', '$2y$10$.7QrftV11OSD/7GXtkB5W.LSNT8yYcRWwai1Ln4viUCHnooIRfzWC', ''),
('SCC-22-00016868', 'Nacua, Lycel Kayte A.', '7/3/2004', 'Female', 'Linao Lipata Minglanilla Cebu', 'Single', '$2y$10$vz0ecAzLAsRa9.qq6gQ3Xu5v4BgGWqzAmQI7H9Fw5cjVRyDCeb4ae', ''),
('SCC-22-00016878', 'Victorillo, Cyril Kaye C', '2/12/2004', 'Female', 'City of Naga', 'Single', '$2y$10$j5HQ/zPMJ7X.ow/VRXibf.B52FpLbyUt.L6x/NqY/27Ft68sZIzyO', ''),
('SCC-22-00016917', 'Rivera, Ronald ', '8/6/2001', 'Male', 'Tubod Minglanilla', 'Single', '$2y$10$i7.GhjwtPiRKtxFDAkD5puugjkEJ.udnyrOFE7vwgF5ufN9qH9EKy', ''),
('SCC-22-00016946', 'Agbon, Cyrel Ann ', '11/7/2002', 'Female', 'Tungkil, Minglanilla Cebu', 'Single', '$2y$10$m.hkNqxmwMcXkFMQQmyzoOhqSWAR/iBi.JL7eH718PNKG04IPHDPS', ''),
('SCC-22-00016951', 'Mabano, Jeraldine O', '8/8/2001', 'Female', 'Cuanos Minglanilla Cebu', 'Single', '$2y$10$NDwogQG/rITiZOag0KLlR.zNAL9ZvXrmMYpy6ShSO8PFuO/iRPkCm', ''),
('SCC-22-00016964', 'Cubar, Essa C', '4/21/2003', 'Female', 'Upper Lipata Minglanilla Cebu', 'Single', '$2y$10$D29BCLDXfu5GRok2Jqu35uqMCGTKI7rRCFJZ0qtxXcNa4zdwnufiu', ''),
('SCC-22-00017018', 'Secretaria, Franchesca Denise L', '5/10/2003', 'Female', 'Minglanilla Cebu', 'Single', '$2y$10$QJOCRubPjFQg1nKI2sR9cuFz55WpcbKjGcHwEOpOpEjX9jR8I2Hk.', ''),
('SCC-22-00017024', 'Gomatay, Luke Zyrylle R.', '8/6/2001', 'Male', 'Tungkop Minglanilla Cebu', 'Single', '$2y$10$hN5M69MjnJ4ktf6ZEW1JbOSZBuTbB8wEcFQ6FLWKL7zOlTDNpisyu', ''),
('SCC-22-00017028', 'Cambaya, Johnrey ', '1/20/2001', 'Male', 'Tangke City of Naga Cebu', 'Single', '$2y$10$3fcdGUCN9Lq/qRPyJCMA0u0xi2bdPe6fO.LY7tjHvB/Rnx6iaZJqC', ''),
('SCC-22-00017057', 'Millanes, Bethany B', '11/29/2002', 'Female', 'Lawa-an3, Talisay City Cebu', 'Single', '$2y$10$0qxw7OZFTEIZ7PfsGJBaneP5Ir65/NQZ.35k7DJXjSYHfqlb/pqsS', ''),
('SCC-22-00017068', 'Bacus, Larry M', '7/20/2001', 'Male', 'Tubod, Minglanilla Cebu', 'Single', '$2y$10$gLg41Cosbv.vMnRCwE.O/.Ws2gLEdljKUTql8Sxu.SWDAKb9Itliy', ''),
('SCC-22-00017117', 'Saramosing, Fritz Kalil G', '10/4/2003', 'Male', 'VITO MINGLANILLA', 'Single', '$2y$10$x8F6x4gu2qDlEOa7CkFSZulqD7MWi/RwT9SqBYgqw1D3VMzSTiIFK', ''),
('SCC-22-00017119', 'Miano, Ella C', '5/5/2001', 'Female', 'TUYAN NAGA', 'Single', '$2y$10$HTju4A9Npb.ci806aCNReOB8yqkarHJtghDbHbxD.lvvWimjV3pXO', ''),
('SCC-22-00017120', 'Cabiao, Jeno B.', '10/22/1999', 'Male', 'Tabunok Talisay City', 'Single', '$2y$10$U43O3iOkRFCDJQKhwqYhUuhQ1wZYllSSCqhfyCpp.m4AGCLizS3B.', ''),
('SCC-22-00017124', 'Lopez, Zachary Khursten Bernave ', '2/6/2002', 'Male', 'LINAO MINGLANILLA CEBU', 'Single', '$2y$10$EWhvlr3Xck/Ct7P4hRMlKO.f.2JTyBSimHMVGGnw3hmhllzU9I9di', ''),
('SCC-22-00017149', 'Tante, Jan Nino ', '1/20/2002', 'Male', 'BIASONG TALISAY', 'Single', '$2y$10$mJnEjOcvfushTH2LHTHxX.KT2XV.bCfkx7c82irMtV.3A6qZB1FUG', ''),
('SCC-22-00017154', 'Barro, Princess A', '11/5/2004', 'Female', 'MEDELLIN CEBU', 'Single', '$2y$10$6nEjBtbDINXP.cfNQJ2s0OIVQbKlgP6G0kbbJzmTvLsMcQGXvQ/iW', ''),
('SCC-22-00017191', 'Azarcon, Jun Carlo N.', '11/29/2003', 'Male', 'Pob. Ward IV Minglanilla Cebu', 'Single', '$2y$10$Du1QaUnxD7eQbUZk4SnaMeGRC7Ozc02GKnxxvFstvJtu04Ozr.09.', ''),
('SCC-22-00017214', 'Lascuña, Al Danver ', '10/30/2001', 'Male', 'Candato Guindarohan Minglanilla Cebu', 'Single', '$2y$10$SD9.wJz068EoOVrJW0hYTO0Ns5MfDDCZqQFuWEal31FUNNh6XN94G', ''),
('SCC-22-00017218', 'Gerasmeo, Kent Joshua ', '10/22/2003', 'Male', 'Pakigne Minglanilla Cebu', 'Single', '$2y$10$5jvARXbi/oEAWTv6Kcdepep1Ngj49TSlds0gosADHaeUa5thsZ9Jm', ''),
('SCC-22-00017252', 'Bagonggong, Crisanta ', '8/4/2002', 'Female', 'Tabunok Talisay City Cebu', 'Single', '$2y$10$ErbrzZR2uY6inOy9kXtUz.zxxu8MD0HXLPGG1tjZPMbtWaAZaG7QC', ''),
('SCC-22-00017264', 'Albarando, Romeo Jr. V.', '11/11/1997', 'Male', 'Tubod Minglanilla Cebu', 'Single', '$2y$10$xTKE9gzEjaCigtwVHZmv1e2YjSa1lUcVO8qB6ful9zJfcXL9ZnDhq', ''),
('SCC-22-00017269', 'Villarmea, Kaye Gilu ', '8/20/2001', 'Female', 'Inayagan City of Naga', 'Single', '$2y$10$WgMqBIZsjSCWnk7GKGyUpedDrHgWDz1M9BH2vJV/kVTZrS9mprn02', ''),
('SCC-22-00017292', 'Villarin, John Keiri A', '6/16/2003', 'Male', 'Jaclupan, Talisay City Cebu', 'Single', '$2y$10$PZn2cjWAS7C.TwUtPq32NujFxXVK8mZohhDEmpGBXOVcIvpzRUwPq', ''),
('SCC-22-00017293', 'Tabay, Ivan Francis A.', '2/4/2002', 'Male', 'Jaclupan Talisay City Cebu', 'Single', '$2y$10$iF5eC6Sut7imJsZ7qscQPu2gX26nM9Hr1n/STWIgFJ5QQg2nBn6mm', ''),
('SCC-22-00017294', 'Abendan, Rodito G', '8/20/1996', 'Male', 'Jaclupan, Talisay City', 'Single', '$2y$10$vzPq3XmEInf4YlGjYlqCV.crJD8cUTCsn11no5ujOa5AnQ57pb3nm', ''),
('SCC-22-00017335', 'Adlawan, Gay Marie B', '12/13/2001', 'Female', 'Upper Linao Minglanilla Cebu', 'Single', '$2y$10$vIu.xC2.TXEtArllJKnZOuvQ78xAF6q7R9.DcSlkjBjyB0eoScnZK', ''),
('SCC-22-00017344', 'Rentuma, Shane Rose G', '8/22/2001', 'Female', 'Carcar Cebu', 'Single', '$2y$10$aypotZnMy3q3tIv060cq8e5XmdpmT6ihTWZAUp2I3.kGQ4kBJrSaC', ''),
('SCC-22-00017358', 'Abellana, Vincent Anthony Q.', '7/8/2002', 'Male', 'Pakigne Minglanilla Cebu', 'Single', '$2y$10$QQp986gdo8R0UZ/c.MxsuuQ.bPHUNWd/MRbyWUh97kzT1DKDpZg56', ''),
('SCC-22-00017359', 'Dela Calzada, Laurence Robert ', '5/31/2004', 'Male', 'Poblacion Ward 3 Minglanilla Cebu', 'Single', '$2y$10$ip8GPY3bDpelrt5OOEVrae.IFi1YboQFVgA7ah4vPqJ8W3MqaMRbe', ''),
('SCC-22-00017366', 'Sambere, Joshua C.', '3/13/2003', 'Male', 'Springwoods Phase 2 Minglanilla Cebu', 'Single', '$2y$10$BFaDbknBwdOPN2QpzxKzo.S79EAjUL.D2rQyxXjme1a9rpSND6q6O', ''),
('SCC-22-00017374', 'Ragasa, John Paul C.', '6/14/2003', 'Male', 'Inayagan City of Naga Cebu', 'Single', '$2y$10$yCTU0xN11BXd/JoB/CDmweh7aT9VyCaxDrlwYVRVyuuPsSnaAHdPi', ''),
('SCC-22-00017375', 'Dominguez, Alvin Eric L.', '2/20/1995', 'Male', 'Deca Homes Minglanilla Cebu', 'Single', '$2y$10$sN9ALnhey/die8OWcSmcaurcKF45Up3/cKL5J4wZ5pnqxRlrb9RIy', ''),
('SCC-22-00017406', 'Dela Peña, Mark Anthony ', '5/1/2001', 'Male', 'Tabunoc Talisay City Cebu', 'Single', '$2y$10$79fw3O3885S2J00UmmGA7.c2CcGENaOPLWMUM761S5g0gf6PULpx.', ''),
('SCC-22-00017409', 'Cañada, Jeziel Mae D.', '12/10/1997', 'Female', 'Pob. Ward III Minglanilla Cebu', 'Single', '$2y$10$YHzRK2zxzOBBdZ08N4ljXOWJ3Mgw5gYG7w9ltXgBeX18LVJlPvKeW', ''),
('SCC-22-00017411', 'Cortez, Mike Christian ', '12/25/1995', 'Male', 'Tunghaan Minglanilla Cebu', 'Single', '$2y$10$SJTGes21KB/K7SfgEX4ANeQAf8Ll1fmE4NuxdGHvLxxpaB72FqYRe', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `sbj_id` int(10) NOT NULL,
  `sbj_code` varchar(20) NOT NULL,
  `sbj_desc` varchar(300) NOT NULL,
  `sbj_unit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`sbj_id`, `sbj_code`, `sbj_desc`, `sbj_unit`) VALUES
(1, 'CC102', 'Computer Programming 1', 3),
(2, 'WS301', 'Elective 1: Web Development 1', 3),
(3, 'PF201', 'Object-Oriented Programming I', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sy`
--

CREATE TABLE `tbl_sy` (
  `sy_id` int(20) NOT NULL,
  `sy_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sy`
--

INSERT INTO `tbl_sy` (`sy_id`, `sy_desc`) VALUES
(1, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `firstName`, `lastName`, `email`, `password`) VALUES
(10011, 'Mike11', 'Boss1', 'mike1@gmail.com', '$2y$10$Ryw8VBWAZMSAz0onT2Gi3.MqzutBo8jTXEGCdnYWVfA74Bs.Uvaqi'),
(10012, 'Mike22', 'Boss2', 'mike2@gmail.com', '$2y$10$2BMGWDj.23z/n8GcaKJyRu3u6Ej2Gtl154CsVD3bR7o9Di.HXkiL6'),
(10013, 'Mike33', 'Boss3', 'mike3@gmail.com', '$2y$10$vYGw0YKkM7rtWw05XhmviOjS.nQsKLvQS0hZAI8rT3FgNFITynZhC'),
(10014, 'Mike44', 'Boss4', 'mike4@gmail.com', '$2y$10$5pW9pK3xZnbmrxup2lIFIuXhT7DsQ8DcbPxaHd1nQvXcXxwrJRSZa'),
(10015, 'Mike5', 'Boss5', 'mike5@gmail.com', '$2y$10$XIX80KVeFFW.9g6XEz4p0.DXsHNZ/5i15vN6LpMsKvh35LwgWWS9i'),
(10016, 'Mike6', 'Boss6', 'mike6@gmail.com', '$2y$10$TzkqfsE4sPmmw37OtfXHz.fhWhjmM67zxGwX4SJi5fzES7tvqMgnS'),
(10017, 'Mike7', 'Boss7', 'mike7@gmail.com', '$2y$10$idZ3RzDcCgM6iCbQnBmO4.YidRcoGSCUlSdHnoJ0njBed1YbjYyGm'),
(10018, 'Mike8', 'Boss8', 'mike8@gmail.com', '$2y$10$AkZArQ3yR2VM7v.HNvU6pu0jSZDjGS/0FvW245SfLF0UnjSmKG4QK'),
(10019, 'Mike9', 'Boss9', 'mike9@gmail.com', '$2y$10$7b357M1eDZCkJk.KMhu7QubpmPtLpQQY.qPE26LCYWcbOgcTspOey'),
(10020, 'Mike10', 'Boss10', 'mike10@gmail.com', '$2y$10$P5M5sJqwzRNY4ydRpIqJb.wT8tCUu.Q2Y73kr1zrthaTaYytyh.ga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_grades`
--
ALTER TABLE `tbl_grades`
  ADD PRIMARY KEY (`grd_id`),
  ADD KEY `sy` (`sy_id`),
  ADD KEY `sem` (`sem_id`),
  ADD KEY `sbj_id` (`sbj_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`sbj_id`);

--
-- Indexes for table `tbl_sy`
--
ALTER TABLE `tbl_sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `c_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_grades`
--
ALTER TABLE `tbl_grades`
  MODIFY `grd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1494;

--
-- AUTO_INCREMENT for table `tbl_sem`
--
ALTER TABLE `tbl_sem`
  MODIFY `sem_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `sbj_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sy`
--
ALTER TABLE `tbl_sy`
  MODIFY `sy_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10128;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_grades`
--
ALTER TABLE `tbl_grades`
  ADD CONSTRAINT `sbj` FOREIGN KEY (`sbj_id`) REFERENCES `tbl_subject` (`sbj_id`),
  ADD CONSTRAINT `sem` FOREIGN KEY (`sem_id`) REFERENCES `tbl_sem` (`sem_id`),
  ADD CONSTRAINT `student` FOREIGN KEY (`s_id`) REFERENCES `tbl_students` (`s_id`),
  ADD CONSTRAINT `sy` FOREIGN KEY (`sy_id`) REFERENCES `tbl_sy` (`sy_id`);

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `tbl_post_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `tbl_categories` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
