-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2023 lúc 01:18 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `techstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `position`, `creation_date`, `update_date`) VALUES
(1, 'Laptop', 1, '2023-11-20 13:15:43', '2023-11-20 13:15:43'),
(2, 'Điện thoại', 2, '2023-11-20 13:18:48', '2023-11-20 13:18:48'),
(3, 'Tai nghe', 3, '2023-11-20 13:19:13', '2023-11-20 13:19:13'),
(4, 'Loa', 4, '2023-11-20 13:19:13', '2023-11-20 13:19:13'),
(5, 'Bàn phím', 5, '2023-11-20 13:19:47', '2023-11-20 13:19:47'),
(6, 'Chuột', 6, '2023-11-20 13:19:47', '2023-11-20 13:19:47'),
(7, 'Thẻ nhớ', 7, '2023-11-20 13:21:49', '2023-11-20 13:21:49'),
(8, 'Sạc dự phòng', 8, '2023-11-20 13:21:49', '2023-11-20 13:21:49'),
(9, 'USB', 9, '2023-11-20 13:21:49', '2023-11-20 13:21:49'),
(10, 'Màn hình máy tính', 10, '2023-11-20 13:21:49', '2023-11-20 13:21:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(50) NOT NULL,
  `bonus` text DEFAULT NULL,
  `chip` varchar(100) DEFAULT NULL,
  `turbo` double(2,1) DEFAULT NULL,
  `screen_size` double(3,1) DEFAULT NULL,
  `GPU` text DEFAULT NULL,
  `cache` int(11) DEFAULT NULL,
  `disk` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`id`, `brand`, `type`, `model`, `size`, `color`, `bonus`, `chip`, `turbo`, `screen_size`, `GPU`, `cache`, `disk`, `ram`) VALUES
(1, 'Acer', 'Gaming', 'Vỏ nhựa', '363.4 x 255 x 23.9mm (WxDxH)', 'Đen', 'Chuột không dây', 'AMD Ryzen 5 ', 4.2, 15.6, 'GeForce GTX 1650 4GB', 10, 512, 16),
(2, 'Dell', 'Workstation ', 'Kim loại', '36 x 255 x 24mm (WxDxH)', 'Đen', NULL, 'Intel Core i3 Alder Lake - 1215U', 1.2, 15.6, 'Card tích hợp - Intel UHD Graphics', 10, 512, 8),
(3, 'Asus', 'Gaming', 'Võ nhựa', '363.4 x 255 x 23.9mm (WxDxH)', 'Đen', 'Chuột không dây', 'Intel Core i9-13900H', 3.5, 15.6, 'NVIDIA GeForce RTX 4060', 20, 1000, 32),
(4, 'HP', 'Office', 'Nhôm', '363.4 x 255 x 23.9mm (WxDxH)', 'Xám', NULL, 'Intel Core i3 1215U', 1.2, 15.6, 'Intel UHD Graphics', 9, 256, 8),
(5, 'Lenovo', 'Workstation ', 'Kim loại', '355.4 x 260 x 25mm (WxDxH)', 'Bạc', 'Tai nghe Gaming', 'Intel Core i5 1155G7', 2.5, 15.6, 'Intel Iris Xe Graphics', 9, 512, 8),
(6, 'Apple', 'Business ', 'Hợp kim', '30.41 x 21.24 x 1.61 cm(WxDxH)\r\n', 'Xám bạc', NULL, 'Apple M1', 3.5, 13.3, 'VGA 7-core', 20, 256, 8),
(7, 'Apple', 'Business ', 'Kim loại', '30.41 x 21.24 x 1.61 cm(WxDxH)', 'Trắng', NULL, 'Apple M2', 3.5, 14.5, 'GPU 16 nhân Neural Engine', 20, 512, 16),
(8, 'MSI', 'Gaming', 'Kim loại', '359 x 254 x 21.7mm (WxDxH)', 'Đen', 'Tai nghe Gaming', 'Intel Core i5 11400H', 4.5, 15.6, 'NVIDIA GeForce GTX 1650 Max-Q Design', 20, 1000, 32),
(9, 'Apple', 'Smartphone', 'Hợp kim Titan', '159,9 x 76,7 x 8,25mm (WxDxH)', 'Đen', NULL, 'Chip A17 Pro', NULL, 6.7, 'GPU 6 nhân mới', 9, 1000, 8),
(10, 'Apple', 'Smartphone', 'Hợp kim Titan', '156 x 77 x 8,25mm (WxDxH)', 'Tím', NULL, 'Chip A16 Pro', NULL, 6.5, 'GPU 6 nhân mới', 7, 256, 4),
(11, 'Oppo', 'Điện thoại gập', 'Nhôm ', '156 x 77 x 8,25mm (WxDxH)', 'Hồng', NULL, 'MediaTek Dimensity 9200 5G', NULL, 5.5, 'GPU 8 nhân', 10, 512, 8),
(12, 'Oppo', 'Smartphone', 'Võ nhựa', '156 x 77 x 8,25mm (WxDxH)', 'Xanh tím', NULL, 'MediaTek Dimensity 7050 5G', NULL, 5.6, 'GPU 8 nhân', 12, 128, 4),
(13, 'Xiaomi', 'Smartphone', 'Vỏ nhựa', '156,5 x 77 x 8,7mm (WxDxH)', 'Trắng', NULL, 'Qualcomm Snapdragon 685', NULL, 6.7, 'GPU Adreno 610', 7, 128, 8),
(14, 'Xiaomi', 'Smartphone', 'Nhôm', '156,5 x 77 x 8,7mm (WxDxH)', 'Xanh biển', NULL, 'Qualcomm Snapdragon 699', NULL, 6.5, 'GPU 6 nhân', 6, 128, 6),
(15, 'Samsung', 'Điện thoại gập', 'Kim loại', '156 x 77 x 8,25mm (WxDxH)', 'Lục bảo', 'Tai nghe có dây', 'Snapdragon 8 Gen 2', NULL, 6.8, 'GPU Adreno 740', 10, 256, 8),
(16, 'Samsung', 'Smartphone', 'Vỏ nhựa', '156 x 87,6 x 8,25mm (WxDxH)', 'Tím', NULL, 'MediaTek Dimensity 6074 5G ', NULL, 6.5, 'GPU 6 nhân', 6, 128, 4),
(17, 'Havit', 'Chụp tai', 'Vỏ nhựa', '199 x 50 x 176 mm (WxDxH)', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Havit', 'Hạt đậu', 'Nhôm', '2.2 x 2.1 x 1.9cm (WxDxH)', 'Cam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Soundpeats', 'Hạt đậu', 'Vỏ nhựa', '2.3 x 2.2 x 2.1cm (WxDxH)', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Asus', 'Chụp tai Gaming', 'Hợp kim', '199 x 50 x 176 mm (WxDxH)', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Ava', 'Hạt đậu', 'Nhựa', '2.2 x 2.1 x 1.9cm (WxDxH)', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Ava', 'Có dây', 'Dây hợp kim', 'Dài 1m', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Apple', 'Có dây', 'Vỏ nhựa', 'Dài 1m1', 'Trắng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Asus', 'Có dây', 'Dây kim loại', 'Dài 1m', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Mozard', 'Mini', 'Nhôm', '9.5 x 7.8 x 4.3cm 0.277Kg', 'Xám', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Mozard', 'Cây loa', 'Kim loại', '1m x 30cm x 20cm 13Kg', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Mozard', 'Thùng loa', 'Vỏ nhựa', '20cm x 1m1 x 20cm 15Kg', 'Nâu đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'LG', 'Bộ thanh ', 'Nhựa', '', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Sony', 'Bộ thanh ', 'Hợp kim Titan', '', 'Đen ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Ava', 'Mini', 'Nhôm', '9.7 x 7.8 x 4.3cm 0.3Kg', 'Xanh rêu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Rezo', 'Thùng loa', 'Vỏ nhựa', '50cm x 30cm x 20cm 5Kg', 'Trắng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Ava', 'Bộ loa', 'Hợp kim', '', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'A4tech', 'Bàn phím rời', 'Nhựa', '28.5cm x 12.4cm x 1.7cm x 303g', 'Hồng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Logitech', 'Bàn phím rời', 'Nhựa', '29cm x 13cm x 1.7cm x 323g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Rapoo', 'Bàn phím rời', 'Kim loại', '29.4cm x 14cm x 1.7cm x 413g', 'Xám đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Rapoo', 'Bàn phím dây', 'Nhựa', '30cm x 14cm x 1.7cm x 313g', 'Đen có led', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Rapoo', 'Bàn phím dây', 'Kim loại', '31cm x 14cm x 1.7cm x 413g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'DareU', 'Bàn phím rời', 'Nhôm', '32cm x 14.2cm x 2.1cm x 513g', 'Trắng đen có led', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'DareU', 'Bàn phím rời', 'Đồng', '29.3cm x 13.4cm x 1.7cm x 343g', 'Đen ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Razer', 'Bàn phím dây', 'Hợp kim', '29.5cm x 13cm x 1.9cm x 523g', 'Đen có led', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Rapoo', 'Chuột không dây', 'Nhựa', '83g', 'Hồng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Rapoo', 'Chuột không dây', 'Nhựa', '60g', 'Tím ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Logitech', 'Chuột không dây', 'Vỏ nhựa', '89.9 g', 'Đen xám', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Microsoft', 'Chuột không dây', 'Nhôm', '90g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'DareU', 'Chuột có dây', 'Nhựa', '85g', 'Đen có led RGB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Rapoo', 'Chuột có dây', 'Hợp kim', '95g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'MSI', 'Chuột không dây ', 'Nhựa', '74g', 'Đen có led RGB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Asus', 'Chuột có dây', 'Nhựa', '60g', 'Đen có led RGB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Samsung', 'Micro SD', 'Nhựa', '32 × 24 × 2.1 mm', 'Xanh ', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL),
(50, 'Samsung', 'Micro SDXC', 'Nhôm', '21.5 × 20 × 1.4 mm', 'Trắng', NULL, NULL, NULL, NULL, NULL, NULL, 256, NULL),
(51, 'SanDisk', 'Micro SDXC', 'Nhựa', '11 × 15 × 1 mm', 'Xám', NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL),
(52, 'SanDick', 'Micro SDHC', 'Nhựa', '12 × 14 × 1.1 mm', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL),
(53, 'SanDisk', 'Micro SDHC', 'Kim loại', '20 × 25 × 1.7 mm', 'Trắng', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL),
(54, 'Lexar', 'Micro SDXC', 'Nhôm', '31.0 × 20.0 × 1.6 mm', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL),
(55, 'Lexar', 'Micro SDXC', 'Nhựa', '12 × 14 × 1.1 mm', 'Xanh đen', NULL, NULL, NULL, NULL, NULL, NULL, 512, NULL),
(56, 'SanDisk', 'Micro SDXC', 'Nhựa', '32 × 24 × 2.1 mm', 'Vàng đỏ', NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL),
(57, 'Mazer', 'Sạc không dây, Type C', 'Polymer', '1.9cm - 7.1cm - 10.9cm - 210g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Mazer', '2 Cổng USB, Type C', 'Li-Ion', '2.5cm - 6.75cm - 13.2cm 370g', 'Xám', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Energizer', '2 Cổng USB', 'Polymer', '13.7cm - 6.7cm - 1.5cm 203g', 'Xám', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Anker', '2 Cổng USB, 2 Type C', 'Li-Ion', '2.6cm - 5.2cm - 9.8cm 220g', 'Đen Bạc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Anker', 'Cổng USB', 'Polymer', '14.8cm - 6.8cm - 1.5cm 212g', 'Đen nhám', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Samsung', 'Cổng Type C', 'Li-Ion', '14.8cm - 7cm - 1.56cm 210g', 'Kem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Samsung', 'Cổng USB, 2 Type C', 'Li-Ion', '14.3cm - 7cm - 2.5cm 392g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Baseus', '2 Cổng USB, 2 Type C, 2 AC, 2 DC', 'Polymer', '26cm - 17cm - 11.8cm 3700g', 'Xanh rêu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Apacer', 'USB 3.2', 'Nhựa', '5.5cm - 1.7cm - 1.1 cm 7.7g', 'Xanh dương', NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL),
(66, 'Apacer', 'USB 3.1', 'Nhựa', '5.39cm - 2.09cm - 0.8cm 8.5g', 'Xanh đen', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL),
(67, 'SanDisk', 'USB 3.0', 'Kim loại', '5.4cm - 2.1cm - 0.9cm 9.5g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL),
(68, 'Kioxia', 'USB 3.2', 'Kim loại', '3.9cm - 1.22cm - 0.45cm 6g', 'Bạc', NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL),
(69, 'SanDisk', 'USB Type C', 'Nhựa', '4.4cm - 1.2cm - 0.8cm 7.2g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL),
(70, 'Kioxia', 'USB 3.2', 'Nhựa', '5.5cm - 2.14cm - 0.85cm 9g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL),
(71, 'SanDisk', 'USB 3.1', 'Nhựa', '1.93cm - 1.22cm - 0.46cm 5.8g', 'Đen', NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL),
(72, 'SanDisk', 'USB 3.0', 'Nhựa', '4.24cm - 1.32cm - 0.66cm 10g', 'Xanh trắng', NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL),
(73, 'Asus', 'Màn hình phẳng', 'LCD', '539.52mm - 417.22mm - 205.94mm 2.46kg', 'Đen', NULL, NULL, NULL, 23.8, NULL, NULL, NULL, NULL),
(74, 'Asus', 'Màn hình phẳng', 'LCD', '543.68mm - 427.23mm - 21.94mm 3.3kg', 'Đen', NULL, NULL, NULL, 23.8, NULL, NULL, NULL, NULL),
(75, 'Asus', 'Màn hình cong', 'IPS', '703mm - 516mm - 215mm 4.8kg', 'Đen', NULL, NULL, NULL, 29.5, NULL, NULL, NULL, NULL),
(76, 'Samsung', 'Màn hình phẳng', 'IPS', '539.7mm - 425.4mm - 236.4mm 2.8kg', 'Đen xám', NULL, NULL, NULL, 23.8, NULL, NULL, NULL, NULL),
(77, 'Samsung', 'Màn hình cong', 'LCD', '703mm - 516mm - 215mm 4.8kg', 'Đen', NULL, NULL, NULL, 27.0, NULL, NULL, NULL, NULL),
(78, 'Dell', 'Màn hình phẳng', 'VA', '553.7 mm - 419.1 mm - 170.2mm 3.1kg', 'Đen', NULL, NULL, NULL, 23.8, NULL, NULL, NULL, NULL),
(79, 'Dell', 'Màn hình phẳng', 'VA', '56.7 mm - 42.1 mm - 170mm 3.5kg', 'Đen', NULL, NULL, NULL, 27.0, NULL, NULL, NULL, NULL),
(80, 'MSI', 'Màn hình phẳng', 'IPS', '57.7 mm - 52.1 mm - 180mm 5kg', 'Đen', NULL, NULL, NULL, 24.5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order-detail`
--

