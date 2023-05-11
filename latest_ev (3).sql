-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 08:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latest_ev`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add complaint', 7, 'add_complaint'),
(26, 'Can change complaint', 7, 'change_complaint'),
(27, 'Can delete complaint', 7, 'delete_complaint'),
(28, 'Can view complaint', 7, 'view_complaint'),
(29, 'Can add c points', 8, 'add_cpoints'),
(30, 'Can change c points', 8, 'change_cpoints'),
(31, 'Can delete c points', 8, 'delete_cpoints'),
(32, 'Can view c points', 8, 'view_cpoints'),
(33, 'Can add d boy', 9, 'add_dboy'),
(34, 'Can change d boy', 9, 'change_dboy'),
(35, 'Can delete d boy', 9, 'delete_dboy'),
(36, 'Can view d boy', 9, 'view_dboy'),
(37, 'Can add d request', 10, 'add_drequest'),
(38, 'Can change d request', 10, 'change_drequest'),
(39, 'Can delete d request', 10, 'delete_drequest'),
(40, 'Can view d request', 10, 'view_drequest'),
(41, 'Can add hub', 11, 'add_hub'),
(42, 'Can change hub', 11, 'change_hub'),
(43, 'Can delete hub', 11, 'delete_hub'),
(44, 'Can view hub', 11, 'view_hub'),
(45, 'Can add login', 12, 'add_login'),
(46, 'Can change login', 12, 'change_login'),
(47, 'Can delete login', 12, 'delete_login'),
(48, 'Can view login', 12, 'view_login'),
(49, 'Can add payment', 13, 'add_payment'),
(50, 'Can change payment', 13, 'change_payment'),
(51, 'Can delete payment', 13, 'delete_payment'),
(52, 'Can view payment', 13, 'view_payment'),
(53, 'Can add review', 14, 'add_review'),
(54, 'Can change review', 14, 'change_review'),
(55, 'Can delete review', 14, 'delete_review'),
(56, 'Can view review', 14, 'view_review'),
(57, 'Can add s center', 15, 'add_scenter'),
(58, 'Can change s center', 15, 'change_scenter'),
(59, 'Can delete s center', 15, 'delete_scenter'),
(60, 'Can view s center', 15, 'view_scenter'),
(61, 'Can add s request', 16, 'add_srequest'),
(62, 'Can change s request', 16, 'change_srequest'),
(63, 'Can delete s request', 16, 'delete_srequest'),
(64, 'Can view s request', 16, 'view_srequest'),
(65, 'Can add slot', 17, 'add_slot'),
(66, 'Can change slot', 17, 'change_slot'),
(67, 'Can delete slot', 17, 'delete_slot'),
(68, 'Can view slot', 17, 'view_slot'),
(69, 'Can add station', 18, 'add_station'),
(70, 'Can change station', 18, 'change_station'),
(71, 'Can delete station', 18, 'delete_station'),
(72, 'Can view station', 18, 'view_station'),
(73, 'Can add trip', 19, 'add_trip'),
(74, 'Can change trip', 19, 'change_trip'),
(75, 'Can delete trip', 19, 'delete_trip'),
(76, 'Can view trip', 19, 'view_trip'),
(77, 'Can add user', 20, 'add_user'),
(78, 'Can change user', 20, 'change_user'),
(79, 'Can delete user', 20, 'delete_user'),
(80, 'Can view user', 20, 'view_user'),
(81, 'Can add vehicle', 21, 'add_vehicle'),
(82, 'Can change vehicle', 21, 'change_vehicle'),
(83, 'Can delete vehicle', 21, 'delete_vehicle'),
(84, 'Can view vehicle', 21, 'view_vehicle'),
(85, 'Can add wallet', 22, 'add_wallet'),
(86, 'Can change wallet', 22, 'change_wallet'),
(87, 'Can delete wallet', 22, 'delete_wallet'),
(88, 'Can view wallet', 22, 'view_wallet'),
(89, 'Can add work', 23, 'add_work'),
(90, 'Can change work', 23, 'change_work'),
(91, 'Can delete work', 23, 'delete_work'),
(92, 'Can view work', 23, 'view_work');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `reply` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `u_id`, `complaint`, `reply`, `time`) VALUES
(19, 1, 'Poor working', 'ok', '2023-04-11 15:22:39.');

-- --------------------------------------------------------

--
-- Table structure for table `c_points`
--

CREATE TABLE `c_points` (
  `cp_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `status` varchar(20) NOT NULL,
  `u_id` int(5) NOT NULL,
  `cpoint` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'complaint', 'complaint'),
