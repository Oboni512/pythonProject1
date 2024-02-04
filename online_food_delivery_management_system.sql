-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 04:19 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online food delivery management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(10) NOT NULL,
  `Admin_Name` varchar(50) NOT NULL,
  `Admin_Contact_Num` varchar(11) NOT NULL,
  `Admin_Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Admin_Name`, `Admin_Contact_Num`, `Admin_Email`) VALUES
('1000', 'Charles Xavier ', '01555555555', 'professorx@gmail.com'),
('1001', 'Maisha', '01444444444', 'maisha@gmail.com'),
('1002', 'Raya', '01333333333', 'raya@gmail.com'),
('1004', 'Dipto', '01111111111', 'dipto@gmail.com'),
('1014', 'Mouree', '01222222222', 'mouree@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_ID` varchar(20) NOT NULL,
  `Cus_Name` varchar(50) NOT NULL,
  `Cus_Address` varchar(200) NOT NULL,
  `Cus_Contact_Number` varchar(20) NOT NULL,
  `Order_ID` varchar(20) NOT NULL,
  `Admin_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cus_ID`, `Cus_Name`, `Cus_Address`, `Cus_Contact_Number`, `Order_ID`, `Admin_ID`) VALUES
('200', 'Jennie', 'Banani', '01253468971', '400', '1000'),
('201', 'Razia', 'Mirpur', '01235878914', '401', '1004'),
('202', 'Oythi', 'Dhanmondi', '01236547891', '402', '1014'),
('203', 'Nakib', 'Mirpur', '01523647899', '403', '1014'),
('204', 'Ashika', 'Banani', '01236547891', '404', '1002'),
('205', 'Rabeya', 'Narayanganj', '0235146972', '405', '1004'),
('206', 'Bithi', 'Narayanganj', '02365418971', '406', '1000'),
('207', 'Shuvo', 'Farmgate', '01892457781', '407', '1001'),
('208', 'Adi', 'Badda', '01236548971', '408', '1002'),
('209', 'Nobonita', 'Badda', '01236584972', '409', '1014');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Food_Serial_number` int(5) NOT NULL,
  `Food_category` varchar(20) NOT NULL,
  `Food_name` varchar(150) NOT NULL,
  `Food_Price` float(8,2) NOT NULL,
  `Food_Quantity` varchar(4) NOT NULL,
  `Res_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Food_Serial_number`, `Food_category`, `Food_name`, `Food_Price`, `Food_Quantity`, `Res_ID`) VALUES
(1, 'Set Menu', 'Mild spicy rice, Red chili chicken, Chicken shish kebab, Sausage vegetable curry, Garden salad', 165.00, '1:1', '601'),
(2, 'Set Menu', 'Mild spicy rice, Creamed chicken steak, Red chili chicken, Sausage vegetable curry, Garden salad', 245.00, '1:1', '601'),
(3, 'Set Menu', 'Mild spicy rice, Turkish steak, Chicken shish kebab, Red chicken, Sausage vegetable curry, garden salad', 295.00, '1:1', '601'),
(4, 'Burger', 'Juicy bomb', 175.00, '1:1', '601'),
(5, 'Burger', 'BBQ Burger', 185.00, '1:1', '601'),
(6, 'Pizza', 'Kebab cocktail', 635.00, '1:6', '601'),
(7, 'Pizza', 'BBQ Meat Machine', 605.00, '1:6', '601'),
(8, 'Pizza', 'Meat Masala', 605.00, '1:6', '601'),
(9, 'Pizza', 'Sausage carnival', 605.00, '1:6', '601'),
(10, 'Pizza ', 'Meaty Onion', 575.00, '1:6', '601'),
(11, 'Set Menu', 'Peri Peri chicken', 370.00, '1:1', '602'),
(12, 'Set Menu', 'BBQ chicken', 380.00, '1:1', '602'),
(13, 'Set Menu', 'Mexican Chicken', 390.00, '1:1', '602'),
(14, 'Set Menu', 'Teriyaki Chicken', 370.00, '1:1', '602'),
(15, 'Set Menu', 'Beef Sizzling', 410.00, '1:1', '602'),
(16, 'Pasta', 'Spicy Naga Pasta', 260.00, '1:1', '602'),
(17, 'Pasta', 'Ozz Spacial Sizzling Pasta', 350.00, '1:1', '602'),
(18, 'Chowmein/Noodles', 'Chicken Chowmein', 360.00, '1:3', '602'),
(19, 'Chowmein/Noodles', 'Mixed Chowmein', 410.00, '1:3', '602'),
(20, 'Chowmein/Noodles', 'American Chopsuey', 380.00, '1:3', '602'),
(21, 'Starter', 'Fried Wonthon 8pcs', 360.00, '1:4', '603'),
(22, 'Starter', 'Thai Spring Roll 8pcs', 280.00, '1:4', '603'),
(23, 'Starter', 'Golden Fried Prawn 6pcs', 395.00, '1:3', '603'),
(24, 'Starter', 'Thai Fried Chicken 8pcs', 480.00, '1:4', '603'),
(25, 'Soup', 'Thai Soup Thick', 180.00, '1:1', '603'),
(26, 'Soup', 'Thai sweet corn soup', 150.00, '1:1', '603'),
(27, 'Soup', 'Tom Yum Goong/Gai Soup', 180.00, '1:1', '603'),
(28, 'Soup', 'Seafood Soup', 190.00, '1:1', '603'),
(29, 'Salad', 'Chicken/Prawn Cashew nut Salad', 450.00, '1:4', '603'),
(30, 'Salad', 'Seafood Salad', 480.00, '1:4', '603'),
(31, 'Kacchi', 'Kacchi(Basmati)', 1949.00, '1:5', '604'),
(32, 'Kacchi', 'Kacchi(Basmati), Borhani, Jorda/Firni', 2399.00, '1:5', '604'),
(33, 'Kacchi', 'Kacchi(Basmati), Chicken Roast, Borhani', 2799.00, '1:5', '604'),
(34, 'Morag Polaw', 'Morag Polaw', 1340.00, '1:5', '604'),
(35, 'Murag Polaw', 'Plain Polaw, Chicken Roast, Borhani', 1150.00, '1:5', '604'),
(36, 'Burger', 'Beef/Chicken with Sausage', 250.00, '1:1', '605'),
(37, 'Burger', 'Double Decker Beef/Chicken', 300.00, '1:1', '605'),
(38, 'Burger', 'Beef/Chicken Cheese Blast', 320.00, '1:1', '605'),
(39, 'Shakes', 'Cold Coffee', 140.00, '1:1', '605'),
(40, 'Shakes', 'Oreo', 160.00, '1:1', '605'),
(41, 'Smoothies', 'Lychee Punch', 237.00, '1:1', '606'),
(42, 'Smoothies', 'Mango Mania', 237.00, '1:1', '606'),
(43, 'Smoothies', 'Green Lady', 240.00, '1:1', '606'),
(44, 'Smoothies', 'Minty', 220.00, '1:1', '606'),
(45, 'Smoothies', 'Chocolicious', 250.00, '1:1', '606'),
(46, 'Kabab', 'Beef Sheek Kabab', 100.00, '1:1', '607'),
(47, 'Kabab', 'Mutton Botti Kabab', 110.00, '1:1', '607'),
(48, 'Grill', 'Chicken grill Quarter ', 100.00, '1:1', '607'),
(49, 'Kabab', 'Chicken Kashmeri kabab', 100.00, '1:1', '607'),
(50, 'Kabab', 'Chicken Rashmi Kabab', 120.00, '1:1', '607'),
(51, 'Kacchi', 'Basmari kacchi, Borhani, Firni', 1590.00, '1:5', '608'),
(52, 'Kacchi', 'Basmari kacchi, Chicken Roast, Borhani, Jali Kabab', 2180.00, '1:5', '608'),
(53, 'Polaw', 'Plain Polaw, Beef Rezala, Borhani', 1550.00, '1:5', '608'),
(54, 'Drinks', 'Firni', 50.00, '1:1', '608'),
(55, 'Drinks', 'Water', 15.00, '1btl', '608'),
(56, 'Ruti', 'Nun', 20.00, '1pc', '609'),
(57, 'Ruti', 'Parota', 10.00, '1pc', '609'),
(58, 'Chicken', 'Spicy chicken Fry', 180.00, '1:1', '609'),
(59, 'Beef', 'Beef curry', 190.00, '1:1', '609'),
(60, 'Tea', 'Milk Tea', 20.00, '1cup', '609'),
(61, 'Soup', 'Thai Soup Thick', 430.00, '1:3', '610'),
(62, 'Rice', 'Mixed Fried Rice', 425.00, '1:3', '610'),
(63, 'Vegetable', 'Vegetable With Oyster sauce', 375.00, '1:3', '610'),
(64, 'Set Menu', 'Plane Naan, Chicken Tandoori or Chicken Do Piaza, Dal Butter Fly, Vegetable jjal Piaza, Salad, soft drinks', 330.00, '1:1', '610'),
(65, 'Set Menu', 'Chicken Handi Biriyani, Beef bhuna, Green Salad, Soft Drinks', 275.00, '1:1', '610');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Order_ID` varchar(5) NOT NULL,
  `Order_Quantity` int(5) NOT NULL,
  `Total_Amount` float(12,2) NOT NULL,
  `Order_Date` date NOT NULL,
  `Food'sName` varchar(50) NOT NULL,
  `Resturant_code` varchar(5) NOT NULL,
  `Customer_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Order_ID`, `Order_Quantity`, `Total_Amount`, `Order_Date`, `Food'sName`, `Resturant_code`, `Customer_code`) VALUES
