-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 03:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Accra'),
('Kumasi'),
('Takoradi');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `image_url` text NOT NULL,
  `title` varchar(80) NOT NULL,
  `type` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `price` int(8) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `image_url`, `title`, `type`, `city`, `price`, `address`, `description`) VALUES
(001, 'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/293484358.jpg?k=a56a6995e109eae4d813427aede181092b03ee6e248bdde0e0abe3682bba8418&o=WA0003.jpg', '1053B Whangaparaoa Road', 'House', 'Accra', 5495000, '1053B Whangaparaoa Road, Accra', 'Masterfully positioned and thoughtfully designed to capture the stunning views, this dramatic, brand new family home has been tailor made for the discerning.'),
(002, 'https://i.ytimg.com/vi/AUwG3BDgD7E/maxresdefault.jpg', '18 Boocock Cres', 'Section', 'Accra', 1500000, '18 Boocock Cres', 'This flat section is 788 m2 more or less is the most elevated of the Grant Terraces development with a north facing backyard.'),
(003, 'https://www.pri.co.ke/Home/wp-content/uploads/2021/10/DSC_0550_25.jpg', '1049 River Road', 'House', 'Kumasi', 2250000, '1049 River Road, Kumasi', 'It is our pleasure to present this quality home at its exclusive address. From the moment you walk in the door of 1049 River Road you know you are about to view something extraordinary and you will want to own and experience this home for a lifetime.'),
(004, 'https://images.ghanapropertycentre.com/properties/images/182/05f04550ab99cd-3-bedroom-house-for-rent-community-25-tema-metropolitan-greater-accra.jpg', 'Lot 2 Borman Road', 'Section', 'Kumasi', 1000000, 'Lot 2 Borman Road', 'Large Greenfield site in the heart of the booming north-east Kumasi suburbs. Zoned for the new Rototuna Junior and Senior High Schools, and in proximity to the expressway and planned new mega town centre in Rototuna'),
(005, 'https://adomcityestate.com/wp/wp-content/uploads/2020/04/2.-1-scaled.jpg', '18 Royal Ascot Drive', 'House', 'Takoradi', 4790000, '18 Royal Ascot Drive, Takoradi', 'Welcome to 26 Pillans Road, the pinnacle of luxury residential living, positioned in the beautiful suburb of Otumoetai and the growing city of Takoradi.'),
(006, 'https://lakesideestate.com/wp-content/uploads/2022/02/5-1.jpg', '1 Papamoa Beach Road', 'Section', 'Takoradi', 775000, '1 Papamoa Beach Road, Takoradi', 'A large corner site of 574m² with a 16m wide frontage facing the coastal reserve and 38m long offering loads of room for off-street parking'),
(007, 'https://images.ghanapropertycentre.com/properties/images/18320/0635785a2e6449-3bedroom-house-at-spintex-greda-estate-for-sale-spintex-greater-accra.jpg', '3 bedroom house  ', 'House', 'Kumasi', 5000, 'Boundary Road Shiashie  East Legon, Greater Accra, Ghana  ', ' BEDROOM HOUSE FOR SALE\r\nLOCATION IS SPINTEX GREADA ESTATE.\r\nLocated in a gated community\r\n- 3 bedrooms\r\n-3.5 washrooms ( Guest washroom included)\r\n- Modern kitchen\r\n- En suite washrooms for each bedroom\r\n-  Spacious rooms\r\n\r\nContent from Ghana Property Centre\r\nRead more at: https://ghanapropertycentre.com/for-sale/houses/greater-accra/spintex/18320-3bedroom-house-at-spintex-greda-estate'),
(008, 'https://images.ghanapropertycentre.com/properties/images/17681/0633b45791db2f-awesome-5bedroom-detached-duplexes-for-sale-adenta-municipal-greater-accra.jpg', '6 bedroom house  ', 'House', 'Kumasi', 80000, 'Boundary Road Shiashie  East Legon, Greater Accra, Ghana  ', ' BEDROOM HOUSE FOR SALE\r\nLOCATION IS SPINTEX GREADA ESTATE.\r\nLocated in a gated community\r\n- 3 bedrooms\r\n-3.5 washrooms ( Guest washroom included)\r\n- Modern kitchen\r\n- En suite washrooms for each bedroom\r\n-  Spacious rooms\r\n\r\nContent from Ghana Property Centre\r\nRead more at: https://ghanapropertycentre.com/for-sale/houses/greater-accra/spintex/18320-3bedroom-house-at-spintex-greda-estate'),
(009, 'https://images.ghanapropertycentre.com/properties/images/17915/063445836d031d-spacious-7-bedroom-house-for-sale-achimota-greater-accra.jpeg', '10 bedroom house  ', 'House', 'Kumasi', 72000, 'Boundary Road Shiashie  East Legon, Greater Accra, Ghana  ', ' BEDROOM HOUSE FOR SALE\r\nLOCATION IS SPINTEX GREADA ESTATE.\r\nLocated in a gated community\r\n- 3 bedrooms\r\n-3.5 washrooms ( Guest washroom included)\r\n- Modern kitchen\r\n- En suite washrooms for each bedroom\r\n-  Spacious rooms\r\n\r\nContent from Ghana Property Centre\r\nRead more at: https://ghanapropertycentre.com/for-sale/houses/greater-accra/spintex/18320-3bedroom-house-at-spintex-greda-estate'),
(010, 'https://blog.meqasa.com/wp-content/uploads/2020/03/paradise.jpg', '5 Bedroom Luxury Home', 'House', 'Accra', 1520000, ' East Legon Hills', 'The Paradise Estates is a plush estate located within the East Legon Hills. This estates in Ghana has been well planned out to serve its residents on an aesthetic and practical basis. You will enjoy coming home to this serene estate from Paradise Estates in East Legon. There are many houses for sale in Ghana, East Legon but Paradise estates is one of the best you can get.');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`type`) VALUES
('House'),
('Section');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email_address` varchar(80) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email_address`, `first_name`, `password`, `role`) VALUES
('bemwus@gmail.com', 'Paul', '$2y$12$gjNHlJGGmBB0H4cebzI4d.M4W5wM/U4o4.Rmi0Z6sABCfRPh58qym', 'Agent'),
('estherobeng201456@gmail.com', 'FREDERICK', '$2y$12$yHOTsTsDbDP7UWgNn3x7rO4CAQRDPk2PA44ABfV3mG.gLUGJOihZm', 'Admin'),
('godfredoseibonsu16@gmail.com', 'Godfred', '$2y$12$WfuQvMCJMA/ttAYkikFl0uykHQM0yuK0AdaD2MtlMfcJmPqn0qc46', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `user_dreamproperty`
--

CREATE TABLE `user_dreamproperty` (
  `email_address` varchar(80) NOT NULL,
  `property_id` int(3) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_dreamproperty`
--

INSERT INTO `user_dreamproperty` (`email_address`, `property_id`) VALUES
('godfredoseibonsu16@gmail.com', 002),
('godfredoseibonsu16@gmail.com', 005);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role`) VALUES
('Admin'),
('Agent'),
('User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `type` (`type`),
  ADD KEY `city` (`city`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email_address`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `user_dreamproperty`
--
ALTER TABLE `user_dreamproperty`
  ADD PRIMARY KEY (`email_address`,`property_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`type`) REFERENCES `property_type` (`type`),
  ADD CONSTRAINT `properties_ibfk_2` FOREIGN KEY (`city`) REFERENCES `cities` (`city`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `user_roles` (`role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