(5, 'contenttypes', 'contenttype'),
(8, 'c_points', 'cpoints'),
(9, 'd_boy', 'dboy'),
(10, 'd_request', 'drequest'),
(11, 'hub', 'hub'),
(12, 'login', 'login'),
(13, 'payment', 'payment'),
(14, 'review', 'review'),
(6, 'sessions', 'session'),
(17, 'slot', 'slot'),
(18, 'station', 'station'),
(15, 's_center', 'scenter'),
(16, 's_request', 'srequest'),
(19, 'trip', 'trip'),
(20, 'user', 'user'),
(21, 'vehicle', 'vehicle'),
(22, 'wallet', 'wallet'),
(23, 'work', 'work');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rsmcm5mgoxh2hdcjj6j1l8x99kudoue', 'eyJ1aWQiOjl9:1pmAkc:9iqM2I0OunnjYrKHJ5LUMNM9w8mwfmGaIeC5X_YmOtQ', '2023-04-25 09:57:22.855173'),
('2hcvaoe9uek7lr8hxuntggxs6p5p5aht', 'eyJ1aWQiOjF9:1paENn:zr5TelpHjjQbez0Ms_JcNrnM0QhJEePHLWUZl7IQmps', '2023-03-23 11:24:27.146178'),
('4y9ws68aeq8fc2tr4qbd4cd3nqidr074', 'eyJ1aWQiOjF9:1pZ3HK:atfIyyYR2_zFXUodTZoSK_FN2u1NNZ0zSVTwl51670s', '2023-03-20 05:20:54.195984'),
('bld7wm2aufgprcmuchmc2wwcwnwcggo6', 'eyJ1aWQiOiIxIn0:1paDVK:LNcV0IEyMvg9nB8woA1h8_b2SC4nQpe_YsV1lT653IA', '2023-03-23 10:28:10.115782'),
('jb3h4kmhyh75a85xvh7br4yzhj9la6pi', 'eyJ1aWQiOiIxIn0:1pkhGa:HeGzzJ2x59qt3GuyUNNeTMg2eRYveYVLXVjg75X4B34', '2023-04-21 08:16:16.464217'),
('ml94p9onbrryqwpe5zeni4lcx1x20thj', 'eyJ1aWQiOjl9:1pmIlV:V7AE-r3ERqRK0kYyQkt9gPDTAXJFLelEqKUEDI1EDJ8', '2023-04-25 18:30:49.232840'),
('o4tyrvqiehi6wftrx7chr3u46awxf96f', 'eyJ1aWQiOjF9:1pZ2xe:XD2ir8Covfuhei-fOx6Q4_HDDr4N30_rqEldryzbZEQ', '2023-03-20 05:00:34.078704'),
('q8kqnp18yzndm1qxiw0h81doje8c1ium', 'eyJ1aWQiOiJpbWcifQ:1pYhPv:kXYuWKH9NmA5IvSu2aplMtNbjvNe3Db91bWpGZQ6I3Y', '2023-03-19 06:00:19.185122'),
('v9b4cap2i2g9eay1215e8s3odgqwnblp', 'eyJ1aWQiOiIxIn0:1pmAdY:udVpwUvPsZvyKOGATPjaPj5-tRvKL87XiJ_LLLnYiD4', '2023-04-25 09:50:04.157057'),
('vctrulg6wy4rr0ubqwnp5vopld77res6', 'eyJ1aWQiOjF9:1pZDmx:2VyfYpjcVr3lobqUpN7s06K47ELxlIQBFj1PhNjTmMA', '2023-03-20 16:34:15.413922');

-- --------------------------------------------------------

--
-- Table structure for table `d_boy`
--