('400', 5, 500.00, '2022-03-19', 'Chicken Kashmeri kabab', '607', '200'),
('401', 1, 605.00, '2022-04-01', 'Meat Masala', '601', '201'),
('402', 3, 330.00, '2022-03-11', 'Mutton Botti Kabab', '607', '202'),
('403', 10, 100.00, '2022-02-02', 'Parota', '609', '203'),
('404', 2, 320.00, '2022-04-07', 'Oreo', '605', '204'),
('405', 3, 1080.00, '2022-03-24', 'Fried Wonthon ', '603', '205'),
('406', 1, 430.00, '2022-03-19', 'Thai Soup Thick', '610', '206'),
('407', 1, 190.00, '2022-03-21', 'Seafood Soup', '603', '207'),
('408', 1, 375.00, '2022-04-06', 'Vegetable With Oyster sauce', '610', '208'),
('409', 1, 1459.00, '2022-03-29', 'Kacchi(Basmati)', '604', '209');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_ID` varchar(5) NOT NULL,
  `Pay_Amount` float(10,2) NOT NULL,
  `Pay_Method` varchar(10) NOT NULL,
  `Customer_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_ID`, `Pay_Amount`, `Pay_Method`, `Customer_ID`) VALUES
('701', 500.00, 'Cash', '200'),
('702', 605.00, 'Cash', '201'),
('703', 330.00, 'Cash', '202'),
('704', 100.00, 'Card', '203'),
('705', 320.00, 'Card', '204'),
('706', 1080.00, 'Card', '205'),
('707', 430.00, 'Cash', '206'),
('708', 190.00, 'Cash', '207'),
('709', 375.00, 'Cash', '208'),
('710', 1459.00, 'Card', '209');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Res_ID` varchar(5) NOT NULL,
  `Res_Name` varchar(30) NOT NULL,
  `Res_Address` varchar(30) NOT NULL,
  `Res_Contact_Number` varchar(11) NOT NULL,
  `Res_Email` varchar(40) NOT NULL,
  `Res_Rating` float NOT NULL,
  `Res_Review` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Res_ID`, `Res_Name`, `Res_Address`, `Res_Contact_Number`, `Res_Email`, `Res_Rating`, `Res_Review`) VALUES
('601', 'PizzaBurg', 'Mirpur', '01536178945', 'pizzaburg@gmail.com', 5, 'I tried the pizza here.  They said this is their best seller.  Good amount of cheese was provided.  But the amount of other elements should have been better.  Their behaviour is very good. The decoration of the place is not finished yet,  some dust of the painting were falling from the ceiling. Hopefully, this should be solved very soon. By the way, overall the place was satisfactory.\r\nHave tasted most of there pizza''s and gotta say they are all great.\r\n\r\nAlso have tasted there set menus which are great as well but there steaks are sometime overcooked and dry.\r\nIt''s food items are fresh and delicious. Decoration of PizzaBurg is wow.... Most of the time it is crowded with young generation. Staffs of it are also active in their work.There is also online order and delivery facilities with charge. If you want to get free delivery service you make a order by its app. I like its foods...'),
('602', 'Ozz Cafe', 'Dhanmondi', '01536238989', 'ozz@gmail.com', 3.9, 'Their service along with taste of food is awesome. Price to Service ratio is top notch. They have kids zone also. Enjoyed the new year lunch there. Wishing them all the best!\r\n\r\nI tried their teriyaki chicken set meal and the taste was average. Aside from that french fries were a bit salty but the spring roll was really good. The most beautiful thing was the decoration. That was just outstanding.'),
('603', 'Adda Multi Cuisine ', 'Dhanmondi', '01538971456', 'adda@email.com', 4, 'Great experience with nice environment. Perfect different zones for both families and friends. Have smoking zone too. The green environment is perfect if you love to take some eye catching photograph\r\nThe place and environment was just awesome??but the food we took was the worst! The worst steak i have ever taken'),
('604', 'Sultan''s Dine', 'Dhanmondi', '01489657231', 'sultansdine@gmail.com', 4.7, 'Mutton Biriyani is best. There’s some other meal also in good taste but best for Mutton Biriyani. At the end try Firni (Dessert)'),
('605', 'Chillox Banani', 'Banani', '01236589745', 'chillox@gmail.com', 4.4, 'Environment: 7/10, Well decorated yet not friendly.\r\nFood: 5/10, Got raw chicken pieces, shakes was full of ice, colder than average.\r\nGreat place to chill. The burgers are to die for. They say, the "naga chilli sauce is so spicy, how can you not make a mess of things", but I didn''t feel so. Nice ambience. Do try the Oreo shakes.\r\nEnvironment: 7/10, Well decorated yet not friendly.\r\nFood: 5/10, Got raw chicken pieces, shakes was full of ice, colder than average.'),
('606', 'Just Juice', 'Banani', '01369874523', 'justjuice@gmail.com', 4, 'as a mid range customer ,food price is reasonable,food also good quality,specially smoke sandwich. salad,juice,beef burger also good quality.'),
('607', 'Star Kabab & Restaurant', 'Dhanmondi', '01536177852', 'starkabab@gmail.com', 4.2, 'Awesome place for fine dine and breakfast. The food is just delicious. One must try the mutton variations. I was unlucky that I couldn''t try the mutton brains. If you are a tea lover, you cannot afford to it at any cost. Pls don''t visit if you are a vegetarian\r\nStill the taste of their food unparalleled. For all class of people. Price is reasonable comparing to other restaurant considering their food taste quality. Good for Breakfast, Lunch, Dinner and snacks'),
('608', 'Kacchi Bhai', 'Mirpur', '01631797145', 'kacchibhai@gmail.com', 4.7, 'Well decorated restaurant with both in house service and take away facility. The basic attraction is Biriyani and it tastes very good. Biriyanis are not much spicy, so hygienic also. Price is reasonable and the amount is sufficient. The place is sometime very crowded.'),
('609', 'The Dhansiri Restora', ' Sonargaon Janapath', '01751282531', 'dhansirirestora@gmail.com', 3.8, 'A restaurant of bangali food. All kind of bangali food items are available. Price a little bit expensive.\r\nIt''s not worth it,  totally waste of money.'),
('610', 'Sky restaurant', 'Farmgate', '01964729745', 'sky@gmail.com', 4, 'if you see night of Dhaka, then you must go in this restaurant. night view was amazing\r\nSky Restaurant is wonderful viewing  from Roof .i love their Food. Price is reasonable but service charge should not be included .');

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `Rider_ID` varchar(20) NOT NULL,
  `Rider_Name` varchar(50) NOT NULL,
  `Rider_Address` varchar(200) NOT NULL,
  `Rider_Contact_Number` varchar(11) NOT NULL,
  `Rider_Salary` float(8,2) NOT NULL,
  `Supervisor_ID` varchar(20) NOT NULL,
  `Rider_Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`Rider_ID`, `Rider_Name`, `Rider_Address`, `Rider_Contact_Number`, `Rider_Salary`, `Supervisor_ID`, `Rider_Email`) VALUES
