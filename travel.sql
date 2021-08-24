-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 04:51 PM
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
  `checkin_date` varchar(25) NOT NULL,
  `checkout_date` varchar(25) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `booking_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_bookings`
--

INSERT INTO `hotel_bookings` (`booking_id`, `user_id`, `user_email`, `user_phone`, `hotel_name`, `location`, `checkin_date`, `checkout_date`, `phone`, `price`, `booking_status`) VALUES
(24, '9', 'belal.mahmud099@gmai', '+11783681171', 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', '2021-08-18', '2021-08-19', '+60 12-364 9299', '250', 'rejected'),
(25, '9', 'belal.mahmud099@gmai', '+11783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-19', '2021-08-20', '+60 3-4040 9888', '300', 'rejected'),
(26, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-28', '2021-08-29', '+60 3-4040 9888', '300', 'rejected'),
(27, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', '2021-08-21', '2021-08-25', '+60 12-364 9299', '250', 'rejected'),
(28, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-20', '2021-08-27', '+60 3-4040 9888', '300', 'rejected'),
(29, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-20', '2021-08-30', '+60 3-4040 9888', '300', 'rejected'),
(30, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', '2021-08-20', '2021-08-20', '+60 3-2172 7272', '400', 'rejected'),
(31, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-30', '2021-08-30', '+60 3-4040 9888', '300', 'rejected'),
(32, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-25', '2021-08-25', '+60 3-4040 9888', '300', 'rejected'),
(33, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-06', '2021-08-05', '+60 3-4040 9888', '300', 'rejected'),
(34, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-20', '2021-08-21', '+60 3-4040 9888', '300', 'rejected'),
(35, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', '2021-08-20', '2021-08-27', '+60 3-2172 7272', '400', 'rejected'),
(36, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Grand Hyatt Hotel', '12 Jalan Pinang, KLCC, Kuala Lumpur, Malaysia, 50450 ', '2021-08-20', '2021-08-27', '+60 3-2182 1234', '430', 'rejected'),
(37, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Amari Johor Bahru', '82C Jalan Trus, Johor Bahru City Center, Johor Bahru, Malaysia, 80000', '2021-08-20', '2021-08-27', '+60 7-266 8888', '450', 'rejected'),
(38, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', '2021-08-20', '2021-08-28', '+60 3-2172 7272', '400', 'rejected'),
(39, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Thistle Johor Bahru Hotel', 'Jalan Sungai Chat, Johor Bahru City Center, Johor Bahru, Malaysia, 80100', '2021-08-20', '2021-08-27', '+60 7-222 9234', '300', 'rejected'),
(40, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-21', '2021-08-26', '+60 3-4040 9888', '300', 'rejected'),
(41, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', '2021-08-20', '2021-08-28', '+60 3-4040 9888', '300', 'paid'),
(42, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Somerset Kuala Lumpur', '187, Jalan Ampang, Taman U Thant, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '2021-08-27', '2021-08-27', '+60 3-2723 8888', '350', 'paid');

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
  `hotel_photo` varchar(500) NOT NULL,
  `no_beds` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_info`
--

INSERT INTO `hotel_info` (`hotel_id`, `hotel_name`, `hotel_address`, `hotel_price`, `hotel_region`, `hotel_phone`, `hotel_photo`, `no_beds`) VALUES
(5, 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', 300, 'Kuala Lumpur', '+60 3-4040 9888', 'https://cdn.galaxy.tf/thumb/sizeW2000/uploads/2s/cms_image/001/588/680/1588680312_5eb15678e6e94-thumb.jpg', 'Single'),
(6, 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', 250, 'Kuala Lumpur', '+60 12-364 9299', 'http://pix4.agoda.net/hotelimages/436/4369681/4369681_18012500510061303081.jpg', 'Single'),
(7, 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', 400, 'Kuala Lumpur', '+60 3-2172 7272', 'https://cf.bstatic.com/images/hotel/max1024x768/491/49113506.jpg', 'Single'),
(8, 'Somerset Kuala Lumpur', '187, Jalan Ampang, Taman U Thant, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', 350, 'Kuala Lumpur', '+60 3-2723 8888', 'https://media.expedia.com/hotels/4000000/3980000/3976400/3976304/037e488b_z.jpg', 'Single'),
(9, 'Grand Hyatt Hotel', '12 Jalan Pinang, KLCC, Kuala Lumpur, Malaysia, 50450 ', 430, 'Kuala Lumpur', '+60 3-2182 1234', 'https://media-cdn.tripadvisor.com/media/photo-s/0b/90/23/fe/grand-hyatt-hotel.jpg', 'Single'),
(10, 'Thistle Johor Bahru Hotel', 'Jalan Sungai Chat, Johor Bahru City Center, Johor Bahru, Malaysia, 80100', 300, 'Johor Bahru', '+60 7-222 9234', 'https://pix10.agoda.net/hotelImages/159191/-1/02eafb63c3480c4e0394c650f220bc97.jpg?s=1024x768', 'Single'),
(11, 'KSL Hotel & Resort', '33, Jalan Seladang, Taman Abad, 80250 Johor Bahru, Johor, Malaysia', 250, 'Johor Bahru', '+60 7-288 2999', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/46/6b/be/only-non-quarantine-hotel.jpg?w=900&h=-1&s=1', 'Single'),
(12, 'Amari Johor Bahru', '82C Jalan Trus, Johor Bahru City Center, Johor Bahru, Malaysia, 80000', 450, 'Johor Bahru', '+60 7-266 8888', 'https://www.pattayamail.com/wp-content/uploads/2014/03/P4-ONYX.jpg', 'Single'),
(13, 'Amerin Hotel Johor Bahru', 'No 35, Jalan Persisiran Perling 1, Taman Perling, Johor Bahru, Gelang Patah/Legoland, Johor Bahru, Malaysia, 81200 ', 400, 'Johor Bahru', '+60 7-233 0333', 'https://ak-d.tripcdn.com/images/20010n000000ebwya5DEC_Z_550_412_R5_Q70_D.jpg', 'Single'),
(14, 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', 300, 'Kuala Lumpur', '+60 3-4040 9888', 'https://cdn.galaxy.tf/thumb/sizeW2000/uploads/2s/cms_image/001/588/680/1588680312_5eb15678e6e94-thumb.jpg', 'Double'),
(15, 'Sunway Putra Hotel', '100 Jalan Putra, Chowkit / Putra WTC, Kuala Lumpur', 300, 'Kuala Lumpur', '+60 3-4040 9888', 'https://cdn.galaxy.tf/thumb/sizeW2000/uploads/2s/cms_image/001/588/680/1588680312_5eb15678e6e94-thumb.jpg', 'Triple'),
(16, 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', 250, 'Kuala Lumpur', '+60 12-364 9299', 'http://pix4.agoda.net/hotelimages/436/4369681/4369681_18012500510061303081.jpg', 'Double'),
(17, 'DeFace Platinum', 'THE PLATINUM SUITES ,1020 Jalan Sultan Ismail, 502', 250, 'Kuala Lumpur', '+60 12-364 9299', 'http://pix4.agoda.net/hotelimages/436/4369681/4369681_18012500510061303081.jpg', 'Triple'),
(18, 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', 400, 'Kuala Lumpur', '+60 3-2172 7272', 'https://cf.bstatic.com/images/hotel/max1024x768/491/49113506.jpg', 'Double'),
(19, 'DoubleTree by Hilton', 'The Intermark, 348 Jalan Tun Razak, KLCC, Kuala Lumpur, Malaysia, 50400', 400, 'Kuala Lumpur', '+60 3-2172 7272', 'https://cf.bstatic.com/images/hotel/max1024x768/491/49113506.jpg', 'Triple'),
(20, 'Somerset Kuala Lumpur', '187, Jalan Ampang, Taman U Thant, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', 350, 'Kuala Lumpur', '+60 3-2723 8888', 'https://media.expedia.com/hotels/4000000/3980000/3976400/3976304/037e488b_z.jpg', 'Double'),
(21, 'Somerset Kuala Lumpur', '187, Jalan Ampang, Taman U Thant, 50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', 350, 'Kuala Lumpur', '+60 3-2723 8888', 'https://media.expedia.com/hotels/4000000/3980000/3976400/3976304/037e488b_z.jpg', 'Triple'),
(22, 'Grand Hyatt Hotel', '12 Jalan Pinang, KLCC, Kuala Lumpur, Malaysia, 50450 ', 430, 'Kuala Lumpur', '+60 3-2182 1234', 'https://media-cdn.tripadvisor.com/media/photo-s/0b/90/23/fe/grand-hyatt-hotel.jpg', 'Double'),
(23, 'Thistle Johor Bahru Hotel', 'Jalan Sungai Chat, Johor Bahru City Center, Johor Bahru, Malaysia, 80100', 300, 'Johor Bahru', '+60 7-222 9234', 'https://pix10.agoda.net/hotelImages/159191/-1/02eafb63c3480c4e0394c650f220bc97.jpg?s=1024x768', 'Triple');

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
  `booking_status` varchar(25) NOT NULL,
  `booking_date` varchar(25) NOT NULL,
  `direction` varchar(25) NOT NULL,
  `no_persons` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport_bookings`
--

INSERT INTO `transport_bookings` (`booking_id`, `user_id`, `user_email`, `user_phone`, `transport_name`, `pickup`, `dropoff`, `time`, `price`, `booking_status`, `booking_date`, `direction`, `no_persons`) VALUES
(14, '9', 'belal.mahmud099@gmai', '+11783681171', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '10:00 AM', '36', 'rejected', '2021-08-26', 'Oneway', '2'),
(15, '22', 'belal.mahmud099@gmai', '+8801783681171', 'Neoliner Express', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '9:00 AM', '35', 'rejected', '2021-08-20', 'Oneway', '1'),
(16, '22', 'belal.mahmud099@gmai', '+8801783681171', 'Starmart', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '11:00 AM', '37', 'rejected', '2021-08-27', 'Oneway', '3'),
(17, '27', 'belal.mahmud099@gmai', '+8801783681171', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '10:00 AM', '36', 'rejected', '2021-08-20', 'Oneway', '5'),
(18, '27', 'belal.mahmud099@gmai', '+8801783681171', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Alor Setar( Kedah )', '10:15 AM', '73', 'rejected', '2021-08-20', 'Oneway', '3'),
(19, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Alor Setar( Kedah )', '10:15 AM', '73', 'paid', '2021-08-27', 'Twoway', '12'),
(20, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '8:00 AM', '38', 'paid', '2021-08-20', 'Oneway', '12'),
(21, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '8:00 AM', '38', 'paid', '2021-08-20', 'Oneway', '122'),
(22, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Neoliner Express', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '9:00 AM', '35', 'paid', '2021-08-20', 'Oneway', '1234'),
(24, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '8:00 AM', '38', 'paid', '2021-08-20', 'Oneway', '12'),
(25, '29', 'belal.mahmud099@gmail.com', '+8801783681171', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', '10:00 AM', '36', 'paid', '2021-08-12', 'Oneway', '12');

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
  `transport_photo` varchar(500) NOT NULL,
  `direction` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport_info`
--

INSERT INTO `transport_info` (`transport_id`, `transport_type`, `operator_name`, `pickup`, `dropoff`, `price`, `time`, `transport_photo`, `direction`) VALUES
(1, 'Bus', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 38, '8:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Oneway'),
(2, 'Bus', 'Neoliner Express', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 35, '9:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Oneway'),
(3, 'Bus', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 36, '10:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Oneway'),
(4, 'Bus', 'Starmart', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 37, '11:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Oneway'),
(5, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Alor Setar( Kedah )', 73, '10:15 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg', 'Oneway'),
(6, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Sungai Petani( Kedah )', 66, '11:30 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg', 'Oneway'),
(7, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Gurun( Kedah )', 68, '9:30 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg', 'Oneway'),
(8, 'Bus', 'Billion Star', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 38, '8:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Twoway'),
(9, 'Bus', 'Neoliner Express', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 35, '9:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Twoway'),
(10, 'Bus', 'Top Liner', 'TBS (Terminal Bersepadu Selatan)', 'Johor Bahru (JB Larkin Terminal)', 36, '10:00 AM', 'https://assetsw.bus.com/content/uploads/2020/02/14170850/Charter-Bus-Rentals-Photo.jpg', 'Twoway'),
(12, 'Train', 'KTM Berhad', 'Bdr Tasek Selatan( Kuala Lumpur )', 'Alor Setar( Kedah )', 73, '10:15 AM', 'https://c.files.bbci.co.uk/F76E/production/_115224336_mediaitem115224335.jpg', 'Twoway');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_name`, `email`, `password`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', '123', '0909090909'),
(29, 'fahim', 'belal.mahmud099@gmail.com', '123', '+8801783681171');

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
  MODIFY `booking_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `hotel_info`
--
ALTER TABLE `hotel_info`
  MODIFY `hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transport_bookings`
--
ALTER TABLE `transport_bookings`
  MODIFY `booking_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transport_info`
--
ALTER TABLE `transport_info`
  MODIFY `transport_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
