-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jun 02, 2024 at 04:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(17, 'Biscuits, Cookies, and Wafers'),
(23, 'Cakes and Pies'),
(20, 'Carbonated Drinks and Tonics'),
(26, 'Chips and Crisps'),
(19, 'Chocolate'),
(25, 'Cordial and Syrups'),
(24, 'Ice Cream'),
(18, 'Powdered Drink Mixes'),
(16, 'Pudding, Jellies and Marshmallow'),
(13, 'Seeds'),
(22, 'Slime and Squishy Toys'),
(15, 'Sweets and Candy'),
(14, 'Yo-yo'),
(21, 'Yogurt and Cultured Milk');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(4, 'HALLOWEEN LOLLIPOP 30 pcs per box.jpeg', 'image/jpeg'),
(5, 'Crispy Owl Marshmallow Blue.jpeg', 'image/jpeg'),
(6, 'LONGBAO CHEWING GUM 30 PCS.jpeg', 'image/jpeg'),
(7, 'Crispy Owl Marshmallow Pink 200 pieces.jpeg', 'image/jpeg'),
(8, 'Fruit ethnicity Lollipop 30 pcs coco.jpeg', 'image/jpeg'),
(9, 'candy frank ramdam color.jpeg', 'image/jpeg'),
(10, 'BIG DODO CANDY 20 PCS.jpeg', 'image/jpeg'),
(11, 'BISCUIT STICK CHOCO DIP 30 PCS.jpeg', 'image/jpeg'),
(12, 'MINI CAKE GUMMY 2.5 GRAMS.jpeg', 'image/jpeg'),
(13, 'BUCHO DONUT JELLY 30 PCS.jpeg', 'image/jpeg'),
(14, 'LUCKY SWEETS CANDY 30 PCS LITTLE BITES.jpeg', 'image/jpeg'),
(15, 'Popping fruit Powder 30pcs.jpeg', 'image/jpeg'),
(16, 'BIG POWDER DRINK SWEET AND SOUR TASTE 20 PCS MM.jpeg', 'image/jpeg'),
(17, 'Macaron Soft Gummy 30pcs.jpeg', 'image/jpeg'),
(18, 'CHOCOLATE SYRINGES 30 PCS.jpeg', 'image/jpeg'),
(19, 'SODA IN CAN 30 PCS 3 IN 1 SPRITE COLA FANTA.jpeg', 'image/jpeg'),
(20, 'Krazy Burst super sour chew 20 pcs.jpeg', 'image/jpeg'),
(21, 'STRAWBERRY GUMMY BALLS 30Pcs.jpeg', 'image/jpeg'),
(22, 'KARATE BELTS RAINBOW-JUNGLE STRING-SOUR COLA STRAPS - KARATE STRAW 38 PIECES.jpeg', 'image/jpeg'),
(23, 'BUTTERFLY LOLLIPOP 30 pcs.jpeg', 'image/jpeg'),
(24, 'FRUTOS CHEWY SAMPALOK MINI BITS 12 PCS.jpeg', 'image/jpeg'),
(25, 'GIANT FRUITY STIX FRUIT FLAVOR 30 PCS.jpeg', 'image/jpeg'),
(26, 'Mallows Jams 30 Pieces.jpeg', 'image/jpeg'),
(27, 'WESLSY FRUIT JELLY ASSORTED FLAVOR 30 PCS PACK.jpeg', 'image/jpeg'),
(28, 'Glowing Egg Tray 30 Pieces.jpeg', 'image/jpeg'),
(29, 'Gold Coin 2.5 KG-Wholesale Price.jpeg', 'image/jpeg'),
(30, 'Popping candy - stickers and candy 30 pcs.jpeg', 'image/jpeg'),
(31, 'I’VEBURST MINS COOLMINT SUGAR FREE 30pcs.jpeg', 'image/jpeg'),
(32, 'Lighter spray candy 30 pcs.jpeg', 'image/jpeg'),
(33, 'WESLSY YOGURT MILK 30 PCS.jpeg', 'image/jpeg'),
(34, 'EYEBALL SOFT GUMMY CANDY 30 PCS.jpeg', 'image/jpeg'),
(35, 'assorted gummy 500g per pack.jpeg', 'image/jpeg'),
(36, 'Dracula Candy 30 pieces.jpeg', 'image/jpeg'),
(37, 'Drawing Jam Weslsy 30pcs.jpeg', 'image/jpeg'),
(38, 'MINI ANIMLS TOY CANDY 30 PCS.jpeg', 'image/jpeg'),
(39, 'CANDY BALLS GUO 20 PCS PER PACK.jpeg', 'image/jpeg'),
(40, 'BODI’S COOKIE WHITE CHOCOLATE 30 PCS.jpeg', 'image/jpeg'),
(41, 'SQUISHY HAMBURGER TOY 12 PCS.jpeg', 'image/jpeg'),
(42, 'CONDENSED YOGURT GUMMY 30 PCS.jpeg', 'image/jpeg'),
(43, 'Fruit Stripe 30 pieces.jpeg', 'image/jpeg'),
(44, 'CHOCO PIE 30 PCS LOOTBAG FILLER PANINDA.jpeg', 'image/jpeg'),
(45, 'DELICIOUS CANDY LOLLIPOP 30 PCS PER BOX XQR.jpeg', 'image/jpeg'),
(46, 'TROLLI HOTDOG GUMMY CANDY 60 PCS.jpeg', 'image/jpeg'),
(47, 'FORK CHOCOLATE 30 PCS WESLSY.jpeg', 'image/jpeg'),
(48, 'SNS CRISPY CHOCO BOTTLE 30 pcs.jpeg', 'image/jpeg'),
(49, 'Summer Lollipop 30 pcs.jpeg', 'image/jpeg'),
(50, 'WESLSY EYEBOMB CANDY 30pcs.jpeg', 'image/jpeg'),
(51, 'TROLLI BURGER 60 PCS party burger trolli gummy candy.jpeg', 'image/jpeg'),
(52, 'BIG FOOT CANDY 30 pcs per box.jpeg', 'image/jpeg'),
(53, 'DRACULA GUMMY CANDY 30 PCS.jpeg', 'image/jpeg'),
(54, 'Vivi Nata Jelly Assorted flavor 12 pcs COCO.jpeg', 'image/jpeg'),
(55, 'ACID SUGAR DEVIL SOUR AND SWEET CANDY.jpeg', 'image/jpeg'),
(56, 'DONUT LOLLIPOP 30 PCS CANDY.jpeg', 'image/jpeg'),
(57, 'MAGIC CHEW SOUR CHEWY CANDY 5 FLAVORS.jpeg', 'image/jpeg'),
(58, 'YOYO AVENGERS ( SUPER SPIN YOYO SERIES) 12 PCS.jpeg', 'image/jpeg'),
(59, 'LED LIPS Candy 30pcs.jpeg', 'image/jpeg'),
(60, 'Mini Fries Gummy 30pcs.jpeg', 'image/jpeg'),
(61, 'CANDY BALLS WESLSY 20 PCS.jpeg', 'image/jpeg'),
(62, 'Super Tattoo Gum 200 pcs.jpeg', 'image/jpeg'),
(63, 'Mochi Donut Gummy 30Pieces.jpeg', 'image/jpeg'),
(64, 'GIANT FIESTA GUM WITH TATTOO BUBBLE GUM 200 PCS JAR.jpeg', 'image/jpeg'),
(65, 'Heart Jelly 12 pieces.jpeg', 'image/jpeg'),
(66, 'WESLSY COLA JELLY 30 PCS PACK.jpeg', 'image/jpeg'),
(67, 'Fitz Candy Fruit 30pcs.jpeg', 'image/jpeg'),
(68, 'TIWI YAK BABY XTRA SOUR FLAVOR 12 PCS PACK.jpeg', 'image/jpeg'),
(69, 'COCO SNAKE FRUITS SYRUP 30 PCS.jpeg', 'image/jpeg'),
(70, 'Sunrise sour belt rainbow 1kg.jpeg', 'image/jpeg'),
(71, 'Adora Mixed fruit vegetable crisp 168g.jpeg', 'image/jpeg'),
(72, 'adorable Cocoa marshmallow 300g.jpeg', 'image/jpeg'),
(73, 'Crispy bar chocolate filled- 30pcs- lootbag fillers- paninda- party giveaways.jpeg', 'image/jpeg'),
(74, 'Whistle balloon Candy 30pcs.jpeg', 'image/jpeg'),
(75, 'MANGO CUBE GUMMY 2.5 KG.jpeg', 'image/jpeg'),
(76, 'GUMMI SERIES CANDY ASSORTED.jpeg', 'image/jpeg'),
(77, 'WESLSY SPICED SUNFLOWER SEEDS 20 pcs.jpeg', 'image/jpeg'),
(78, 'PEN SPRAY CANDY 30 Pcs.jpeg', 'image/jpeg'),
(79, 'NIPPLE RING CANDY 30 PCS.jpeg', 'image/jpeg'),
(80, 'WESLSY STONE CHOCOLATE 20 PCS PACK.jpeg', 'image/jpeg'),
(81, 'ASSORTED WESLSY GUMMIES 30 PCS CANDY.jpeg', 'image/jpeg'),
(82, 'MIXED FOOD VEGETABLE CRISP 168g.jpeg', 'image/jpeg'),
(83, 'WOW ASIM Candy 20pieces.jpeg', 'image/jpeg'),
(84, 'Windmill Lollipop 30 pcs weslsy.jpeg', 'image/jpeg'),
(85, 'CANDY BRACELET 30 PCS.jpeg', 'image/jpeg'),
(86, 'BODI’S CHOCOLATE 30 pcs.jpeg', 'image/jpeg'),
(87, 'WESLSY SOUR DROPS 20 pcs.jpeg', 'image/jpeg'),
(88, 'Mi AND Ni Mi&amp;Ni BEANS 30 PCS SnS MILK CHOCOLATE.jpeg', 'image/jpeg'),
(89, 'Licorice 1.5kg (Strawberry).jpeg', 'image/jpeg'),
(90, '[MM] CANDY TOOTHPASTE PUDDING ASSORTED FLAVOR 30 pcs.jpeg', 'image/jpeg'),
(91, 'Sour Rainbow Candy Stripes 30pcs.jpeg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(15, 'Halloween Lollipop 30 pcs per box', '23', '130.00', '130.00', 15, 4, '2024-05-11 23:00:56'),
(16, 'Crispy Owl Marshmallow Blue', '33', '175.00', '175.00', 16, 5, '2024-05-11 23:02:04'),
(17, 'LONGBAO CHEWING GUM 30 PCS', '81', '130.00', '130.00', 15, 6, '2024-05-11 23:02:38'),
(18, 'Crispy Owl Marshmallow Pink 200 pieces', '35', '175.00', '175.00', 16, 7, '2024-05-11 23:03:12'),
(19, 'Fruit ethnicity Lollipop 30 pcs coco', '3', '130.00', '130.00', 15, 8, '2024-05-11 23:04:26'),
(20, 'candy frank ramdam color', '3', '135.00', '135.00', 15, 9, '2024-05-11 23:05:03'),
(21, 'BIG DODO CANDY  20 PCS', '36', '89.00', '89.00', 15, 10, '2024-05-11 23:05:41'),
(22, 'BISCUIT STICK CHOCO DIP 30 PCS', '39', '41.00', '41.00', 17, 11, '2024-05-11 23:06:11'),
(23, 'MINI CAKE GUMMY 2.5 GRAMS', '37', '360.00', '360.00', 15, 12, '2024-05-11 23:06:51'),
(24, 'BUCHO DONUT JELLY 30 PCS', '93', '93.00', '93.00', 16, 13, '2024-05-11 23:07:11'),
(25, 'LUCKY SWEETS CANDY 30 PCS LITTLE BITES', '43', '130.00', '130.00', 15, 14, '2024-05-11 23:07:30'),
(26, 'Popping fruit Powder 30pcs', '39', '125.00', '125.00', 15, 15, '2024-05-11 23:07:49'),
(27, 'BIG POWDER DRINK SWEET AND SOUR TASTE 20 PCS MM', '48', '95.00', '95.00', 18, 16, '2024-05-11 23:08:24'),
(28, 'Macaron Soft Gummy 30pcs', '44', '110.00', '110.00', 15, 17, '2024-05-11 23:08:41'),
(29, 'CHOCOLATE SYRINGES 30 PCS', '26', '125.00', '125.00', 19, 18, '2024-05-11 23:09:35'),
(30, 'SODA IN CAN 30 PCS 3 IN 1 SPRITE COLA FANTA', '84', '140.00', '140.00', 20, 19, '2024-05-11 23:10:03'),
(31, 'Krazy Burst super sour chew | 20 pcs', '2', '110.00', '110.00', 15, 20, '2024-05-11 23:10:26'),
(32, 'STRAWBERRY GUMMY BALLS 30Pcs', '33', '110.00', '110.00', 15, 21, '2024-05-11 23:10:44'),
(33, 'KARATE BELTS RAINBOW/ JUNGLE STRING/ SOUR COLA STRAPS / KARATE STRAW 38 PIECES', '5', '35.00', '35.00', 15, 22, '2024-05-11 23:11:02'),
(37, 'BUTTERFLY LOLLIPOP 30 pcs', '97', '120.00', '120.00', 15, 23, '2024-05-11 23:13:30'),
(38, 'FRUTOS CHEWY SAMPALOK MINI BITS 12 PCS', '99', '79.00', '79.00', 15, 24, '2024-05-11 23:13:48'),
(39, 'GIANT FRUITY STIX FRUIT FLAVOR 30 PCS', '95', '130.00', '130.00', 15, 25, '2024-05-11 23:14:33'),
(40, 'Mallows Jams 30 Pieces', '51', '125.00', '125.00', 16, 26, '2024-05-11 23:14:56'),
(41, 'WESLSY FRUIT JELLY ASSORTED FLAVOR 30 PCS PACK', '28', '120.00', '120.00', 16, 27, '2024-05-11 23:15:36'),
(42, 'Glowing Egg Tray 30 Pieces', '96', '130.00', '130.00', 15, 28, '2024-05-11 23:15:57'),
(43, 'Gold Coin 2.5 KG/Wholesale Price', '4', '650.00', '650.00', 19, 29, '2024-05-11 23:16:16'),
(44, 'Popping candy / stickers and candy 30 pcs', '32', '130.00', '130.00', 15, 30, '2024-05-11 23:16:57'),
(45, 'I’VEBURST MINS COOLMINT SUGAR FREE 30pcs', '24', '120.00', '120.00', 15, 31, '2024-05-11 23:17:44'),
(46, 'Lighter spray candy  30 pcs', '19', '125.00', '125.00', 15, 32, '2024-05-11 23:18:02'),
(47, 'WESLSY YOGURT MILK 30 PCS', '50', '50.00', '50.00', 21, 33, '2024-05-11 23:18:19'),
(48, 'EYEBALL SOFT GUMMY CANDY 30 PCS', '89', '120.00', '120.00', 15, 34, '2024-05-11 23:18:35'),
(49, 'assorted gummy 500g per pack', '27', '75.00', '75.00', 15, 35, '2024-05-11 23:19:42'),
(51, 'Dracula Candy 30 pieces', '43', '130.00', '130.00', 15, 36, '2024-05-11 23:20:53'),
(52, 'Drawing Jam Weslsy 30pcs', '50', '135.00', '135.00', 15, 37, '2024-05-11 23:21:20'),
(53, 'MINI ANIMLS TOY CANDY 30 PCS', '96', '140.00', '140.00', 15, 38, '2024-05-11 23:22:08'),
(54, 'CANDY BALLS GUO 20 PCS PER PACK', '86', '90.00', '90.00', 15, 39, '2024-05-11 23:22:26'),
(55, 'BODI’S COOKIE WHITE CHOCOLATE 30 PCS', '96', '145.00', '145.00', 17, 40, '2024-05-11 23:22:48'),
(56, 'SQUISHY HAMBURGER TOY 12 PCS', '50', '450.00', '450.00', 22, 41, '2024-05-11 23:23:24'),
(57, 'CONDENSED YOGURT GUMMY 30 PCS', '100', '125.00', '125.00', 21, 42, '2024-05-11 23:23:48'),
(58, 'Fruit Stripe 30 pieces', '14', '120.00', '120.00', 15, 43, '2024-05-11 23:24:05'),
(60, 'CHOCO PIE 30 PCS LOOTBAG FILLER PANINDA', '100', '130.00', '130.00', 23, 44, '2024-05-11 23:24:57'),
(61, 'DELICIOUS CANDY LOLLIPOP 30 PCS PER BOX XQR', '25', '125.00', '125.00', 15, 45, '2024-05-11 23:25:14'),
(62, 'TROLLI HOTDOG GUMMY CANDY 60 PCS', '49', '350.00', '350.00', 15, 46, '2024-05-11 23:25:34'),
(63, 'FORK CHOCOLATE 30 PCS WESLSY', '31', '130.00', '130.00', 19, 47, '2024-05-11 23:26:27'),
(64, 'SNS CRISPY CHOCO BOTTLE 30 pcs', '94', '120.00', '120.00', 15, 48, '2024-05-11 23:26:44'),
(65, 'Summer Lollipop 30 pcs', '6', '120.00', '120.00', 15, 49, '2024-05-11 23:27:01'),
(66, 'WESLSY EYEBOMB CANDY 30pcs', '30', '140.00', '140.00', 15, 50, '2024-05-11 23:27:31'),
(67, 'TROLLI BURGER 60 PCS party burger trolli gummy candy', '50', '350.00', '350.00', 15, 51, '2024-05-11 23:27:57'),
(68, 'BIG FOOT CANDY 30 pcs per box', '47', '130.00', '130.00', 15, 52, '2024-05-11 23:28:42'),
(69, 'DRACULA GUMMY CANDY 30 PCS', '47', '130.00', '130.00', 15, 53, '2024-05-11 23:29:08'),
(70, 'Vivi Nata Jelly Assorted flavor 12 pcs COCO', '48', '85.00', '85.00', 16, 54, '2024-05-11 23:29:21'),
(71, 'ACID SUGAR DEVIL SOUR AND SWEET CANDY', '18', '130.00', '130.00', 15, 55, '2024-05-11 23:29:40'),
(73, 'DONUT LOLLIPOP 30 PCS CANDY', '99', '140.00', '140.00', 15, 56, '2024-05-11 23:30:29'),
(74, 'MAGIC CHEW SOUR CHEWY CANDY 5 FLAVORS', '42', '40.00', '40.00', 15, 57, '2024-05-11 23:30:44'),
(79, 'YOYO AVENGERS ( SUPER SPIN YOYO SERIES) 12 PCS', '50', '230.00', '230.00', 14, 58, '2024-05-11 23:32:13'),
(80, 'LED LIPS Candy 30pcs', '21', '120.00', '120.00', 15, 59, '2024-05-11 23:32:52'),
(81, 'Mini Fries Gummy 30pcs', '1', '110.00', '110.00', 15, 60, '2024-05-11 23:33:15'),
(82, 'CANDY BALLS WESLSY 20 PCS', '33', '85.00', '85.00', 15, 61, '2024-05-11 23:33:34'),
(83, 'Super Tattoo Gum 200 pcs', '-22', '125.00', '125.00', 15, 62, '2024-05-11 23:33:47'),
(84, 'Mochi Donut Gummy 30Pieces', '25', '115.00', '115.00', 15, 63, '2024-05-11 23:34:03'),
(85, 'GIANT FIESTA GUM WITH TATTOO BUBBLE GUM 200 PCS JAR', '40', '140.00', '140.00', 15, 64, '2024-05-11 23:34:30'),
(86, 'Heart Jelly 12 pieces', '8', '65.00', '65.00', 16, 65, '2024-05-11 23:34:42'),
(87, 'WESLSY COLA JELLY 30 PCS PACK', '10', '65.00', '65.00', 16, 66, '2024-05-11 23:34:57'),
(89, 'Fitz Candy Fruit 30pcs', '53', '120.00', '120.00', 15, 67, '2024-05-11 23:35:29'),
(90, 'TIWI YAK BABY XTRA SOUR FLAVOR 12 PCS PACK', '45', '70.00', '70.00', 15, 68, '2024-05-11 23:35:44'),
(91, 'COCO SNAKE FRUITS SYRUP 30 PCS', '26', '130.00', '130.00', 25, 69, '2024-05-11 23:36:04'),
(92, 'Sunrise sour belt rainbow 1kg', '490', '210.00', '210.00', 15, 70, '2024-05-11 23:36:17'),
(93, 'Adora Mixed fruit vegetable crisp 168g', '493', '110.00', '110.00', 26, 71, '2024-05-11 23:37:10'),
(94, 'adorable Cocoa marshmallow 300g', '50', '115.00', '115.00', 16, 72, '2024-05-11 23:37:28'),
(95, 'Crispy bar chocolate filled/ 30pcs/ lootbag fillers/ paninda/ party giveaways', '53', '130.00', '130.00', 19, 73, '2024-05-11 23:37:44'),
(96, 'Whistle balloon Candy 30pcs', '59', '130.00', '130.00', 15, 74, '2024-05-11 23:38:22'),
(98, 'MANGO CUBE GUMMY 2.5 KG', '54', '380.00', '380.00', 15, 75, '2024-05-11 23:38:58'),
(99, 'GUMMI SERIES CANDY ASSORTED', '39', '380.00', '380.00', 15, 76, '2024-05-11 23:39:13'),
(101, 'WESLSY SPICED SUNFLOWER SEEDS 20 pcs', '47', '90.00', '90.00', 13, 77, '2024-05-11 23:40:36'),
(102, 'PEN SPRAY CANDY 30 Pcs', '18', '130.00', '130.00', 15, 78, '2024-05-11 23:41:01'),
(103, 'NIPPLE RING CANDY 30 PCS', '29', '130.00', '130.00', 15, 79, '2024-05-11 23:41:15'),
(104, 'WESLSY STONE CHOCOLATE 20 PCS PACK', '43', '90.00', '90.00', 19, 80, '2024-05-11 23:41:33'),
(105, 'ASSORTED WESLSY GUMMIES 30 PCS CANDY', '-7', '135.00', '135.00', 15, 81, '2024-05-11 23:41:57'),
(111, 'MIXED FOOD VEGETABLE CRISP 168g', '100', '135.00', '135.00', 26, 82, '2024-05-11 23:44:56'),
(112, 'WOW ASIM Candy 20pieces', '37', '95.00', '95.00', 15, 83, '2024-05-11 23:45:13'),
(113, 'Windmill Lollipop 30 pcs weslsy', '36', '130.00', '130.00', 15, 84, '2024-05-11 23:45:26'),
(114, 'CANDY BRACELET 30 PCS', '8', '130.00', '130.00', 15, 85, '2024-05-11 23:45:41'),
(115, 'BODI’S CHOCOLATE 30 pcs', '53', '125.00', '125.00', 19, 86, '2024-05-11 23:46:29'),
(116, 'WESLSY SOUR DROPS 20 pcs', '54', '90.00', '90.00', 15, 87, '2024-05-11 23:46:54'),
(117, 'Mi AND Ni Mi&amp;amp;Ni BEANS 30 PCS SnS MILK CHOCOLATE', '23', '130.00', '130.00', 19, 88, '2024-05-11 23:47:13'),
(118, 'Licorice 1.5kg (Strawberry)', '201', '300.00', '300.00', 15, 89, '2024-05-11 23:47:28'),
(119, '[MM] CANDY TOOTHPASTE PUDDING ASSORTED FLAVOR 30 pcs', '37', '120.00', '120.00', 15, 90, '2024-05-11 23:47:45'),
(120, 'Sour Rainbow Candy Stripes 30pcs', '54', '120.00', '120.00', 15, 91, '2024-05-11 23:48:00'),
(124, 'Try_product', '1', '123.00', '123.00', 17, 0, '2024-05-28 16:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(1, 118, 6, '1800.00', '2023-12-18'),
(2, 105, 1, '135.00', '2023-12-18'),
(3, 105, 1, '135.00', '2023-05-13'),
(4, 118, 1, '300.00', '2023-05-13'),
(5, 118, 1, '300.00', '2023-12-16'),
(6, 32, 1, '110.00', '2023-12-16'),
(7, 113, 1, '130.00', '2023-12-16'),
(8, 58, 1, '120.00', '2023-12-16'),
(9, 105, 1, '135.00', '2023-12-16'),
(10, 65, 1, '120.00', '2023-12-16'),
(11, 83, 1, '125.00', '2023-12-16'),
(12, 58, 1, '120.00', '2023-12-16'),
(13, 84, 1, '115.00', '2023-12-17'),
(14, 102, 1, '130.00', '2023-12-17'),
(15, 81, 1, '110.00', '2023-12-17'),
(16, 17, 1, '130.00', '2023-12-17'),
(17, 118, 1, '300.00', '2023-12-17'),
(18, 118, 1, '300.00', '2023-12-17'),
(19, 118, 1, '300.00', '2023-12-17'),
(20, 83, 1, '125.00', '2023-12-18'),
(21, 98, 1, '380.00', '2023-12-18'),
(22, 74, 1, '40.00', '2023-12-18'),
(23, 74, 1, '40.00', '2023-12-18'),
(24, 86, 1, '65.00', '2023-12-18'),
(25, 65, 1, '120.00', '2023-12-18'),
(26, 117, 1, '130.00', '2023-12-18'),
(27, 83, 1, '125.00', '2023-12-18'),
(28, 17, 1, '130.00', '2023-12-18'),
(29, 118, 1, '300.00', '2023-12-18'),
(30, 37, 1, '120.00', '2023-12-18'),
(31, 118, 1, '300.00', '2023-12-18'),
(32, 69, 1, '130.00', '2023-12-18'),
(33, 118, 1, '300.00', '2023-12-18'),
(34, 118, 1, '300.00', '2023-12-18'),
(35, 118, 1, '300.00', '2023-12-18'),
(36, 83, 1, '125.00', '2023-12-18'),
(37, 118, 6, '1800.00', '2023-12-18'),
(38, 118, 1, '300.00', '2023-12-19'),
(39, 118, 1, '300.00', '2023-12-19'),
(40, 20, 2, '270.00', '2023-12-19'),
(41, 44, 2, '260.00', '2023-12-19'),
(42, 118, 3, '900.00', '2023-12-19'),
(43, 118, 2, '600.00', '2023-12-19'),
(44, 118, 2, '600.00', '2023-12-19'),
(45, 118, 4, '1200.00', '2023-12-19'),
(46, 118, 1, '300.00', '2023-12-19'),
(47, 118, 1, '300.00', '2023-12-19'),
(48, 118, 2, '600.00', '2023-12-19'),
(49, 118, 3, '900.00', '2023-12-19'),
(50, 44, 2, '260.00', '2023-12-19'),
(51, 118, 1, '300.00', '2023-12-19'),
(52, 118, 1, '300.00', '2023-12-19'),
(53, 118, 1, '300.00', '2023-12-19'),
(54, 118, 3, '900.00', '2023-12-19'),
(55, 22, 1, '41.00', '2023-12-19'),
(56, 95, 1, '130.00', '2023-12-19'),
(57, 118, 1, '300.00', '2023-12-19'),
(58, 19, 1, '130.00', '2023-12-19'),
(59, 118, 1, '300.00', '2023-12-19'),
(60, 118, 1, '300.00', '2023-12-19'),
(61, 58, 1, '120.00', '2023-12-19'),
(62, 55, 1, '145.00', '2023-12-19'),
(63, 95, 1, '130.00', '2023-12-19'),
(64, 98, 1, '380.00', '2023-12-20'),
(65, 118, 2, '600.00', '2023-12-20'),
(66, 118, 1, '300.00', '2023-12-20'),
(67, 20, 1, '135.00', '2023-12-20'),
(68, 81, 1, '110.00', '2023-12-20'),
(69, 83, 1, '125.00', '2023-12-20'),
(70, 119, 1, '120.00', '2023-12-20'),
(71, 58, 1, '120.00', '2023-12-20'),
(72, 30, 1, '140.00', '2023-12-20'),
(73, 118, 1, '300.00', '2023-12-20'),
(74, 83, 1, '125.00', '2023-12-20'),
(75, 29, 2, '250.00', '2023-12-20'),
(76, 118, 1, '300.00', '2023-12-20'),
(77, 118, 1, '300.00', '2023-12-20'),
(78, 119, 1, '120.00', '2023-12-20'),
(79, 81, 1, '110.00', '2023-12-20'),
(80, 46, 1, '125.00', '2023-12-20'),
(81, 118, 1, '300.00', '2023-12-20'),
(82, 61, 1, '125.00', '2023-12-20'),
(83, 83, 1, '125.00', '2023-12-20'),
(84, 95, 1, '130.00', '2023-12-20'),
(85, 58, 1, '120.00', '2023-12-20'),
(86, 118, 1, '300.00', '2023-12-20'),
(87, 118, 1, '300.00', '2023-12-20'),
(88, 63, 1, '130.00', '2023-12-20'),
(89, 101, 1, '90.00', '2023-12-20'),
(90, 65, 3, '360.00', '2023-12-20'),
(91, 19, 2, '260.00', '2023-12-20'),
(92, 65, 2, '240.00', '2023-12-20'),
(93, 83, 1, '125.00', '2023-12-20'),
(94, 45, 3, '360.00', '2023-12-20'),
(95, 83, 1, '125.00', '2023-12-20'),
(96, 83, 1, '125.00', '2023-12-20'),
(97, 83, 2, '250.00', '2023-12-22'),
(98, 118, 2, '600.00', '2023-12-22'),
(99, 118, 3, '900.00', '2023-12-22'),
(100, 118, 3, '900.00', '2023-12-22'),
(101, 83, 2, '250.00', '2023-12-22'),
(102, 118, 1, '300.00', '2023-12-22'),
(103, 118, 1, '300.00', '2023-12-22'),
(104, 118, 1, '300.00', '2023-12-22'),
(105, 118, 1, '300.00', '2023-12-21'),
(106, 118, 2, '600.00', '2023-12-21'),
(107, 118, 2, '600.00', '2023-12-21'),
(108, 118, 1, '300.00', '2023-12-21'),
(109, 118, 1, '300.00', '2023-12-21'),
(110, 118, 1, '300.00', '2023-12-21'),
(111, 118, 1, '300.00', '2023-12-22'),
(112, 44, 2, '260.00', '2023-12-22'),
(113, 118, 1, '300.00', '2023-12-22'),
(114, 118, 2, '600.00', '2023-12-22'),
(115, 118, 1, '300.00', '2023-12-22'),
(116, 118, 1, '300.00', '2023-12-22'),
(117, 118, 1, '300.00', '2023-12-22'),
(118, 118, 1, '300.00', '2023-12-22'),
(119, 118, 1, '300.00', '2023-12-22'),
(120, 118, 1, '300.00', '2023-12-22'),
(121, 118, 1, '300.00', '2023-12-22'),
(122, 118, 1, '300.00', '2023-12-22'),
(123, 118, 1, '300.00', '2023-12-22'),
(124, 118, 2, '600.00', '2023-12-22'),
(125, 118, 6, '1800.00', '2023-12-22'),
(126, 118, 10, '3000.00', '2023-12-22'),
(127, 118, 10, '3000.00', '2023-12-22'),
(128, 118, 1, '300.00', '2023-12-23'),
(129, 63, 1, '130.00', '2023-12-23'),
(130, 17, 1, '130.00', '2023-12-23'),
(131, 104, 1, '90.00', '2023-12-22'),
(132, 104, 1, '90.00', '2023-12-23'),
(133, 58, 1, '120.00', '2023-12-23'),
(134, 54, 1, '90.00', '2023-12-23'),
(135, 41, 1, '120.00', '2023-12-23'),
(136, 104, 2, '180.00', '2023-12-23'),
(137, 118, 1, '300.00', '2023-12-23'),
(138, 118, 1, '300.00', '2023-12-23'),
(139, 83, 1, '125.00', '2023-12-23'),
(140, 81, 1, '110.00', '2023-12-23'),
(141, 118, 1, '300.00', '2023-12-23'),
(142, 118, 1, '300.00', '2023-12-23'),
(143, 83, 1, '125.00', '2023-12-23'),
(144, 81, 1, '110.00', '2023-12-23'),
(145, 118, 4, '1200.00', '2023-12-23'),
(146, 118, 1, '300.00', '2023-12-23'),
(147, 118, 1, '300.00', '2023-12-23'),
(148, 118, 1, '300.00', '2023-12-23'),
(149, 58, 1, '120.00', '2023-12-23'),
(150, 23, 1, '360.00', '2023-12-23'),
(151, 118, 1, '300.00', '2023-12-23'),
(152, 118, 1, '300.00', '2023-12-23'),
(153, 92, 1, '210.00', '2023-12-23'),
(154, 118, 1, '300.00', '2023-12-23'),
(155, 98, 1, '380.00', '2023-12-23'),
(156, 118, 3, '900.00', '2023-12-23'),
(157, 43, 5, '3250.00', '2023-12-23'),
(158, 118, 1, '300.00', '2023-12-23'),
(159, 118, 1, '300.00', '2023-12-23'),
(160, 71, 1, '130.00', '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(10, 'Amanda Louise Domdom', 'Amanda', '3becabefd2135707bcb862d58468a63a97ea877a', 2, '9skhj3t10.jpg', 1, '2024-05-28 18:06:31'),
(11, 'Ivan Christopher Vargas', 'Ivan ', 'c9ffd648cae0e68c0f96736e53f60a54eb53f9e2', 1, 'anu6ly311.jpg', 1, '2024-06-01 08:59:06'),
(13, 'Ralph Ace Penaflor', 'Ralph', '0d0a70288a76e270a897ab25760bd127d690a997', 1, 'nc31jda613.png', 1, '2024-05-27 15:42:17'),
(14, 'izak Hernandez', 'Izak', '78f0ea1b9724a66aec6f8d1b29117948eab680bb', 3, 'no_image.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
