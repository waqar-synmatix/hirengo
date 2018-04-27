-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2018 at 03:01 AM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hirengoc_hirengo`
--

-- --------------------------------------------------------

--
-- Table structure for table `hg_car_details`
--

CREATE TABLE `hg_car_details` (
  `id` int(11) NOT NULL,
  `number_plate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `seat_capicity` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `odometer` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `car_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_chat_history`
--

CREATE TABLE `hg_chat_history` (
  `id` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `chat_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_driver_groups`
--

CREATE TABLE `hg_driver_groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_group_members`
--

CREATE TABLE `hg_group_members` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `group_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_jobs`
--

CREATE TABLE `hg_jobs` (
  `job_id` int(11) NOT NULL,
  `customer_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pickup_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dropoff_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `car_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `job_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fixed_price` float NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `pickup_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_job_details`
--

CREATE TABLE `hg_job_details` (
  `id` int(11) NOT NULL,
  `flight_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_passenger` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_bags` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `child_seats` tinyint(1) NOT NULL,
  `payment_method` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `car_model` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `benefits_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `instructions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_job_history`
--

CREATE TABLE `hg_job_history` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `job_id_fk` int(11) NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `job_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_job_requests`
--

CREATE TABLE `hg_job_requests` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `current_latitude` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `current_longnitude` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `job_id_fk` int(11) NOT NULL,
  `user_id_fk` int(11) NOT NULL,
  `bid_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_payments`
--

CREATE TABLE `hg_payments` (
  `payment_id` int(11) NOT NULL,
  `balance` float NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_payment_history`
--

CREATE TABLE `hg_payment_history` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `refrence_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `date` datetime NOT NULL,
  `payment_id_fk` int(11) NOT NULL,
  `refrence_user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_registration_licence`
--

CREATE TABLE `hg_registration_licence` (
  `id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `picture_front` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture_back` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issue_state` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `licence_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_users`
--

CREATE TABLE `hg_users` (
  `user_id` int(11) NOT NULL,
  `user_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'driver',
  `user_status` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending approval',
  `email_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hg_users`
--

INSERT INTO `hg_users` (`user_id`, `user_type`, `user_status`, `email_id`, `phone`, `password`) VALUES
(2, 'driver', 'pending approval', '', '', ''),
(3, 'driver', 'active', '', '', ''),
(4, 'driver', 'pending approval', '@gmail', '566787', '4247'),
(5, 'driver', 'pending approval', 'sd', 'ss', 'aa'),
(6, 'driver', 'pending approval', 'asif@', '123', '123'),
(7, 'driver', 'pending approval', 'mahimaho', '0322', 'bssoft'),
(8, 'driver', 'pending approval', 'mini', '1234', ''),
(9, 'driver', 'pending approval', 'waqar', '12345', ''),
(10, 'driver', 'pending approval', 'waqarxx', '1234522', 'tech'),
(11, 'driver', 'pending approval', 'waqarxxqwq', '1234522ww', 'd9f9133fb120cd6096870bc2b496805b'),
(12, 'driver', 'pending approval', 'waqarxxqwqsdfew', '123452sdf2wwqwe', '8101225764bbfd1e23496cc3765a2be921ed4679924f03c489eed2bac2ddd31b'),
(13, 'driver', 'pending approval', 'khan', '0423', 'Z56vARZUNN1yfxJ6zdt08FQA1jfRIk1CoagheFx0AmI='),
(14, 'driver', 'pending approval', 'mahnor', '042345', 'W5r28XzISmg+EH3AvPKifAOAm20WqfUJQHRdEbQqeiw=');

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_accreditation`
--

CREATE TABLE `hg_user_accreditation` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `picture_front` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture_back` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_bank_account`
--

CREATE TABLE `hg_user_bank_account` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `account_hloder_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bsb` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_chat`
--

CREATE TABLE `hg_user_chat` (
  `chat_id` int(11) NOT NULL,
  `receiver_user_id_fk` int(11) NOT NULL,
  `sender_user_id_fk` int(11) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_details`
--

CREATE TABLE `hg_user_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `abn_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `trading_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hg_user_details`
--

INSERT INTO `hg_user_details` (`id`, `full_name`, `address`, `profile_picture`, `points`, `abn_number`, `trading_name`, `user_id_fk`) VALUES
(1, 'asif', 'new garden town', '', 8, '7615328765712', 'devsol', 2),
(2, 'mahi', 'tajbagh', '', 8, '768768976', 'solution', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_location`
--

CREATE TABLE `hg_user_location` (
  `id` int(11) NOT NULL,
  `current_lattitude` int(11) NOT NULL,
  `current_longnitude` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hg_user_rating`
--

CREATE TABLE `hg_user_rating` (
  `rating_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `ref_user_id_fk` int(11) NOT NULL,
  `user_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hg_car_details`
--
ALTER TABLE `hg_car_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_chat_history`
--
ALTER TABLE `hg_chat_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `chat_id_fk` (`chat_id_fk`);

--
-- Indexes for table `hg_driver_groups`
--
ALTER TABLE `hg_driver_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `hg_group_members`
--
ALTER TABLE `hg_group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `group_id_fk` (`group_id_fk`);

--
-- Indexes for table `hg_jobs`
--
ALTER TABLE `hg_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_job_details`
--
ALTER TABLE `hg_job_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id_fk` (`job_id_fk`);

--
-- Indexes for table `hg_job_history`
--
ALTER TABLE `hg_job_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `job_id_fk` (`job_id_fk`);

--
-- Indexes for table `hg_job_requests`
--
ALTER TABLE `hg_job_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `job_id_fk` (`job_id_fk`);

--
-- Indexes for table `hg_payments`
--
ALTER TABLE `hg_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_payment_history`
--
ALTER TABLE `hg_payment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refrence_user_id_fk` (`refrence_user_id_fk`),
  ADD KEY `payment_id_fk` (`payment_id_fk`);

--
-- Indexes for table `hg_registration_licence`
--
ALTER TABLE `hg_registration_licence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_users`
--
ALTER TABLE `hg_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `hg_user_accreditation`
--
ALTER TABLE `hg_user_accreditation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_user_bank_account`
--
ALTER TABLE `hg_user_bank_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_user_chat`
--
ALTER TABLE `hg_user_chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `receiver_user_id_fk` (`receiver_user_id_fk`),
  ADD KEY `sender_user_id_fk` (`sender_user_id_fk`);

--
-- Indexes for table `hg_user_details`
--
ALTER TABLE `hg_user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_user_location`
--
ALTER TABLE `hg_user_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `hg_user_rating`
--
ALTER TABLE `hg_user_rating`
  ADD KEY `ref_user_id_fk` (`ref_user_id_fk`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hg_car_details`
--
ALTER TABLE `hg_car_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_chat_history`
--
ALTER TABLE `hg_chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_driver_groups`
--
ALTER TABLE `hg_driver_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_group_members`
--
ALTER TABLE `hg_group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_jobs`
--
ALTER TABLE `hg_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_job_details`
--
ALTER TABLE `hg_job_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_job_history`
--
ALTER TABLE `hg_job_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_job_requests`
--
ALTER TABLE `hg_job_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_payments`
--
ALTER TABLE `hg_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_payment_history`
--
ALTER TABLE `hg_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_registration_licence`
--
ALTER TABLE `hg_registration_licence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_users`
--
ALTER TABLE `hg_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hg_user_accreditation`
--
ALTER TABLE `hg_user_accreditation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_user_bank_account`
--
ALTER TABLE `hg_user_bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_user_chat`
--
ALTER TABLE `hg_user_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hg_user_details`
--
ALTER TABLE `hg_user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hg_user_location`
--
ALTER TABLE `hg_user_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hg_car_details`
--
ALTER TABLE `hg_car_details`
  ADD CONSTRAINT `hg_car_details_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_chat_history`
--
ALTER TABLE `hg_chat_history`
  ADD CONSTRAINT `hg_chat_history_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_chat_history_ibfk_2` FOREIGN KEY (`chat_id_fk`) REFERENCES `hg_user_chat` (`chat_id`);

--
-- Constraints for table `hg_group_members`
--
ALTER TABLE `hg_group_members`
  ADD CONSTRAINT `hg_group_members_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_group_members_ibfk_2` FOREIGN KEY (`group_id_fk`) REFERENCES `hg_driver_groups` (`group_id`);

--
-- Constraints for table `hg_jobs`
--
ALTER TABLE `hg_jobs`
  ADD CONSTRAINT `hg_jobs_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_job_details`
--
ALTER TABLE `hg_job_details`
  ADD CONSTRAINT `hg_job_details_ibfk_1` FOREIGN KEY (`job_id_fk`) REFERENCES `hg_jobs` (`job_id`);

--
-- Constraints for table `hg_job_history`
--
ALTER TABLE `hg_job_history`
  ADD CONSTRAINT `hg_job_history_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_job_history_ibfk_2` FOREIGN KEY (`job_id_fk`) REFERENCES `hg_jobs` (`job_id`);

--
-- Constraints for table `hg_job_requests`
--
ALTER TABLE `hg_job_requests`
  ADD CONSTRAINT `hg_job_requests_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_job_requests_ibfk_2` FOREIGN KEY (`job_id_fk`) REFERENCES `hg_jobs` (`job_id`);

--
-- Constraints for table `hg_payments`
--
ALTER TABLE `hg_payments`
  ADD CONSTRAINT `hg_payments_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_payment_history`
--
ALTER TABLE `hg_payment_history`
  ADD CONSTRAINT `hg_payment_history_ibfk_1` FOREIGN KEY (`refrence_user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_payment_history_ibfk_2` FOREIGN KEY (`payment_id_fk`) REFERENCES `hg_payments` (`payment_id`);

--
-- Constraints for table `hg_registration_licence`
--
ALTER TABLE `hg_registration_licence`
  ADD CONSTRAINT `hg_registration_licence_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_accreditation`
--
ALTER TABLE `hg_user_accreditation`
  ADD CONSTRAINT `hg_user_accreditation_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_bank_account`
--
ALTER TABLE `hg_user_bank_account`
  ADD CONSTRAINT `hg_user_bank_account_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_chat`
--
ALTER TABLE `hg_user_chat`
  ADD CONSTRAINT `hg_user_chat_ibfk_1` FOREIGN KEY (`receiver_user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_user_chat_ibfk_2` FOREIGN KEY (`sender_user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_details`
--
ALTER TABLE `hg_user_details`
  ADD CONSTRAINT `hg_user_details_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_location`
--
ALTER TABLE `hg_user_location`
  ADD CONSTRAINT `hg_user_location_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);

--
-- Constraints for table `hg_user_rating`
--
ALTER TABLE `hg_user_rating`
  ADD CONSTRAINT `hg_user_rating_ibfk_1` FOREIGN KEY (`ref_user_id_fk`) REFERENCES `hg_users` (`user_id`),
  ADD CONSTRAINT `hg_user_rating_ibfk_2` FOREIGN KEY (`user_id_fk`) REFERENCES `hg_users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
