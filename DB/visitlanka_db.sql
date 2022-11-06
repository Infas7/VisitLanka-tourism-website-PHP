-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 04:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prjctvisit`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='customer details';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `city`, `pincode`, `contact_no`, `email_id`, `password`, `status`) VALUES
(16, 'Infas', '35 Alloy Avenue, Colombo, Sri Lanka.', 'Colombo', '123556', '0777245280', 'moinfas@gmail.com', '0d7e2f3db0b2609be13d75f1f361b224', 'Active'),
(17, 'Smith J', '537 Price Stream Apt. 996,North Alvis,USA', 'North Alvis', '918714', '0782663333', 'smith@gmail.com', 'b131a11a9ec27147877bd1fc8f002260', 'Active'),
(18, 'Jhon', ' 11077 Berge Hill, East Rockyview, USA', 'East Rockyview', '155724', '0183069627', 'jhon@gmail.com', 'adcf3d49f20f48bf41723084c78c829a', 'Active'),
(19, 'S Sara', '44/3 Place Heylen 4,Péruwelz, Belgium', 'Péruwelz', '935945', '0108392990', 'sara@hotmail.com', 'f3329818d419a34fcb14f7a20fbe82b3', 'Active'),
(20, 'Toussaint', '21, rue Roussel, Joubert,France', 'Joubert', '157797', '0335884213', 'toussaint@yahoo.com', '61411a65e40bcb5edf522af8b866050b', 'Active'),
(21, 'Akash', '12 Hafeezpet,Hyderabad, India', 'Hyderabad', '500050', '0812189468', 'akash@gmail.com', '26a991ce0d465e436476785a8a254a6b', 'Active'),
(22, 'Halland', 'Autarlaan 63k, Hank, Netherlands', ' Hank', '314588', '0311272045', 'halland@hotmail.com', '1bfc4ea3146f00b49399daffdc59634e', 'Active'),
(23, 'demo', 'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ', 'Colombo', '123456', '0777777777', 'demo@gmail.com', '6e9bece1914809fb8493146417e722f6', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `tourism_placeid` int(10) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `feedback_dt` date NOT NULL,
  `ratings` float(10,1) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='feedback';

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `customer_id`, `tourism_placeid`, `hotel_id`, `feedback`, `feedback_dt`, `ratings`, `status`) VALUES
(26, 16, 0, 34, 'They were extremely accommodating and allowed us to check in early at like 10am. We got to hotel super early and I didn’t wanna wait. So this was a big plus. The sevice was exceptional as well. Would definitely send a friend there.', '2022-10-03', 5.0, 'Active'),
(27, 22, 0, 34, 'I had a wonderful experience at the Panoramic Hotel. Every staff member I encountered, from the valet to the check- in to the cleaning staff were delightful and eager to help! Thank you! Will recommend to my colleagues!', '2022-10-03', 5.0, 'Active'),
(28, 22, 34, 0, 'this is the main city of sri lanka, you can see construction of high rise buildings hotels, food chains, when i went here, the place is crowded and the traffic is horrible, but if i will visit this, surely i will stay for a night or 2 to explore the area.', '2022-10-03', 5.0, 'Active'),
(29, 19, 34, 0, 'The booking is pretty easy through their website. Its a little pricy but then all these sort of tours are. They do pick up from some nearby hotels, otherwise their point is the Panoramic Hotel. The tour guide was nothing great but gave enough information. I especially liked it because they do slow down at the various important buildings and this is a great way to get a good glimpse of the city.', '2022-10-03', 4.0, 'Active'),
(30, 17, 0, 34, 'The best hotel I’ve ever been privileged enough to stay at. Gorgeous building, and it only gets more breathtaking when you walk in. High quality rooms (there was even a tv by the shower), and high quality service. Also, they are one of few hotels that allow people under 21 to book a reservation.', '2022-10-03', 4.0, 'Active'),
(31, 16, 0, 35, 'Overall, I had a great experience with the Emarld Bay staff was incredibly helpful, and the amenities were great. The room was wonderful, clean, and perfect to celebrate a birthday weekend.', '2022-10-03', 4.0, 'Active'),
(32, 16, 34, 0, 'jhcgSKJHCBXjhV', '2022-10-04', 0.0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryid` int(10) NOT NULL,
  `gallerytype` varchar(50) NOT NULL,
  `tourism_placeid` int(10) NOT NULL,
  `upload_file` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='gallery details';

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryid`, `gallerytype`, `tourism_placeid`, `upload_file`, `note`, `status`) VALUES
(81, 'Video Gallery', 71, '399083146lotus tower.mp4', 'Lotus tower, Sri Lanka. overview clip', 'Active'),
(83, 'Photo Gallery', 71, '1970514213Lotus Tower.png', 'Drone shot of Lotus tower', 'Active'),
(84, 'Photo Gallery', 72, '2066189451paradeniya.jpg', 'Peradeniya Botanical Gardens', 'Active'),
(85, 'Photo Gallery', 72, '708944773paradeniya2.jpg', 'Peradeniya Botanical Gardens', 'Active'),
(86, 'Photo Gallery', 73, '1373767321Udawatta-Kele-3.webp', 'Udawattekele Sanctuary', 'Active'),
(87, 'Photo Gallery', 73, '1596627065Udawattekele Sanctuary.jpg', 'Udawattekele Sanctuary', 'Active'),
(88, 'Photo Gallery', 74, '1065617384National Museum of Colombo.jpg', 'National Museum of Colombo', 'Active'),
(89, 'Photo Gallery', 74, '1691336882national-musuem-of-colombo-og-img.jpg', 'National Museum of Colombo', 'Active'),
(90, 'Photo Gallery', 75, '136115190National Railway Museum2.jpg', 'National Railway Museum', 'Active'),
(91, 'Photo Gallery', 75, '1628703449National Railway Museum.jpg', 'National Railway Museum', 'Active'),
(92, 'Photo Gallery', 76, '871238824Knuckles Mountain Range 2.webp', 'Knuckles Mountain Range ', 'Active'),
(93, 'Photo Gallery', 76, '879079756Knuckles Mountain Range 5.jpg', 'Knuckles Mountain Range ', 'Active'),
(94, 'Photo Gallery', 76, '170419345Knuckles Mountain Range 4.jpg', 'Knuckles Mountain Range ', 'Active'),
(95, 'Feedback', 28, '22689426review colombo.jpg', '', 'Active'),
(96, 'Feedback', 29, '2106213191lotus tower.mp4', '', 'Active'),
(97, 'Photo Gallery', 77, '827843693072089301Anuradhapura_brazen_palace.jpg', 'The Brazen Palace or Lovamahapaya is a 2000-year-old palace constructed by King Dutugemunu in 2nd century B.C and had 1600 stone columns that supported nine stories reaching 150 feet and sides of 400 feet length with 1000 rooms. It is also known as the Brazen Place because of the bronze tiles that were used on its roof.', 'Active'),
(98, 'Video Gallery', 77, '2109762237lotus tower.mp4', 'The Brazen Palace or Lovamahapaya is a 2000-year-old palace constructed by King Dutugemunu in 2nd century B.C and had 1600 stone columns that supported nine stories reaching 150 feet and sides of 400 feet length with 1000 rooms. It is also known as the Brazen Place because of the bronze tiles that were used on its roof.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `giftcoupon`
--

CREATE TABLE `giftcoupon` (
  `giftcouponid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `couponcode` varchar(25) NOT NULL,
  `expirydate` date NOT NULL,
  `discount_percentage` double NOT NULL,
  `max_limit` double NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giftcoupon`
--

INSERT INTO `giftcoupon` (`giftcouponid`, `customer_id`, `couponcode`, `expirydate`, `discount_percentage`, `max_limit`, `reason`, `status`) VALUES
(4, 16, '123456', '2022-10-12', 20, 1, 'You are our Regular cutomer', 'Redeemed'),
(5, 21, '111111', '2022-10-12', 20, 1, 'knjfnelwafnlnjf', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_type` varchar(20) NOT NULL,
  `hotel_description` text NOT NULL,
  `hotel_address` text NOT NULL,
  `hotel_map` text NOT NULL,
  `hotel_pincode` varchar(10) NOT NULL,
  `hotel_policies` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hotel details';

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `location_id`, `hotel_name`, `hotel_type`, `hotel_description`, `hotel_address`, `hotel_map`, `hotel_pincode`, `hotel_policies`, `status`) VALUES
(34, 34, 'Panoramic Hotel', 'Hotel', 'The Panoramic Hotel is a modern, elegant 4-star hotel overlooking the sea, perfect for a romantic, charming vacation, in the enchanting setting of Taormina and the Ionian Sea.\r\n\r\nThe rooms at the Panoramic Hotel are new, well-lit and inviting. Our reception staff will be happy to help you during your stay in Taormina, suggesting itineraries, guided visits and some good restaurants in the historic centre.\r\n\r\nWhile you enjoy a cocktail by the swimming pool on the rooftop terrace, you will be stunned by the breathtaking view of the bay of Isola Bella. Here, during your summer stays, our bar serves traditional Sicilian dishes, snacks and salads.', 'Bambalpitiya, Colombo', 'asdfasd', '123456', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Active'),
(35, 34, 'Emerald Bay', 'Villa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Mount Lavinia', 'http://Googlemap.api/fasdfasdfasdfasdf', '444444', 'Departure\r\nCheck out time is ( mention your checkout time here ) please inform the reception if you wish to retain your room beyond this time. The extension will be given depending on the availability. If the room is available, the normal tariff will be charged. On failure of the guest to vacate the room on expiry or period the management shall have the right to remove the guest and his/her belongings from the room occupied by the Guest.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility`
--

CREATE TABLE `hotel_facility` (
  `hotel_facilityid` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `facility_type` varchar(100) NOT NULL,
  `facility_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hotel_facility';

--
-- Dumping data for table `hotel_facility`
--

INSERT INTO `hotel_facility` (`hotel_facilityid`, `hotel_id`, `room_typeid`, `facility_type`, `facility_img`, `status`) VALUES
(19, 34, 21, 'Swimming pool/ Jacuzzi.', '17010609436.jpg', 'Active'),
(20, 34, 22, 'Poolside bar.', '6844736965.jpg', 'Active'),
(21, 35, 24, 'Semi open & outdoor restaurant,Swimming pool/ Jacuzzi.', '2507016182.jpg', 'Active'),
(22, 35, 24, 'Food (Breakfast), WIfi , Pool', '6517317511.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_image`
--

CREATE TABLE `hotel_image` (
  `hotel_imageid` int(11) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `hotel_image` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hotel image';

--
-- Dumping data for table `hotel_image`
--

INSERT INTO `hotel_image` (`hotel_imageid`, `hotel_id`, `room_typeid`, `hotel_image`, `image_description`, `status`) VALUES
(17, 34, 22, '14959819555.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis', 'Active'),
(18, 34, 21, '15909711027.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea ', 'Active'),
(19, 35, 24, '4441767114.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'Active'),
(20, 35, 23, '3697400185.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Active'),
(21, 34, 25, '17509495213.jpg', 'dgfasdgasfadsnamdasv d', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mail_setting`
--

CREATE TABLE `mail_setting` (
  `settingid` int(10) NOT NULL,
  `settingtype` varchar(25) NOT NULL,
  `settingdetails` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_setting`
--

INSERT INTO `mail_setting` (`settingid`, `settingtype`, `settingdetails`, `status`) VALUES
(16, 'SMTP', 'a:5:{s:10:\"mailsender\";s:25:\"Free Friendly Travel Mood\";s:10:\"smtpserver\";s:23:\"ded723.hostwindsdns.com\";s:8:\"smtpport\";s:3:\"465\";s:7:\"loginid\";s:31:\"travelwebsite@projectmailer.xyz\";s:8:\"password\";s:12:\"P2Jv42Lfls37\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_booking_id` int(10) NOT NULL,
  `food_order_id` int(10) NOT NULL,
  `cab_bookingid` int(10) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `payment_detail` text NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv_no` varchar(5) NOT NULL,
  `exp_date` date NOT NULL,
  `total_amt` float(10,2) NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_detail` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='payment details';

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `room_booking_id`, `food_order_id`, `cab_bookingid`, `payment_date`, `payment_time`, `transaction_type`, `payment_type`, `payment_detail`, `card_holder`, `card_no`, `cvv_no`, `exp_date`, `total_amt`, `discount_amount`, `discount_detail`, `name`, `mobileno`, `note`, `status`) VALUES
(69, 16, 52, 0, 0, '2022-10-03', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:10:\"fvkhgvkjvk\";i:1;s:16:\"1111222233334444\";i:2;s:3:\"144\";i:3;s:7:\"2022-12\";}', '', '', '', '0000-00-00', 4499.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Infas', '0777245280', '', 'Cancel'),
(70, 16, 0, 0, 0, '2022-10-03', '00:27:43', 'Cancellation', 'Savings Account', '', 'infas', '1111222233334444', '12458', '0000-00-00', 2249.50, 0, '', '52', '', '', 'Cancelled'),
(71, 16, 53, 0, 0, '2022-10-03', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:5:\"Infas\";i:1;s:16:\"1111222233334444\";i:2;s:3:\"154\";i:3;s:7:\"2023-11\";}', '', '', '', '0000-00-00', 10000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Infas', '0777245280', '', 'Cancel'),
(72, 16, 0, 0, 0, '2022-10-03', '19:31:15', 'Cancellation', 'Savings Account', '', 'Infas Mohamed', '1111222233334444', '12546', '0000-00-00', 5000.00, 0, '', '53', '', '', 'Cancelled'),
(73, 17, 54, 0, 0, '2022-10-03', '00:00:00', 'Hotel Booking', 'CREDIT CARD', 'a:4:{i:0;s:10:\"Smith Jhon\";i:1;s:16:\"1111222233334444\";i:2;s:3:\"123\";i:3;s:7:\"2025-06\";}', '', '', '', '0000-00-00', 10000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Smith J', '0782663333', 'Want a pickup car from the airport', 'Active'),
(74, 16, 55, 0, 0, '2022-10-03', '00:00:00', 'Hotel Booking', 'CREDIT CARD', 'a:4:{i:0;s:13:\"Mohamed Infas\";i:1;s:16:\"1111222233334444\";i:2;s:3:\"123\";i:3;s:7:\"2026-06\";}', '', '', '', '0000-00-00', 25000.00, 1, 'a:6:{i:0;s:6:\"123456\";i:1;s:10:\"2022-10-12\";i:2;s:2:\"20\";i:3;s:1:\"1\";i:4;s:27:\"You are our Regular cutomer\";i:5;s:6:\"Active\";}', 'Infas', '0777245280', 'I want a private meals ready. (extra)', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `no_ofadults` int(10) NOT NULL,
  `no_ofchildren` int(10) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `checkintime` time NOT NULL,
  `checkouttime` time NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='room booking';

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `hotel_id`, `room_typeid`, `customer_id`, `no_ofadults`, `no_ofchildren`, `check_in`, `check_out`, `checkintime`, `checkouttime`, `cost`, `status`) VALUES
(53, 34, 21, 16, 4, 2, '2022-10-04 00:00:00', '2022-10-04 00:00:00', '12:30:00', '12:30:00', 10000.00, 'Active'),
(54, 34, 21, 17, 4, 2, '2022-10-04 00:00:00', '2022-10-04 00:00:00', '12:30:00', '12:30:00', 10000.00, 'Active'),
(55, 35, 24, 16, 2, 1, '2022-10-04 00:00:00', '2022-10-04 00:00:00', '12:30:00', '12:30:00', 25000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_typeid` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `available_rooms` bigint(20) NOT NULL,
  `max_adults` int(10) NOT NULL,
  `max_children` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_typeid`, `hotel_id`, `room_type`, `available_rooms`, `max_adults`, `max_children`, `cost`, `status`) VALUES
(1, 1, 'Single bedroom', 0, 3, 2, 3999.00, 'Active'),
(2, 1, 'Executive Double without Meals', 10, 3, 2, 4499.00, 'Active'),
(3, 2, 'Deluxe Twin Room with Breakfast', 0, 1, 0, 6500.00, 'Active'),
(4, 2, 'Deluxe Room with Breakfast', 0, 3, 1, 7000.00, 'Active'),
(5, 21, 'Two bedrooms', 0, 5, 3, 7000.00, 'Active'),
(6, 22, 'Deluxe Double Non A/C without meals', 0, 3, 1, 2192.00, 'Active'),
(7, 14, 'Standard Non Ac', 0, 2, 1, 1008.00, 'Active'),
(8, 14, 'Executive AC With Breakfast', 0, 3, 2, 1649.00, 'Active'),
(9, 17, 'Classic Single Room With ', 0, 1, 0, 5486.00, 'Active'),
(10, 27, 'Deluxe Non AC Room With All meals', 0, 3, 2, 2115.00, 'Active'),
(11, 27, 'Family Suite With All Meals', 0, 6, 2, 8535.00, 'Active'),
(12, 28, 'Non A/C Indian With All Meals', 0, 3, 2, 3960.00, 'Active'),
(13, 28, 'Non A/C Foreigner With All meals', 0, 3, 2, 5824.00, 'Active'),
(14, 29, 'Deluxe Room Single With Breakfast', 0, 1, 0, 1919.00, 'Active'),
(15, 29, 'Deluxe Double Room With Breakfast', 0, 3, 2, 2067.00, 'Active'),
(16, 31, 'Premium Suite Room With Breakfast', 10, 3, 2, 6331.00, 'Active'),
(17, 33, 'Single Room', 10, 1, 0, 2000.00, 'Active'),
(18, 33, 'Double Room', 20, 2, 1, 4000.00, 'Active'),
(19, 33, 'Quin Room', 30, 2, 2, 6000.00, 'Active'),
(20, 33, 'Joint Family', 5, 10, 8, 10000.00, 'Active'),
(21, 34, 'Delux', 10, 4, 2, 10000.00, 'Active'),
(22, 34, 'Deluxe Non AC Room With All meals', 15, 3, 1, 15000.00, 'Active'),
(23, 35, 'Deluxe Double Room With Breakfast', 5, 3, 0, 18000.00, 'Active'),
(24, 35, 'Premium Suite Room With Breakfast', 3, 2, 1, 25000.00, 'Active'),
(25, 34, 'Single Room', 4, 2, 0, 7000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(10) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `stafftype` varchar(20) NOT NULL,
  `loginid` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='staff details';

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `staffname`, `stafftype`, `loginid`, `password`, `status`) VALUES
(5, 'Root', 'Administrator', 'admin@gmail.com', 'e6e061838856bf47e1de730719fb2609', 'Active'),
(7, 'Supun', 'Employee', 'supun@gmail.com', 'fb20116e237880747d84c66b65030fcb', 'Active'),
(8, 'Nalini', 'Employee', 'nalini@gmail.com', 'c5eae24dd7e50e76a922276f4198fde6', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tourism_location`
--

CREATE TABLE `tourism_location` (
  `location_id` int(10) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `location_img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='item details';

--
-- Dumping data for table `tourism_location`
--

INSERT INTO `tourism_location` (`location_id`, `location_name`, `location_img`, `description`, `status`) VALUES
(34, 'Colombo', '526817929colombo-sri-lanka.jpg', '<p><span class=\"ILfuVd\" lang=\"en\">Colombo is the capital city of Sri Lanka, and the country\'s largest city in terms of population. Located on the west coast, it is a beautiful city surrounded by white sand beaches and an impressive harbourfront. Colombo is characterised by a series of canals, with the picturesque 160-acre Beira Lake at its centre.</span></p>', 'Active'),
(35, 'Kandy', '326929791Kandy.jpg', '<p><span class=\"ILfuVd\" lang=\"en\">Kandy, byname Maha Nuwara (&ldquo;Great City&rdquo;), city in the Central Highlands of Sri Lanka, at an elevation of 1,640 feet (500 metres). It lies on the Mahaweli River on the shore of an artificial lake that was constructed (1807) by the last Kandyan king, Sri Wickrama Rajasinha.</span></p>', 'Active'),
(36, 'Galle', '1807983846Galle.jpg', '<p><span class=\"ILfuVd\" lang=\"en\">Galle (formerly Point de Galle) is a major city in Sri Lanka, situated on the southwestern tip, 119 kilometres (74 mi) from Colombo. Galle is the provincial capital and largest city of Southern Province, Sri Lanka and is the capital of Galle District.</span></p>', 'Active'),
(37, 'Elle', '13592827The-Ella-Odyssey.jpg', '<p>Ella has all the best parts of Sri Lanka rolled into one: beautiful jungle mountains, rolling tea plantations, and epic waterfalls. As one of the biggest tea producers, travelers can look forward to spending their days among the greenest surroundings, enjoying the views from hilltop houses and adventurous hiking trails. Even the train ride to Elle is one of life&rsquo;s most remarkable experiences, as you travel by iconic blue train through bamboo forests and tropical mist</p>', 'Active'),
(38, 'Trincomelee', '98760785Trinco.webp', '<p><span class=\"ILfuVd\" lang=\"en\">Trincomalee, ancient Gokanna, town and port, Sri Lanka, on the island\'s northeastern coast. It is situated on a peninsula in Trincomalee Bay&mdash;formerly called Koddiyar (meaning &ldquo;Fort by the River&rdquo;) Bay&mdash;one of the world\'s finest natural harbours. Trincomalee was in early times a major settlement of Indo-Aryan immigrants.</span></p>', 'Active'),
(39, 'Nuwara Eliya', '1872922007Nuwara Eliya.jpg', '<p><span class=\"ILfuVd\" lang=\"en\">Its name means \"city on the plain (table land)\" or \"city of light\". The city is the administrative capital of Nuwara Eliya District, with a picturesque landscape and temperate climate. It is at an altitude of 1,868 m (6,128 ft) and is considered to be the most important location for tea production in Sri Lanka.</span></p>', 'Active'),
(40, 'Anuaradaura', '1983554990anu.jpg', '<p>orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor&nbsp;</p>', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tourism_place`
--

CREATE TABLE `tourism_place` (
  `tourism_placeid` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `tourism_place` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `feature` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourism_place`
--

INSERT INTO `tourism_place` (`tourism_placeid`, `location_id`, `tourism_place`, `description`, `feature`, `status`) VALUES
(71, 34, 'Lotus Tower', '<p>One of the coolest (and highest) places to visit in Colombo is also one of the city\'s newest things to do. The Colombo Lotus Tower is South Asia\'s tallest freestanding structure (368 meters/1,168 feet), and a trip to the top rewards visitors with unobstructed views across Colombo and the surrounding cityscape and sea.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p>The tower, which houses a lot of telecommunications equipment, has a telecom museum, a shopping mall (at the base), a revolving fine dining restaurant and indoor and outdoor observation areas. The tower is also a sight to see from the outside - it\'s covered in LED lighting and presents seasonal themed lighting displays each night.</p>\r\n<p>The Lotus Tower, designed to replicate a lotus bulb and flower, simultaneously represents the historic culture of the country and its focus on the future.</p>', 'Active'),
(72, 35, 'Peradeniya Botanical Gardens ', '<p>Peradeniya Gardens is a spacious 147 acre of natural extravaganza consisting of more than 4000 species of plants, and 10,000 varied kinds of trees, incidentally serves as the largest garden of Sri Lanka. <br /><br /></p>', '<p>The unique and rarest collection in these gardens is the Giant Bamboo of Burma which grows 12 inches each day to a height of 40 meters. Apart from this other amazing collections include Javan fig tree, Cannonball tree, Double Coconut Palm and about 200 other varieties of palm trees and versatile collection of flora.<br /><br />The Peradeniya Botanical Garden is one prime tourist attraction of hill country and remains quite flooded with tourists every weekend. One can pack some food to enjoy an open air picnic here or can relish the cafeteria inside serving local and western cuisine.</p>', 'Active'),
(73, 35, 'Udawattekele Sanctuary ', '<p>The sanctuary, centuries back was a kingdom named Kandyan and jungle area on the far side of the palace was known as the Uda Wasala Watta or the upper palace garden; hence the name. <br /><br />The forest reserve was made into a sanctuary in 1938. Additionally, the forest&rsquo;s catchment areas provide fresh water to the lake and the city avail its air purification supplies from this royal forest reserve.&nbsp;</p>', '<p>The Udawattekele Sanctuary, also known as Royal Park Palace is located at the hilly terrains of the Temple of Tooth Relic. The sanctuary scatters around 257 acres and is deemed as the most important Bio Reserve of the country.&nbsp;</p>', 'Active'),
(74, 34, 'National Museum of Colombo', '<p>The National Museum of Colombo, also called the Sri Lanka National Museum, is the official museum of Sri Lanka and takes you on a journey over the thousands of years of Sri Lankan culture.&nbsp;Give yourself a few hours to fully explore the collections. The museum is housed in a grand Victorian colonial building in central Colombo near Viharamahadevi Park.</p>', '<p>It\'s one of those museums that has multiple types of media, from artwork to artifacts, as well as clothing, jewelry, coins, arms, and craftwork. The displays show both the cultural and natural heritage of the country, presented chronologically, starting with pre-history and leading to the present day.</p>', 'Active'),
(75, 34, 'National Railway Museum', '<p>Train buffs and trainspotters will want to visit this open-air museum in Central Colombo, near the city\'s main Maradana Railway Station. While there is a larger railway museum in Kadugannawa, near Kandy, the one in Colombo has a respectable collection of carriages, rolling stock, and locomotives, including many steam engines.</p>', '<p>Train buffs and trainspotters will want to visit this open-air museum in Central Colombo, near the city\'s main Maradana Railway Station. While there is a larger railway museum in Kadugannawa, near Kandy, the one in Colombo has a respectable collection of carriages, rolling stock, and locomotives, including many steam engines.</p>', 'Active'),
(76, 35, 'Knuckles Mountain Range ', '<p>The name of this mountain range comes from its resemblance to human knuckles. The mountain range consists of 34 mountains in total which range from 900 to 2000 meters and is one of the best places to hike and explore the hidden biodiversity of Sri Lanka.&nbsp;</p>', '<p>For the same reason, the mountain ranges are also designated as UNESCO World Heritage Sites. You can explore many hidden trails, waterfalls and rare varieties of plants here. So if you&rsquo;re a hiking&nbsp; enthusiast, this is one of the best places to visit in Kandy for you.</p>', 'Active'),
(77, 40, 'Brazen Palace', '<p>The Brazen Palace or Lovamahapaya is a 2000-year-old palace constructed by King Dutugemunu in 2nd century B.C and had 1600 stone columns that supported nine stories reaching 150 feet and sides of 400 feet length with 1000 rooms. It is also known as the Brazen Place because of the bronze tiles that were used on its roof.</p>', '<p>The Brazen Palace or Lovamahapaya is a 2000-year-old palace constructed by King Dutugemunu in 2nd century B.C and had 1600 stone columns that supported nine stories reaching 150 feet and sides of 400 feet length with 1000 rooms. It is also known as the Brazen Place because of the bronze tiles that were used on its roof.</p>', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `giftcoupon`
--
ALTER TABLE `giftcoupon`
  ADD PRIMARY KEY (`giftcouponid`),
  ADD UNIQUE KEY `couponcode` (`couponcode`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  ADD PRIMARY KEY (`hotel_facilityid`);

--
-- Indexes for table `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD PRIMARY KEY (`hotel_imageid`);

--
-- Indexes for table `mail_setting`
--
ALTER TABLE `mail_setting`
  ADD PRIMARY KEY (`settingid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_typeid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `tourism_location`
--
ALTER TABLE `tourism_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tourism_place`
--
ALTER TABLE `tourism_place`
  ADD PRIMARY KEY (`tourism_placeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `giftcoupon`
--
ALTER TABLE `giftcoupon`
  MODIFY `giftcouponid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hotel_facility`
--
ALTER TABLE `hotel_facility`
  MODIFY `hotel_facilityid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hotel_image`
--
ALTER TABLE `hotel_image`
  MODIFY `hotel_imageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mail_setting`
--
ALTER TABLE `mail_setting`
  MODIFY `settingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_typeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tourism_location`
--
ALTER TABLE `tourism_location`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tourism_place`
--
ALTER TABLE `tourism_place`
  MODIFY `tourism_placeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
