-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `juicydude`
--

-- --------------------------------------------------------

--
-- 資料表結構 `kind`
--

CREATE TABLE `kind` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `kind`
--

INSERT INTO `kind` (`id`, `name`) VALUES
(1, 'phone'),
(2, 'TV'),
(3, 'food');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `shop` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `product_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `shop`, `name`, `price`, `photo_url`, `link`, `amount`, `create_date`, `product_type`) VALUES
(32, 'Yahoo', 'Apple iPhone 13 256G 6.1吋智慧型手機', 29400, 'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685151.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9685151.html', 0, '0000-00-00', 1),
(33, 'Yahoo', '2020 Apple iPhone 12 128G 6.1吋智慧型手機', 24500, 'https://s.yimg.com/zp/MerchandiseImages/6B05CC323D-SP-9028553.jpg', 'https://tw.buy.yahoo.com/gdsale/2020-Apple-iPhone-12-128G-6-1吋智慧型手機-9218365.html', 0, '0000-00-00', 1),
(34, 'Yahoo', 'Apple iPhone 13 mini 128G 5.4吋智慧型手機', 22900, 'https://s.yimg.com/zp/MerchandiseImages/390D50C611-SP-10375706.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-128G-5-4吋智慧型手機-9686616.html', 0, '0000-00-00', 1),
(35, 'Yahoo', 'Apple iPhone 11 64G 6.1吋智慧型手機', 16500, 'https://s.yimg.com/zp/MerchandiseImages/7dbe3bf824-Gd-9525429.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-11-64G-6-1吋智-9525429.html', 0, '0000-00-00', 1),
(36, 'Yahoo', 'Apple iPhone 12 Pro 256G 6.1吋智慧型手機', 37400, 'https://s.yimg.com/zp/MerchandiseImages/205CCCE65E-SP-9490550.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-Pro-256G-6-1吋智慧型手機-9383405.html', 0, '0000-00-00', 1),
(37, 'Yahoo', 'Apple iPhone 13 512G 6.1吋智慧型手機', 36400, 'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685149.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-512G-6-1吋智慧型手機-9685149.html', 0, '0000-00-00', 1),
(38, 'Yahoo', 'Apple iPhone 13 128G MINI 5.4吋智慧型手機', 22900, 'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374417.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-128G-MINI-5-4吋智慧型手機-9687210.html', 0, '0000-00-00', 1),
(39, 'Yahoo', 'Apple iPhone 12 Pro Max 128G 6.7吋智慧型手機', 37900, 'https://s.yimg.com/zp/MerchandiseImages/205CCCE65E-SP-9375435.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-Pro-Max-128G-6-7吋智慧型手機-9341958.html', 0, '0000-00-00', 1),
(40, 'Yahoo', 'Apple iPhone 13 256G 6.1吋智慧型手機', 29400, 'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374220.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9687220.html', 0, '0000-00-00', 1),
(41, 'Yahoo', 'Apple iPhone 13 mini 128G 5G手機', 22900, 'https://s.yimg.com/zp/MerchandiseImages/1F7ACA1678-SP-10376053.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-128G-5G手機-9687299.html', 0, '0000-00-00', 1),
(42, 'Yahoo', 'Apple iPhone 12 128G 6.1吋智慧型手機', 24500, 'https://s.yimg.com/zp/MerchandiseImages/E69C47DC52-SP-9007246.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-128G-6-1吋智慧型手機-9330891.html', 0, '0000-00-00', 1),
(43, 'Yahoo', 'Apple iPhone 12 Pro Max 256G 6.7吋智慧型手機', 41400, 'https://s.yimg.com/zp/MerchandiseImages/205CCCE65E-SP-9375474.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-Pro-Max-256G-6-7吋智慧型手機-9341957.html', 0, '0000-00-00', 1),
(44, 'Yahoo', 'Apple iPhone 13 256G', 29400, 'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10392018.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-9692015.html', 0, '0000-00-00', 1),
(45, 'Yahoo', 'Apple iPhone 13 mini 512G 5.4吋 智慧型手機', 33400, 'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685203.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-512G-5-4吋-智慧型手機-9685203.html', 0, '0000-00-00', 1),
(46, 'Yahoo', 'Apple iPhone 13 256G 組合', 30000, 'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10393916.jpg', 'https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-組合-9692501.html', 0, '0000-00-00', 1),
(47, 'Yahoo', 'SAMSUNG Galaxy A52s 5G (6G/128G) 智慧型手機', 11880, 'https://s.yimg.com/zp/MerchandiseImages/25E30BAE1A-Gd-9679520.jpg', 'https://tw.buy.yahoo.com/gdsale/SAMSUNG-Galaxy-A52s-5G-6G-128G-智慧型手機-9679520.html', 0, '0000-00-00', 1),
(48, 'Yahoo', '[限量原廠殼貼] Samsung M12 (4G/128G) 6.5吋 4+1鏡頭智慧手機', 4990, 'https://s.yimg.com/zp/MerchandiseImages/D157B46C9E-Gd-9465835.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-M12-4G-128G-6-5吋-4-1鏡頭智慧手機-9465835.html', 0, '0000-00-00', 1),
(49, 'Yahoo', 'SAMSUNG Galaxy A52s 5G (8G/256G) 智慧型手機', 13770, 'https://s.yimg.com/zp/MerchandiseImages/EBEF9E6D7A-Gd-9676989.jpg', 'https://tw.buy.yahoo.com/gdsale/SAMSUNG-Galaxy-A52s-5G-8G-256G-智慧型手機-9676989.html', 0, '0000-00-00', 1),
(50, 'Yahoo', '[原廠背蓋+保貼組] Samsung M32 (6G/128G) 6.4吋 4+1鏡頭智慧手機', 6990, 'https://s.yimg.com/zp/MerchandiseImages/76764DB4AE-Gd-9610909.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-M32-6G-128G-6-4吋-4-1鏡頭智慧手機-9610909.html', 0, '0000-00-00', 1),
(51, 'Yahoo', 'Samsung 三星 Galaxy Z Flip3 5G 6.7吋 折疊智慧手機 (8G/128G)', 30888, 'https://s.yimg.com/zp/MerchandiseImages/BFCABFD2A1-Gd-9643603.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-三星-Galaxy-Z-Flip3-5G-6-7吋-折疊智慧手機-8G-128G-9643603.html', 0, '0000-00-00', 1),
(52, 'Yahoo', 'Samsung S21 Ultra (12G/256G) 6.8吋手機', 32800, 'https://s.yimg.com/zp/MerchandiseImages/FE1B4315D4-Gd-9337680.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-S21-Ultra-12G-256G-6-8吋手機-9337680.html', 0, '0000-00-00', 1),
(53, 'Yahoo', 'Samsung  Galaxy Note 20 Ultra 5G (12G/256G) 6.9吋手機', 28990, 'https://s.yimg.com/zp/MerchandiseImages/C46A87DC18-Gd-9108160.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-Note-20-Ultra-5G-12G-256G-6-9吋手機-9108160.html', 0, '0000-00-00', 1),
(54, 'Yahoo', 'Samsung Galaxy A52s_8GB/256GB-(5G)6.5吋智慧型手機', 13490, 'https://s.yimg.com/zp/MerchandiseImages/07B73B1A8A-Gd-9670302.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-A52s-8GB-256GB-5G-6-5吋智慧型手機-9670302.html', 0, '0000-00-00', 1),
(55, 'Yahoo', 'Samsung 三星 Galaxy Z Flip3 5G 6.7吋 折疊智慧手機 (8G/256G)', 32888, 'https://s.yimg.com/zp/MerchandiseImages/F83906E452-Gd-9646478.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-三星-Galaxy-Z-Flip3-5G-6-7吋-折疊智慧手機-8G-256G-9646478.html', 0, '0000-00-00', 1),
(56, 'Yahoo', 'Samsung Galaxy A52s 5G (8G/256G) 6.5吋 智慧型手機', 13490, 'https://s.yimg.com/zp/MerchandiseImages/EBEF9E6D7A-Gd-9669184.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-A52s-5G-8G-256G-6-5吋-智慧型手機-9669184.html', 0, '0000-00-00', 1),
(57, 'Yahoo', 'Samsung Galaxy A52s 5G (6G/128G) 6.5吋五鏡頭智慧手機', 11990, 'https://s.yimg.com/zp/MerchandiseImages/25E30BAE1A-Gd-9664569.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-A52s-5G-6G-128G-6-5吋五鏡頭智慧手機-9664569.html', 0, '0000-00-00', 1),
(58, 'Yahoo', 'Samsung Galaxy A52s 5G (8G/256G) 6.5吋八核心智慧型手機', 13580, 'https://s.yimg.com/zp/MerchandiseImages/62B091B469-SP-10357539.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-A52s-5G-8G-256G-6-5吋八核心智慧型手機-9681357.html', 0, '0000-00-00', 1),
(59, 'Yahoo', 'Samsung Galaxy Note 20 Ultra 5G (12G/256G) 6.9吋智慧手機', 30490, 'https://s.yimg.com/zp/MerchandiseImages/A8A80A60FA-Product-27011956.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-Galaxy-Note-20-Ultra-5G-12G-256G-6-9吋智慧手機-9350252.html', 0, '0000-00-00', 1),
(60, 'Yahoo', 'Samsung S21 Ultra (16G/512G) 6.8吋手機', 37200, 'https://s.yimg.com/zp/MerchandiseImages/AE1E82BA8E-Gd-9337685.jpg', 'https://tw.buy.yahoo.com/gdsale/Samsung-S21-Ultra-16G-512G-6-8吋手機-9337685.html', 0, '0000-00-00', 1),
(61, 'Yahoo', 'SAMSUNG Galaxy A52S 5G (6G/128G) 6.5吋智慧手機', 11990, 'https://s.yimg.com/zp/MerchandiseImages/c106bc8f40-Gd-9673150.jpg', 'https://tw.buy.yahoo.com/gdsale/SAMSUNG-Galaxy-A52S-5G-6G-128G-6-5吋智慧手機-9673150.html', 0, '0000-00-00', 1),
(62, 'Yahoo', 'Beats EP 耳罩式耳機', 2990, 'https://s.yimg.com/zp/MerchandiseImages/1ED3B70F78-Gd-6841373.jpg', 'https://tw.buy.yahoo.com/gdsale/Beats-EP-耳罩式耳機-6841373.html', 0, '0000-00-00', 1),
(63, 'Yahoo', '小米 Redmi AirDots 2 真無線藍芽耳機', 729, 'https://s.yimg.com/zp/MerchandiseImages/B39956158A-Gd-9139729.jpg', 'https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots-2-真無線藍芽耳機-9139729.html', 0, '0000-00-00', 1),
(64, 'Yahoo', '【正版授權】Rilakkuma拉拉熊/ SNOOPY史努比 無線藍牙耳機 (兼容iOS與Android )', 880, 'https://s.yimg.com/zp/MerchandiseImages/D09218E3E7-Gd-9371798.jpg', 'https://tw.buy.yahoo.com/gdsale/正版授權-Rilakkuma拉拉熊-x-SNOOPY史努比-無線藍牙耳機-兼容iOS與Android-9371798.html', 0, '0000-00-00', 1),
(65, 'Yahoo', 'Beats Studio Buds 真無線降噪入耳式耳機(原廠公司貨)', 4790, 'https://s.yimg.com/zp/MerchandiseImages/071A65ED19-Gd-9627798.jpg', 'https://tw.buy.yahoo.com/gdsale/Beats-Studio-Buds-真無線降噪入耳式耳機-原廠公司貨-9627798.html', 0, '0000-00-00', 1),
(66, 'Yahoo', 'realme Buds Q2 真無線藍牙耳機', 545, 'https://s.yimg.com/zp/MerchandiseImages/9861eb6d27-Gd-9482942.jpg', 'https://tw.buy.yahoo.com/gdsale/realme-Buds-Q2-真無線藍牙耳機-9482942.html', 0, '0000-00-00', 1),
(67, 'Yahoo', 'SONY 耳罩式耳機 WH-1000XM4 無線藍芽 智慧降噪 HiRes', 8990, 'https://s.yimg.com/zp/MerchandiseImages/F332385F6E-SP-8950034.jpg', 'https://tw.buy.yahoo.com/gdsale/SONY-耳罩式耳機-WH-1000XM4-無線藍芽-智慧降噪-HiRes-9186082.html', 0, '0000-00-00', 1),
(68, 'Yahoo', 'Beats Flex 頸掛無線入耳式耳機 (原廠公司貨)', 1599, 'https://s.yimg.com/zp/MerchandiseImages/19860726E2-Gd-9278261.jpg', 'https://tw.buy.yahoo.com/gdsale/Beats-Flex-頸掛無線入耳式耳機-原廠公司貨-9278261.html', 0, '0000-00-00', 1),
(69, 'Yahoo', '【Jabra】Elite 3 真無線藍牙耳機', 2790, 'https://s.yimg.com/zp/MerchandiseImages/911C2C3051-Gd-9697259.jpg', 'https://tw.buy.yahoo.com/gdsale/Jabra-Elite-3-真無線藍牙耳機-9697259.html', 0, '0000-00-00', 1),
(70, 'Yahoo', '【現貨】[Sony公司貨 保固12+6] WF-1000XM4 主動降噪 真無線藍牙耳機(IPX4防水/清晰通話)', 7990, 'https://s.yimg.com/zp/MerchandiseImages/B2CFE7C658-Product-27981818.jpg', 'https://tw.buy.yahoo.com/gdsale/SONY-WF-1000XM4-真無線-藍牙降噪耳機-9569952.html', 0, '0000-00-00', 1),
(71, 'Yahoo', 'ifive】追風族（機車族）骨傳導概念藍牙耳機', 869, 'https://s.yimg.com/zp/MerchandiseImages/F6459276DB-Product-25915480.jpg', 'https://tw.buy.yahoo.com/gdsale/ifive-追風族-機車族-骨傳導概念藍牙耳機-9087572.html', 0, '0000-00-00', 1),
(72, 'Yahoo', '小米 Redmi AirDots3 真無線藍芽耳機', 1490, 'https://s.yimg.com/zp/MerchandiseImages/ED3E58B6F6-Gd-9483457.jpg', 'https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-9483457.html', 0, '0000-00-00', 1),
(73, 'Yahoo', 'Anker Soundcore Liberty Air 2 Pro 主動降噪真無線藍牙耳機', 4280, 'https://s.yimg.com/zp/MerchandiseImages/E718019C29-Gd-9405233.jpg', 'https://tw.buy.yahoo.com/gdsale/Anker-Soundcore-Liberty-Air-2-Pro-主動降噪真無線藍牙耳機-9405233.html', 0, '0000-00-00', 1),
(74, 'Yahoo', '小米 Redmi AirDots3 真無線藍芽耳機(星空藍)', 1590, 'https://s.yimg.com/zp/MerchandiseImages/FF94ADCD0B-SP-9723205.jpg', 'https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-星空藍-9469413.html', 0, '0000-00-00', 1),
(75, 'Yahoo', '[SONY 索尼公司貨保固12+6] WF-1000XM4 主動式降噪 真無線藍牙耳機', 7990, 'https://s.yimg.com/zp/MerchandiseImages/a66e62f410-Gd-9557534.jpg', 'https://tw.buy.yahoo.com/gdsale/SONY-HiRes-Wireless-真無線降噪耳機-WF-1000XM4-9557534.html', 0, '0000-00-00', 1),
(76, 'Yahoo', 'DTA-AirPro3 無線藍芽耳機 三代1:1 原模打造 藍牙耳機', 412, 'https://s.yimg.com/zp/MerchandiseImages/11B09B7A0F-SP-8964362.jpg', 'https://tw.buy.yahoo.com/gdsale/DTA-AirPro3-無線藍芽耳機-三代1-1-原模打造-藍牙耳機-9191375.html', 0, '0000-00-00', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `kind`
--
ALTER TABLE `kind`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `kind`
--
ALTER TABLE `kind`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