('101005', 'Progga', 'Dhaka', '01245728172', 650.00, '1014', 'progga@gmail.com'),
('101006', 'Arnob', 'Thakurgaon', '02444444444', 1111.00, '1014', 'arnob@gmail.com'),
('101009', 'Mahmud', 'Farmgate, Dhaka', '02888888888', 1010.00, '1001', 'mahmud@gmail.com'),
('101015', 'Rahat', 'Mirpur, Dhaka', '02222222222', 899.00, '1004', 'rahat@gmail.com'),
('101016', 'Bidita', 'Srimongol, Sylhet', '02777777777', 500.00, '1001', 'bidita@gmail.com'),
('101018', 'Shazid', 'Mirpur, Dhaka', '02111111111', 999.00, '1004', 'shazid@gmail.com'),
('101019', 'Niaz', 'Dhanmondi, Dhaka', '02333333333', 1000.00, '1014', 'niaz@gmail.com'),
('101021', 'Mahi', 'Savar, Dhaka', '02555555555', 1122.00, '1014', 'mahi@gmail.com'),
('101022', 'Plabon', 'Dhaka', '02999999999', 5000.00, '1000', 'plabon@gmail.com'),
('101023', 'Eshita', 'Banani, Dhaka', '02666666666', 2222.00, '1002', 'eshita@gmail.com'),
('101025', 'Shawon', 'Dhanmondi, Dhaka', '02000000000', 4444.00, '1000', 'shawon@gmail.com'),
('101026', 'Nasiba', 'Dhaka', '01236547878', 3000.00, '1004', 'nasiba@gmail.com'),
('101029', 'Raka', 'Thakurgaon', '01237896541', 2500.00, '1002', 'raka@gmail.com'),
('101032', 'Alvee', 'Dhaka', '01263789641', 1150.00, '1001', 'alvee@gmail.com'),
('101042', 'Ayan', 'Mymensinghn', '01562127489', 1700.00, '1000', 'ayan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_ID`),
  ADD KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Food_Serial_number`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Customer_code` (`Customer_code`),
  ADD KEY `Resturant_code` (`Resturant_code`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Res_ID`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`Rider_ID`),
  ADD KEY `Rider_Name` (`Rider_Name`),
  ADD KEY `Rider_Address` (`Rider_Address`),
  ADD KEY `Rider_Contact_Number` (`Rider_Contact_Number`),
  ADD KEY `Rider_Salary` (`Rider_Salary`),
  ADD KEY `Rider_Salary_2` (`Rider_Salary`),
  ADD KEY `Supervisor_ID` (`Supervisor_ID`),
  ADD KEY `Rider_Email` (`Rider_Email`),
  ADD KEY `Rider_Email_2` (`Rider_Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Res_ID`) REFERENCES `restaurant` (`Res_ID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`Customer_code`) REFERENCES `customer` (`Cus_ID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`Resturant_code`) REFERENCES `restaurant` (`Res_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Cus_ID`);

--
-- Constraints for table `rider`
--
ALTER TABLE `rider`
  ADD CONSTRAINT `rider_ibfk_1` FOREIGN KEY (`Supervisor_ID`) REFERENCES `admin` (`Admin_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
