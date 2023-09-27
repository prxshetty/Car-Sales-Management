-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 06:39 PM
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
-- Database: `used_car_showroom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Toyota', 'uploads/brands/brand-1.png?v=1638242665', 1, '2021-11-30 11:20:30', '2021-11-30 11:24:25'),
(2, 'Mahindra', 'uploads/brands/brand-2.png?v=1638242650', 1, '2021-11-30 11:21:34', '2022-05-12 09:23:06'),
(3, 'Audi', 'uploads/brands/brand-3.png?v=1638242698', 1, '2021-11-30 11:24:58', '2021-11-30 11:24:58'),
(6, 'Ford', 'uploads/brands/brand-6.png?v=1638243511', 1, '2021-11-30 11:38:31', '2021-11-30 11:38:31'),
(7, 'Suzuki', 'uploads/brands/brand-7.png?v=1638243765', 1, '2021-11-30 11:42:45', '2021-11-30 11:42:45'),
(8, 'Honda', 'uploads/brands/brand-8.png?v=1638243787', 1, '2021-11-30 11:43:07', '2021-11-30 11:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `car_list`
--

CREATE TABLE `car_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `product_title` text NOT NULL,
  `description` text NOT NULL,
  `model` varchar(250) NOT NULL,
  `mileage` float NOT NULL DEFAULT 0,
  `year` year(4) NOT NULL,
  `fuel` varchar(250) NOT NULL,
  `engine` varchar(250) NOT NULL,
  `color` varchar(250) NOT NULL,
  `condition` text NOT NULL,
  `features` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_list`
--

INSERT INTO `car_list` (`id`, `brand_id`, `category_id`, `price`, `product_title`, `description`, `model`, `mileage`, `year`, `fuel`, `engine`, `color`, `condition`, `features`, `status`, `date_created`, `date_updated`) VALUES
(2, 6, 5, 1400000, '2020 F-150 Raptor', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;he awesome car loves the sporty look and the aggressive engine. Surely, it is a large powerhouse. Being a little short on mileage still is one of my favourite cars I ever bought&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'F-150 Raptor', 15000, 2020, 'Gasoline', 'twin-turbocharged high-output 3.5L EcoBoost V6 engine', 'Black', '&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Make: ford&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Year: 2008&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Model: ford raptor&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Variant: 2.3 VTi L AT&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Fuel: Gasoline&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Number of Owners: 3&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Mileage: 90000&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Transmission: Manual&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Clutch Condition: Working fine&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Air Conditioning: Working Fine&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;(No Issues)&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Last Servicing: Within 1 year&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Tyres Replaced: Within 1 year&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Smoke Color: Colorless&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;(Smoke Fine)&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Oil Leakage: No&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Engine Oil Quality: Good&lt;/div&gt;', '&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;&lt;ul style=&quot;color: rgb(33, 37, 41); font-family: &amp;quot;Source Sans Pro&amp;quot;, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; padding-left: 17px;&quot;&gt;&lt;li&gt;RS Design (Black Door Mirrors, Antenna and Spoiler)&lt;/li&gt;&lt;li&gt;9&quot; Audio with Navigation and Wireless Apple Carplay&lt;/li&gt;&lt;li&gt;10.2&quot; TFT Meter&lt;/li&gt;&lt;li&gt;12-Speaker Bose Sound System&lt;/li&gt;&lt;li&gt;Wireless Charger&lt;/li&gt;&lt;li&gt;Black Leather and Suede Seats&lt;/li&gt;&lt;li&gt;Lanewatch Camera&lt;/li&gt;&lt;li&gt;18&quot; Alloy Wheels&lt;/li&gt;&lt;li&gt;8-Way Power Seat&lt;/li&gt;&lt;li&gt;Dual-Zone Auto AC&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', 0, '2021-11-30 14:10:42', '2022-06-06 14:01:58'),
(3, 8, 1, 1480000, 'Honda Accord', '&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;he awesome car loves the sporty look and the aggressive engine. Surely, it is a large powerhouse. Being a little short on mileage still is one of my favourite cars I ever bought&lt;/span&gt;&lt;br&gt;', 'RS Turbo CVT', 13000, 2020, 'Petrol', '2.3 VTi L AT', 'Red', '&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Make: Honda&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Year: 2008&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Model: Accord&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Variant: 2.3 VTi L AT&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Fuel: Petrol&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Number of Owners: 3&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Mileage: 90000&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Transmission: Manual&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Clutch Condition: Working fine&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Air Conditioning: Working Fine&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;(No Issues)&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Last Servicing: Within 1 year&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Tyres Replaced: Within 1 year&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Smoke Color: Colorless&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;(Smoke Fine)&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Oil Leakage: No&lt;/div&gt;&lt;div style=&quot;color: rgb(64, 99, 103); font-family: Roboto, Arial, Helvetica, sans-serif;&quot;&gt;Engine Oil Quality: Good&lt;/div&gt;', '&lt;ul style=&quot;padding-left: 17px;&quot;&gt;&lt;li style=&quot;&quot;&gt;RS Design (Black Door Mirrors, Antenna and Spoiler)&lt;/li&gt;&lt;li style=&quot;&quot;&gt;9&quot; Audio with Navigation and Wireless Apple Carplay&lt;/li&gt;&lt;li style=&quot;&quot;&gt;10.2&quot; TFT Meter&lt;/li&gt;&lt;li style=&quot;&quot;&gt;12-Speaker Bose Sound System&lt;/li&gt;&lt;li style=&quot;&quot;&gt;Wireless Charger&lt;/li&gt;&lt;li style=&quot;&quot;&gt;Black Leather and Suede Seats&lt;/li&gt;&lt;li style=&quot;&quot;&gt;Lanewatch Camera&lt;/li&gt;&lt;li style=&quot;&quot;&gt;18&quot; Alloy Wheels&lt;/li&gt;&lt;li style=&quot;&quot;&gt;8-Way Power Seat&lt;/li&gt;&lt;li style=&quot;&quot;&gt;Dual-Zone Auto AC&lt;/li&gt;&lt;/ul&gt;', 0, '2021-11-30 17:07:39', '2022-05-12 09:16:35'),
(4, 3, 3, 10800000, 'Audi Q8', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;It is a nice car with&amp;nbsp;great&amp;nbsp;performance.&amp;nbsp;It\'s&amp;nbsp;a nice interior and&amp;nbsp;is very impressive.&amp;nbsp;Overall&amp;nbsp;it\'s amazing.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '55 TFSI', 9, 2018, 'Diesel', '3.0 L V6', 'White', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;Always rocks Best car I have ever rode. Best for Indian roads. Audi is always King of roads. Best SUV. Also for off-road And long drive&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial;&quot;&gt;The Audi Q8 has 1 Petrol Engine on offer. The Petrol engine is 2995 cc . It is available with Automatic transmission.Depending upon the variant and fuel type the Q8 has a mileage of 9.8 kmpl . The Q8 is a 5 seater&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.cardekho.com/new-4-cylinder+cars&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(33, 118, 174); cursor: pointer; font-family: roboto, sans-serif, Arial;&quot;&gt;4 cylinder car&lt;/a&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial;&quot;&gt;&amp;nbsp;and has length of 4986mm, width of 2190mm and a wheelbase of 2995mm.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '2022-05-12 09:12:51', NULL),
(6, 2, 4, 1200000, 'XUV 500', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;It is a nice car with&amp;nbsp;great&amp;nbsp;performance.&amp;nbsp;It\'s&amp;nbsp;a nice interior and&amp;nbsp;is very impressive.&amp;nbsp;Overall&amp;nbsp;it\'s amazing.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '55 TFSI', 9, 2018, 'Diesel', '3.0 L V6', 'Black', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial; font-size: 14px;&quot;&gt;Always rocks Best car I have ever rode. Best for Indian roads. Audi is always King of roads. Best SUV. Also for off-road And long drive&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial;&quot;&gt;The XUV500 has 1 Petrol Engine on offer. The Petrol engine is 2995 cc . It is available with Automatic transmission.Depending upon the variant and fuel type the Q8 has a mileage of 9.8 kmpl . The Q8 is a 5 seater&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://www.cardekho.com/new-4-cylinder+cars&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(33, 118, 174); cursor: pointer; font-family: roboto, sans-serif, Arial;&quot;&gt;4 cylinder car&lt;/a&gt;&lt;span style=&quot;color: rgba(36, 39, 44, 0.7); font-family: roboto, sans-serif, Arial;&quot;&gt;&amp;nbsp;and has length of 4986mm, width of 2190mm and a wheelbase of 2995mm.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '2022-05-12 09:12:51', '2022-05-12 09:26:24'),
(7, 7, 1, 8000000, 'Suzuki Swift', '&lt;span style=&quot;color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;The&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;Dzire&lt;/span&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 18px;&quot;&gt;&amp;nbsp;is a comfortable and spacious car with ample rear space and smooth driving manners for traveling long distances conveniently. However, this type of car is not recommended for off-roading purposes. The Dzire comes with a 1.2 litre four cylinder engine that dishes out 89 BHP and 113 Nm.&lt;/span&gt;', 'Dzire', 24, 2020, 'Diesel', '3000 CC', 'blue', '&lt;p&gt;new&lt;/p&gt;', '&lt;ul class=&quot;b_vList b_divsec b_bullet&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: none; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 22px; color: rgb(17, 17, 17); font-family: Roboto, sans-serif; margin-bottom: -4px !important;&quot;&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;Child Safety Lock&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;Keyless Entry&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;Airbags&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;ABS&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;Rear Parking Sensors&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;USB Support&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px 0px 12px;&quot;&gt;Bluetooth Support&lt;/li&gt;&lt;li data-priority=&quot;&quot; style=&quot;border: 0px; border-collapse: collapse; border-spacing: 0px; list-style: disc; margin: 0px 0px 0px 20px; padding: 0px;&quot;&gt;Steering Mounted Audio&lt;/li&gt;&lt;/ul&gt;', 0, '2022-06-06 13:43:11', '2022-06-06 21:56:09'),
(8, 1, 4, 2000000, 'Toyota Inova', '&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Roboto, Helvetica, sans-serif; font-size: 18px;&quot;&gt;The new Innova Crysta is not only powerful and comfortable, it&rsquo;s safe too. your family with 7 SRS Airbags during any eventuality. Anti-lock braking, electronic brake force distribution, brake assist and the like ensure safety and stability on every journey.&lt;/span&gt;', 'Crysta', 24, 2021, 'Diesel', '50000cc', 'white', '&lt;p&gt;new&lt;/p&gt;', '&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Roboto, sans-serif;&quot;&gt;The Toyota Innova comes with a bunch of safety controls as well. The car comes with multi information display, tachometer, optitron combimeter, 6 inch touch screen panel for audio, Bluetooth and DVD compatibility, steering mounted controls, reverse camera, etc.&lt;/span&gt;', 0, '2022-06-06 13:56:43', '2022-06-06 21:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'SEDAN', 'A sedan has four doors and a traditional trunk. Like vehicles in many categories, they\'re available in a range of sizes from small', 1, '2021-11-30 10:36:50', NULL),
(3, 'SPORTS CAR', 'These are the sportiest, hottest, coolest-looking coupes and convertibles—low to the ground, sleek, and often expensive. They generally are two-seaters, but sometimes have small rear seats as well.', 1, '2021-11-30 10:37:46', NULL),
(4, 'SUV', 'A sport utility vehicle or SUV is a car classification that combines elements of road-going passenger cars with features from off-road vehicles.', 1, '2021-11-30 10:38:07', '2022-05-12 09:01:27'),
(5, 'PICKUP TRUCK', 'A pickup truck has a passenger cab and an open cargo bed in the rear. Virtually all pickups offer some form of all-wheel drive or part-time four-wheel drive—the latter for off-road use only.', 1, '2021-11-30 10:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` int(30) NOT NULL,
  `car_id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remarks` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_list`
--

INSERT INTO `inquiry_list` (`id`, `car_id`, `fullname`, `email`, `contact`, `message`, `status`, `remarks`, `date_created`, `date_updated`) VALUES
(1, 2, 'Ritesh Deshmukh', 'iamritesh@gmail.com', '09123456789', 'Awesome performance and good condition vehicle and very safe car in XUV series, ac is very smooth. Overall it\'s an amazing car.', 1, NULL, '2021-11-30 16:11:54', '2022-05-12 09:07:53'),
(2, 4, 'PRANJAY PRAVIN BEDSE', 'pranjay.bedse12345@gmail.com', '9588494952', 'nj', 0, NULL, '2022-06-06 13:44:30', NULL),
(3, 4, 'PRANJAY PRAVIN BEDSE', 'pranjay.bedse12345@gmail.com', '123456798989', ',mk', 0, NULL, '2022-06-06 13:48:48', NULL),
(4, 4, 'PRANJAY PRAVIN BEDSE', 'pranjay.bedse12345@gmail.com', '123456798989', 'pranjay nub af', 0, NULL, '2022-06-06 13:50:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Used Car Sales Management System'),
(6, 'short_name', 'Car Sales Management System'),
(11, 'logo', 'uploads/logo-1638256377.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1638256498.png'),
(15, 'content', 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1635556826', NULL, 1, 1, '2021-01-20 14:02:37', '2021-11-27 13:39:11'),
(2, 'Pranjay', NULL, 'Bedse', 'pbedse', 'ce0dd2a5d86106555b543b9622e7bd1c', 'uploads/avatar-2.png?v=1638264018', NULL, 2, 1, '2021-11-30 17:20:18', '2022-05-12 09:02:41'),
(4, 'Utkarsh', NULL, 'Boraste', 'uboraste', 'ef2d56c43143e7a128b5534bd54c0350', NULL, NULL, 2, 1, '2022-05-12 09:05:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_list`
--
ALTER TABLE `car_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_list`
--
ALTER TABLE `car_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