CREATE TABLE `d_boy` (
  `dboy_id` int(5) NOT NULL,
  `w_id` int(5) NOT NULL,
  `dboy_name` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `license` varchar(250) NOT NULL,
  `pan` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_boy`
--

INSERT INTO `d_boy` (`dboy_id`, `w_id`, `dboy_name`, `phone`, `gender`, `password`, `email`, `status`, `address`, `age`, `qualification`, `license`, `pan`, `photo`) VALUES
(8, 1, 'Midhun', '9988776633', 'male', '123', 'midhunfcb@gmail.com', 'pending', 'Hh\r\nHh', 23, 'SSLC', 'ER.pdf', '1212121', 'ER.pdf'),
(9, 1, 'Jules Smith', '6894715320', 'male', '12345678', 'julesmith3@gmail.com', 'pending', '45 Park Lane', 28, 'Plus Two', 'Certificate.pdf', 'ABXPS1234Q', 'OIP (6).jpeg'),
(10, 1, 'Leo Kim', '7258301649', 'male', '12345678', 'lkim89@hotmail.com', 'pending', '16 Pine Street', 31, 'Post Graduate', 'Certificate.pdf', 'BTFPK5678R', 'OIP (5).jpeg'),
(11, 1, 'Ava Lee', '9374062815', 'female', '12345678', 'avalee42@gmail.com', 'pending', '27 Cherry Avenue', 24, 'Graduate', 'Certificate.pdf', 'CNJMS7654K', 'OIP (6).jpeg'),
(12, 1, 'Max Wong', '5823106794', 'male', '12345678', 'maxwong97@yahoo.com', 'pending', '39 Elm Street', 19, 'SSLC', 'Certificate.pdf', 'DLRJK4321P', 'OIP (5).jpeg'),
(13, 1, 'Emma Chen', '8742095631', 'female', '12345678', 'echen86@gmail.com', 'pending', '12 Oak Drive', 36, 'Graduate', 'Certificate.pdf', 'ENHKL9876Q', 'OIP (5).jpeg'),
(14, 1, 'Liam Patel', '6247190358', 'male', '12345678', 'liampatel55@hotmail.com', 'Approved', '6 Maple Avenue', 27, 'Graduate', 'Certificate.pdf', 'AMTDF2468H', 'OIP (6).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `d_request`
--

CREATE TABLE `d_request` (
  `dr_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `status` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_request`
--

INSERT INTO `d_request` (`dr_id`, `u_id`, `status`, `type`, `time`, `longitude`, `location`) VALUES
(7, 1, 'pending', 'Portable C', '2023-04-11 23:34:18.', '', 'Kollam'),
(8, 1, 'pending', 'Portable C', '2023-04-11 23:40:57.', '', 'Kozhikode');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `en_id` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `enquiry` varchar(100) NOT NULL,
  `response` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`en_id`, `sc_id`, `u_id`, `enquiry`, `response`) VALUES
(5, 4, 1, 'Hi', 'Hello'),
(6, 4, 1, 'Hi', 'Hello'),
(7, 4, 1, 'Hi', 'Hello'),
(8, 4, 1, 'Hi', 'Hello'),
(9, 4, 1, 'Hello', 'hi'),
(10, 4, 1, 'Hi', 'ugg'),
(11, 4, 1, 'Helloooo', ''),
(12, 4, 1, 'Qwwer', ''),
(13, 4, 1, 'Hello', ''),
(14, 4, 1, 'Hai', ''),
(15, 4, 1, 'Hai', 'i'),
(16, 4, 1, 'Till what time this is working?', 'Till 10 pm');

-- --------------------------------------------------------

--
-- Table structure for table `evcharge`
--

CREATE TABLE `evcharge` (
  `chid` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evcharge`
--

INSERT INTO `evcharge` (`chid`, `amt`, `status`, `u_id`) VALUES
(1, 25, 'finished', 1),
(2, 25, 'finished', 1),
(3, 25, 'finished', 1),
(4, 25, 'finished', 1),
(5, 25, 'finished', 1),
(6, 100, 'finished', 1),
(7, 100, 'finished', 1),
(8, 100, 'finished', 1),
(9, 76, 'finished', 1),
(10, 100, 'finished', 1),
(11, 200, 'finished', 1),
(12, 1, 'finished', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hub`
--

CREATE TABLE `hub` (
  `h_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `units_left` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hub`
--

INSERT INTO `hub` (`h_id`, `s_id`, `units_left`) VALUES
(9, 9, 25),
(10, 9, 30);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `u_id` int(5) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `username`, `password`, `u_id`, `type`) VALUES
(1, 'admin', 'admin', 1, 'admin'),
(8, 'midhunprtz', '123', 1, 'user'),
(12, 'shilpa', 'shilpa', 6, 'user'),
(20, 'midhunfcb@gmail.com', '123', 8, 'dboy'),
(21, 'ola@gmail.com', '123', 9, 'organization'),
(23, 'automobile@gmail.com', '123', 4, 'service_center'),
(24, 'kseb@gmail.com', '123', 10, 'organization'),
(25, 'tata@gmail.com', '12345678', 11, 'organization'),
(26, 'chargemod@gmail.com', '12345678', 12, 'organization'),
(27, 'ather@gmail.com', '12345678', 13, 'organization'),
(29, 'salu@gmail.com', '12345678', 15, 'organization'),
(30, 'tirex@gmail.com', '12345678', 16, 'organization'),
(31, 'zeon@gmail.com', '12345678', 17, 'organization'),
(32, 'magneta@gmail.com', '12345678', 18, 'organization'),
(33, 'goec@gmail.com', '12345678', 19, 'organization'),
(34, 'electrify@gmail.com', '12345678', 20, 'organization'),
(35, 'tesla@gmail.com', '12345678', 21, 'organization'),
(36, 'ampup@gmail.com', '12345678', 22, 'organization'),
(37, 'fixit@gmail.com', '12345678', 5, 'service_center'),
(38, 'quickfix@outlook.com', '12345678', 6, 'service_center'),
(39, 'techcare@yahoo.com', '12345678', 7, 'service_center'),
(40, 'servipro@hotmail.com', '12345678', 8, 'service_center'),
(41, 'expertfix@gmail.com', '12345678', 9, 'service_center'),
(42, 'julesmith3@gmail.com', '12345678', 9, 'dboy'),
(43, 'lkim89@hotmail.com', '12345678', 10, 'dboy'),
(44, 'avalee42@gmail.com', '12345678', 11, 'dboy'),
(45, 'maxwong97@yahoo.com', '12345678', 12, 'dboy'),
(46, 'echen86@gmail.com', '12345678', 13, 'dboy'),
(47, 'liampatel55@hotmail.', '12345678', 14, 'dboy');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(5) NOT NULL,
  `w_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `w_id`, `u_id`, `s_id`, `amount`) VALUES
(1, 1, 1, 1, 100),
(2, 1, 1, 2, 100),
(4, 1, 1, 2, 100),
(5, 1, 1, 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `r_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `review` varchar(200) NOT NULL,
  `time` varchar(20) NOT NULL,
  `star` int(11) NOT NULL,
  `ss_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`r_id`, `s_id`, `u_id`, `review`, `time`, `star`, `ss_id`) VALUES
(1, 1, 1, '\"Super helpful for finding charging stations on the go. Love it!\"', '2023-02-13 10:37:10', 3, 0),
(3, 1, 1, '\"Must-have app for any EV driver. Makes finding charging stations a breeze!\"', '2023-02-13 10:37:10.', 3, 0),
(5, 1, 1, '\"Charging station info is inaccurate and the app is glitchy. Don\'t recommend.\"', '2023-02-16 10:38:27.', 1, 0),
(6, 4, 1, '\"Easy to use and accurate. Highly recommend for anyone with an EV.\"', '2023-02-16 11:33:11.', 3, 0),
(11, 8, 1, '\"Awesome app for finding charging stations on the go!\"', '2023-03-06 22:10:03.', 5, 0),
(12, 9, 1, '\"Simple and effective. Highly recommend for any EV driver.\"\r\n\r\n', '2023-03-07 17:28:06.', 5, 0),
(13, 9, 1, '\"Fantastic app for locating charging stations. 5 stars!\"\r\n\r\n\r\n\r\n\r\n\r\n\r\n\"Fantastic app for locating charging stations. 5 stars!\"\r\n\r\n\r\n\r\n\"Fantastic app for locating charging stations. 5 stars!\"\r\n\r\n\r\n\r\n', '2023-04-06 12:47:48.', 5, 0),
(14, 10, 1, '\"This app has saved me so much time and worry. Highly recommend!\"\r\n\r\n', '2023-04-11 15:21:02.', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slot_id` int(5) NOT NULL,
  `station_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`slot_id`, `station_id`, `username`, `start_time`, `end_time`) VALUES
(1, 1, '', '2023-02-12T14:57', '2023-02-12T20:52'),
(2, 1, '', '2023-02-12T16:52', '2023-02-12T16:52');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `proof` varchar(250) NOT NULL,
  `electricity_license` varchar(250) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`s_id`, `s_name`, `email`, `password`, `location`, `phone`, `proof`, `electricity_license`, `latitude`, `longitude`, `address`, `status`) VALUES