CREATE TABLE `order-detail` (
  `id` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `id_user` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `description`, `old_price`, `price`, `quality`, `img`, `creation_date`, `updation_date`, `status`, `id_detail`) VALUES
(1, 1, 'Asus TUF Gaming F15 FX506HF i5 11400H (HN014W)', 'Với bộ vi xử lý Intel Core i5 dòng H mạnh mẽ và card đồ họa rời NVIDIA GeForce RTX 2050 4 GB, laptop Asus TUF Gaming F15 FX506HF là một trong những lựa chọn tuyệt vời cho các game thủ và những người dùng làm việc đa tác vụ hoặc liên quan đến đồ họa, kỹ thuật.', 19990000, 16990000, 34, 'laptop/asus-tuf-gaming-f15.jpg', '2023-11-19 17:39:00', '2023-11-19 17:39:00', 1, 3),
(2, 1, 'Laptop Acer Gaming Nitro 5 AN515 i7', 'Trải nghiệm giải trí đỉnh cao nhờ hiệu năng từ con chip Intel Core i7 dòng H series hiệu năng cao cùng ngoại hình độc đáo, laptop Acer Gaming Nitro 5 AN515 58 769J i7 12700H (NH.QFHSV.003) chắc chắn sẽ trở thành trợ thủ đắc lực cho người dùng trong những chiến trường ảo đầy kịch tính hay những tác vụ văn phòng và đồ hoạ chuyên nghiệp.', 31790000, 24490000, 52, 'laptop/acer-nitro-5-an515.jpg', '2023-11-19 17:42:46', '2023-11-19 17:42:46', 1, 1),
(3, 1, 'Laptop MSI Gaming GF63 Thin 11SC i5 11400H', 'Mang trong mình sức mạnh hiệu năng của bộ vi xử lý Intel Core i5 dòng H mạnh mẽ và card đồ họa rời NVIDIA GeForce GTX, laptop MSI Gaming GF63 Thin 11SC i5 (664VN) có khả năng chiến game nặng và thiết kế đồ họa một cách mượt mà.', 16490000, 14940000, 33, 'laptop/msi-gaming-gf63-thin-11sc-i5.jpg', '2023-11-19 17:44:03', '2023-11-19 17:44:03', 2, 8),
(4, 1, 'Laptop HP 15s fq5229TU i3 1215U', 'Với một mức giá thành lý tưởng, bạn đã có thể sở hữu cho mình một mẫu laptop học tập - văn phòng có hiệu năng ổn định, ngoại hình thanh lịch cùng các tính năng hiện đại. Laptop HP 15s fq5229TU i3 1215U (8U237PA) chắc chắn sẽ đáp ứng đầy đủ nhu cầu làm việc, học tập và giải trí thường ngày của sinh viên cũng như người đi làm.', 13690000, 10890000, 34, 'laptop/hp-15s-fq5229tu-i3.png', '2023-11-19 17:44:03', '2023-11-19 17:44:03', 2, 4),
(5, 1, 'Laptop Dell Inspiron 15 3520 i3 1215U', 'Laptop Dell Inspiron 15 3520 i3 1215U (i3U082W11BLU) nhắm trực tiếp đến đối tượng người dùng là sinh viên và nhân viên văn phòng với lối thiết kế thanh lịch, cấu hình có thể vận hành ổn định mọi tác vụ thường ngày, một chiếc laptop học tập - văn phòng mà bạn không nên bỏ qua.', 13690000, 10990000, 35, 'laptop/dell-inspiron-15-3520-i3.jpg', '2023-11-19 17:47:58', '2023-11-19 17:47:58', 1, 2),
(6, 1, 'Laptop Lenovo Ideapad 3 15ITL6 i3 1115G4', 'Laptop Lenovo Ideapad 3 15ITL6 i3 1115G4 (82H803SGVN) sẽ là một sự lựa chọn tối ưu trong dòng laptop học tập - văn phòng bởi thiết kế đẹp mắt đi cùng hiệu năng ổn định giải quyết nhẹ nhàng mọi tác vụ thường ngày cho người dùng.', 10490000, 7990000, 35, 'laptop/lenovo-ideapad-3-15itl6-i.jpg', '2023-11-19 17:58:24', '2023-11-19 17:58:24', 3, 5),
(7, 1, 'Laptop Apple MacBook Air 13 inch M1 2020', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 19590000, 19490000, 24, 'laptop/macbook-air-m1-2020-gray.jpg', '2023-11-19 18:00:17', '2023-11-19 18:00:17', 2, 6),
(8, 1, 'Laptop MacBook Pro 16 inch M2 Pro 2023', 'Mở đầu cho một năm 2023 đầy bùng nổ với sự xuất hiện của chiếc MacBook Pro 16 inch M2 Pro 2023, vẫn là những đường nét máy thời thượng, tinh xảo nhưng nay đã được nâng cấp sức mạnh ngoài tầm mong đợi với con chip Apple M2 Pro, hứa hẹn xứng tầm doanh nhân thành đạt hay nhà sáng tạo nội dung chuyên nghiệp.', 65990000, 62490000, 12, 'laptop/macbook-pro-16-inch-m2-pro.jpg', '2023-11-19 18:00:17', '2023-11-19 18:00:17', 1, 7),
(9, 2, 'Điện thoại iPhone 15 Pro Max', 'iPhone 15 Pro Max là một chiếc điện thoại thông minh cao cấp được mong đợi nhất năm 2023. Với nhiều tính năng mới và cải tiến, iPhone 15 Pro Max chắc chắn sẽ là một lựa chọn tuyệt vời cho những người dùng đang tìm kiếm một chiếc điện thoại có hiệu năng mạnh mẽ, camera chất lượng và thiết kế sang trọng.', 34990000, 33990000, 33, 'phone/iphone-15-pro-max-blue-thumbnew.jpg', '2023-11-20 13:02:49', '2023-11-20 13:02:49', 1, 9),
(10, 2, 'iPhone 14 Pro Max', 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 29990000, 27490000, 43, 'phone/iphone-14-pro-max-tim-thumb.jpg', '2023-11-20 13:02:49', '2023-11-20 13:02:49', 1, 10),
(11, 2, 'Điện thoại OPPO Find N3 Flip 5G Hồng', 'OPPO Find N3 Flip 5G Hồng được OPPO cho ra mắt chính thức tại thị trường Việt Nam vào tháng 10/2023. Sản phẩm được hãng đầu tư mạnh mẽ về camera với độ phân giải lên đến 50 MP, cấu hình sử dụng chip Dimensity 9200 5G và thiết kế được thay đổi với bản lề gập mở tốt hơn cùng màu hồng sang trọng và nữ tính.', 24260000, 22990000, 24, 'phone/oppo-find-n3-flip-pink-thumb.jpeg', '2023-11-20 13:07:23', '2023-11-20 13:07:23', 1, 11),
(12, 2, 'Điện thoại OPPO Reno10 5G', 'Đến hẹn lại lên, hãng điện thoại OPPO tiếp tục cho ra mắt sản phẩm OPPO Reno10 5G 128GB tại thị trường Việt Nam trong năm 2023. Điện thoại mang trong mình lối thiết kế đẹp mắt, hiệu năng mượt mà xử lý tốt mọi tác vụ, đi cùng bộ ba camera mang đến những bức ảnh đẹp mắt.', 9990000, 9690000, 30, 'phone/oppo-reno10-blue-thumbnew.jpg', '2023-11-20 13:07:23', '2023-11-20 13:07:23', 2, 12),
(13, 2, 'Điện thoại Xiaomi Redmi 12 4GB', 'Xiaomi Redmi 12 mẫu điện thoại mới nhất được nhà Xiaomi tung ra vào tháng 06/2023 khiến cho cộng đồng đam mê công nghệ vô cùng thích thú. Máy khoác lên mình một vẻ ngoài cá tính, màn hình lớn đem đến trải nghiệm đã mắt cùng một hiệu năng ổn định với mọi tác vụ.', 4290000, 3690000, 34, 'phone/xiaomi-redmi-12-bac-thumb.jpg', '2023-11-20 13:09:13', '2023-11-20 13:09:13', 3, 13),
(14, 2, 'Điện thoại Xiaomi 13 Lite 5G', 'Hãng Xiaomi đã ra mắt mẫu điện thoại Xiaomi 13 Lite 5G, tiếp tục thành công từ dòng flagship Xiaomi 13 series. Được xem là dòng sản phẩm tầm trung, Xiaomi 13 Lite 5G có nhiều điểm nổi bật như sử dụng chipset mới từ Qualcomm và hệ thống camera đáng chú ý trong phân khúc.', 11490000, 9490000, 23, 'phone/xiaomi-13-lite-xanh-thumb.jpg', '2023-11-20 13:09:13', '2023-11-20 13:09:13', 3, 14),
(15, 2, 'Điện thoại Samsung Galaxy Z Flip5 5G', 'Samsung Galaxy Z Flip5 đã chính thức ra mắt vào ngày 26 tháng 7. Đây là một chiếc điện thoại thông minh có thiết kế độc đáo với màn hình gập, được trang bị bộ vi xử lý cao cấp Snapdragon 8 Gen 2 for Galaxy, RAM 8 GB, bộ nhớ trong 256 GB, camera kép 12 MP và pin 3700 mAh.', 21990000, 19290000, 27, 'phone/samsung-galaxy-z-flip5-xanh-mint.jpg', '2023-11-20 13:11:53', '2023-11-20 13:11:53', 1, 15),
(16, 2, 'Điện thoại Samsung Galaxy A54 5G', 'Samsung Galaxy A54 5G 128GB là mẫu điện thoại tầm trung hiện đang làm mưa làm gió tại thị trường Việt Nam khi sở hữu những thông số ấn tượng với chip hiệu năng cao, màn hình chất lượng đi cùng hệ thống camera xịn sò trong phân khúc.', 10490000, 9490000, 45, 'phone/samsung-galaxy-a54-thumb-tim.jpg', '2023-11-20 13:11:53', '2023-11-20 13:11:53', 2, 16),
(17, 3, 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20 ', 'Tai nghe Bluetooth True Wireless AVA+ FreeGo A20 với gam màu thanh lịch, kiểu dáng đẹp mắt, âm thanh sống động và rõ ràng, kết nối không dây nhanh chóng, mang đến cho người dùng những trải nghiệm tuyệt vời.', 490000, 290000, 24, 'tainghe/tai-nghe-bluetooth-true-wireless-ava.jpg', '2023-11-21 08:05:25', '2023-11-21 08:05:25', 1, 21),
(18, 3, 'Tai nghe Bluetooth True Wireless HAVIT TW945', 'Tai nghe Bluetooth True Wireless HAVIT TW945 mang đến thiết kế sang trọng với kiểu dáng tối giản và màu sắc đa dạng, âm thanh đầy đủ và rõ ràng, tích hợp nhiều tính năng và tiện ích khác, phục vụ tốt nhu cầu sử dụng cơ bản hàng ngày của đa số người dùng.', 450000, 320000, 43, 'tainghe/tai-nghe-bluetooth-true-wireless-havit.jpg', '2023-11-21 08:05:25', '2023-11-21 08:05:25', 1, 18),
(19, 3, 'Tai nghe Có Dây Apple MMTN2', 'Tai nghe EarPods cổng Lightning Apple MMTN2 thiết kế trẻ trung với màu trắng sang trọng, tinh tế. Tai nghe có dây dài 1.2 m, dễ dàng kết nối và nghe nhạc với điện thoại bỏ trong túi hoặc balo.', 750000, 550000, 34, 'tainghe/tai-nghe-earpods-cong-lightning-apple.jpg', '2023-11-21 08:09:29', '2023-11-21 08:09:29', 2, 23),
(20, 3, 'Tai nghe Có dây AVA+ LiveBass Y232', 'Tai nghe Có dây AVA+ LiveBass Y232 sở hữu kiểu dáng năng động, màu sắc đẹp mắt, âm thanh sống động, thích hợp với nhiều thiết bị điện tử, dễ dàng mang theo bất cứ đâu, dễ dàng cuộn gọn lại và bỏ vào balo hay túi xách.', 200000, 180000, 23, 'tainghe/tai-nghe-co-day-ava-livebass-y232.jpg', '2023-11-21 08:09:29', '2023-11-21 08:09:29', 2, 22),
(21, 3, 'Tai nghe Bluetooth Chụp Tai HAVIT H661BT ', 'Tai nghe Bluetooth Chụp Tai Havit H661BT là dạng tai nghe chụp tai, sở hữu vẻ ngoài sang trọng, âm thanh sống động, kết nối nhanh chóng và ổn định, thời lượng pin sử dụng khá lâu, mang đến cho bạn những trải nghiệm tối ưu nhất.', 500000, 450000, 33, 'tainghe/tai-nghe-bluetooth-chup-tai-havit.jpg', '2023-11-21 08:11:59', '2023-11-21 08:11:59', 1, 17),
(22, 3, 'Tai nghe Chụp Tai Gaming Asus TUF H3', 'Nói về tai nghe gaming, sau bộ đôi tai nghe TUF Gaming H5 và H7, Asus tiếp tục cho ra mắt chiếc tai nghe chụp tai Gaming Asus TUF H3 Đen Đỏ, một mẫu tai nghe có mức giá rất phải chăng nhưng chất lượng lại hơn sự kỳ vọng. Cùng mình tìm hiểu vì sao đã ra mắt cũng hơn hai năm nhưng chiếc tai nghe này có gì đáng đặc biệt để review lại.', 990000, 890000, 30, 'tainghe/tai-nghe-chup-tai-gaming-asus-tuf-h3.jpg', '2023-11-21 08:11:59', '2023-11-21 08:11:59', 1, 20),
(23, 3, 'Tai nghe Có Dây Gaming Asus Rog Cetra II ', 'Tai nghe Asus sử dụng vật liệu LSR tiên tiến, driver cho hiệu suất loa cao, duy trì ổn định trong suốt thời gian trải nghiệm của bạn, tái tạo âm thanh sinh động, âm trầm mạnh mẽ, người chơi nhập vai trong các trò game yêu thích.', 990000, 940000, 45, 'tainghe/tai-nghe-gaming-asus-rog-cetra-ii.jpg', '2023-11-21 08:14:05', '2023-11-21 08:14:05', 1, 24),
(24, 3, 'Tai nghe Bluetooth Soundpeats Wings2', 'Tai nghe Bluetooth Soundpeats Wings2 mang đến thiết kế thanh lịch, kích thước nhỏ gọn, âm thanh đầy đủ và rõ ràng, tích hợp nhiều tính năng và tiện ích khác giúp tối ưu trải nghiệm sử dụng của người dùng.', 890000, 595000, 46, 'tainghe/tai-nghe-bluetooth-soundpeats-wings2.jpg', '2023-11-21 08:14:44', '2023-11-21 08:14:44', 3, 19),
(25, 4, 'Loa Bluetooth Mozard S21', 'Loa Bluetooth Mozard S21 Xám mang đến thiết kế cực kỳ nhỏ gọn cùng nhiều tiện ích như: Kết nối nhanh chóng, an toàn sử dụng với khả năng chống nước, điều khiển trực quan,...', 550000, 330000, 12, 'loa/bluetooth-mozard-s21-thumb.jpg', '2023-11-21 08:35:39', '2023-11-21 08:35:39', 1, 25),
(26, 4, 'Loa Bluetooth Rezo Home Series Bag ', 'Loa Bluetooth Rezo Home Series Bag được thiết kế như chiếc lồng đèn đa màu sắc, kích thước nhỏ gọn dễ dàng mang theo, âm thanh Hi-Fi vô cùng ấn tượng, kết nối nhanh chóng, mang đến cho người dùng không gian giải trí chất lượng.', 850000, 650000, 11, 'loa/loa-bluetooth-rezo-home-series-bag.jpg', '2023-11-21 08:35:39', '2023-11-21 08:35:39', 3, 31),
(27, 4, 'Loa Bluetooth Mozard H8030D Đen', 'Loa Bluetooth Mozard có thiết kế nhỏ gọn, chắc chắn, dễ dàng mang theo bên mình khi đi du lịch, dã ngoại,... Máy có dải đèn LED trên các phím chức năng giúp dễ nhận biết cũng như tạo điểm nhấn cho thiết kế.', 850000, 465000, 23, 'loa/loa-bluetooth-mozard-h8030d-den.jpeg', '2023-11-21 08:38:08', '2023-11-21 08:38:08', 2, 26),
(28, 4, 'Loa Bluetooth AVA+ FreeGo F13', 'Loa AVA+ mang đến cho bạn những bản nhạc có chiều sâu với âm bass nội lực, âm cao trong trẻo và chi tiết. Trang bị hệ thống đèn LED đa sắc màu, giúp làm nổi bật không gian nội thất xung quanh.', 450000, 405000, 24, 'loa/loa-bluetooth-ava-freego-f13-xanh-reu.jpg', '2023-11-21 08:40:05', '2023-11-21 08:40:05', 1, 30),
(29, 4, 'Loa vi tính 2.1 AVA+ Led Mini N171', 'Loa vi tính 2.1 AVA+ Led Mini N171 sở hữu kiểu dáng đẹp mắt, gam màu sang trọng, kết hợp hệ thống đèn LED nổi bật, âm thanh sống động, kết nối nhanh chóng mang đến cho bạn những trải nghiệm tuyệt vời.', 400000, 360000, 35, 'loa/loa-vi-tinh-2-1-ava-ledmi-n171-thumb.jpg', '2023-11-21 08:41:10', '2023-11-21 08:41:10', 2, 32),
(30, 4, 'Bộ loa thanh Sony HT- G700 400W', 'Loa thanh Sony HT- G700 sở hữu đường nét thiết kế thanh mảnh tạo cảm giác mềm mại gọn gàng, loa được bao phủ bởi gam màu đen trung tính hòa hợp với mọi không gian bày trí. ', 12990000, 9390000, 25, 'loa/bo-loa-thanh-sony-ht.jpg', '2023-11-21 08:41:10', '2023-11-21 08:41:10', 2, 29),
(31, 4, 'Bộ loa thanh LG SN5R 520W', 'Loa thanh LG SN5R sở hữu thiết kế sang trọng, công suất lớn 520W, tích hợp nhiều công nghệ âm thanh hiện đại như AI Sound Pro, Bass Blast+, DTS Virtual:X cho âm thanh sống động, cuốn hút, cùng đa dạng kết nối đáp ứng nhu cầu giải trí cơ bản của cả gia đình. ', 7490000, 2990000, 18, 'loa/bo-loa-thanh-lg-sn5r.jpg', '2023-11-21 08:43:44', '2023-11-21 08:43:44', 3, 28),
(32, 4, 'Cặp loa tháp Mozard M112 100W', 'Cặp loa tháp Mozard M112 Nâu có kiểu dáng chắc chắn, khả năng tái tạo âm thanh mạnh mẽ, vang xa với tổng công suất đến 100W, hỗ trợ đa dạng các kết nối, tặng kèm 2 micro đáp ứng đam mê ca hát của cả gia đình. ', 4490000, 2690000, 27, 'loa/loa-tivi-bluetooth-mozard-m112-nau.jpg', '2023-11-21 08:44:54', '2023-11-21 08:44:54', 2, 27),
(33, 5, 'Bàn Phím Không Dây DareU EK807G', 'Bàn Phím Không Dây DareU EK807G có khối lượng nhẹ với kích thước gọn gàng, thiết kế không dây cho phép dùng linh hoạt, để bạn tùy chọn vị trí sử dụng phù hợp nhất cho riêng mình.', 660000, 525000, 34, 'banphim/khong-day-dareu-ek807g.jpeg', '2023-11-22 11:59:38', '2023-11-22 11:59:38', 1, 38),
(34, 5, 'Bàn Phím Cơ Có Dây Gaming Rapoo V500alloy', 'Bàn phím gaming kiểu Tenkeyless với 87 phím cơ bản độ nhạy cao, bền bỉ. Thiết kế trẻ trung, phong cách ấn tượng chuẩn gaming. Kết nối với PC, laptop qua dây nối 1.5 m đầu cáp USB.', 550000, 495000, 16, 'banphim/co-co-day-gaming-rapoo-v500alloy-den.jpeg', '2023-11-22 11:59:38', '2023-11-22 11:59:38', 2, 37),
(35, 5, 'Bàn Phím Cơ Có Dây Gaming Razer BlackWidow V3', 'Bàn phím cơ có dây Gaming Razer BlackWidow V3 có các keycap ABS chắc chắn nhờ công nghệ đúc 2 lớp Doubleshot giữ cho nhãn không bị mòn, keycap có thành dày, dùng bền hơn. ', 3640000, 2000000, 35, 'banphim/ban-phim-co-co-day-gaming-razer-blackwidow.jpeg', '2023-11-22 12:08:20', '2023-11-22 12:08:20', 2, 40),
(36, 5, 'Bàn Phím Có Dây Gaming Rapoo V50S ', 'Bàn Phím Có Dây Gaming Rapoo V50S sở hữu ngoại hình đẹp mắt, hệ thống đèn LED RGB độc đáo, kích thước gọn gàng phù hợp với mọi không gian bàn làm việc hay bàn học.', 390000, 340000, 27, 'banphim/ban-phim-co-day-gaming-rapoo.jpg', '2023-11-22 12:09:30', '2023-11-22 12:09:30', 3, 36),
(37, 5, 'Bàn Phím Cơ Có Dây Dareu EK75', 'Bàn Phím Cơ Có Dây Dareu EK75 với layout nhỏ gọn theo phong cách hiện đại cùng đèn LED RGB giúp góc làm việc, học tập của bạn thêm phần màu sắc và đẹp mắt.', 790000, 550000, 45, 'banphim/ban-phim-co-co-day-dareu-ek75.jpg', '2023-11-22 12:12:54', '2023-11-22 12:12:54', 1, 38),
(38, 5, 'Bàn Phím Cơ Bluetooth Rapoo V700 - 8A', 'Bàn Phím Cơ Bluetooth Rapoo V700 - 8A có kiểu dáng tối giản cùng cách phối màu độc đáo, kích thước cực kỳ nhỏ gọn không chiếm quá nhiều diện tích khi đặt trên bàn làm việc, dễ dàng bỏ vào balo hay vali để mang theo bất cứ đâu.', 1490000, 1340000, 35, 'banphim/ban-phim-co-bluetooth-rapoo-v700.jpg', '2023-11-22 12:12:54', '2023-11-22 12:12:54', 3, 35),
(39, 5, 'Bàn phím Bluetooth Logitech K380', 'Bàn phím Bluetooth Logitech K380 sở hữu kiểu dáng thời thượng, màu sắc trang nhã, khối lượng gọn nhẹ giúp việc di chuyển của bạn dễ dàng, đồng thời tăng tính thẩm mỹ cho không gian làm việc hay học tập của bạn.', 750000, 675000, 46, 'banphim/ban-phim-bluetooth-logitechk380.jpg', '2023-11-22 12:15:25', '2023-11-22 12:15:25', 3, 34),
(40, 5, 'Bàn phím Bluetooth A4tech FBX51C', 'Bàn phím Bluetooth A4tech FBX51C với thiết kế sang trọng, gam màu thời trang thu hút, khối lượng nhẹ giúp di chuyển dễ dàng, đảm bảo không gian làm việc tinh tế.', 720000, 465000, 56, 'banphim/ban-phim-bluetooth-a4tech.jpg', '2023-11-22 12:16:35', '2023-11-22 12:16:35', 2, 33),
(41, 6, 'Chuột Không dây Silent Rapoo M310', 'Chuột Không dây Silent Rapoo M310 sở hữu thiết kế trẻ trung, gam màu đẹp mắt, kiểu dáng tiện lợi dễ cầm, độ nhạy cao, kết nối nhanh chóng, tích hợp nhiều tính năng tiện ích khác mang đến cho bạn những trải nghiệm tuyệt vời nhất.', NULL, 250000, 35, 'chuot/chuot-khong-day-silent-rapoo-m310.jpg', '2023-11-22 13:07:32', '2023-11-22 13:07:32', 2, 41),
(42, 6, 'Chuột Không dây Bluetooth Silent Rapoo M650', 'Chuột Không dây Bluetooth Silent Rapoo M650 sở hữu thiết kế gọn gàng, màu sắc đa dạng, hỗ trợ kết nối không dây với độ nhạy cao mang đến cho bạn những trải nghiệm tối ưu khi thực hiện các tác vụ trên máy tính.', 350000, 290000, 36, 'chuot/chuot-khong-day-bluetooth-silent-m650.jpg', '2023-11-22 13:15:06', '2023-11-22 13:15:06', 2, 42),
(43, 6, 'Chuột Không dây Logitech M190', 'Chuột Không Dây Logitech M190 có nhiều đường gợn sóng tạo độ bám, cho bạn cầm chuột chắc chắn. Hình dạng chuột uốn cong theo đường cong của bàn tay bạn, phần đuôi chuột nâng cao, vị trí 2 phím trái - phải nâng đỡ và tạo sự dễ chịu cho bàn tay và các ngón tay khi dùng.', 390000, 290000, 50, 'chuot/chuot-khong-day-logitech-m190.jpeg', '2023-11-22 06:48:49', '2023-11-22 06:48:49', 1, 43),
(44, 6, 'Chuột Bluetooth Microsoft Arc', 'Microsoft Arc là một trong những mẫu chuột không dây có thiết kế gập duỗi hiếm thấy trên thị trường, được làm mỏng, khối lượng chỉ 205 g, khi cần di chuyển, người dùng đơn giản là duỗi thẳng chuột và nhét vào túi quần, balo, mang đi tới bất cứ nơi đâu bạn muốn, không chút vướng víu, không chút trở ngại, chỉ có sự tiện lợi.', 2620000, 990000, 30, 'chuot/chuot-bluetooth-microsoft-arc.jpg', '2023-11-22 06:48:49', '2023-11-22 06:48:49', 2, 44),
(45, 6, 'Chuột Có dây DareU EM908', 'Chuột có dây DareU EM908 Đen với thiết kế đơn giản cân đối 2 bên, sở hữu khối lượng nhẹ 85 gam, phù hợp sử dụng cho người thuận cả tay trái hay tay phải.', 419000, 314000, 24, 'chuot/chuot-co-day-dareu-em908-den.jpeg', '2023-11-22 06:51:40', '2023-11-22 06:51:40', 2, 45),
(46, 6, 'Chuột Có dây Silent Rapoo N1200', 'Rapoo N1200 được bao phủ bởi gam màu đen thuần khiết cho phép dùng bền màu và duy trì độ mới lâu. Thiết kế cân đối, chuột máy tính Rapoo mang đến khả năng di chuyển nhẹ nhàng, thoải mái cho người thuận tay trái và phải.', NULL, 100000, 25, 'chuot/chuot-co-day-silent-rapoo-n1200-den.jpg', '2023-11-22 06:53:11', '2023-11-22 06:53:11', 3, 46),
(47, 6, 'Chuột Không dây Gaming MSI Clutch GM41', 'Chuột Không dây Gaming MSI Clutch GM41 Lightweight sở hữu kiểu dáng mạnh mẽ, gam màu độc đáo kết hợp đèn RGB đẹp mắt, đáp ứng tốt gần như mọi nhu cầu chơi game hay các tác vụ cơ bản của người dùng, mang đến những trải nghiệm tuyệt đỉnh.', 1890000, 1130000, 31, 'chuot/chuot-khong-day-gaming-msi-clutch-gm41.jpg', '2023-11-22 06:55:17', '2023-11-22 06:55:17', 1, 47),
(48, 6, 'Chuột Có dây Gaming Asus TUF M3 Gen II', 'Chuột Có dây Gaming Asus TUF M3 Gen II là sản phẩm thuộc dòng chuột máy tính chơi game siêu nhẹ, cảm biến cao đến 8000 DPI và có thể cài đặt tùy chỉnh cho 6 nút có sẵn trên thân chuột cho phù hợp với thói quen sử dụng của người dùng.', 590000, 420000, 36, 'chuot/chuot-co-day-gaming-asus-tuf-m3-gen-ii.jpg', '2023-11-22 06:57:54', '2023-11-22 06:57:54', 2, 48),
(49, 7, 'Thẻ nhớ MicroSD Samsung Pro Plus 128GB', 'Thẻ nhớ MicroSD Samsung Pro Plus 128GB là sản phẩm nâng cấp của nhà Samsung với dung lượng bộ nhớ đến 128GB. Qua đó, người dùng có thể mở rộng dung lượng lưu trữ của điện thoại di động, máy tính bảng và các thiết bị di động khác nhờ thẻ nhớ này.', 590000, 420000, 24, 'thenho/the-nho-microsd-samsung-pro-plus.webp', '2023-11-22 07:16:09', '2023-11-22 07:16:09', 1, 49),
(50, 7, 'Thẻ nhớ Samsung Evo Plus 256GB 130MPS', 'Thẻ nhớ 256GB Samsung Evo Plus (2021) 130MPS là một sự lựa chọn hoàn hảo cho những ai đang tìm kiếm một thiết bị lưu trữ. Với dung lượng 256GB cùng tốc độ đọc 130MB/s đáp ứng được tất cả những gì bạn cần.', 799000, 465000, 27, 'thenho/the-nho-samsung-evo-plus-256-gb.webp', '2023-11-22 07:50:54', '2023-11-22 07:50:54', 2, 50),
(51, 7, 'Thẻ nhớ SanDisk Class 10 64GB 100MB/s', 'Để mở rộng dung lượng bộ nhớ cho các thiết bị của bạn trong quá trình sử dụng hằng ngày. Trang bị thẻ nhớ SanDisk Class 10 64GB 100MB/s là một giải pháp tối ưu nhất cho bạn. Với dung lượng khá cao kèm tốc độ đọc ghi nhanh sẽ giúp bạn mở rộng bộ nhớ tốt nhất cho thiết bị của mình.', 239000, 139000, 14, 'thenho/the-nho-sandisk-64gb-class-10-100mbs.webp', '2023-11-22 07:50:54', '2023-11-22 07:50:54', 3, 51),
(52, 7, 'Thẻ nhớ SDHC SanDisk Extreme Pro U3 128GB', 'Thẻ nhớ SDHC SanDisk Extreme Pro U3 128GB V30 200MB/s là dòng thẻ nhớ chất lượng cao, được thiết kế để đáp ứng được nhu cầu lưu trữ và truyền tải dữ liệu nhanh chóng của người dùng. Với tốc độ ghi và đọc siêu nhanh lên đến 200MB/s, dòng thẻ nhớ này sẽ là lựa chọn hoàn hảo cho việc quay phim 4K, chụp ảnh nhiều khung hình liên tiếp và lưu trữ các tập tin lớn.', 990000, 739000, 25, 'thenho/the-nho-sdhc-sandisk-extreme-pro-u3-128gb.webp', '2023-11-22 07:53:44', '2023-11-22 07:53:44', 1, 52),
(53, 7, 'Thẻ nhớ SDHC SanDisk Class 10 80MBs 16GB', 'Thẻ nhớ SDHC SanDisk Class 10 80MBs 16GB là sản phẩm thích hợp để lắp đặt cho hầu hết các thiết bị điện tử. Bạn có thể lắp đặt thẻ nhớ để ghi lại thông tin theo đúng nhu cầu lưu trữ của mình. Hãy xem đoạn mô tả sau đây để có quyết định đúng đắn khi mua thẻ nhớ.', 159000, 119000, 36, 'thenho/the-nho-sdhc-sandisk-16gb-class-10-80mbs.webp', '2023-11-22 07:54:51', '2023-11-22 07:54:51', 2, 53),
(54, 7, 'Thẻ nhớ Lexar EZVIZ MicroSDXC 64GB', 'Thẻ nhớ Lexar EZVIZ MicroSDXC 64GB 90MB/s được trang bị tốc độ đọc 90MB/s và tốc độ ghi 50MB/s. Do đó, nó hoàn toàn đáp ứng được nhu cầu truyền tải của các thiết bị có băng thông dữ liệu lớn với hiệu năng được duy trì ổn định.', NULL, 250000, 15, 'thenho/the-nho-lexar-ezviz-microsdxc-64gb-90mb-s.webp', '2023-11-22 07:55:48', '2023-11-22 07:55:48', 2, 54),
(55, 7, 'Thẻ nhớ Lexar MicroSDXC 512GB U3 V30 A2', 'Thẻ nhớ Lexar MicroSDXC 512GB U3 V30 A2 100MB/s chính là một giải pháp cao cấp cho bộ nhớ ngoài để lưu trữ, quay video hoặc di chuyển các tập tin nhanh chóng hơn. Cạnh đó, chiếc thẻ nhớ này còn sử dụng những công nghệ mới nhất cho phép quay GoPro, Drone hay quay phim 4K thoải mái hơn.', 1999000, 1749000, 39, 'thenho/the-nho-512gb-lexar-micro-sdxc-u3-v30-a2.webp', '2023-11-22 07:56:41', '2023-11-22 07:56:41', 1, 55),
(56, 7, 'Thẻ nhớ MicroSDXC SanDisk Extreme V30 A2 1TB', 'Thẻ nhớ MicroSDXC SanDisk Extreme V30 A2 1TB 190MB/s có khả năng đọc, ghi cực kỳ nhanh chóng, và mở rộng dung lượng khá lớn, giúp bạn lưu trữ hàng loạt các tài liệu quan trọng. Có thiết kế nhỏ gọn, và hoàn thiện từ chất liệu nhựa, cứng cáp, bo mạch kết cấu tỉ mỉ, đem lại độ bền cao.', 3590000, 2990000, 1, 'thenho/the-nho-microsdxc-sandisk-extreme-v30-a2-1tb.webp', '2023-11-22 07:57:48', '2023-11-22 07:57:48', 2, 56),
(57, 8, 'Pin sạc dự phòng Mazer MagAir16 10000mAh Magnetic', 'Pin sạc dự phòng Polymer 10000mAh Không dây Magnetic Type C PD 20W Mazer MagAir16 sở hữu kích thước gọn nhẹ, gam màu đẹp mắt, khả năng sạc nhanh ấn tượng, kết hợp cùng nhiều tính năng tiện ích khác, mang đến cho người dùng những trải nghiệm tuyệt vời.', 1690000, 1435000, 18, 'sacduphong/sac-du-phong-polymer-10000mah-magnetic.jpg', '2023-11-22 08:48:53', '2023-11-22 08:48:53', 2, 57),
(58, 8, 'Pin sạc dự phòng Mazer PowerUltra 20000mAh PD QC3.0', 'Pin sạc dự phòng 20000mAh Type C PD QC3.0 65W Mazer PowerUltra với thiết kế mỏng nhẹ, gam màu xám thanh lịch, dung lượng pin cao đáp ứng tốt các nhu cầu cơ bản, dễ dàng bỏ vào túi hay balo để bổ sung pin kịp thời cho các thiết bị.', 2200000, 1870000, 35, 'sacduphong/pin-sac-du-phong-20000mah-type-c-pd-qc3-0.jpg', '2023-11-22 08:48:53', '2023-11-22 08:48:53', 1, 58),
(59, 8, 'Pin sạc dự phòng Energizer UE10046 10.000 mAh', 'Pin sạc dự phòng Polymer 10.000 mAh Energizer UE10046 có thiết kế bo tròn, gọn nhẹ, dễ dàng mang theo để sử dụng khi cần. Sạc dự phòng có vỏ ngoài sáng bóng, bền bỉ, bảo vệ tốt pin sạc.', 550000, 275000, 56, 'sacduphong/pin-du-phong-polymer-10000mah-energizer.jpg', '2023-11-22 08:51:08', '2023-11-22 08:51:08', 3, 59),
(60, 8, 'Pin sạc dự phòng Anker A1256 10000mAh PD QC 3.0', 'Pin sạc dự phòng 10000mAh Type C PD QC 3.0 30W Anker A1256 sở hữu gam màu sang trọng, thiết kế đẹp mắt, hiệu suất sạc lớn, tương thích với nhiều thiết bị, mang đến cho người dùng những trải nghiệm hoàn hảo.', 1180000, 1060000, 24, 'sacduphong/pin-sac-du-phong-10000mah-type-c-anker-a1256.jpg', '2023-11-22 08:52:27', '2023-11-22 08:52:27', 1, 60),
(61, 8, 'Pin sạc dự phòng Anker PowerCore Slim A1229 10.000 mAh', 'Pin sạc dự phòng Polymer 10.000mAh Type C Anker PowerCore Slim A1229 Đen có thiết kế mỏng, gọn nhẹ, không chiếm nhiều diện tích, dễ dàng mang theo khi đi chơi xa, đi làm hay đi học.', 800000, 480000, 26, 'sacduphong/pin-du-phong-10000mah-type-c-anker-powercore.jpeg', '2023-11-22 08:54:16', '2023-11-22 08:54:16', 2, 61),
(62, 8, 'Pin sạc dự phòng Samsung EB-P3400 10000 mAh', 'Pin sạc dự phòng 10000 mAh Type C PD Samsung EB-P3400 sở hữu kiểu dáng mỏng nhẹ, gam màu tinh tế, dung lượng pin lớn cùng hiệu suất sạc khá cao, hứa hẹn mang đến cho người dùng những trải nghiệm vô cùng tuyệt vời.', 990000, 790000, 35, 'sacduphong/pin-sac-du-phong-10000mah-type-c-pd-samsung.jpg', '2023-11-22 08:55:20', '2023-11-22 08:55:20', 2, 62),
(63, 8, 'Pin sạc dự phòng Samsung EB-P5300 20.000 mAh', 'Lớp vỏ nhựa cao cấp kháng vỡ, giúp giảm trọng lượng sạc dự phòng, cầm nắm hơi đầm tay nhưng không nặng với 392 gram. Đáp ứng các tiêu chuẩn sạc nhanh hiện đại, dòng sạc có thể lên đến 25 W, làm đầy năng lượng cho thiết bị trong tích tắc và đảm bảo quá trình kết nối, sạc nhanh, an toàn đầy tin cậy. ', 1490000, 1190000, 15, 'sacduphong/sac-du-phong-20000mah-type-c-25w-samsung-eb-p5300.jpg', '2023-11-22 08:56:21', '2023-11-22 08:56:21', 1, 63),
(64, 8, 'Trạm sạc dự phòng Baseus ioTa BPE45A 90000mAh', 'Trạm sạc dự phòng di động 90000mAh PD140W 220V - 450W Baseus ioTa BPE45A sở hữu thiết kế tối giản, trang bị nhiều cổng sạc cùng khả năng lưu trữ năng lượng lớn giúp trạm sạc đáp ứng nhu cầu sử dụng liên tục cho nhiều thiết bị của người dùng như cấp điện cho quạt, nồi cơm, máy tính, điện thoại,...', 10990000, 6590000, 5, 'sacduphong/tram-sac-du-phong-di-dong-90000mah-pd140w.jpg', '2023-11-22 08:57:23', '2023-11-22 08:57:23', 1, 64),
(65, 9, 'USB 3.2 32GB Apacer AH357', 'USB 3.2 32GB Apacer AH357 với thiết kế siêu nhỏ, thoải mái lưu trữ với dung lượng 32 GB, tiện sử dụng và sao lưu dữ liệu, dễ dàng đem theo mọi lúc mọi nơi, hứa hẹn mang đến cho bạn những trải nghiệm tuyệt vời.', 250000, 180000, 17, 'usb/usb-3-2-32gb-apacer-ah357-xanh-duong.jpg', '2023-11-22 09:09:20', '2023-11-22 09:09:20', 2, 65),
(66, 9, 'USB 3.1 16GB Apacer AH356', 'USB 3.1 16 GB Apacer AH356 có tông màu chủ đạo đen - xanh dương đẹp mắt. Có 1 lỗ nhỏ để móc dây treo chìa khóa hay balo. Đầu cổng USB có thể đẩy vào trong để bảo vệ khỏi hư hỏng. Tốc độ truyền dữ liệu rất nhanh.', 180000, 130000, 36, 'usb/usb-31-16gb-apacer-ah356-thumb.jpg', '2023-11-22 13:30:27', '2023-11-22 13:30:27', 2, 66),
(67, 9, 'USB 3.0 16GB SanDisk CZ600', 'USB 3.0 16 GB SanDisk CZ600 có thiết kế quen thuộc, nhỏ gọn. Nhỏ hơn chìa khóa xe, dày chỉ 0.84 cm, không làm cộm khi bỏ túi quần hay cho vào ví. Không còn lo tình trạng mất nắp đậy, USB Sandisk CZ600 thiết kế phần đẩy đầu USB vô ra rất dễ để sử dụng.', 190000, 140000, 36, 'usb/usb-30-16gb-sandisk-cz600-thumb.jpg', '2023-11-22 13:30:27', '2023-11-22 13:30:27', 1, 67),
(68, 9, 'USB 3.2 32GB Kioxia U366', 'USB 3.2 32GB Kioxia U366 sở hữu kiểu dáng sang trọng, chất liệu chắc chắn, dung lượng 32 GB tự tin có thể đáp ứng tốt mọi nhu cầu lưu trữ của bạn, chỉ cần thao tác đơn giản cắm vào thiết bị là có thể sử dụng được ngay.', 250000, 180000, 28, 'usb/usb-3-2-32gb-kioxia-u366-thumb.jpg', '2023-11-22 13:33:11', '2023-11-22 13:33:11', 2, 68),
(69, 9, 'USB Type C 128GB SanDisk SDDDC3', 'Thiết kế SanDisk SDDDC3 gọn đẹp, màu đen thời trang, dễ dàng cầm nắm, tiện nhét vào túi quần hoặc gắn vào chìa khóa, túi xách, balo (qua lỗ treo móc) để mang USB theo khi tới công sở, trường học hoặc bất cứ nơi nào bạn muốn.', NULL, 650000, 31, 'usb/usb-otg-31-128gb-type-c-sandisk-sdddc3.jpg', '2023-11-22 13:33:11', '2023-11-22 13:33:11', 2, 69),
(70, 9, 'USB 3.2 64GB Kioxia U365', 'USB 3.2 64GB Kioxia U365 sở hữu màu sắc và kiểu dáng sang trọng, dung lượng bộ nhớ lên tới 64 GB cho phép lưu trữ thoải mái, chỉ cần cắm vào thiết bị là sử dụng được ngay lập tức.', 350000, 250000, 36, 'usb/usb-3-2-64gb-kioxia-u365-thumb.jpg', '2023-11-22 13:33:11', '2023-11-22 13:33:11', 2, 70),
(71, 9, 'USB 3.1 16GB SanDisk SDCZ430', 'USB SanDisk 3.1 16GB SDCZ430 đen có thiết nhỏ gọn, tinh tế vừa khít vào cổng USB của thiết bị. Trên USB có 1 lỗ nhỏ để bạn cài móc khóa, tiện lợi hơn khi mang theo cũng như cầm nắm.', 140000, 129000, 28, 'usb/usb-sandisk-sdcz430-16gb-31-den.jpg', '2023-11-22 13:33:11', '2023-11-22 13:33:11', 1, 71),
(72, 9, 'USB 3.0 32GB SanDisk CZ73', 'USB 3.0 32 GB SanDisk CZ73 có kích thước nhỏ gọn. Phần đầu có lỗ nhỏ để xỏ dây hay móc vào chìa khóa. Dung lượng 32 GB lớn, lưu trữ tài liệu nhiều hơn. Tốc độ truyền dữ liệu rất nhanh, gấp 15 lần so với chuẩn 2.0. Phần mềm SanDisk SecureAccess giúp *giấu* tài liệu riêng tư của bạn.', 250000, 180000, 36, 'usb/usb-30-32gb-sandisk-cz73-thumb.jpg', '2023-11-22 13:33:11', '2023-11-22 13:33:11', 3, 72),
(73, 10, 'Màn hình Asus VA24EHF 23.8 inch 100Hz', 'Màn hình Asus VA24EHF 23.8 inch FHD sở hữu nhiều công nghệ hiện đại, tính năng tân tiến cùng thiết kế khung viền mỏng tối ưu cho trải nghiệm làm việc và giải trí đa phương tiện của người dùng.', 3190000, 2390000, 35, 'cpt_screen/asus-va24ehf-23-8-inch-fhd.jpg', '2023-11-22 14:27:01', '2023-11-22 14:27:01', 1, 73),
(74, 10, 'Màn hình Asus TUF Gaming VG249Q1A 23.8 inch 165Hz', 'Màn hình Asus LCD TUF Gaming 23.8 inch Full HD (VG249Q1A) được thiết kế đầy mạnh mẽ với gam màu đen cá tính, sẵn sàng sát cánh cùng bạn trong mọi cuộc chiến.', NULL, 3190000, 46, 'cpt_screen/asus-lcd-238-inch-full-hd-vg249q1a.jpg', '2023-11-22 14:27:01', '2023-11-22 14:27:01', 2, 74),
(75, 10, 'Màn hình Asus TUF Gaming VG30VQL1A 29.5 inch 200Hz', 'Nếu bạn đang tìm kiếm một màn hình gaming có thể cung cấp trải nghiệm chơi game tuyệt vời, đầy sắc nét và hiệu suất cao, thì màn hình Asus TUF Gaming VG30VQL1A 29.5 inch FHD chắc chắn là sự lựa chọn đáng cân nhắc để đưa trải nghiệm chơi game của bạn lên tầm cao mới.', 9490000, 6990000, 26, 'cpt_screen/asus-tuf-gaming-vg30vql1a-29-5-inch-fhd.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 2, 75),
(76, 10, 'Màn hình Samsung LS24R350FZEXXV 23.8 inch 75Hz', 'Nâng cao trải nghiệm xem cùng màn hình Samsung LS24R350FZEXXV 24 inch Full HD/75Hz/5ms với thiết kế ba cạnh không viền độc đáo, độ phân giải Full HD sắc nét cùng chuyển động mượt mà nhờ công nghệ AMD Radeon FreeSync.', NULL, 2890000, 15, 'cpt_screen/samsung-ls24r350fzexxv-24-inch-full-hd.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 2, 76),
(77, 10, 'Màn hình cong Samsung S3 S36C LS27C360EAEXXV 27 inch 75Hz', 'Màn hình cong Samsung S3 S36C LS27C360EAEXXV 27 inch FHD không chỉ mang lại sự hiện đại ấn tượng mà còn kết hợp cùng các công nghệ đỉnh cao, tạo nên một trải nghiệm tuyệt vời cho người dùng và thu hút ngay từ cái nhìn đầu tiên.', 3190000, 2990000, 29, 'cpt_screen/samsung-ls27c360eaexxv-27-inch-fhd.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 1, 77),
(78, 10, 'Màn hình Dell E2423H 23.8 inch 60Hz', 'Nếu bạn đang là sinh viên, người đi làm hay doanh nghiệp đang muốn tìm kiếm một mẫu màn hình có những thông số, tính năng ổn định cùng giá thành hợp lý để set up cho không gian làm việc của mình thì màn hình Dell E2423H 23.8 inch FHD chắc chắn sẽ là mẫu sản phẩm bạn không nên bỏ qua, đáp ứng đầy đủ từ các tiêu chí làm việc đến giải trí đa phương tiện.', 3390000, 2890000, 38, 'cpt_screen/dell-e2423h-238-fhd-thumb.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 3, 78),
(79, 10, 'Màn hình Dell E2723H 27 inch 60Hz', 'Trải nghiệm không gian làm việc rộng lớn hơn với khung hình 27 inch, các tính năng tối ưu cho nhu cầu người dùng được tích hợp trong chiếc màn hình văn phòng đến từ nhà Dell. Màn hình Dell E2723H 27 inch FHD không chỉ đáp ứng được những yêu cầu khó của người dùng cá nhân mà còn thoả mãn được những tiêu chuẩn dành cho doanh nghiệp.', 4190000, 3990000, 25, 'cpt_screen/dell-e2723h-27-inch-fhd-thumb.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 2, 79),
(80, 10, 'Màn hình MSI PRO MP251 24.5 inch 100Hz', 'Màn hình văn phòng mở ra không gian làm việc đầy lý tưởng cho người dùng với kích thước khung hình vừa đủ, đa dạng các thông số tính năng hữu ích đi kèm. Màn hình MSI PRO MP251 24.5 inch FHD chính xác là sự lựa chọn tuyệt vời để setup cho góc làm việc của bạn, phục vụ đa dạng nhiều nhu cầu khác nhau.', 2790000, 2390000, 40, 'cpt_screen/msi-pro-mp251-24-5-inch-fhd-thumb.jpg', '2023-11-22 14:28:57', '2023-11-22 14:28:57', 3, 80);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(0, 'Client'),
(1, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `is_admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `address`, `city`, `is_admin`) VALUES
(1, 'Nguyễn Tấn Đạt', 'datntps34864@fpt.edu.vn', 'ntd2004@', 'Tân Chánh Hiệp, Q.12', 'TP HCM', 1),
(2, 'Phạm Thành Vinh', 'vinhptps12345@fpt.edu.vn', 'vinhxo123@', 'Tân Thới Hiệp, Q.Bình Thạnh', 'TP HCM', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order-detail`
--
ALTER TABLE `order-detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`,`id_product`,`id_user`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`id_category`,`id_detail`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_detail` (`id_detail`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_admin` (`is_admin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `order-detail`
--
ALTER TABLE `order-detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `order-detail`
--
ALTER TABLE `order-detail`
  ADD CONSTRAINT `order-detail_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order-detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order-detail_ibfk_3` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_detail`) REFERENCES `detail` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`is_admin`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
