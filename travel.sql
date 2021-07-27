-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 04:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel_bookings`
--

CREATE TABLE `hotel_bookings` (
  `booking_id` int(15) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_email` varchar(25) NOT NULL,
  `user_phone` varchar(25) NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `date` varchar(25) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `booking_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_info`
--

CREATE TABLE `hotel_info` (
  `hotel_id` int(10) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `hotel_address` varchar(250) NOT NULL,
  `hotel_price` int(10) NOT NULL,
  `hotel_region` varchar(150) NOT NULL,
  `hotel_phone` varchar(20) NOT NULL,
  `hotel_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_info`
--

INSERT INTO `hotel_info` (`hotel_id`, `hotel_name`, `hotel_address`, `hotel_price`, `hotel_region`, `hotel_phone`, `hotel_photo`) VALUES
(5, 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', 300, 'Kuala Lumpur', '+60 3-4040 9888', 'https://cdn.galaxy.tf/thumb/sizeW2000/uploads/2s/cms_image/001/588/680/1588680312_5eb15678e6e94-thumb.jpg'),
(6, 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', 250, 'Kuala Lumpur', '+60 12-364 9299', 'http://pix4.agoda.net/hotelimages/436/4369681/4369681_18012500510061303081.jpg'),
(7, 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', 400, 'Kuala Lumpur', '+60 3-2172 7272', 'https://cf.bstatic.com/images/hotel/max1024x768/491/49113506.jpg'),
(8, 'Somerset Kuala Lumpur', '187, Jalan Ampang, Taman U Thant, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', 350, 'Kuala Lumpur', '+60 3-2723 8888', 'https://media.expedia.com/hotels/4000000/3980000/3976400/3976304/037e488b_z.jpg'),
(9, 'Grand Hyatt Hotel', '12 Jalan Pinang, KLCC, Kuala Lumpur, Malaysia, 50450 ', 430, 'Kuala Lumpur', '+60 3-2182 1234', 'https://media-cdn.tripadvisor.com/media/photo-s/0b/90/23/fe/grand-hyatt-hotel.jpg'),
(10, 'Thistle Johor Bahru Hotel', 'Jalan Sungai Chat, Johor Bahru City Center, Johor Bahru, Malaysia, 80100', 300, 'Johor Bahru', '+60 7-222 9234', 'https://pix10.agoda.net/hotelImages/159191/-1/02eafb63c3480c4e0394c650f220bc97.jpg?s=1024x768'),
(11, 'KSL Hotel & Resort', '33, Jalan Seladang, Taman Abad, 80250 Johor Bahru, Johor, Malaysia', 250, 'Johor Bahru', '+60 7-288 2999', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/46/6b/be/only-non-quarantine-hotel.jpg?w=900&h=-1&s=1'),
(12, 'Amari Johor Bahru', '82C Jalan Trus, Johor Bahru City Center, Johor Bahru, Malaysia, 80000', 450, 'Johor Bahru', '+60 7-266 8888', 'https://www.pattayamail.com/wp-content/uploads/2014/03/P4-ONYX.jpg'),
(13, 'Amerin Hotel Johor Bahru', 'No 35, Jalan Persisiran Perling 1, Taman Perling, Johor Bahru, Gelang Patah/Legoland, Johor Bahru, Malaysia, 81200 ', 400, 'Johor Bahru', '+60 7-233 0333', 'https://ak-d.tripcdn.com/images/20010n000000ebwya5DEC_Z_550_412_R5_Q70_D.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transport_bookings`
--

CREATE TABLE `transport_bookings` (
  `booking_id` int(25) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_email` varchar(25) NOT NULL,
  `user_phone` varchar(25) NOT NULL,
  `transport_name` varchar(50) NOT NULL,
  `pickup` varchar(500) NOT NULL,
  `dropoff` varchar(500) NOT NULL,
  `time` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `booking_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transport_info`
--

CREATE TABLE `transport_info` (
  `transport_id` int(25) NOT NULL,
  `transport_type` varchar(100) NOT NULL,
  `operator_name` varchar(250) NOT NULL,
  `pickup` varchar(500) NOT NULL,
  `dropoff` varchar(500) NOT NULL,
  `price` int(25) NOT NULL,
  `time` varchar(25) NOT NULL,
  `transport_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport_info`
--

INSERT INTO `transport_info` (`transport_id`, `transport_type`, `operator_name`, `pickup`, `dropoff`, `price`, `time`, `transport_photo`) VALUES
(1, 'Bus', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 38, '8:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg'),
(2, 'Bus', 'Neoliner Express', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 35, '9:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg'),
(3, 'Bus', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 36, '10:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg'),
(4, 'Bus', 'Starmart', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 37, '11:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg'),
(5, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Alor Setar( Kedah )', 73, '10:15 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg'),
(6, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Sungai Petani( Kedah )', 66, '11:30 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg'),
(7, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Gurun( Kedah )', 68, '9:30 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `email`, `password`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', '123', '0909090909');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `transport_bookings`
--
ALTER TABLE `transport_bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `transport_info`
--
ALTER TABLE `transport_info`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  MODIFY `booking_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hotel_info`
--
ALTER TABLE `hotel_info`
  MODIFY `hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transport_bookings`
--
ALTER TABLE `transport_bookings`
  MODIFY `booking_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transport_info`
--
ALTER TABLE `transport_info`
  MODIFY `transport_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