(9, 'Ola', 'ola@gmail.com', '123', 'Mananchira, Kozhikode', '9876543210', 'ev-station-15.jpg', 'ev_charging_app_for_onecharge_4x.webp', 11.2515, 75.7766, '9/752, Court Rd, Mananchira, Kozhikode, Kerala 673001', 'Approved'),
(10, 'KSEB Charging Statio', 'kseb@gmail.com', '123', 'Kozhikode', '9988776655', 'Studio_Project.jpeg', 'awh.png', 11.3052, 75.7605, 'Mananchira, Kozhikode', 'Approved'),
(11, 'Tata Power Charging Station', 'tata@gmail.com', '12345678', 'Westhill, Kozhikode', '9846100100', '1.txt', '1.txt', 11.2844, 75.7691, 'Michael\'s church, kannur Rd, near st, West Hill, Kozhikode, Kerala 673005', 'Approved'),
(12, 'chargeMOD Charging Station', 'chargemod@gmail.com', '12345678', 'Govindapuram, Kozhikode', '9889988998', '1.txt', '1.txt', 11.2481, 75.7979, 'Govindapuram, Kozhikode, Kerala 673016', 'Approved'),
(13, 'Ather Charging Station', 'ather@gmail.com', '12345678', 'Mankave, Kozhikode', '9988778899', '1.txt', '1.txt', 11.2382, 75.8047, 'Mini Bypass Rd, Bypass Junction, Mankave, Kozhikode, Kerala 673007', 'Approved'),
(15, 'Salu EV Station', 'salu@gmail.com', '12345678', 'Panniyankara, Kozhikode', '9988998899', '1.txt', '1.txt', 11.2287, 75.7922, 'Kallai Rd, Juma Masjid, Panniyankara, Kozhikode, Kerala 673003', 'Approved'),
(16, 'Tirex Charging Station', 'tirex@gmail.com', '12345678', 'Vatakinar, Meenchanda', '9988887766', '1.txt', '1.txt', 11.2166, 75.7961, 'Vatakinar, Meenchanda, Beypore, Kerala 673015', 'Approved'),
(17, 'Zeon Charging Station', 'zeon@gmail.com', '12345678', 'Thiruvangoor, Kerala', '9888899887', '1.txt', '1.txt', 11.3838, 75.7354, 'Thiruvangoor, Kerala 673304', 'Approved'),
(18, 'Magenta Chargegrid Charging Station', 'magneta@gmail.com', '12345678', 'Elathur, Kerala', '9889988967', '1.txt', '1.txt', 11.3436, 75.7403, 'Kannur Rd, Near, Elathur, Kerala 673303', 'Approved'),
(19, 'GOEC Charging Station', 'goec@gmail.com', '12345678', 'Koyilandy, Kerala', '9778887786', '1.txt', '1.txt', 11.4403, 75.6946, 'Koyilandy, Kerala 673305', 'Approved'),
(20, 'Electrify America Charging Station', 'electrify@gmail.com', '12345678', 'Mahé, Puducherry', '9988889999', '1.txt', '1.txt', 11.7034, 75.5346, 'Hospital Rd, Mahé, Puducherry 673310', 'Approved'),
(21, 'Tesla Supercharger', 'tesla@gmail.com', '12345678', 'Coimbatore, Tamil Nadu', '9988888866', '1.txt', '1.txt', 11.0182, 76.9589, 'Swarnambika Layout, Tatabad, Chinniyampalayam, Tatabad, Coimbatore, Tamil Nadu 641012', 'Approved'),
(22, 'AmpUp Charging Station', 'ampup@gmail.com', '12345678', 'Fort, Kochi, Kerala', '9988776677', '1.txt', '1.txt', 9.96493, 76.2388, 'Napier Street, Fort, Kochi, Kerala 682001', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `s_center`
--

CREATE TABLE `s_center` (
  `sc_id` int(5) NOT NULL,
  `password` varchar(20) NOT NULL,
  `service_available` text NOT NULL,
  `location` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `sc_name` varchar(20) NOT NULL,
  `certification` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_center`
--

INSERT INTO `s_center` (`sc_id`, `password`, `service_available`, `location`, `phone`, `email`, `status`, `sc_name`, `certification`, `address`, `image`) VALUES
(4, '123', 'Transmission fluid flush and replacement services', 'Kallai', '9988776655', 'automobile@gmail.com', '', 'Auto Mobiles', 'Midhun O.pdf', '123 Main St, Suite 101, Anytown, USA 12345', 'Midhun O (CV).pdf'),
(5, '12345678', 'Oil change and filter replacement services', 'Downtown', '1234567890', 'fixit@gmail.com', '', 'Fixit Service', 'Certificate.pdf', '123 Main St, Suite 101, Anytown, USA 12345', 'download (1).jpeg'),
(6, '12345678', 'Battery replacement services Alternator repair and replacement services Starter motor repair', 'Uptown', '5555555555', 'quickfix@outlook.com', '', 'QuickFix', 'Certificate.pdf', '456 Elm St, Unit B, Anycity, USA 67890\r\n', 'download (1).jpeg'),
(7, '12345678', 'Air conditioning repair and maintenance services Heater system repair', 'Eastside', '8888888888', 'techcare@yahoo.com', '', 'TechCare', 'Certificate.pdf', '789 Oak Ave, Building C, Anystate, USA 13579\r\n', 'download.jpeg'),
(8, '12345678', 'Oil change and filter replacement services Transmission fluid flush and replacement services Fuel system inspection and repair services Engine tune-up and diagnostic services', 'Westside', '5551234567', 'servipro@hotmail.com', '', 'ServiPro', 'Certificate.pdf', '321 Pine St, Apt 2B, Anycity, USA 24680\r\n', 'OIP (2).jpeg'),
(9, '12345678', 'Oil change and filter replacement services Transmission fluid flush and replacement services Fuel system inspection and repair services Engine tune-up and diagnostic services', 'Northside', '1234560000', 'expertfix@gmail.com', '', 'ExpertFix', 'Certificate.pdf', '987 Maple Rd, Unit 5, Anystate, USA 97531\r\n', 'OIP (3).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `s_request`
--

CREATE TABLE `s_request` (
  `sr_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `location` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `sc_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `s_wallet`
--

CREATE TABLE `s_wallet` (
  `sw_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `bal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_wallet`
--

INSERT INTO `s_wallet` (`sw_id`, `s_id`, `bal`) VALUES
(3, 9, 377),
(4, 10, 0),
(5, 11, 0),
(6, 12, 0),
(7, 13, 0),
(9, 15, 0),
(10, 16, 0),
(11, 17, 0),
(12, 18, 0),
(13, 19, 0),
(14, 20, 0),
(15, 21, 0),
(16, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `start_location` varchar(20) NOT NULL,
  `stop_location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `vehicle_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `license` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `email`, `phone`, `vehicle_id`, `name`, `address`, `license`) VALUES
(1, 'midhunprtz', '123', 'midhunprtz@gmail.com', '9656610543', 'KL-11-BJ-5559', 'Midhun', 'Kozhikode, Kerala', 'result 4.pdf'),
(6, 'shilpa', 'shilpa', 's@gmail.com', '8978676554', 'KL-11-BJ-5558', 'shilpa', 'Hh', 'ER.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(5) NOT NULL,
  `v_brand` varchar(20) NOT NULL,
  `v_model` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `w_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`w_id`, `u_id`, `balance`) VALUES
(1, 1, 503),
(4, 6, 1410);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `work_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dboy_id` int(5) NOT NULL,
  `location` varchar(20) NOT NULL,
  `type` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `s_id`, `status`, `dboy_id`, `location`, `type`) VALUES
(7, 7, 'Work completed', 9, 'Kollam', 'Portable C'),
(8, 8, 'Work completed', 9, 'Kozhikode', 'Portable C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `c_points`
--
ALTER TABLE `c_points`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `d_boy`
--
ALTER TABLE `d_boy`
  ADD PRIMARY KEY (`dboy_id`);

--
-- Indexes for table `d_request`
--
ALTER TABLE `d_request`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`en_id`);

--
-- Indexes for table `evcharge`
--
ALTER TABLE `evcharge`
  ADD PRIMARY KEY (`chid`);

--
-- Indexes for table `hub`
--
ALTER TABLE `hub`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `s_center`
--
ALTER TABLE `s_center`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `s_request`
--
ALTER TABLE `s_request`
  ADD PRIMARY KEY (`sr_id`);

--
-- Indexes for table `s_wallet`
--
ALTER TABLE `s_wallet`
  ADD PRIMARY KEY (`sw_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`w_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `c_points`
--
ALTER TABLE `c_points`
  MODIFY `cp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `d_boy`
--
ALTER TABLE `d_boy`
  MODIFY `dboy_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `d_request`
--
ALTER TABLE `d_request`
  MODIFY `dr_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `en_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `evcharge`
--
ALTER TABLE `evcharge`
  MODIFY `chid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hub`
--
ALTER TABLE `hub`
  MODIFY `h_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `r_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `s_center`
--
ALTER TABLE `s_center`
  MODIFY `sc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `s_request`
--
ALTER TABLE `s_request`
  MODIFY `sr_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `s_wallet`
--
ALTER TABLE `s_wallet`
  MODIFY `sw_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `w_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
