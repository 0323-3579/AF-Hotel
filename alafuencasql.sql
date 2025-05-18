-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 17, 2025 at 01:51 PM
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
-- Database: `alafuenca`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `message` text DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `price`, `message`, `event_type`, `max_guests`, `location`, `description`, `images`) VALUES
(24, 'Wedding Ceremony', 150000.00, 'Celebrate your special day with elegance and luxury.', 'Wedding', 300, 'Grand Ballroom 1', 'A luxurious wedding package including decorations, catering, and full event management.', '[\"eventimg_6827672d564ef9.68076841.jpeg\"]'),
(25, 'Debut Celebration', 80000.00, 'Make your 18th birthday unforgettable.', 'Debut', 150, 'Function Hall A1', 'A glamorous debut event with themed decorations, catering, and entertainment.', '[\"eventimg_68276a6e2da1f3.27261825.jpg\"]'),
(26, 'Corporate Seminar', 100000.00, 'Professional venue equipped with all facilities for your seminar.', 'Corporate', 200, 'Conference Room 1A', 'Ideal for corporate training, seminars, and workshops with AV equipment.', '[\"eventimg_68276980551e36.71547879.jpg\"]'),
(27, 'Birthday Party', 50000.00, 'Celebrate birthdays with style and fun.', 'Birthday', 100, 'Function Hall B1', 'Party package with catering, decorations, and entertainment options.', '[\"eventimg_682766db9eed63.49572573.webp\"]'),
(28, 'Product Launch', 120000.00, 'Launch your products in a premium venue.', 'Corporate', 250, 'Grand Ballroom 2', 'Full event service including AV setup, catering, and branding.', '[\"eventimg_6827688f03e003.04255433.jpg\"]'),
(29, 'Anniversary Gala', 130000.00, 'Celebrate milestones with a grand gala event.', 'Anniversary', 200, 'Function Hall A2', 'Elegant anniversary package with fine dining and entertainment.', '[\"eventimg_68276959aecb67.45193144.webp\"]'),
(30, 'Charity Ball', 140000.00, 'Host a sophisticated charity fundraising event.', 'Charity', 300, 'Grand Ballroom 3', 'Includes gala dinner, auction setup, and event coordination.', '[\"eventimg_68276834b200e1.22397375.webp\"]'),
(31, 'Holiday Party', 90000.00, 'Festive holiday celebrations for your group.', 'Holiday', 150, 'Function Hall B2', 'Christmas and New Year party packages with themed decorations.', '[\"eventimg_68276a1ca81560.76484585.jpg\"]'),
(32, 'Team Building', 60000.00, 'Boost team morale with a focused team building event.', 'Corporate', 120, 'Conference Room 2A', 'Includes meeting facilities, breakout rooms, and catering.', '[\"eventimg_68276b0b7c9262.39987676.jpg\"]'),
(33, 'Wedding Reception', 160000.00, 'Celebrate your wedding with a memorable reception.', 'Wedding', 350, 'Grand Ballroom 4', 'Reception package with catering, decorations, and entertainment.', '[\"eventimg_6827680cdd9d41.36061169.jpg\"]'),
(34, 'Christening Ceremony', 70000.00, 'Host your baby’s christening in an elegant setting.', 'Christening', 100, 'Function Hall C1', 'Package includes catering, decorations, and event coordination.', '[\"eventimg_68276b49622551.15736341.jpg\"]'),
(35, 'Fashion Show', 180000.00, 'Premium venue for fashion events and runway shows.', 'Corporate', 400, 'Grand Ballroom 5', 'Includes stage setup, lighting, and AV equipment.', '[\"eventimg_682767d9718188.67272653.jpg\"]'),
(36, 'Graduation Party', 80000.00, 'Celebrate academic achievements with friends and family.', 'Graduation', 150, 'Function Hall A3', 'Party package with catering and decorations.', '[\"eventimg_682769b52e37c1.39631948.jpg\"]'),
(37, 'Press Conference', 60000.00, 'Professional setup for media and press events.', 'Corporate', 100, 'Conference Room 1B', 'Includes AV system and seating arrangements.', '[\"eventimg_682767a4487de3.05046043.jpg\"]'),
(38, 'Engagement Party', 90000.00, 'Celebrate your engagement with a stylish party.', 'Engagement', 120, 'Function Hall B3', 'Includes catering, decorations, and event planning.', '[\"eventimg_68276aa6714891.15746059.png\"]'),
(39, 'Art Exhibit', 70000.00, 'Showcase your art in an elegant environment.', 'Exhibition', 200, 'Exhibition Hall 1', 'Includes lighting, display areas, and catering.', '[\"eventimg_682768b95841e7.03836751.jpg\"]'),
(40, 'Workshop', 50000.00, 'Interactive workshops with full facilities.', 'Corporate', 80, 'Conference Room 2B', 'Includes AV setup, catering, and materials.', '[\"eventimg_68276b7de41858.17641974.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `booking_code` char(12) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('room','event') NOT NULL,
  `item_id` int(11) NOT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `message` text DEFAULT NULL,
  `amount_received` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','confirmed','refused') DEFAULT 'pending',
  `payment_intent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `booking_code`, `user_id`, `type`, `item_id`, `checkin_date`, `checkout_date`, `payment_method`, `created_at`, `message`, `amount_received`, `status`, `payment_intent_id`) VALUES
(1, '22245EAC', 1, 'room', 15, '2025-05-09', '2025-05-17', 'credit_card', '2025-05-09 13:08:43', '', 194070.00, 'confirmed', NULL),
(2, '380D85AB', 1, 'room', 15, '2025-05-17', '2025-05-24', 'credit_card', '2025-05-09 13:21:42', 'dfdf', 169811.25, 'confirmed', NULL),
(3, '26A414E5', 1, 'room', 15, '2025-05-24', '2025-05-31', 'credit_card', '2025-05-09 13:37:19', 'fdfd', 169811.25, 'confirmed', NULL),
(4, 'D255E20C', 1, 'room', 15, '2025-06-01', '2025-06-09', 'credit_card', '2025-05-09 13:40:19', 'sdsds', 194070.00, 'confirmed', NULL),
(5, '88072AF3', 1, 'room', 15, '2025-06-09', '2025-06-17', 'credit_card', '2025-05-09 13:45:11', '', 194070.00, 'confirmed', NULL),
(7, '4C17E54F', 1, 'room', 17, '2025-05-13', '2025-05-31', 'credit_card', '2025-05-09 18:42:13', 'dsds', 163633.50, 'confirmed', NULL),
(8, '9BC7A275', 1, 'room', 17, '2025-06-02', '2025-06-09', 'credit_card', '2025-05-09 20:25:27', 'sdsds', 63635.25, 'confirmed', NULL),
(9, 'F83387EA', 1, 'room', 17, '2025-06-09', '2025-06-16', 'gcash', '2025-05-10 19:36:31', '', 63635.25, 'pending', NULL),
(10, '38711067', 1, 'room', 17, '2025-06-16', '2025-06-23', 'credit_card', '2025-05-10 19:57:05', 'idk', 63635.25, 'refused', NULL),
(11, '3D25A373', 1, 'room', 17, '2025-06-09', '2025-06-16', 'gcash', '2025-05-11 10:15:18', '', 63635.25, 'pending', NULL),
(12, '9416E691', 1, 'room', 17, '2025-06-16', '2025-06-23', 'credit_card', '2025-05-11 10:24:33', '', 63635.25, 'confirmed', NULL),
(13, '8DAE52DC', 1, 'room', 17, '2025-07-09', '2025-07-16', 'credit_card', '2025-05-11 10:34:07', '', 63635.25, 'confirmed', NULL),
(6820296, '', 1, 'room', 0, NULL, NULL, 'credit_card', '2025-05-11 12:36:59', NULL, 1000.00, 'confirmed', 'pi_3RNRdJQRWlNYV6MS0zX8dbzr'),
(6820297, '24B6C8C7', 1, 'room', 17, '2025-06-10', '2025-06-17', 'credit_card', '2025-05-11 12:59:08', '', 63635.25, 'confirmed', NULL),
(6820298, '0F1317A1', 1, 'room', 17, '2025-06-09', '2025-06-16', 'credit_card', '2025-05-11 13:11:40', '', 63635.25, 'confirmed', NULL),
(6820299, '7A516511', 1, 'room', 17, '2025-06-17', '2025-06-24', 'credit_card', '2025-05-11 14:03:12', 'sdsd', 63635.25, 'confirmed', 'pi_3RNSyjQRWlNYV6MS1HSM1lKV'),
(6820300, '672FF0A1', 1, 'room', 17, '2025-06-17', '2025-06-30', 'credit_card', '2025-05-11 14:28:21', '', 118179.75, 'confirmed', 'pi_3RNTN2QRWlNYV6MS1UNHGdhB'),
(6820301, 'DF3C26B9', 1, 'room', 13, '2025-05-12', '2025-05-17', 'credit_card', '2025-05-11 14:35:02', '', 375000.00, 'confirmed', 'pi_3RNTTWQRWlNYV6MS14bI33KI'),
(6820302, 'C87130A8', 1, 'room', 16, '2025-05-16', '2025-05-23', 'credit_card', '2025-05-11 14:49:38', '2424', 63635.25, 'confirmed', 'pi_3RNTheQRWlNYV6MS0f14TumG'),
(6820303, '724C1B62', 1, 'room', 17, '2025-07-16', '2025-07-23', 'stripe', '2025-05-11 21:36:26', 'fs', 63635.25, 'confirmed', 'pi_3RNa3KQRWlNYV6MS0OMZ2TkK'),
(6820304, '5498F6B4', 1, 'room', 17, '2025-08-03', '2025-08-10', 'stripe', '2025-05-11 21:54:07', 'dd', 63635.25, 'pending', 'pi_3RNaKRQRWlNYV6MS1ymqokpJ'),
(6820305, '183A8833', 1, 'room', 16, '2025-07-01', '2025-07-08', 'stripe', '2025-05-11 22:37:05', 'ddw', 63635.25, 'pending', 'pi_3RNb01QRWlNYV6MS1fRplo8A'),
(6820306, 'E33DAA47', 1, 'room', 17, '2025-09-07', '2025-09-14', 'stripe', '2025-05-11 22:39:42', '', 63635.25, 'confirmed', 'pi_3RNb2ZQRWlNYV6MS04Ythec6'),
(6820307, '7C54D188', 1, 'room', 17, '2025-08-12', '2025-08-19', 'stripe', '2025-05-11 22:41:43', 'sdsd', 63635.25, 'refused', 'pi_3RNb4VQRWlNYV6MS0dCLjry3'),
(6820308, '85EB873C', 1, 'room', 16, '2025-06-01', '2025-06-22', 'stripe', '2025-05-11 23:03:36', '', 190905.75, 'confirmed', 'pi_3RNbPhQRWlNYV6MS1gHynr4p'),
(6820309, '064B78CC', 1, 'event', 1, '2025-05-14', '2025-05-15', 'stripe', '2025-05-12 09:47:25', '', 375000.00, 'confirmed', 'pi_3RNlShQRWlNYV6MS0pz1lOX1'),
(6820310, '9F20F2E5', 1, 'room', 17, '2025-08-11', '2025-08-18', 'stripe', '2025-05-12 10:54:51', 'sdsds', 63635.25, 'refused', 'pi_3RNmVzQRWlNYV6MS0ESbgxNZ'),
(6820311, 'A4BA0DB9', 1, 'room', 16, '2025-07-14', '2025-07-21', 'stripe', '2025-05-12 10:55:17', '', 63635.25, 'confirmed', 'pi_3RNmWQQRWlNYV6MS0DXL4KJv'),
(6820312, '77102A43', 1, 'room', 17, '2025-08-24', '2025-08-31', 'stripe', '2025-05-12 11:15:54', '', 63635.25, 'pending', 'pi_3RNmqMQRWlNYV6MS0raiz4ck'),
(6820313, '1E458870', 1, 'room', 17, '2025-07-23', '2025-07-30', 'stripe', '2025-05-12 15:29:17', '', 63635.25, 'pending', 'pi_3RNqnZQRWlNYV6MS0TvLeoDT'),
(6820314, '6D4AAF58', 1, 'room', 17, '2025-08-10', '2025-08-17', 'stripe', '2025-05-12 15:43:54', '', 63635.25, 'pending', 'pi_3RNr1iQRWlNYV6MS0YNHX9Se'),
(6820315, 'E3E839F1', 1, 'room', 15, '2025-06-17', '2025-06-24', 'stripe', '2025-05-12 15:47:01', '', 169811.25, 'pending', 'pi_3RNr4jQRWlNYV6MS0hmSv3z6'),
(6820316, 'AB3BEC41', 1, 'room', 17, '2025-07-01', '2025-07-08', 'stripe', '2025-05-13 16:38:06', '', 63635.25, 'pending', 'pi_3ROELhQRWlNYV6MS0Tt8huQn'),
(6820321, 'E6E78198', 1, 'room', 8, '2025-06-02', '2025-06-09', 'stripe', '2025-05-13 18:18:13', '', 34125.00, 'pending', 'pi_3ROFubQRWlNYV6MS0PDJOZI1'),
(6820322, '34A9DACF', 1, 'room', 17, '2025-07-30', '2025-07-31', 'stripe', '2025-05-13 19:17:42', '', 9090.75, 'pending', 'pi_3ROGq9QRWlNYV6MS1B3rx6zm'),
(6820323, '0B5CCBEC', 1, 'room', 17, '2025-08-19', '2025-08-21', 'stripe', '2025-05-13 19:25:01', '', 18181.50, 'pending', 'pi_3ROGxFQRWlNYV6MS1wYkiAo0'),
(6820327, '31EF43A6', 1, 'room', 14, '2025-06-04', '2025-06-11', 'stripe', '2025-05-13 19:40:48', '', 12248.25, 'pending', 'pi_3ROHCWQRWlNYV6MS1iAbxDVX'),
(6820328, '6AA7326C', 1, 'room', 13, '2025-06-02', '2025-06-09', 'stripe', '2025-05-13 19:51:35', '', 525000.00, 'pending', 'pi_3ROHMxQRWlNYV6MS002ZwptL'),
(6820329, '29867FDA', 1, 'room', 10, '2025-06-09', '2025-06-16', 'stripe', '2025-05-13 19:54:59', '', 44625.00, 'pending', 'pi_3ROHQFQRWlNYV6MS0wmvhveY'),
(6820330, '3AF0C822', 1, 'room', 10, '2025-06-16', '2025-06-23', 'stripe', '2025-05-13 19:58:32', '', 44625.00, 'refused', 'pi_3ROHTgQRWlNYV6MS000Sl6Hu'),
(6820331, '11A6014C', 1, 'room', 15, '2025-06-24', '2025-06-28', 'stripe', '2025-05-13 20:05:02', '', 97035.00, 'confirmed', 'pi_3ROHZyQRWlNYV6MS1eO0LLX4'),
(6820332, 'EC86FB7F', 1, 'room', 17, '2025-09-15', '2025-09-22', 'stripe', '2025-05-13 21:03:10', '', 63635.25, 'confirmed', 'pi_3ROIUEQRWlNYV6MS16lUeHRJ'),
(6820333, 'D102AEEA', 1, 'event', 3, '2025-05-22', '2025-05-22', 'stripe', '2025-05-13 21:13:09', '', 750.00, 'refused', 'pi_3ROIdtQRWlNYV6MS0lVLvj5e'),
(6820334, '54AA9523', 1, 'room', 16, '2025-05-30', '2025-05-31', 'stripe', '2025-05-13 21:13:34', '', 9090.75, 'refused', 'pi_3ROIeIQRWlNYV6MS0T2Vsa51'),
(6820335, '09FC385A', 5, 'room', 17, '2025-09-24', '2025-09-26', 'stripe', '2025-05-14 19:38:37', 'sd', 18181.50, 'confirmed', 'pi_3ROddvQRWlNYV6MS1Nu7LyF9'),
(6820336, 'A7B5146D', 5, 'room', 17, '2025-10-06', '2025-10-14', 'stripe', '2025-05-16 17:12:44', '', 72726.00, 'confirmed', 'pi_3RPKJtQRWlNYV6MS0C6NXfyM'),
(6820337, '8DAA7B7E', 5, 'room', 15, '2025-07-07', '2025-07-14', 'stripe', '2025-05-16 17:26:01', '', 169811.25, 'confirmed', 'pi_3RPKWjQRWlNYV6MS0pkuaJws'),
(6820338, 'D912E4B0', 5, 'room', 6, '2025-05-16', '2025-05-30', 'stripe', '2025-05-16 19:50:41', 'hello', 126000.00, 'pending', 'pi_3RPMmjQRWlNYV6MS14BtSfUl'),
(6820339, '0832E2C4', 5, 'room', 16, '2025-06-23', '2025-06-25', 'stripe', '2025-05-16 19:53:06', '', 18181.50, 'pending', 'pi_3RPMp4QRWlNYV6MS09Zbtxw7'),
(6820340, 'B822A717', 1, 'room', 120, '2025-05-17', '2025-05-24', 'stripe', '2025-05-17 17:08:06', '', 45937.50, 'pending', 'pi_3RPgiuQRWlNYV6MS0qcJOrrt'),
(6820341, 'A1B2C3D4', 8, 'event', 24, '2025-05-27', '2025-05-27', 'stripe', '2025-05-17 17:54:34', 'Looking forward to the wedding! (Date adjusted)', 112500.00, 'confirmed', NULL),
(6820342, 'E5F6G7H8', 9, 'room', 18, '2025-05-28', '2025-05-31', 'stripe', '2025-05-17 17:54:34', 'Early check-in if possible.', 7200.00, 'pending', NULL),
(6820343, 'I9J0K1L2', 10, 'event', 25, '2025-05-27', '2025-05-28', 'stripe', '2025-05-17 17:54:34', 'Debut celebration arrangements. (Date adjusted)', 60000.00, 'confirmed', NULL),
(6820344, 'M3N4O5P6', 11, 'room', 20, '2025-05-29', '2025-06-03', 'stripe', '2025-05-17 17:54:34', NULL, 12375.00, 'confirmed', NULL),
(6820345, 'Q7R8S9T0', 12, 'event', 27, '2025-05-27', '2025-05-27', 'stripe', '2025-05-17 17:54:34', 'Birthday party for 50 guests. (Date adjusted)', 37500.00, 'pending', NULL),
(6820346, 'U1V2W3X4', 13, 'room', 34, '2025-06-01', '2025-06-03', 'stripe', '2025-05-17 17:54:34', 'Honeymoon suite request.', 13200.00, 'confirmed', NULL),
(6820347, 'Y5Z6A7B8', 14, 'event', 28, '2025-05-28', '2025-05-29', 'stripe', '2025-05-17 17:54:34', 'Product launch setup details. (Date adjusted)', 90000.00, 'pending', NULL),
(6820348, 'C9D0E1F2', 15, 'room', 42, '2025-05-27', '2025-06-03', 'stripe', '2025-05-17 17:54:34', 'Family suite for 4.', 40950.00, 'confirmed', NULL),
(6820349, 'G3H4I5J6', 16, 'event', 30, '2025-05-29', '2025-05-29', 'stripe', '2025-05-17 17:54:34', 'Charity ball table for 10. (Date adjusted)', 105000.00, 'confirmed', NULL),
(6820350, 'K7L8M9N0', 17, 'room', 66, '2025-06-04', '2025-06-08', 'stripe', '2025-05-17 17:54:34', 'Presidential suite, city view.', 75000.00, 'pending', NULL),
(6820351, 'O1P2Q3R4', 18, 'event', 31, '2025-05-30', '2025-05-30', 'stripe', '2025-05-17 17:54:34', 'Holiday party booking. (Date adjusted)', 67500.00, 'confirmed', NULL),
(6820352, 'S5T6U7V8', 19, 'room', 70, '2025-06-02', '2025-06-03', 'stripe', '2025-05-17 17:54:34', NULL, 10500.00, 'confirmed', NULL),
(6820353, 'W9X0Y1Z2', 20, 'event', 32, '2025-05-30', '2025-05-31', 'stripe', '2025-05-17 17:54:34', 'Team building for 30 people. (Date adjusted)', 45000.00, 'pending', NULL),
(6820354, 'A3B4C5D6', 21, 'room', 101, '2025-06-06', '2025-06-12', 'stripe', '2025-05-17 17:54:34', 'Premier room, high floor.', 38250.00, 'confirmed', NULL),
(6820355, 'E7F8G9H0', 22, 'event', 34, '2025-05-31', '2025-05-31', 'stripe', '2025-05-17 17:54:34', 'Christening for baby John. (Date adjusted)', 52500.00, 'confirmed', NULL),
(6820356, 'I1J2K3L4', 23, 'room', 110, '2025-06-09', '2025-06-12', 'stripe', '2025-05-17 17:54:34', 'Deluxe room with balcony.', 19125.00, 'pending', NULL),
(6820357, 'M5N6O7P8', 24, 'event', 36, '2025-06-01', '2025-06-01', 'stripe', '2025-05-17 17:54:34', 'Graduation party for Lisa. (Date adjusted)', 60000.00, 'confirmed', NULL),
(6820358, 'Q9R0S1T2', 25, 'room', 19, '2025-06-11', '2025-06-13', 'stripe', '2025-05-17 17:54:34', NULL, 4650.00, 'confirmed', NULL),
(6820359, 'U3V4W5X6', 26, 'event', 37, '2025-06-02', '2025-06-03', 'stripe', '2025-05-17 17:54:34', 'Press conference logistics. (Date adjusted)', 45000.00, 'pending', NULL),
(6820360, 'Y7Z8A9B0', 27, 'room', 22, '2025-06-13', '2025-06-18', 'stripe', '2025-05-17 17:54:34', 'Quiet room requested.', 12750.00, 'confirmed', NULL),
(6820361, 'C1D2E3F4', 28, 'event', 38, '2025-06-03', '2025-06-03', 'stripe', '2025-05-17 17:54:34', 'Engagement party for 100. (Date adjusted)', 67500.00, 'confirmed', NULL),
(6820362, 'G5H6I7J8', 29, 'room', 38, '2025-06-16', '2025-06-20', 'stripe', '2025-05-17 17:54:34', 'Honeymoon suite with tub.', 25800.00, 'pending', NULL),
(6820363, 'K9L0M1N2', 30, 'event', 39, '2025-06-04', '2025-06-04', 'stripe', '2025-05-17 17:54:34', 'Art exhibit space needed. (Date adjusted)', 52500.00, 'confirmed', NULL),
(6820364, 'O3P4Q5R6', 31, 'room', 46, '2025-06-19', '2025-06-20', 'stripe', '2025-05-17 17:54:34', NULL, 5925.00, 'confirmed', NULL),
(6820365, 'S7T8U9V0', 32, 'event', 40, '2025-06-05', '2025-06-06', 'stripe', '2025-05-17 17:54:34', 'Workshop for 50 attendees. (Date adjusted)', 37500.00, 'pending', NULL),
(6820366, 'W1X2Y3Z4', 33, 'room', 53, '2025-06-21', '2025-06-28', 'stripe', '2025-05-17 17:54:34', 'Family suite with kitchenette.', 43575.00, 'confirmed', NULL),
(6820367, 'A5B6C7D8', 34, 'event', 26, '2025-06-06', '2025-06-06', 'stripe', '2025-05-17 17:54:34', 'Corporate seminar booking. (Date adjusted)', 75000.00, 'confirmed', NULL),
(6820368, 'E9F0G1H2', 35, 'room', 76, '2025-06-23', '2025-06-25', 'stripe', '2025-05-17 17:54:34', 'Junior suite, city view.', 12750.00, 'pending', NULL),
(6820369, 'I3J4K5L6', 36, 'event', 29, '2025-06-07', '2025-06-07', 'stripe', '2025-05-17 17:54:34', 'Anniversary Gala details. (Date adjusted)', 97500.00, 'confirmed', NULL),
(6820370, 'M7N8O9P0', 37, 'room', 105, '2025-06-26', '2025-06-29', 'stripe', '2025-05-17 17:54:34', NULL, 19350.00, 'confirmed', NULL),
(6820371, 'JN01RM01', 1, 'room', 18, '2025-06-05', '2025-06-10', 'stripe', '2025-05-17 18:06:48', 'Requesting a quiet room.', 12000.00, 'confirmed', NULL),
(6820372, 'JN05RM02', 5, 'room', 20, '2025-06-12', '2025-06-19', 'stripe', '2025-05-17 18:06:48', 'Need extra towels, please.', 17325.00, 'pending', NULL),
(6820373, 'JL08RM03', 8, 'room', 34, '2025-07-01', '2025-07-04', 'stripe', '2025-05-17 18:06:48', 'Honeymoon booking.', 19800.00, 'confirmed', NULL),
(6820374, 'JL09RM04', 9, 'room', 42, '2025-07-07', '2025-07-11', 'stripe', '2025-05-17 18:06:48', NULL, 23400.00, 'pending', NULL),
(6820375, 'JN10RM05', 10, 'room', 66, '2025-06-20', '2025-06-22', 'stripe', '2025-05-17 18:06:48', 'Late arrival expected.', 37500.00, 'confirmed', NULL),
(6820376, 'JL11RM06', 11, 'room', 101, '2025-07-15', '2025-07-21', 'stripe', '2025-05-17 18:06:48', 'Prefer a room with a view.', 38250.00, 'confirmed', NULL),
(6820377, 'JN12RM07', 12, 'room', 70, '2025-06-25', '2025-06-26', 'stripe', '2025-05-17 18:06:48', NULL, 10500.00, 'pending', NULL),
(6820378, 'JL13RM08', 13, 'room', 110, '2025-07-22', '2025-07-27', 'stripe', '2025-05-17 18:06:48', 'Will need parking.', 31875.00, 'confirmed', NULL),
(6820379, 'JN14RM09', 14, 'room', 19, '2025-06-02', '2025-06-05', 'stripe', '2025-05-17 18:06:48', NULL, 6975.00, 'confirmed', NULL),
(6820380, 'JL15RM10', 15, 'room', 22, '2025-07-08', '2025-07-12', 'stripe', '2025-05-17 18:06:48', 'Allergic to feathers, no down pillows.', 10200.00, 'pending', NULL),
(6820381, 'JL01RM11', 1, 'room', 38, '2025-07-14', '2025-07-16', 'stripe', '2025-05-17 18:06:48', 'Anniversary trip!', 12900.00, 'confirmed', NULL),
(6820382, 'JN05RM12', 5, 'room', 46, '2025-06-28', '2025-06-29', 'stripe', '2025-05-17 18:06:48', NULL, 5925.00, 'confirmed', NULL),
(6820383, 'JN16RM13', 16, 'room', 53, '2025-06-10', '2025-06-17', 'stripe', '2025-05-17 18:06:48', 'Business trip, need good WiFi.', 43575.00, 'pending', NULL),
(6820384, 'JL17RM14', 17, 'room', 76, '2025-07-03', '2025-07-06', 'stripe', '2025-05-17 18:06:48', NULL, 19125.00, 'confirmed', NULL),
(6820385, 'JN18RM15', 18, 'room', 105, '2025-06-18', '2025-06-23', 'stripe', '2025-05-17 18:06:48', 'Birthday celebration.', 32250.00, 'confirmed', NULL),
(6820386, 'JL19RM16', 19, 'room', 18, '2025-07-28', '2025-07-30', 'stripe', '2025-05-17 18:06:48', 'Two separate beds if possible.', 4800.00, 'pending', NULL),
(6820387, 'JN20RM17', 20, 'room', 20, '2025-06-01', '2025-06-05', 'stripe', '2025-05-17 18:06:48', NULL, 9900.00, 'confirmed', NULL),
(6820388, 'JL21RM18', 21, 'room', 34, '2025-07-10', '2025-07-16', 'stripe', '2025-05-17 18:06:48', 'Writing retreat.', 39600.00, 'confirmed', NULL),
(6820389, 'JN22RM19', 22, 'room', 42, '2025-06-29', '2025-06-30', 'stripe', '2025-05-17 18:06:48', NULL, 5850.00, 'pending', NULL),
(6820390, 'JL23RM20', 23, 'room', 66, '2025-07-01', '2025-07-04', 'stripe', '2025-05-17 18:06:48', 'Requires absolute silence.', 56250.00, 'confirmed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `amenities` text DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `capacity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_type_id`, `price`, `description`, `amenities`, `images`, `capacity`) VALUES
(18, 9, 3200.00, 'Standard Room with queen-sized bed and peaceful city view.', 'Free WiFi, Air Conditioning, 32” LED TV, Hot & Cold Shower, Desk, Closet, Mini Refrigerator, In-room Safe, Daily Housekeeping, Telephone', '[\"roomimg_68281012447097.57273528.webp\",\"roomimg_68281012449585.64433376.webp\",\"roomimg_6828101244b6e8.67440648.webp\"]', 2),
(19, 9, 3100.00, 'Cozy Standard Room with modern décor and comfortable linens.', 'Queen Bed, Free WiFi, Private Bathroom, Shower Heater, Desk Lamp, Hair Dryer, Vanity Mirror, Mini Fridge, Flat-screen TV, Toiletries', '[\"roomimg_6828100822e7f1.24015227.webp\",\"roomimg_68281008230c45.34846944.webp\",\"roomimg_68281008232b05.43255825.webp\"]', 2),
(20, 9, 3300.00, 'Quiet Standard Room with soft lighting and blackout curtains.', 'Air Conditioning, Room Service, Bottled Water, Writing Table, Flat-screen TV, Smart Lock, Closet with Hangers, Reading Lights, Bidet, Mini Bar, WiFi', '[\"roomimg_68280ffe4b0996.83391924.webp\",\"roomimg_68280ffe4b29a9.63187702.webp\",\"roomimg_68280ffe4b4465.42341340.webp\"]', 2),
(21, 9, 3250.00, 'Warm-toned Standard Room ideal for solo travelers or couples.', 'WiFi, Air Conditioning, Smart TV, Keycard Access, Ensuite Bathroom, Rain Shower, Soap & Shampoo, Safety Deposit Box, Mini Fridge, Electric Kettle, Local Channel Access', '[\"roomimg_68280ff17dea02.37821271.webp\",\"roomimg_68280ff17e0aa1.39962264.webp\",\"roomimg_68280ff17e2507.37359589.webp\"]', 2),
(22, 9, 3400.00, 'Street-side Standard Room with light-blocking curtains and soundproofing.', 'High-speed Internet, Smart TV, Coffee & Tea Station, Alarm Clock, Desk, Shower Heater, Complimentary Toiletries, Bidet, Cupboard, Hair Dryer, Towels, In-room Safe', '[\"roomimg_68280fe81c7f01.73421871.webp\",\"roomimg_68280fe81cb140.75708892.webp\",\"roomimg_68280fe81cd093.95457188.webp\"]', 2),
(23, 9, 3100.00, 'Clean and functional Standard Room perfect for quick city stays.', 'Aircon, Free WiFi, 32” TV, Shower Heater, Reading Lamp, Wall Mirror, Nightstand, Coffee Set, Daily Cleaning, Emergency Flashlight', '[\"roomimg_68280fde570d74.39280654.webp\",\"roomimg_68280fde573556.81463869.webp\",\"roomimg_68280fde575e76.64367567.webp\"]', 2),
(24, 9, 3350.00, 'Spacious Standard Room with minimalist design and fresh air circulation.', 'Work Desk, LED TV, Air Conditioning, WiFi, Large Mirror, Drinking Glasses, Emergency Light, Toothbrush Set, Slippers, Bath Towels, Mini Fridge, Keycard Access', '[\"roomimg_68280fd0c6e249.67898567.webp\",\"roomimg_68280fd0c70592.30175541.webp\",\"roomimg_68280fd0c71f49.43864880.webp\"]', 2),
(25, 9, 3150.00, 'Corner Standard Room with extra window and garden-facing view.', 'City/Garden View, AC, Toiletries Kit, Mirror Cabinet, Electronic Lock, Coffee Cups, Complimentary Bottled Water, Telephone, Shower Curtain, WiFi, TV, Room Service', '[\"roomimg_68280fc64c1a45.17834335.webp\",\"roomimg_68280fc64c3a46.99085956.webp\",\"roomimg_68280fc64c5bb9.11525553.webp\"]', 2),
(26, 9, 3250.00, 'Standard Room with calming earth tones and elegant layout.', 'Wooden Desk, Desk Lamp, Free WiFi, Keycard Entry, Flat-screen TV, Room Slippers, Full-Length Mirror, Personal Safe, Intercom, Hot Shower, Shampoo/Soap, Kettle', '[\"roomimg_68280fb3d4c280.37052472.webp\",\"roomimg_68280fb3d4e677.38923404.webp\",\"roomimg_68280fb3d500b4.35742566.webp\"]', 2),
(27, 9, 3300.00, 'Bright and neat Standard Room with ergonomic workspace.', 'Air Conditioning, 32” TV, Ensuite Toilet, Hair Dryer, Bidet, Desk and Chair, In-room Dining Menu, Hangers, LED Lighting, Safe, Free Coffee Pack, WiFi', '[\"roomimg_68280f9fedd017.70333394.webp\",\"roomimg_68280f9fedfbe9.42683797.webp\",\"roomimg_68280f9fee21c0.54388412.webp\"]', 2),
(28, 9, 3100.00, 'Affordable Standard Room with classic comforts and functional furniture.', 'Single Queen Bed, Cable TV, WiFi, Wardrobe, Shower Heater, Basic Toiletries, Towels, Telephone, AC, Mirror, Chair', '[\"roomimg_68280f942ed0a6.54278399.webp\",\"roomimg_68280f942efb82.68804876.webp\",\"roomimg_68280f942f1870.46122055.webp\"]', 2),
(29, 9, 3350.00, 'Standard Room designed with local Filipino artistry touches.', 'Cultural Wall Art, Local Channel TV, WiFi, Wooden Desk, Keycard Entry, Shower Essentials, Ceiling Fan + AC, Table Lamp, Bottled Water, Vanity Mirror, Storage Shelf', '[\"roomimg_68280f86c953e0.48356117.webp\",\"roomimg_68280f86c98117.44998245.webp\",\"roomimg_68280f86c9a165.64388953.webp\"]', 2),
(30, 9, 3450.00, 'Upgraded Standard Room with smart appliances and modern layout.', 'Smart TV, Fast WiFi, Electronic Safe, Remote Lighting, Air Conditioning, Mini Fridge, Rain Shower, Room Phone, Reading Nook, Workstation, Electric Kettle', '[\"roomimg_68280f7b4be4f1.02812605.webp\",\"roomimg_68280f7b4c07e7.83430724.webp\",\"roomimg_68280f7b4c2695.98877059.webp\"]', 2),
(31, 9, 3200.00, 'Functional Standard Room with spacious layout and city light views.', 'Bedside Lamp, Air Conditioning, Flat TV, Mini Bar, Table and Chair, Rain Shower, Wall Decor, Coffee Cups, Safety Lock, Hot Shower, WiFi, Slippers', '[\"roomimg_68280f6b3c5640.40674072.webp\",\"roomimg_68280f6b3c7af5.55306140.webp\",\"roomimg_68280f6b3c9609.34012685.webp\"]', 2),
(32, 9, 3350.00, 'Standard Room with balcony access and warm wooden interiors.', 'Private Balcony, Flat-screen TV, Kettle, Shower with Heater, Storage Closet, Local TV, Keycard Lock, Free WiFi, Bathroom Kit, AC, Mirror, Alarm Clock', '[\"roomimg_68280f609fd9e0.14137574.webp\",\"roomimg_68280f609ffdc4.15270662.webp\",\"roomimg_68280f60a01de1.65484882.webp\"]', 2),
(33, 9, 3400.00, 'Refined Standard Room with luxury mattress and quiet ambiance.', 'Plush Bed, High Thread Count Linen, Room Slippers, TV with Netflix, Shampoo & Conditioner, Mini Fridge, Electronic Safe, Desk, WiFi, Hot Shower, Complimentary Coffee, Hair Dryer', '[\"roomimg_68280f4d344511.52657290.webp\",\"roomimg_68280f4d346591.77883125.webp\",\"roomimg_68280f4d347de4.29608840.webp\"]', 2),
(34, 8, 8800.00, 'Romantic Honeymoon Suite with rose petals, mood lighting, and a private Jacuzzi for couples celebrating their love.', 'Private Jacuzzi, King-Sized Bed, Mood Lighting, Air Conditioning, In-Room Dining, Flat-screen Smart TV, Champagne on Arrival, Mini Bar, Complimentary Breakfast, Double Vanity, Bathrobes, Romantic Wall Art, Free WiFi, In-room Safe', '[\"roomimg_68280c0a8c9283.84370279.webp\",\"roomimg_68280c0a8cb4e6.24426584.webp\",\"roomimg_68280c0a8ccf66.86887016.webp\"]', 2),
(35, 8, 8500.00, 'Elegant Honeymoon Suite with balcony views and luxurious amenities designed for unforgettable romantic moments.', 'Private Balcony, King Bed, Air Conditioning, LED TV with Netflix, Walk-in Rain Shower, Rose Décor, Scented Candles, Couple’s Sofa, Free WiFi, Bathrobes, Wine Glass Set, Mini Fridge, Room Service, Vanity Mirror', '[\"roomimg_68280bfa7d2704.30319561.webp\",\"roomimg_68280bfa7d5323.88283874.webp\",\"roomimg_68280bfa7d73f1.71776391.webp\"]', 2),
(36, 8, 9000.00, 'Secluded Honeymoon Suite offering ambient lighting, exclusive lounge area, and soothing spa-like bathroom.', 'King Bed, Romantic Lighting, Spa Bath, Aircon, Lounge Chairs, Luxury Toiletries, WiFi, Smart TV, Free Champagne, Bathrobes, Bluetooth Sound System, Mini Bar, In-room Dining, Love Seat, Towel Swans', '[\"roomimg_68280bee54c676.12815369.webp\",\"roomimg_68280bee54e6d1.38266851.webp\",\"roomimg_68280bee550289.94481353.webp\"]', 2),
(37, 8, 8700.00, 'Intimate Honeymoon Suite with marble accents and a cozy nook for two, perfect for romantic evenings.', 'Jacuzzi, Ambient Lamps, Mini Bar, Queen Sofa, Satin Sheets, Hot Shower, Mood Music Speaker, Bath Essentials, Wine Rack, LED TV, Air Conditioning, Slippers, Couple’s Desk, Fresh Flowers', '[\"roomimg_68280be1de4f38.65632070.webp\",\"roomimg_68280be1de7417.86490159.webp\",\"roomimg_68280be1de8e33.48623169.webp\"]', 2),
(38, 8, 8600.00, 'Modern Honeymoon Suite with heart-shaped tub and mood lighting for celebrating new beginnings.', 'Heart-shaped Bathtub, AC, Queen Bed with Silk Sheets, Flat-screen TV, Romantic Lighting, En-suite Bathroom, Candle Set, Bluetooth Speaker, Coffee Station, Room Service, Mini Fridge, Wine Opener Set, Complimentary WiFi, Robes', '[\"roomimg_68280bd8102fc1.30134294.webp\",\"roomimg_68280bd8105226.09050234.webp\",\"roomimg_68280bd8106962.13596436.webp\"]', 2),
(39, 8, 8900.00, 'Luxurious Honeymoon Suite with canopy bed and personalized romantic setup upon request.', 'Canopy Bed, Personalized Décor, Jacuzzi Tub, Soft Lighting, Air Conditioning, Romantic Playlist Speaker, Mini Fridge, Bathrobes, LED TV, Coffee Table, Free WiFi, Mood Scent Diffuser, In-room Dining, Balcony Access', '[\"roomimg_68280b8e4a2dc4.81950733.webp\",\"roomimg_68280b8e4a4cd9.17340096.webp\",\"roomimg_68280b8e4a69a3.79678013.webp\"]', 2),
(40, 8, 9100.00, 'Spacious Honeymoon Suite overlooking city lights, crafted for intimate and serene getaways.', 'City View Balcony, King Bed, Champagne Bucket, Ambient Lighting, Couple’s Lounge, Aircon, Jacuzzi, Modern Bathroom, Slippers, Coffee/Tea Maker, Soft Robes, Flat-screen TV, Free WiFi, Full Mini Bar', '[\"roomimg_68280b79487270.95821981.webp\",\"roomimg_68280b794894c1.35696861.webp\",\"roomimg_68280b7948b672.53863648.webp\"]', 2),
(41, 8, 8800.00, 'Tropical-themed Honeymoon Suite with lush garden view and luxurious bedding for an unforgettable retreat.', 'Tropical Décor, Garden View Patio, Canopy Bed, Mood Lighting, AC, Smart TV, Bluetooth Audio, Champagne, Mini Bar, En-suite Spa Bath, Romantic Drapes, Candlelight Setup, Soft Towels, Bathrobes, WiFi', '[\"roomimg_68280bb9f20fa0.23110673.webp\",\"roomimg_68280bb9f22f45.33376175.webp\",\"roomimg_68280bb9f24774.97435855.webp\"]', 2),
(42, 7, 7800.00, 'Spacious Family Suite with two queen beds and a living area, perfect for a family getaway.', 'Two Queen Beds, Air Conditioning, Flat-screen TV, Free WiFi, Mini Refrigerator, In-room Dining, Sofa Set, Dining Table, Electric Kettle, Closet Space, Family Board Games, Bath Towels, Toiletries, Phone, Slippers', '[\"roomimg_682808f6269d57.87361517.webp\",\"roomimg_682808f626c307.30503900.webp\",\"roomimg_682808f626e198.52496067.webp\"]', 5),
(43, 7, 8200.00, 'Modern Family Suite with full amenities and city views, ideal for comfort and bonding.', 'King Bed, Two Twin Beds, Flat-screen TV, Mini Kitchen, Dining Table, Air Conditioning, Balcony View, Sofa Bed, High-Speed WiFi, Toiletries, Microwave, Coffee Maker, Desk, Hair Dryer, Room Service', '[\"roomimg_682808de88d037.05058642.webp\",\"roomimg_682808de88f1b9.42929697.webp\",\"roomimg_682808de890f60.42468165.webp\"]', 6),
(44, 7, 7600.00, 'Elegant Family Suite with warm tones and spacious interiors.', 'Two Double Beds, Living Area, Flat-screen TV, Mini Bar, Safe Box, Air Conditioning, Free Internet, Hot Shower, Toiletries, Family Sofa, Study Desk, Alarm Clock, Slippers, Bottled Water', '[\"roomimg_682808ba523087.06506051.webp\",\"roomimg_682808ba525221.53890876.webp\",\"roomimg_682808ba526c67.58810688.webp\"]', 4),
(45, 7, 8000.00, 'Stylish Family Suite for up to six guests with a cozy ambiance and full amenities.', 'Three Beds, Smart TV, Air Conditioning, WiFi, Dining Table, Sofa, Electric Kettle, Mini Fridge, Bath Towels, Toiletries, In-room Safe, USB Charging Ports, Welcome Snacks, Bathrobes, Hair Dryer', '[\"roomimg_6828088d420b72.88883743.webp\",\"roomimg_6828088d422f43.31626329.webp\",\"roomimg_6828088d425084.67501871.webp\"]', 6),
(46, 7, 7900.00, 'Comfortable Family Suite with play corner for kids and relaxation zone for adults.', 'Two Queen Beds, Play Area, Flat-screen TV, High-Speed WiFi, Kitchenette, Mini Bar, Coffee Station, Sofa, Reading Lamps, Shower Essentials, Bath Towels, Slippers, In-room Dining, Air Conditioning', '[\"roomimg_6828087736d3a2.73171987.webp\",\"roomimg_6828087736f871.28421941.webp\",\"roomimg_682808773714c0.43226084.webp\"]', 5),
(47, 7, 8100.00, 'Family Suite with two rooms, ideal for extended family trips.', 'Two Bedrooms, Shared Living Area, 2 Smart TVs, Mini Kitchen, Dining Set, Air Conditioning, Free WiFi, Toiletries, Coffee Maker, Mini Bar, Sofa, Safe Box, Iron, Telephone', '[\"roomimg_6828085fd60c66.41926473.webp\",\"roomimg_6828085fd62d07.60696235.webp\",\"roomimg_6828085fd645b3.85001665.webp\"]', 6),
(48, 7, 7300.00, 'Budget-friendly Family Suite with practical layout and full features.', 'Double Bed, Twin Bunk Beds, Flat-screen TV, Air Conditioning, Free Internet, Toiletries, Mini Bar, Dining Nook, Shower with Heater, Closet, Desk, Bath Towels, Telephone', '[\"roomimg_68280849396e41.77474481.webp\",\"roomimg_68280849398fb2.90928077.webp\",\"roomimg_6828084939a819.27614373.webp\"]', 4),
(49, 7, 8500.00, 'Premium Family Suite with scenic balcony and elegant furnishings.', 'King Bed, Queen Bed, Balcony View, Smart TV, WiFi, Mini Bar, Coffee Machine, Sofa Lounge, Air Conditioning, Hair Dryer, Bathrobes, Safe, Alarm Clock, Phone, Extra Pillows', '[\"roomimg_6828083e05b1e7.26860739.webp\",\"roomimg_6828083e05d717.24186535.webp\",\"roomimg_6828083e05f458.43228025.webp\"]', 5),
(50, 7, 7700.00, 'Family Suite with direct pool access and open-plan design.', 'Double Bed, Twin Beds, Pool Access, LED TV, WiFi, Mini Fridge, Coffee Set, In-room Dining, Bath Essentials, Slippers, Sofa, Reading Corner, Air Conditioning, Study Table', '[\"roomimg_6828082a6735f5.95270479.webp\",\"roomimg_6828082a675e63.52929973.webp\",\"roomimg_6828082a677947.64677239.webp\"]', 4),
(51, 7, 7900.00, 'Chic Family Suite offering style, comfort, and modern amenities.', 'Queen Bed, Bunk Beds, Flat-screen TV, WiFi, Kitchenette, Sofa Area, Bath Amenities, Desk, Coffee Maker, Air Conditioning, Closet Space, Towels, Iron, USB Charging Hub', '[\"roomimg_682808183120e1.87214122.webp\",\"roomimg_68280818313ff9.64880932.webp\",\"roomimg_68280818315dd0.87362539.webp\"]', 5),
(52, 7, 7400.00, 'Inviting Family Suite for laid-back family trips with cozy layout.', 'Two Double Beds, Smart TV, Free WiFi, Electric Kettle, Air Conditioning, Dining Corner, Slippers, Mini Bar, Bath Towels, Toiletries, Bookshelf, Desk Lamp, Sofa', '[\"roomimg_68280806daea38.05054108.webp\",\"roomimg_68280806db0e39.94946871.webp\",\"roomimg_68280806db2705.47021222.webp\"]', 4),
(53, 7, 8300.00, 'Spacious Family Suite with fully equipped kitchenette and elegant décor.', 'Two Queen Beds, Kitchenette, Microwave, Smart TV, Air Conditioning, WiFi, Bath Towels, Sofa, Closet, Toiletries, Dining Set, Hair Dryer, Telephone, Alarm Clock, Room Service', '[\"roomimg_682807fa22f269.76890430.webp\",\"roomimg_682807fa232697.74555357.webp\",\"roomimg_682807fa2342d6.43753750.webp\"]', 6),
(54, 7, 7500.00, 'Cozy Family Suite ideal for long stays and bonding moments.', 'King Bed, Twin Beds, Flat-screen TV, Mini Kitchen, Sofa, Free WiFi, Bath Essentials, Coffee Table, In-room Dining, Towels, Slippers, Kids Books, Air Conditioning, Iron', '[\"roomimg_682807ec504288.82969544.webp\",\"roomimg_682807ec54c777.33897157.webp\",\"roomimg_682807ec54ecf2.14390050.webp\"]', 5),
(55, 7, 8000.00, 'Family Suite with scenic mountain view and relaxing ambiance.', 'Two Queen Beds, Mountain View, Smart TV, Air Conditioning, Free WiFi, Bathrobes, Toiletries, Coffee Maker, Mini Bar, Dining Area, Sofa, Night Lamp, Hair Dryer, Phone, Safe', '[\"roomimg_682807de6b41d1.54891165.webp\",\"roomimg_682807de6b6373.73456457.webp\",\"roomimg_682807de6b82d1.82877634.webp\"]', 5),
(66, 6, 25000.00, 'The pinnacle of luxury, our Presidential Suite offers panoramic views, a private office, jacuzzi, and 24-hour butler service.', 'King Bed, Private Office, Jacuzzi, Living Room, Dining Room, Butler Service, Smart TV, Home Theater System, Mini Bar, Wine Chiller, Air Conditioning, Walk-in Closet, Luxury Toiletries, Rain Shower, Balcony View, Executive Desk, Coffee Maker, Microwave, Kitchenette, Hair Dryer, Bathrobes, Slippers, In-room Safe, High-Speed WiFi', '[\"roomimg_6828026c50e609.20383994.webp\",\"roomimg_6828026c510756.14282724.webp\",\"roomimg_6828026c512626.79304269.webp\"]', 6),
(67, 6, 23000.00, 'Experience opulence in this grand suite featuring a personal spa, entertainment area, and two full bedrooms with en-suite baths.', 'Two King Beds, Personal Spa Room, Entertainment Center, 65-inch Smart TV, Home Theater, Mini Kitchen, Dining Area, Private Balcony, WiFi, Nespresso Machine, Air Conditioning, Walk-in Closet, Full Bath with Tub, Rain Shower, Designer Toiletries, Bathrobes, Slippers, Wine Bar, In-room Dining, Sofa Lounge, Executive Workspace, Safe, Hair Dryer, Welcome Fruit Basket', '[\"roomimg_6828026095a8d7.99411093.webp\",\"roomimg_6828026095cec7.29447878.webp\",\"roomimg_6828026095ea47.50871824.webp\"]', 6),
(68, 6, 21000.00, 'A luxurious retreat with refined interiors, state-of-the-art tech, and exquisite views of the city skyline.', 'King Bed, Executive Lounge Access, Smart Controls, Automated Curtains, 55-inch Smart TV, Surround Sound System, Separate Living Room, Dining Area, Wine Rack, Mini Bar, Espresso Machine, Jacuzzi Tub, Walk-in Shower, Vanity Table, Double Sink, Premium Toiletries, Air Purifier, High-Speed Internet, Safe, Personal Assistant, Hair Dryer, Slippers, Full-length Mirror, Robe Set', '[\"roomimg_68280249850449.79450747.webp\",\"roomimg_68280249852836.37868357.webp\",\"roomimg_68280249854488.16343351.webp\"]', 5),
(69, 6, 18000.00, 'Presidential Suite featuring elegance and privacy with a spacious floor plan, high-end amenities, and luxury comfort for families or dignitaries.', 'Queen and King Beds, Separate Bedrooms, Living Area, Dining Room, Kitchenette, Smart TVs in All Rooms, Fast WiFi, Air Conditioning, In-room Bar, Coffee Maker, Rain Shower, Soaking Tub, Plush Bathrobes, Slippers, Toiletries Kit, Security Box, Work Desk, Butler Call Button, Welcome Gift, Hair Dryer, Iron, Bath Towels, Entertainment System', '[\"roomimg_6828023bd91e40.47068743.webp\",\"roomimg_6828023bd94257.27540604.webp\",\"roomimg_6828023bd95e54.74692827.webp\"]', 5),
(70, 5, 14000.00, 'A luxurious Executive Suite with city skyline views and a spacious work area.', 'Executive desk, Nespresso machine, Walk-in wardrobe, Rain shower, Soaking tub, 55-inch Smart TV, Complimentary minibar, Soundproof windows, High-speed Wi-Fi, 24/7 room service, Electronic safe, Daily newspaper, Bluetooth speaker, Laundry service, Complimentary shoe shine, Digital concierge, Ambient lighting system, Evening turndown, Pillow menu, Premium bath amenities, Luggage storage, Wake-up call service, Iron and board, Complimentary bottled water', '[\"roomimg_6827feec698198.33481039.webp\",\"roomimg_6827feec69aba8.35370709.webp\",\"roomimg_6827feec69c594.11529942.webp\"]', 4),
(71, 5, 13500.00, 'Refined Executive Suite perfect for business travelers with elegant interiors.', 'Dedicated work station, Coffee/tea facilities, Rain shower, Bathtub, Smart lighting, Free minibar, 55-inch Smart TV, Fast Wi-Fi, Daily housekeeping, Electronic safe, Pillow menu, Executive lounge access, Bluetooth speaker, Air purifier, Ironing board, Personal assistant service, Wake-up call, Complimentary toiletries, Luggage storage, Shoe cleaning kit, Blackout curtains, USB charging ports, Robe and slippers, Evening turndown', '[\"roomimg_6827fede44dda1.12096695.webp\",\"roomimg_6827fede482851.04939700.webp\",\"roomimg_6827fede485322.34887344.webp\"]', 3),
(72, 5, 13000.00, 'Modern Executive Suite with tech-focused amenities and comfort-enhancing features.', 'High-speed Wi-Fi, Ergonomic chair, Work desk, Smart TV, Rainfall shower, Deep soaking tub, Robes and slippers, Executive lounge access, Coffee/tea set, Daily housekeeping, Bluetooth speaker, Electronic safe, Minibar, Iron and board, Wake-up service, Pillow menu, Voice-activated lighting, Streaming services, Air conditioning, USB outlets, Complimentary water, Vanity mirror, Laundry service, In-room dining', '[\"roomimg_6827fed2084239.99879156.webp\",\"roomimg_6827fed2086512.42089553.webp\",\"roomimg_6827fed2088468.68615845.webp\"]', 5),
(73, 5, 12000.00, 'Bright and airy Executive Suite designed for long stays and full-day comfort.', 'Spacious living area, Desk and lamp, Smart thermostat, Coffee station, Free minibar, Walk-in shower, Separate tub, Robes and slippers, Hairdryer, Blackout curtains, Evening turndown, High-speed Wi-Fi, 50-inch TV, Pillow menu, In-room yoga mat, Bluetooth soundbar, Iron and board, Complimentary toiletries, Ambient lighting, Digital safe, Wake-up call service, Filtered water, Housekeeping on request', '[\"roomimg_6827febbb01749.66011628.webp\",\"roomimg_6827febbb03ab2.66719922.webp\",\"roomimg_6827febbb05b39.55011869.webp\"]', 4),
(74, 5, 12500.00, 'Executive Suite ideal for both work and leisure with luxurious touches.', 'Queen-sized bed, High-speed Wi-Fi, Work table, Smart lighting, Complimentary drinks, Rain shower, Full bath, Laundry bag, Digital safe, Robes, Slippers, Minibar, Bluetooth speaker, Shoe shine kit, USB charging station, Air conditioning, Ironing station, Reading lights, Wake-up call, City view window, Toiletries kit, Streaming-enabled TV, Complimentary snacks, Touch panel lighting', '[\"roomimg_6827feb0604099.60774949.webp\",\"roomimg_6827feb06066e9.10511881.webp\",\"roomimg_6827feb06087d9.57133187.webp\"]', 4),
(75, 5, 11000.00, 'Compact yet elegant Executive Suite perfect for business stopovers.', 'Smart desk, Rain shower, Flat-screen TV, USB ports, Coffee maker, Mini fridge, In-room safe, Fast Wi-Fi, Blackout curtains, Robe and slippers, Wake-up call, Iron and ironing board, Complimentary toiletries, Bluetooth alarm clock, Bottled water, LED reading lights, 24-hour housekeeping, Laundry service, Touch lamp, Pillow options, Vanity area, Streaming access, Newspaper service, Shoe cleaning', '[\"roomimg_6827fea36b7642.74061665.webp\",\"roomimg_6827fea36b9d58.50358593.webp\",\"roomimg_6827fea36bbdd2.80116260.webp\"]', 3),
(76, 4, 8500.00, 'Spacious Junior Suite with city view and luxurious amenities.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service', '[\"roomimg_6827f8e766bf33.06824973.jpg\",\"roomimg_6827f8e767f825.25127038.jpg\",\"roomimg_6827f8e76828e1.76834865.jpg\"]', 2),
(77, 4, 8700.00, 'Elegant Junior Suite with modern décor and all essential comforts.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed', '[\"roomimg_6827f8d6a7e6a0.46902538.jpg\",\"roomimg_6827f8d6a83637.58893310.jpg\",\"roomimg_6827f8d6a86476.46687383.jpg\"]', 3),
(78, 4, 8600.00, 'Junior Suite with panoramic views and premium furnishings.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock', '[\"roomimg_6827f8cb2df7f3.50112853.jpg\",\"roomimg_6827f8cb2e4858.94339560.jpg\",\"roomimg_6827f8cb2e7730.60774691.jpg\"]', 2),
(79, 4, 8800.00, 'Junior Suite perfect for business and leisure travelers.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Extra pillows', '[\"roomimg_6827f8be219fe6.32597467.jpg\",\"roomimg_6827f8be21e7a7.58020027.jpg\",\"roomimg_6827f8be221689.69820637.jpg\"]', 3),
(80, 4, 8400.00, 'Cozy Junior Suite with stylish interiors and excellent amenities.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Extra towels, Coffee and tea', '[\"roomimg_6827f8b0b46628.47479114.jpg\",\"roomimg_6827f8b0b4a159.34811934.jpg\",\"roomimg_6827f8b0b4c4a3.27281413.jpg\"]', 2),
(81, 4, 8550.00, 'Modern Junior Suite with comfortable seating and luxurious finishes.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Daily newspaper', '[\"roomimg_6827f89e25efb7.05970704.jpg\",\"roomimg_6827f89e2621e7.01627237.jpg\",\"roomimg_6827f89e264535.54124911.jpg\"]', 2),
(82, 4, 8700.00, 'Junior Suite with bright interiors and beautiful city views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Extra pillows, Sofa bed, Coffee and tea', '[\"roomimg_6827f88b571ce3.28428226.jpg\",\"roomimg_6827f88b575c73.62280119.jpg\",\"roomimg_6827f88b5783e2.57412996.jpg\"]', 3),
(83, 4, 8600.00, 'Junior Suite designed for comfort and convenience.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Extra towels', '[\"roomimg_6827f87773fe23.82794953.jpg\",\"roomimg_6827f877742032.77991714.jpg\",\"roomimg_6827f8777437a8.13964522.jpg\"]', 2),
(84, 4, 8800.00, 'Luxurious Junior Suite with elegant decor and spacious layout.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Extra pillows, Daily newspaper', '[\"roomimg_6827f864256d87.06189335.jpg\",\"roomimg_6827f864258ed0.71035112.jpg\",\"roomimg_6827f86425a6d8.64140108.jpg\"]', 3),
(85, 3, 11000.00, 'Executive Room with modern amenities and spacious layout.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone', '[\"roomimg_68275cf85ee841.99022732.jpg\",\"roomimg_68275cf85f0c99.01748728.jpg\",\"roomimg_68275cf85f25d8.77815133.jpg\"]', 2),
(86, 3, 11200.00, 'Comfortable Executive Room with elegant decor and city views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock', '[\"roomimg_68275d178facf9.58297408.jpg\",\"roomimg_68275d178fd076.34713595.jpg\",\"roomimg_68275d178fec20.85986653.jpg\"]', 2),
(87, 3, 11500.00, 'Spacious Executive Room with premium furnishings and work space.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service', '[\"roomimg_68275d84b03a42.50207076.jpg\",\"roomimg_68275d84b05a44.71554011.jpg\",\"roomimg_68275d84ba0482.09632395.jpg\"]', 3),
(88, 3, 11300.00, 'Executive Room designed for business and leisure stays.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Sofa bed', '[\"roomimg_68275d427dc453.99720323.jpg\",\"roomimg_68275d427de612.34739851.jpg\",\"roomimg_68275d427e0294.48373211.jpg\"]', 3),
(89, 3, 11400.00, 'Elegant Executive Room with modern technology and luxury comforts.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service', '[\"roomimg_68275d619c09d0.69070393.jpg\",\"roomimg_68275d61a33146.20769421.jpg\",\"roomimg_68275d61a35126.60058841.jpg\"]', 2),
(101, 2, 8500.00, 'Spacious Premier Room with luxurious furnishings and city view.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_682756bbb3adf4.57623930.webp\",\"roomimg_682756bbb3c9b5.09283826.webp\",\"roomimg_682756bbb3e068.37442955.webp\"]', 3),
(102, 2, 8600.00, 'Elegant Premier Room with modern amenities and comfortable bedding.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_682756d76ba532.64562246.webp\",\"roomimg_682756d76bc6d5.72512882.webp\",\"roomimg_682756d76be469.16063864.webp\"]', 3),
(103, 2, 8700.00, 'Premier Room offering exquisite views and upscale amenities.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_682756f29a0da5.57253514.webp\",\"roomimg_682756f29a29e4.83469642.webp\",\"roomimg_682756f29a4316.87387612.webp\"]', 3),
(104, 2, 8550.00, 'Modern Premier Room with comfortable seating area and elegant décor.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_68275704aafe69.46685988.webp\",\"roomimg_68275704ab2505.27067098.webp\",\"roomimg_68275704ab42d1.48102956.webp\"]', 3),
(105, 2, 8600.00, 'Premier Room featuring stylish design and premium facilities.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_68275715d5ac51.72215417.jpg\",\"roomimg_68275715d5d7b1.16164732.jpg\",\"roomimg_68275715d5fd13.86483690.jpg\"]', 3),
(106, 2, 8650.00, 'Luxurious Premier Room with plush bedding and ambient lighting.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_68275884260224.28852542.jpg\",\"roomimg_68275884262530.93278757.jpg\",\"roomimg_682758842641e8.02191990.jpg\"]', 3),
(107, 2, 8700.00, 'Premier Room with expansive windows and sophisticated amenities.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_68275897bfcc24.68552759.jpg\",\"roomimg_68275897bfec94.98846453.jpg\",\"roomimg_68275897c00777.69423097.jpg\"]', 3),
(108, 2, 8750.00, 'Elegant Premier Room designed for relaxation and productivity.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_682758a4373e75.26030984.jpg\",\"roomimg_682758a43760b4.11640964.jpg\",\"roomimg_682758a4377ff9.73172881.jpg\"]', 3),
(109, 2, 8800.00, 'Premier Room with contemporary style and top-tier comfort.', 'King-size bed, High-speed WiFi, Smart TV, Air conditioning, Mini bar, Coffee maker, Work desk, Bathrobe, Slippers, 24-hour room service, Soundproof windows, Blackout curtains, Complimentary toiletries, Daily housekeeping, Safe deposit box, Balcony, Fitness center access, In-room dining, Hairdryer, Iron and ironing board, Telephone, Wake-up service, Desk lamp', '[\"roomimg_68275b65cb4fe2.74439342.jpg\",\"roomimg_68275b65cb6df8.00567523.jpg\",\"roomimg_68275b65cb9257.20146882.jpg\"]', 3),
(110, 1, 8500.00, 'Deluxe Room with luxurious furnishings and panoramic views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports', '[\"roomimg_68274c1187d7d8.34679130.webp\",\"roomimg_68274c1187f5d5.86517118.webp\",\"roomimg_68274c11880aa9.90214310.webp\"]', 2),
(111, 1, 8700.00, 'Elegant Deluxe Room featuring modern decor and spacious layout.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Sound system', '[\"roomimg_682750c8b57708.31988013.webp\",\"roomimg_682750c8b59983.98204269.webp\",\"roomimg_682750c8b5bce3.78397772.webp\"]', 2),
(112, 1, 8600.00, 'Spacious Deluxe Room with high-end amenities and city views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker', '[\"roomimg_682750d9ac66c5.44793056.webp\",\"roomimg_682750d9ac8940.92527438.webp\",\"roomimg_682750d9aca1b3.19670903.webp\"]', 2),
(113, 1, 8800.00, 'Deluxe Room perfect for relaxation with modern technology.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe', '[\"roomimg_682750eb8d62a5.49388409.webp\",\"roomimg_682750eb8d8344.87509966.webp\",\"roomimg_682750eb8da081.32771499.webp\"]', 3),
(114, 1, 8750.00, 'Luxurious Deluxe Room with elegant finishes and stunning views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe, Espresso machine', '[\"roomimg_682750fb2feca3.91465027.webp\",\"roomimg_682750fb301108.74661591.webp\",\"roomimg_682750fb302bb2.53412548.webp\"]', 3),
(115, 1, 8600.00, 'Deluxe Room with contemporary design and premium features.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe', '[\"roomimg_68275109d60ab3.72522717.webp\",\"roomimg_68275109d62ce7.76955457.webp\",\"roomimg_68275109d648b5.13507375.webp\"]', 2),
(116, 1, 8700.00, 'Deluxe Room with cozy ambiance and luxurious amenities.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe, Espresso machine', '[\"roomimg_6827511f469200.05929579.webp\",\"roomimg_6827511f46b861.43194642.webp\",\"roomimg_6827511f46d631.02216796.webp\"]', 2),
(117, 1, 8800.00, 'Deluxe Room combining comfort and style with top amenities.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe, Espresso machine', '[\"roomimg_6827512cd1f956.61178371.webp\",\"roomimg_6827512cd222e7.19321565.webp\",\"roomimg_6827512cd23d23.47970219.webp\"]', 3),
(118, 1, 8650.00, 'Elegant Deluxe Room designed for both business and leisure.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe', '[\"roomimg_68275140c47ee6.02533031.webp\",\"roomimg_68275140c4a2f4.36322391.webp\",\"roomimg_68275140c4bc97.41539792.webp\"]', 2),
(119, 1, 8700.00, 'Deluxe Room with spacious layout and premium amenities.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe, Espresso machine', '[\"roomimg_682753815b4b86.39512387.webp\",\"roomimg_682753815b6b27.13110693.webp\",\"roomimg_682753815b82a2.37081023.webp\"]', 3),
(120, 1, 8750.00, 'Luxury Deluxe Room with exclusive features and stunning views.', 'King bed, Free Wi-Fi, Air conditioning, Flat-screen TV, Mini bar, Coffee maker, Work desk, Balcony, Room service, Safe, Bathrobe, Hairdryer, Iron, Seating area, Soundproof, Blackout curtains, Telephone, Alarm clock, Laundry service, Sofa bed, Jacuzzi, Mini fridge, Fitness equipment, Luxury toiletries, USB charging ports, Bluetooth speaker, Digital safe, Espresso machine, Private safe', '[\"roomimg_68275231246a28.94989892.webp\",\"roomimg_68275231248e63.15149599.webp\",\"roomimg_6827523124aad4.41606674.webp\"]', 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `name`, `description`) VALUES
(1, 'Deluxe Room', 'Elegant and spacious room with premium bedding, ideal for business or leisure travelers.'),
(2, 'Premier Room', 'Upgraded deluxe room with city or garden views, enhanced comfort and amenities.'),
(3, 'Executive Room', 'High-floor room with workspace, lounge access, and dedicated check-in/out services.'),
(4, 'Junior Suite', 'Stylish suite with separate sitting area and luxury bath amenities.'),
(5, 'Executive Suite', 'Expansive suite with living room, larger bath, and skyline views.'),
(6, 'Presidential Suite', 'Top-tier suite with dining area, office space, butler service, and VIP amenities.'),
(7, 'Family Suite', 'Multi-bedroom suite perfect for families, with spacious living and dining areas.'),
(8, 'Honeymoon Suite', 'Romantic suite with jacuzzi, balcony, and romantic turndown service.'),
(9, 'Standard Room', 'Comfortable and well-appointed room with essential amenities for a relaxing stay.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` enum('admin','client') DEFAULT 'client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `status`) VALUES
(1, 'Ashenvale', '', 'quertgamer@gmail.com', NULL, 'admin'),
(2, 'Admin', 'User', 'admin@alafuenca.com', 'admin123', 'admin'),
(3, 'Quert', 'Alfonso Villafuerte', 'quertvillafuerte10@gmail.com', NULL, 'client'),
(5, 'Alafuenca', '', 'alafuenca@gmail.com', NULL, 'admin'),
(6, 'ren', 'ren', 'rerenprint@gmail.com', '$2y$10$ZaAqt7YlbIzNM02gFvfdF.nQjCyiM14Y2J.AsbKUZLAKnPVfVE5f.', 'admin'),
(7, 'rheinier', 'cuenca', 'meiji@gmail.com', '$2y$10$RWtC1hwU4PxARQWP87msueEDaBdg0fcdFkE7mPo5cXGa4AjEHXzQi', 'client'),
(8, 'Carlos', 'Santana', 'carlos.santana@example.com', '$2y$10$TKh0iU7s0.9gd2Sy/SLFz.MAwL7y6OkgvQ8t9f3r7wu5.y1H.3eOa', 'client'),
(9, 'Brenda', 'Lee', 'brenda.lee@example.com', '$2y$10$K.o9s1L.P3gH8kM7n0bVt.wR2xY4z7A9bC1dE3fG5hI7jK9lM2nO', 'client'),
(10, 'Marcus', 'Aurelius', 'marcus.aurelius@example.com', '$2y$10$Pq.7r9sT1uW3xZ5aB7cE9.L0k2mN4oP6qR8sT0uV2wX4yZ6aB8c', 'client'),
(11, 'Fiona', 'Apple', 'fiona.apple@example.com', '$2y$10$Xy.1z3A5b7C9dE1fG3hI5.kL7mN9oP1qR3sT5uV7wX9yZ1aB3c', 'client'),
(12, 'George', 'Harrison', 'george.harrison@example.com', '$2y$10$Ab.3c5D7eF9gH1iJ3kL5.mN7oP9qR1sT3uV5wX7yZ9aB1cE3f', 'client'),
(13, 'Isabelle', 'Huppert', 'isabelle.huppert@example.com', '$2y$10$Cd.5eF7gH9iJ1kL3mN5.oP7qR9sT1uV3wX5yZ7aB9cE1fG3h', 'client'),
(14, 'Jackson', 'Pollock', 'jackson.pollock@example.com', '$2y$10$Ef.7gH9iJ1kL3mN5oP7.qR9sT1uV3wX5yZ7aB9cE1fG3hI5k', 'client'),
(15, 'Katherine', 'Hepburn', 'katherine.hepburn@example.com', '$2y$10$Gh.9iJ1kL3mN5oP7qR9.sT1uV3wX5yZ7aB9cE1fG3hI5kL7m', 'client'),
(16, 'Leonardo', 'DaVinci', 'leo.davinci@example.com', '$2y$10$Ij.1kL3mN5oP7qR9sT1.uV3wX5yZ7aB9cE1fG3hI5kL7mN9o', 'client'),
(17, 'Maria', 'Callas', 'maria.callas@example.com', '$2y$10$Kl.3mN5oP7qR9sT1uV3.wX5yZ7aB9cE1fG3hI5kL7mN9oP1q', 'client'),
(18, 'Nina', 'Simone', 'nina.simone@example.com', '$2y$10$Mn.5oP7qR9sT1uV3wX5.yZ7aB9cE1fG3hI5kL7mN9oP1qR3s', 'client'),
(19, 'Oscar', 'Wilde', 'oscar.wilde@example.com', '$2y$10$No.7qR9sT1uV3wX5yZ7.aB9cE1fG3hI5kL7mN9oP1qR3sT5u', 'client'),
(20, 'Patti', 'Smith', 'patti.smith@example.com', '$2y$10$Op.9sT1uV3wX5yZ7aB9.cE1fG3hI5kL7mN9oP1qR3sT5uV7w', 'client'),
(21, 'Quentin', 'Tarantino', 'quentin.tarantino@example.com', '$2y$10$Pq.1uV3wX5yZ7aB9cE1.fG3hI5kL7mN9oP1qR3sT5uV7wX9y', 'client'),
(22, 'Rachel', 'Weiss', 'rachel.weiss@example.com', '$2y$10$Qr.3wX5yZ7aB9cE1fG3.hI5kL7mN9oP1qR3sT5uV7wX9yZ1a', 'client'),
(23, 'Samuel', 'Beckett', 'samuel.beckett@example.com', '$2y$10$Rs.5yZ7aB9cE1fG3hI5.kL7mN9oP1qR3sT5uV7wX9yZ1aB3c', 'client'),
(24, 'Tilda', 'Swinton', 'tilda.swinton@example.com', '$2y$10$St.7aB9cE1fG3hI5kL7.mN9oP1qR3sT5uV7wX9yZ1aB3cE5f', 'client'),
(25, 'Umberto', 'Eco', 'umberto.eco@example.com', '$2y$10$Tu.9cE1fG3hI5kL7mN9.oP1qR3sT5uV7wX9yZ1aB3cE5fG7h', 'client'),
(26, 'Virginia', 'Woolf', 'virginia.woolf@example.com', '$2y$10$Uv.1fG3hI5kL7mN9oP1.qR3sT5uV7wX9yZ1aB3cE5fG7hI9j', 'client'),
(27, 'William', 'Faulkner', 'william.faulkner@example.com', '$2y$10$Vw.3hI5kL7mN9oP1qR3.sT5uV7wX9yZ1aB3cE5fG7hI9jK1l', 'client'),
(28, 'Xavier', 'Dolan', 'xavier.dolan@example.com', '$2y$10$Wx.5kL7mN9oP1qR3sT5.uV7wX9yZ1aB3cE5fG7hI9jK1lM3n', 'client'),
(29, 'Yasmin', 'Ahmad', 'yasmin.ahmad@example.com', '$2y$10$Xy.7mN9oP1qR3sT5uV7.wX9yZ1aB3cE5fG7hI9jK1lM3nO5p', 'client'),
(30, 'Zadie', 'Smith', 'zadie.smith@example.com', '$2y$10$Yz.9oP1qR3sT5uV7wX9.yZ1aB3cE5fG7hI9jK1lM3nO5pQ7r', 'client'),
(31, 'Arthur', 'Miller', 'arthur.miller@example.com', '$2y$10$Za.1qR3sT5uV7wX9yZ1.aB3cE5fG7hI9jK1lM3nO5pQ7rS9t', 'client'),
(32, 'Beatrice', 'Wood', 'beatrice.wood@example.com', '$2y$10$Ab.3sT5uV7wX9yZ1aB3.cE5fG7hI9jK1lM3nO5pQ7rS9tU1v', 'client'),
(33, 'Caleb', 'Landry', 'caleb.landry@example.com', '$2y$10$Bc.5uV7wX9yZ1aB3cE5.fG7hI9jK1lM3nO5pQ7rS9tU1vW3x', 'client'),
(34, 'Diana', 'Vreeland', 'diana.vreeland@example.com', '$2y$10$Cd.7wX9yZ1aB3cE5fG7.hI9jK1lM3nO5pQ7rS9tU1vW3xY5z', 'client'),
(35, 'Edward', 'Albee', 'edward.albee@example.com', '$2y$10$De.9yZ1aB3cE5fG7hI9.jK1lM3nO5pQ7rS9tU1vW3xY5zA7b', 'client'),
(36, 'Frida', 'Kahlo', 'frida.kahlo@example.com', '$2y$10$Ef.1aB3cE5fG7hI9jK1.lM3nO5pQ7rS9tU1vW3xY5zA7bC9d', 'client'),
(37, 'Gabriel', 'Garcia', 'gabriel.garcia@example.com', '$2y$10$Fg.3cE5fG7hI9jK1lM3.nO5pQ7rS9tU1vW3xY5zA7bC9dE1f', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `booking_code` (`booking_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6820391;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
