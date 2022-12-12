-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 05:42 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codexworld`
--
CREATE DATABASE IF NOT EXISTS `codexworld` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codexworld`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'abdi@gmail.com', '0765386679', 'Allahabad,India', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(12, 9, 5, 1),
(13, 10, 3, 1),
(14, 11, 6, 1),
(15, 12, 5, 1),
(16, 13, 5, 2),
(17, 14, 8, 3),
(18, 14, 9, 2),
(19, 15, 8, 1),
(20, 16, 8, 1),
(21, 17, 9, 4),
(22, 18, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(9, 1, 34899.00, '2022-12-07 23:23:35', '2022-12-07 23:23:35', '1'),
(10, 1, 42684.00, '2022-12-07 23:31:03', '2022-12-07 23:31:03', '1'),
(11, 1, 14999.00, '2022-12-07 00:44:24', '2022-12-07 00:44:24', '1'),
(12, 1, 34899.00, '2022-12-07 00:55:41', '2022-12-07 00:55:41', '1'),
(13, 1, 69798.00, '2022-12-07 14:15:07', '2022-12-07 14:15:07', '1'),
(14, 1, 69609.00, '2022-12-07 23:32:09', '2022-12-07 23:32:09', '1'),
(15, 1, 20499.00, '2022-12-07 07:23:29', '2022-12-07 07:23:29', '1'),
(16, 1, 20499.00, '2022-12-07 09:26:19', '2022-12-07 09:26:19', '1'),
(17, 1, 16224.00, '2022-12-07 09:42:05', '2022-12-07 09:42:05', '1'),
(18, 1, 20499.00, '2022-12-07 20:20:50', '2022-12-07 20:20:50', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`, `image`, `keyword`) VALUES
(6, 'Moto G Plus, 4th Gen (White, 32 GB) ', ' 16 MP primary camera with laser focus, PDAF and professional mode, 5 MP wide angle front camera with display ', '14999.00', '2016-10-12 04:20:25', '2016-10-12 06:21:00', '0', '12.jpg', 'moto G plus mobile'),
(7, 'Samsung Galaxy S6 Edge (Gold Platinum, 32GB)', ' 16MP primary camera with optical image stabilization, auto focus, LED flash ', '34499.00', '2016-10-11 07:21:25', '2016-10-11 08:21:25', '0', '1.jpg', 's6 galaxy samsung'),
(8, 'Apple iPhone 5s (Space Grey, 16GB)', '8MP primary camera with true tone flash, auto focus, geo tagging, face detection burst mode, 1.2MP front facing camera with HD video recording and backside illumination sensor', '20499.00', '2016-10-12 04:20:25', '2016-10-12 06:21:00', '1', '3.jpg', 'apple iphone 5s'),
(9, 'Micromax Canvas A1 Android One (White, 8GB)', ' RAM 1 GB Internal Memory 8 GB 16M Colors, IPS LCD Capacitive TouchScreen Android Lollipop 5.1', '4056.00', '2016-10-12 04:20:25', '2016-10-12 06:21:00', '', '21.jpg', 'micromax canvas a1'),
(10, 'Table', 'good suitable', '500.00', '2022-12-07 00:00:00', '2022-12-07 00:00:00', '0', '5.jpg', ''),
(11, 'Table', 'good suitable', '500.00', '2022-12-07 00:00:00', '2022-12-07 00:00:00', '0', '5.jpg', ''),
(12, 'Table', 'good suitable', '500.00', '2022-12-07 00:00:00', '2022-12-07 00:00:00', '0', '5.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(14) NOT NULL,
  `order_id` int(14) NOT NULL,
  `item_number` int(4) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` decimal(9,2) NOT NULL,
  `price` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(14) NOT NULL,
  `date` datetime NOT NULL,
  `ship_fee` decimal(9,2) NOT NULL,
  `ship_name` varchar(255) NOT NULL,
  `Ship_street` varchar(255) NOT NULL,
  `ship_city` varchar(50) NOT NULL,
  `ship_state` varchar(50) NOT NULL,
  `sales_tax` float NOT NULL,
  `submitted` int(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;--
-- Database: `dbms`
--
CREATE DATABASE IF NOT EXISTS `dbms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbms`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `like` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `replied`, `question_id`, `answer_detail`, `datetime`, `user_id`, `like`) VALUES
(4, 0, '13', 'this is mehuls answer 1.... to the above asked question....', '2012-04-04 19:15:49', 0, 0),
(5, 0, '13', 'rgua ua nt BIRWGEA baWEQWEHkah', '2012-04-06 00:14:56', 0, 0),
(6, 0, '12', 'using the connectivity query', '2012-04-06 19:19:11', 8, 0),
(7, 0, '14', 'the various stages are \r\nNew,Ready,Running,Blocked,Terminate', '2012-04-07 20:03:43', 9, 2),
(8, 0, '16', 'In the star topology there is a centralized hub. The communication between various nodes through the hub.\r\nIn this type of network there is a bottleneck of the centralized hub.It is widely used in LAN connection.', '2012-04-08 18:44:09', 9, 0),
(9, 0, '16', 'In the star topology there is a centralized hub. The communication between various nodes through the hub.\r\nIn this type of network there is a bottleneck of the centralized hub.It is widely used in LAN connection.', '2012-04-10 02:15:22', 9, 0),
(11, 0, '17', 'You can do it withing Borland or VC++ IDE & Compiler.', '2012-04-11 13:45:51', 8, 0),
(12, 0, '17', 'this is reply 1. and this reply is not 2nd...', '2012-04-13 16:19:44', 8, 0),
(13, 0, '17', 'scheduling algorithm is carried out by various methods such as first come first schedule,round robin scheduling,etc;', '2012-04-12 02:03:46', 8, 0),
(15, 0, '17', 'It has many method to explain the sheduling ', '2012-04-13 08:48:28', 12, 0),
(16, 0, '21', 'swing is swing and applet is not swing.', '2012-04-14 00:50:50', 17, 0),
(17, 0, '17', 'scheduling is....', '2012-04-19 00:19:44', 8, 0),
(18, 0, '11', 'i got the answer', '2012-04-19 01:36:22', 9, 0),
(20, 0, '12', 'connectivity with use of execute query and non-execute query\r\n', '2012-04-19 14:57:14', 8, 0),
(21, 0, '17', '\r\n', '2022-12-07 01:00:38', 8, 0),
(22, 0, '29', 'the thread is sub process...', '2022-12-07 03:11:23', 30, 0),
(23, 0, '29', 'are vah', '2022-12-07 03:24:00', 8, 0),
(24, 0, '31', '>This problem is faced with several of people all you have to do is make it stop doing MIME sniffing. You can disable this MIME sniffing by selecting IE the go to tools then to internet options then click custom level after that select Miscellaneous section. After that scroll down in this section then check enable underâ€ open files based on content, not the file extensionâ€', '2012-04-26 02:18:39', 12, 0),
(25, 0, '32', 'The problem was with the theme. Actually it was customized video game theme that was causing the error. Now its working proper.', '2012-04-26 02:19:35', 12, 0),
(26, 0, '32', 'Can you post a screenshot of the problem ? Even I had never seen such problem that notifications turned black. If possible post the screenshot so that I can see what type of pop message in black color is coming in laptop. Till than you can try setting some another them and see if it works. Hope it will work.', '2012-04-26 02:20:25', 9, 0),
(27, 0, '33', 'As i have doubt if you could reset it from the safe mode. But you can surely do it with the help of an application called "Windows Password Key". Here is the step by step process for doing the same:\r\n\r\n\r\nâ€¢	Download Windows Password key from http://www.lostwindowspassword.com/downloads/Windows_Password_Key_Standard_Demo.exe.\r\nâ€¢	Install it on any other PC that you can access easily.\r\nâ€¢	Now you need to burn a bootable CD/DVD Or better create a USB Flash Drive.\r\nâ€¢	Connect this USB or insert bootable DVD to your Windows 8 system and recover the password.\r\nThats it. \r\n', '2012-04-26 02:20:59', 9, 0),
(28, 0, '34', 'C:WindowsSystem32shutdown.exe -s -t 0 -f', '2012-04-26 02:24:52', 9, 0),
(29, 0, '35', 'I have read your question and I would keen to tell you that you can use Mozilla Firefox 10 in Linux-32 bit but before you do that you have to visit official site of the Mozilla Firefox. After that you need to select system and language below download option and then choose Linux installed and download that in your machine. Now you have to install it in your machine. I guess this will bring an end to your problem.', '2012-04-26 02:37:16', 12, 0),
(30, 0, '36', 'Hi friends, as o know there are many users who are really in need of the Google chrome themes but are unable to install the same. So I have started this thread to give you people a fair idea regarding the same. So now to install the theme you just need to follow the below mentioned steps:\r\n\r\nStep 1: Start Google Chrome and go to this web address . Google runs its own themes, in fact online.\r\n\r\nStep 2: Navigate in the themes and click Apply Theme, once it is selected.\r\n\r\nStep 3: Downloading and installation are automatic, and your theme is applied instantly. However, you can cancel it by clicking the Cancel button in the upper right of the browser!', '2012-04-26 02:46:37', 9, 0),
(31, 0, '37', 'Happili.com is deeply infiltrated into victimsâ€™ system. To remove Happili.com, please follow below instruction:\r\n1.       reboot your system into safe mode with networking;\r\n2.       download Anvi Smart Defender and install it;\r\n3.       Fully scan your computer;\r\n4.       delete Happili.com Redirect Virus related file:\r\nQuote\r\n    * %AllUsersProfile%{random}\r\n    * %AllUsersProfile%{random}*.lnk\r\n    * HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionRunOnce [RANDOM]\r\n    * HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionRun [RANDOM]\r\n    * HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindowsCurrentVersionRun [RANDOM].exe\r\n    * HKEY_CURRENT_USERSoftware[RANDOM]\r\n5.  restart your computer;\r\n', '2012-04-26 02:57:26', 15, 0),
(32, 0, '38', 'The Google Redirect Virus is a real and serious threat to PCs around the world.  The main symptom of this virus is that the search results of Google users will be diverted, and instead of being directed to legitimate sites will redirect to malicious websites distributing spyware to sell rogue security tools and distribution of viruses and infections.  The Google Redirect Virus is hidden in your PC, and once activated will make it nearly impossible for the user to use any search engine. What makes Google Redirect Virus hijackers even more dangerous than a normal search engine is the fact that you can use up to 100% of system resources, making the system almost impossible to operate.  Google Redirect Virus will also create a backdoor on the system that other types of malware that exploit the system for easy entry.\r\n\r\nAlthough it is popularly referred to by the title of the virus, the virus is more skillfully Google Redirect classified as a rootkit or Trojan.  This threat is caused by several types of TDSS rootkit, some of which goes by the name of: \r\nâ€¢	Alureon \r\nâ€¢	Tidserv \r\nâ€¢	Backdoor.Tidserv \r\nâ€¢	Trojan: WinNT / Alureon.D \r\nâ€¢	TrojanSpy: Win32/Chadem.A and many other\r\nGoogle Redirect Virus blocks ads and Google search pages show random ads that contain dubious and link spammers and malware sites.  In fact, Google search results are hijacked, making it impossible for the user to perform an online search.After the user is redirected to a website unrelated to their initial research, some websites you can use to generate false traffic to increase their payments to affiliate marketing, while others attempt to trick you to buy harmful rogue security tools. Another big problem with Google Redirect Virus is that you can hide from security tools installed.  It will not be picked up by many security tools, and then the user may find it difficult to detect and remove Google Redirect virus from the system.  It does this by injecting the same memory and processes to enabl', '2012-04-26 03:00:56', 15, 4),
(37, 0, '39', 'As for a listing on a wired network, it needs to be physically connected by Wi-Fi, anyone within range of the network can potentially connect to it.  And this is even more annoying than the intruder may not be visible: this can be a neighbor, passing in the street, in short, anyone.  Then he is free to browse the hard drive of your PC connected to the unprotected or using your Internet inappropriately, you yourself are responsible for the acts he might commit.  Fortunately, it is possible to prevent this. \r\n\r\nThe default settings for access points and wireless routers are not secure and allow anyone to connect to your network.  Thus, the majority of users switching to Wi-Fi, seeing that the wireless works straight start, do not go further and do not seek to secure it, which is extremely risky.  Here is how to properly configure your Wi-Fi to make it safer.\r\n\r\nIn our example, we used Orange Livebox. However, the features and options listed are present in most of the box, routers and access points Wi-Fi market.  Do not hesitate to refer to your hardware documentation for more information and find out how to access a specific feature.\r\n', '2012-04-26 03:15:57', 9, 0),
(40, 0, '40', 'If your broadband connection is slower than it should be, it may be due to the configuration of your network or computer.  If you tell your company that your Internet connection is slow, probably say that the problem is on your computer and will not be responsible.  This guide will show you what you can do to improve the speed of your connection. Before making any changes to your settings, turn off the router or access point to Internet and back on.  Sometimes the connection can be slow due to a failure point in the output device to the Internet. ', '2012-04-26 03:23:40', 15, 0),
(41, 0, '14', 'thre are 5 stages witch are ready,running,wait,block,release ', '2022-12-07 01:25:00', 15, 6),
(42, 0, '14', '1.ready\r\n2.running\r\n3.wait\r\n4.block\r\n5.release', '2022-12-07 01:26:15', 8, 9),
(43, 0, '7', 'jjjjjjj', '2022-12-07 17:14:09', 8, 0),
(44, 0, '41', 'THIS HAS FIVE STAPE', '2022-12-07 18:36:41', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatdetail_id` int(11) NOT NULL,
  `cdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatdetail_id`, `cdatetime`, `message`, `user_id`, `chat_id`) VALUES
(13, '2022-12-07 02:58:03', 'hi fabin im hardik', 8, 5),
(14, '2022-12-07 02:58:22', 'ka vikla', 8, 6),
(15, '2022-12-07 03:11:26', 'hi', 9, 5),
(16, '2022-12-07 03:12:12', 'how r u', 9, 5),
(17, '2022-12-07 03:12:55', 'hello', 9, 5),
(18, '2022-12-07 03:13:32', 'hi', 9, 5),
(19, '2022-12-07 03:13:52', 'kaise ho ?', 9, 5),
(20, '2022-12-07 03:13:58', 'm fine', 9, 5),
(21, '2022-12-07 03:14:36', 'this is hardik', 9, 5),
(22, '2022-12-07 03:16:39', 'now its fine', 9, 5),
(23, '2022-12-07 03:16:49', 'hardik here', 8, 5),
(24, '2022-12-07 22:07:31', 'shu karo 6o', 5, 7),
(25, '2022-12-07 22:11:37', 'are hardik hu hato ato', 12, 8),
(26, '2022-12-07 22:16:28', 'are shu photo mast mukyo 6e', 8, 9),
(27, '2022-12-07 00:42:32', 'are dipak avyo 6e ', 12, 8),
(28, '2022-12-07 00:23:43', 'hi\r\n', 8, 10),
(32, '2022-12-07 20:42:28', 'aaaaaaa', 5, 13),
(35, '2022-12-07 03:22:42', 'shu bhai', 30, 16),
(36, '2022-12-07 01:38:05', 'what is message passing system in the distributed application?', 9, 17),
(37, '2022-12-07 01:39:39', 'why synchronization require in the distributed system? ', 9, 18),
(38, '2022-12-07 17:16:00', 'how is your work going on?\r\n', 8, 19);

-- --------------------------------------------------------

--
-- Table structure for table `chatmaster`
--

CREATE TABLE `chatmaster` (
  `chat_id` int(11) NOT NULL,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmaster`
--

INSERT INTO `chatmaster` (`chat_id`, `user_id_from`, `user_id_to`) VALUES
(5, 8, 9),
(6, 8, 12),
(7, 5, 8),
(8, 12, 8),
(9, 8, 5),
(10, 8, 9),
(11, 8, 5),
(12, 8, 5),
(13, 5, 8),
(14, 5, 8),
(15, 29, 8),
(16, 30, 5),
(17, 9, 15),
(18, 9, 12),
(19, 8, 15);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `Deptno` int(10) NOT NULL,
  `Dname` varchar(255) NOT NULL,
  `Loc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`Deptno`, `Dname`, `Loc`) VALUES
(1, 'MARKET', 'DELLI'),
(2, 'SCIENCE', 'GOA'),
(3, 'ELECTORIC', 'INDORE'),
(4, 'COMPUDER', 'GOA'),
(5, 'SCIENCE', 'MP'),
(6, 'MACKET', 'UP'),
(7, 'MACHINAL', 'RAMCH'),
(8, 'IT', 'AGARA'),
(9, 'BAYLOGI', 'KERAL'),
(10, 'SCIENCE', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `EMPID` int(50) NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `JOBID` varchar(255) NOT NULL,
  `MGR` int(5) NOT NULL,
  `HIREDATE` varchar(255) NOT NULL,
  `SAL` decimal(8,2) NOT NULL,
  `COMM` decimal(7,2) NOT NULL,
  `DEPTNO` int(50) NOT NULL,
  `YEAR_OF_JOIN` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMPID`, `FIRST_NAME`, `LAST_NAME`, `JOBID`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `YEAR_OF_JOIN`) VALUES
(201, 'KAMEENI', 'VATSYAN', 'AV_PROG', 1, '2006-02-11', '25000.00', '80.00', 3, 1990),
(202, 'RAM', 'SHARMA', 'IT_PROG', 2, '2005-06-23', '20000.00', '60.00', 6, 1995),
(203, 'GOPAL', 'GOR', 'AV_PROG', 1, '1995-11-05', '10000.00', '90.00', 3, 2000),
(204, 'POOJA', 'PANDITA', 'IT_PROC', 2, '1993-03-04', '10000.00', '80.00', 8, 2004),
(205, 'INDU', 'PAL', 'ST_CLERK', 1, '2004-12-09', '35000.00', '80.00', 5, 1999),
(206, 'DEEPAK', 'DAGI', 'AL_PRES', 3, '2010-05-04', '20000.00', '60.00', 1, 1990),
(207, 'DENESH', 'GOR', 'AV_PROG', 1, '2006-04-06', '25000.00', '100.00', 3, 2006),
(208, 'GOVIND', 'PATIDAR', 'IT_PRES', 3, '2006-07-26', '30000.00', '80.00', 7, 2000),
(209, 'GAUTOM', 'SINGH', 'ST_CLERK', 1, '2005-03-01', '25000.00', '110.00', 9, 2010),
(210, 'RAKESH', 'NAGAR', 'AV_PROC', 1, '2006-06-19', '35000.00', '80.00', 10, 2007),
(211, 'AKASH', 'SHARMA', 'IT_PROG', 2, '2000-09-11', '16000.00', '90.00', 4, 1990),
(212, 'DEERAJ', 'VATSYAN', 'AV_PROC', 1, '2000-04-16', '25000.00', '80.00', 2, 2007);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `heading`, `question_detail`, `datetime`, `user_id`, `subtopic_id`, `views`) VALUES
(7, 'table connectivity', 'query of the connecting table with form?', '2012-04-11 22:12:44', 8, 7, 9),
(8, 'Window Xp', 'how to debbuge the ble screen error?', '2012-04-11 12:55:00', 8, 5, 1),
(9, 'Window vista', 'hot to change the administrator password from cmd?', '2012-04-04 06:21:44', 8, 5, 0),
(10, 'Window 7', 'how to make uninstall set up? ', '2012-04-05 14:54:42', 8, 5, 3),
(11, 'linux', 'how to use the live source of l\r\n', '2012-04-07 13:21:42', 9, 5, 6),
(12, 'connectivity', 'how to connect form with database?', '2012-04-09 21:31:36', 8, 2, 5),
(14, 'Thread life cycle', 'What are the different stages of thread life cycle?\r\n', '2012-04-10 11:34:43', 9, 12, 189),
(15, 'applet controls ', 'how to create simple applet program? ', '2012-04-13 00:32:44', 9, 13, 6),
(16, 'STAR topology', 'how connection established in the star topology?\r\n', '2022-12-07 10:44:01', 9, 17, 1),
(17, 'Scheduling', 'Hello,\r\n\r\nI want to create a program that supports multi-threading with scheduling. The program must', '2022-12-07 04:11:54', 8, 12, 78),
(18, 'Sheduling algorithm', 'Explain the various scheduling algorithm?\r\n', '2012-04-12 01:43:25', 8, 0, 0),
(19, 'Sheduling algorithm', 'Explain the various scheduling algorithm?\r\n', '2012-04-12 01:43:54', 8, 0, 1),
(20, 'scheduling algorithm', 'Explain various scheduling algorithm used in the cpu scheduling?', '2012-04-12 01:48:47', 8, 12, 9),
(21, 'Swing Applet', 'I want to know the difference between normal Applet and Swing Applet.....\r\n\r\nAnd I also want to know', '2012-04-14 00:43:35', 16, 13, 12),
(22, 'Applet Class', 'What is applet class ?', '2012-04-14 01:43:37', 26, 13, 2),
(23, 'what is applet ?', 'what is applet ?\r\n\r\nIs it as class or package ?', '2012-04-14 01:48:45', 27, 13, 4),
(24, 'a', '', '2022-12-07 01:23:31', 8, 12, 0),
(25, 'thread ', 'explain the  various stages of thread', '2022-12-07 18:09:06', 8, 12, 6),
(26, '', '', '2022-12-07 16:45:11', 8, 12, 0),
(27, 'a', '', '2022-12-07 16:45:33', 8, 12, 0),
(28, 'a', '', '2022-12-07 16:47:32', 8, 12, 0),
(29, 'what', 'what is what', '2022-12-07 02:48:15', 28, 12, 7),
(30, 'What is thread ?', 'What is thread ?', '2022-12-07 03:08:03', 29, 12, 1),
(31, 'window 7', 'Windows 7, how can I open .jnlp extension in Internet Explorer 9?', '2012-04-26 01:55:05', 8, 12, 5),
(32, 'window vista', 'Unable to see taskbar notifications in Windows Vista SP2?', '2012-04-26 01:56:24', 8, 12, 5),
(33, 'window 8', 'How can i recover lost windows 8 Administrator password?', '2012-04-26 01:57:06', 8, 12, 4),
(34, 'windows 8', ' How to easily Shutdown Windows 8 Consumer preview?', '2012-04-26 02:22:35', 8, 12, 4),
(35, 'Mozila Browser', 'Operate Mozilla Firefox 10 in linux-32 Bit?', '2012-04-26 02:35:47', 9, 18, 11),
(36, 'Google Chrome Browser', 'How to install Google chrome themes?', '2012-04-26 02:44:33', 12, 18, 7),
(37, 'Happili ', 'How to remove Happili redirecting virus?', '2012-04-26 02:54:11', 9, 19, 22),
(38, 'Google Redirect Virus', 'How to remove Google redirect virus from Web browser?', '2012-04-26 02:59:52', 9, 19, 15),
(39, 'Secure Wi-Fi', 'Tips to create secure Wi-Fi', '2012-04-26 03:15:07', 15, 20, 5),
(40, 'Connection speed', 'How to increase the speed of your broadband connection?', '2012-04-26 03:23:08', 9, 20, 2),
(41, 'THREADING', 'WHAT IS THREADING?', '2022-12-07 18:35:09', 32, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `PersonID` int(11) NOT NULL DEFAULT '0',
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Roll_no` varchar(255) DEFAULT NULL,
  `Course_name` varchar(255) DEFAULT NULL,
  `College_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`PersonID`, `FirstName`, `LastName`, `Mobile`, `Address`, `City`, `Roll_no`, `Course_name`, `College_name`) VALUES
(1201, 'GOVIND', 'PATIDAR', 8889562255, 'AGAR', 'MP', '180033', 'MCA', 'MNNIT'),
(1202, 'GAUTAM', 'SINGH', 7899562255, 'MURADHABAD', 'UP', '180032', 'MCA', 'MNNIT'),
(1203, 'RAM', 'GOR', 7899562230, 'MURADHABAD', 'GOA', '180002', 'BTECH', 'III'),
(1204, 'GOPAL', 'SHARMA', 7856462255, 'UJJAN', 'MP', '180023', 'PHD', 'NIT'),
(1205, 'DEEPAK', 'SINGH', 9985642546, 'HWMT', 'AP', '180056', 'MCA', 'NIT');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `NAME` varchar(255) NOT NULL,
  `ROLLNO` int(50) NOT NULL,
  `COURSE` varchar(255) NOT NULL,
  `FACITITY` varchar(255) NOT NULL,
  `SUBJECT_NAME` varchar(255) NOT NULL,
  `SUBJECT_CODE` int(50) NOT NULL,
  `COLLEGE` varchar(255) NOT NULL,
  `PERSONID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`NAME`, `ROLLNO`, `COURSE`, `FACITITY`, `SUBJECT_NAME`, `SUBJECT_CODE`, `COLLEGE`, `PERSONID`) VALUES
('GOVIND PATIDAR', 18901, 'MCA', 'Mr VARIYA', 'C PROGRAMMING', 3102, 'MNNIT', 1201),
('GAUTOM SINGH', 18936, 'BTECH', 'Dr. PANDE', 'NETWORK', 3123, 'MNNIT', 1203),
('SHAM PUSHPAT', 18956, 'MCA', 'Mr SHASHNK', 'DATA STRUCTURE', 3105, 'MNNIT', 1202),
('RAM SINGH', 18965, 'BTECH', 'Dr.GORE', 'JAVA', 52256, 'III', 1204),
('GOPAL CHODHARY', 18989, 'MCA', 'Dr.YADHV', 'LOGIC', 5230, 'III', 1205);

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE `subtopic` (
  `subtopic_id` int(11) NOT NULL,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtopic`
--

INSERT INTO `subtopic` (`subtopic_id`, `subtopic_name`, `subtopic_description`, `s_status`, `topic_id`) VALUES
(2, 'php', 'web', 'tr', 10),
(3, 'connectivity', 'data table', 'ss', 11),
(4, 'html', 'web page design', 'ss', 13),
(6, 'Threading', 'Info about Thread & Runnable', 'tr', 7),
(7, 'file management', 'exception handling', 'tr', 8),
(8, 'i/o management', 'data string handler', 'tr', 8),
(11, 'Move', 'how to move file from one location to another', 'tr', 13),
(12, 'Threading', 'About Thread Life Cycle', 'true', 17),
(13, 'applet controls', 'discussion of the controls of applet', 'true', 18),
(14, 'ExecutingQuery in sql', 'types of sql queries', 'true', 19),
(15, 'Non Executing Query', 'Select Query', 'tr', 19),
(16, '8085 processor', 'block diagram discription', 'tr', 21),
(17, 'network types', 'types of topologies', 'tr', 22),
(18, 'Application Related', 'Any querys Related Apps', 'tr', 23),
(19, 'Virus Solution', 'How we solve virus problems', 'tr', 24),
(20, 'Network Related', 'Network Related Querys', 'tr', 25);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_type`) VALUES
(17, 'Operating System', 'Threading'),
(18, 'Applet', 'JAVA'),
(19, 'Php Database connectivity', 'PHP'),
(21, 'Microprocessor', 'Processor'),
(23, 'Applications', 'Os Applications'),
(24, 'Virus', 'Virus solution'),
(25, 'Networks', 'Networks Related Querys');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_acc_active` tinyint(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `isuser` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `country`, `state`, `address`, `user_type`, `username`, `fullname`, `password`, `user_acc_active`, `dob`, `e_mail`, `gender`, `uimg`, `isuser`) VALUES
(5, 'U.S.A', 'ahmedabad', '-', 'admin', 'admin', 'administrator', 'admin', NULL, '2012-04-17', 'admin@gmail.com', '1', 'ups/admin.jpg', 1),
(8, '-', '-', '-', 'user', 'hardik', 'hardik patel', '123', NULL, '0000-00-00', 'abcd@gmail.com', '1', 'ups/hardik.jpg', 0),
(9, 'India', 'Gujarat', 'mahesana', 'user', 'fabin', 'Christian Fabin Mathew', 'fabinlj', NULL, '0000-00-00', 'fabin.christian@gmail.com', '1', 'ups/124.jpg', 0),
(12, 'India', 'Gujarat', 'sant lilashah soc,bhargav soc,Ahmedabad', 'user', 'Vikas ', 'Vikas Patel', 'vikas', NULL, '1990-04-03', 'vikas.patel@gmail.com', '1', 'ups/1.jpg', 1),
(15, 'India', 'Gujarat', 'porbandar', 'user', 'mahesh', 'mahesh narvani', 'm', NULL, '1990-04-27', 'mahesh.narvani@gmail.com', '1', 'ups/Pink Rose For You-504352.jpeg', 0),
(27, 'India', 'Gujarat', '13-yamuna tenament,near bhargav soc.,kuber nagar ,bunglow area  ', 'user', 'Jasmin', 'Jasmin Patel', 'jasmin', NULL, '1986-11-25', 'jasmin.patel@gmail.com', '1', 'ups/7.jpg', 0),
(28, 'India', 'Gujarat', 'gdhjsbb', 'user', 'rushabh', 'rushabh joshi', 'rest', NULL, '0000-00-00', 'rushabh.joshi@gmail.com', '1', 'ups/', 0),
(30, 'j', 'j', 'j', 'user', 'Mehul', 'Mehul Varia', '123', NULL, '1986-11-25', 'ms.mainframe@gmail.com', '1', 'ups/1.jpg', 0),
(31, 'India', 'Gujarat', 'jamnagar', 'user', 'satish', 'Satish Babariya', 'satish', NULL, '0000-00-00', 'satish.babariya@gmail.com', '1', 'ups/Red Roses Love-262228.jpeg', 0),
(32, '-', '-', '-', 'user', 'abc', 'a', '123', NULL, '1986-11-25', 'ab@gmail.com', '1', 'ups/Colorized Heart-733225.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatdetail_id`);

--
-- Indexes for table `chatmaster`
--
ALTER TABLE `chatmaster`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`Deptno`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`EMPID`),
  ADD KEY `dnFK` (`DEPTNO`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ROLLNO`),
  ADD KEY `piFK` (`PERSONID`);

--
-- Indexes for table `subtopic`
--
ALTER TABLE `subtopic`
  ADD PRIMARY KEY (`subtopic_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `chatmaster`
--
ALTER TABLE `chatmaster`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `subtopic`
--
ALTER TABLE `subtopic`
  MODIFY `subtopic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `dnFK` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`Deptno`) ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `piFK` FOREIGN KEY (`PERSONID`) REFERENCES `student` (`PersonID`);
--
-- Database: `dbtest`
--
CREATE DATABASE IF NOT EXISTS `dbtest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbtest`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Mobile` int(200) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Name`, `Email`, `Mobile`, `Feedback`) VALUES
('govind', 'govind@gmail.com', 2147483647, 'good'),
('govind', 'govind@gmail.com', 2147483647, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'abdi@gmail.com', '0765386679', 'Allahabad Mnnit', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 2, 1, 1),
(4, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(1, 1, 2000.00, '2022-12-07 23:55:41', '2022-12-07 23:55:41', '1'),
(2, 1, 7000.00, '2016-11-10 00:07:10', '2016-11-10 00:07:10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`, `status`, `image`) VALUES
(1, 'Dining Table', 'We Provide high quality wooden furnitures', 4000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1', '012.jpg'),
(2, 'Bed almirah', 'We Provide high quality wooden furnitures\r\n', 3000.00, '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1', '015.jpg'),
(3, 'Table computer', 'good suitable', 500.00, '2022-12-07 02:05:10', '2022-12-07 02:05:10', '0', '05.jpg'),
(4, 'Dining Table', 'good suitable', 3000.00, '2022-12-07 02:05:10', '2022-12-07 02:05:10', '0', '09.jpg'),
(5, 'Dining Table ', 'good suitable', 1500.00, '2022-12-07 00:00:00', '2016-11-13 00:00:00', '0', '01.jpg'),
(6, 'Cello Oscar Center Table (Sandalwood Brown) ', 'Product Dimensions: Length (32.03 inches), Width (17.10 inches), Height (19.85 inches)', 1061.00, '2016-11-18 05:26:17', '2016-11-18 05:26:17', '1', '017.jpg'),
(7, 'Royal Oak Disney Study Table computer', 'Product Dimensions: Length (32.03 inches), Width (17.10 inches), Height (19.85 inches)', 3500.00, '2016-11-24 06:20:17', '2016-11-24 06:26:17', '0', '03.jpg'),
(8, 'Bed almirah', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 9500.00, '2016-11-24 06:20:17', '2016-11-24 06:26:17', '0', '013.jpg'),
(9, 'Dining set (1+5) in Black Color ', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 10500.00, '2016-11-26 12:10:26', '2016-11-26 12:26:17', '1', '3.jpg'),
(10, 'Forzza Westin Queen Size Bed almirah', 'Product Dimensions: Length (217 cm), Width (158 cm), Height (90 cm)', 12499.00, '2016-11-26 12:10:26', '2016-11-26 12:26:17', '1', '014.jpg'),
(11, 'almirah new', '', 6700.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'pic1.jpg'),
(12, 'almirah bed', 'first one', 7800.00, '2016-11-16 00:00:00', '2016-11-03 00:00:00', '1', 'a1.jpg'),
(13, 'almirah new one', 'second one', 6789.00, '2016-11-25 00:00:00', '2016-11-29 00:00:00', '1', 'b2.jpg'),
(14, 'computer latest', 'computer table', 1200.00, '2016-11-30 00:00:00', '2016-11-11 00:00:00', '1', 'c1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'gvn', 'gvn@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(2, 'patidat', 'pat@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(3, 'goaaa', 'gvn1@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(4, 'ram', 'ram@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(5, 'sham', 'sham@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(6, 'deepak', 'dee@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0'),
(7, 'dinesh', 'dinesh@gmail.com', '8235c034a4de9f2dc4e113894f1556cdc03d2ab0a53f6def7d3446427c60424a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `ecomm`
--
CREATE DATABASE IF NOT EXISTS `ecomm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecomm`;

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `Product_ID` int(50) NOT NULL,
  `Product_Name` varchar(200) NOT NULL,
  `Product_Brand` varchar(200) NOT NULL,
  `Product_Image` text NOT NULL,
  `Product_Price` int(200) NOT NULL,
  `Product_Key` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`Product_ID`, `Product_Name`, `Product_Brand`, `Product_Image`, `Product_Price`, `Product_Key`) VALUES
(1, '', '', '', 0, ''),
(2, 'galaxy s6', 'samsung', '', 15000, 'samsung galaxy s6'),
(3, 'galaxy s5', 'samsung', '', 16000, 'samsung galaxy s5'),
(4, 'galaxy s4', 'samsung', '', 12000, 'samsung galaxy s4'),
(5, 'galaxy s4', 'samsung', '01.jpg', 12000, 'samsung galaxy s4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
  MODIFY `Product_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `mobile`
--
CREATE DATABASE IF NOT EXISTS `mobile` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mobile`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Feedback`) VALUES
('govind patidar', 'abdi@gmail.com', 2147483647, 'good mobile'),
('govind', 'afjalfkjalfkj@gmail.com', 2147483647, 'good mobile'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('govind', 'govin@gmail.com', 88956255, 'aofjafaj'),
('ram', 'ram@gmail.com', 2147483647, 'no found'),
('sham', 'sa@gmail.com', 2147483647, 'yea'),
('sham', 'sa@gmail.com', 2147483647, 'yea'),
('deepak', 'gee@gmail.com', 78945612, 'good'),
('deepak', 'gee@gmail.com', 78945612, 'good'),
('sham', 'sa@gmail.com', 2147483647, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `sing`
--

CREATE TABLE `sing` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `Mobile` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sing`
--

INSERT INTO `sing` (`userId`, `userName`, `userEmail`, `userPass`, `Mobile`) VALUES
(1, 'Govind', 'govind@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0', 0),
(2, 'Ram', 'ram@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0', 2147483647),
(3, 'ankit', 'ankit@gmail.com', 'e54fc6b51915e222ba6196747a19ebb8dfa651fd2b46a385a0ded647fbfefda0', 2147483647),
(4, 'dinesh kumar', 'dineshkumar1392@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sing`
--
ALTER TABLE `sing`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sing`
--
ALTER TABLE `sing`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `mobile_store`
--
CREATE DATABASE IF NOT EXISTS `mobile_store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mobile_store`;

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

CREATE TABLE `new_user` (
  `Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`Name`, `Email`, `Username`, `Password`) VALUES
('Sanjay Kumar Bind', 'sanjaysanjay500@gmail.com', 'sk123', 'sk123'),
('zczcvzz', 'caczcz', 'czc zcz', '789456');
--
-- Database: `online`
--
CREATE DATABASE IF NOT EXISTS `online` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Email`, `Password`) VALUES
('gobi', 'gsgsgsgs'),
('abdi@gmail.com', '1234566');

-- --------------------------------------------------------

--
-- Table structure for table `sing`
--

CREATE TABLE `sing` (
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Pw` varchar(200) NOT NULL,
  `Conform_Pw` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sing`
--

INSERT INTO `sing` (`Name`, `Email`, `Pw`, `Conform_Pw`) VALUES
('galkjkl', 'abdi@gmail.com', 'fjlfkjlkjlk', 'bkjblj');
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `room_number` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `cancel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`room_number`, `room_id`, `cancel`) VALUES
(46, 1345, 'yes'),
(50, 12345, 'yes'),
(32, 1245, 'yes'),
(32, 1245, 'yes'),
(32, 1245, 'yes');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'testuser@gmail.com', '9999999999', 'New York, NY, USA', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Android Phone FX1', 'Di sertakan secara rambang yang lansung tidak munasabah. Jika anda ingin menggunakan Lorem Ipsum, anda perlu memastikan bahwa tiada apa yang', 'android-phone.jpg', '200.50'),
(2, 'PD1002', 'Television DXT', 'Ia menggunakan kamus yang mengandungi lebih 200 ayat Latin, bersama model dan struktur ayat Latin, untuk menghasilkan Lorem Ipsum yang munasabah.', 'lcd-tv.jpg', '500.85'),
(3, 'PD1003', 'External Hard Disk', 'Ada banyak versi dari mukasurat-mukasurat Lorem Ipsum yang sedia ada, tetapi kebanyakkannya telah diubahsuai, lawak jenaka diselitkan, atau ayat ayat yang', 'external-hard-disk.jpg', '100.00'),
(4, 'PD1004', 'Wrist Watch GE2', 'Memalukan akan terselit didalam di tengah tengah kandungan text. Semua injin Lorem Ipsum didalam Internet hanya mengulangi text, sekaligus menjadikan injin kami sebagai yang terunggul dan tepat sekali di Internet.', 'wrist-watch.jpg', '400.30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
