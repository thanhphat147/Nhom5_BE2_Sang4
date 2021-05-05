-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th5 05, 2021 lúc 03:32 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `farm_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `userid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_productid_foreign` (`productid`),
  KEY `carts_userid_foreign` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thịt, cá, tôm, trứng', '-Thịt thực phẩm hay gọi thường là thịt (tiếng Anh: meat) là mô cơ của một số loài động vật như bò, lợn, gà được dùng làm thực phẩm cho con người.\r\n-Cá là những động vật có dây sống, phần lớn là ngoại nhiệt (máu lạnh), có mang (một số có phổi) và sống dưới nước. Hiện người ta biết khoảng trên 31.900 loài cá\r\n-Tôm là từ chỉ phần lớn các loài động vật giáp xác trong bộ giáp xác mười chân, ngoại trừ phân thứ bộ Cua bao gồm các loài cua, cáy và có thể là một phần của cận bộ Anomura bao gồm các loài tôm ở nhờ (ốc mượn hồn)\r\n-Trứng (miền Nam gọi là hột) là sản phẩm động vật từ các loại gia cầm, chim chóc đẻ ra, thường được sử dụng làm nguồn thức ăn cung cấp protein cho người. Bề ngoài của trứng thường có hình bầu dục, hai đầu không cân bằng, một to một nhỏ. Các loại trứng phổ biến nhất là trứng gà, trứng vịt (trứng lộn), trứng chim cút (trứng cút) ngoài ra còn có trứng ngỗng, trứng đà điểu.', NULL, NULL),
(2, 'Rau, củ', '-Rau (tiếng Anh: vegetable), có thời kỳ còn gọi là la ghim (từ tiếng Pháp: légume),[1] là tên gọi chung cho những bộ phận của thực vật được con người hay động vật dùng làm thực phẩm. Ý nghĩa này hiện vẫn được sử dụng phổ biến và áp dụng cho những thực vật có bộ phận ăn được, bao gồm hoa, quả, thân, lá, rễ và hạt. Định nghĩa thứ cấp của từ này không được thống nhất giữa các nền văn hóa và ẩm thực khác nhau. Nhìn chung, rau có thể không gồm quả, hoa, quả kiên và ngũ cốc, nhưng lại bao gồm các loại quả ngon miệng như cà chua và bí ngòi, hoa như bông cải xanh và hạt như đậu. Trong tiếng Việt, chữ Nôm có các gốc 蒌 và 蔞, đều có thể đọc là rau.\r\n-Củ là các kiểu khác nhau của các cấu trúc thực vật bị biến đổi và phình to ra để lưu trữ các chất dinh dưỡng. Nó được thực vật sử dụng để vượt qua mùa đông và tái phát triển vào năm sau cũng như để sinh sản sinh dưỡng. Trong thực vật học, người ta phân biệt ba kiểu củ khác nhau là: thân củ, rễ củ và củ kiểu khoai tây. Trong đời sống dân dã, nói chung người ta gọi những gì sinh dưới mặt đất/nước và phình to là củ, vì thế mà quả (thật sự) của lạc hay ấu cũng được gọi là củ. Ngoài ra, đối với một số loài thì ngay đoạn thân phình to phía trên mặt đất cũng được gọi là củ, như củ su hào v.v.', NULL, NULL),
(3, 'Qủa(Trái cây)', '-Trong thực vật học, quả (phương ngữ miền Bắc) hoặc trái (phương ngữ miền Nam) là một phần của những loại thực vật có hoa, chuyển hóa từ những mô riêng biệt của hoa, có thể có một hoặc nhiều bầu nhụy và trong một số trường hợp thì là mô phụ. Quả là phương tiện để thực vật phân tán hạt của chúng. Nhiều loại thực vật cho quả ăn được, được nhân giống bởi sự di chuyển của con người và các loài động vật theo mối quan hệ cộng sinh như là cách phát tán hạt giống và chất dinh dưỡng nói riêng. Sự thật thì các loại quả là một nguồn thực phẩm đối với con người và nhiều loài động vật.[1] Các loại quả chiếm một phần quan trọng trong sản lượng nông nghiệp thế giới, và một số (chẳng hạn như táo và lựu) mang ý nghĩa văn hóa và biểu tượng rộng rãi.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_24_070732_create_user_table', 1),
(2, '2021_04_24_070825_create_product_table', 1),
(3, '2021_04_24_071132_create_review_table', 1),
(4, '2021_04_24_071846_create_cart_table', 1),
(5, '2021_04_24_071858_create_transaction_table', 1),
(6, '2021_04_24_071932_create_catalog_table', 1),
(7, '2021_04_28_010636_create_role_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `productname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producttype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalogid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_catalogid_foreign` (`catalogid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `productname`, `producttype`, `description`, `price`, `image`, `catalogid`, `created_at`, `updated_at`) VALUES
(1, 'Ba rọi heo khay 500g', 'Thịt, cá, tôm, trứng', 'Thịt ba rọi heo CP được sản xuất từ hệ thống được kiểm soát chặt chẽ theo nguyên tắc chuỗi khép kín “Thức ăn chăn nuôi - Trang trại chăn nuôi – Nhà máy chế biến thực phẩm”. ', 96000, 't1.jpg', '1', '2021-05-04 17:00:00', NULL),
(2, 'Thịt cổ bò Úc Pacow khay 250g', 'Thịt, cá, tôm, trứng', 'Thịt cổ bò Úc Pascow với thành phần là thịt bò mát 100% thiên nhiên, nguồn gốc rõ ràng đảm bảo an toàn vệ sinh thực phẩm, chất lượng cao. Thịt bò Úc Pacow đạt chuẩn từ trang trại tới bàn ăn.', 87000, 't2.jpg', '1', '2021-05-04 17:00:00', NULL),
(3, 'Nạc dăm heo khay 500g', 'Thịt, cá, tôm, trứng', 'Nạc dăm heo CP được sản xuất từ hệ thống được kiểm soát chặt chẽ theo nguyên tắc chuỗi khép kín “Thức ăn chăn nuôi - Trang trại chăn nuôi – Nhà máy chế biến thực phẩm”. ', 82000, 't3.jpg', '1', '2021-05-04 17:00:00', NULL),
(4, 'Sườn non heo khay 500g', ' Thịt, cá, tôm, trứng', 'Sườn non heo CP được sản xuất từ hệ thống được kiểm soát chặt chẽ theo nguyên tắc chuỗi khép kín “Thức ăn chăn nuôi - Trang trại chăn nuôi – Nhà máy chế biến thực phẩm”. ', 109000, 't4.jpg', '1', '2021-05-04 17:00:00', NULL),
(5, 'Hộp 4 trứng vịt bắc thảo V.Food', 'Thịt, cá, tôm, trứng', 'Trứng vịt bắc thảo (hay còn gọi bách thảo, bách nhật trứng) là món trứng đặc biệt có nguồn gốc từ Trung Hoa. Trứng bắc thảo ngoài hương vị rất ngon còn có nhiều chất tốt cho sức khỏe.', 30000, 'g1.jpg', '1', '2021-05-04 17:00:00', NULL),
(6, 'Hộp 10 trứng gà tươi QLEgg', 'Thịt, cá, tôm, trứng', 'Trứng gà là một loại thực phẩm chứa nhiều chất dinh dưỡng, cung cấp lượng đạm cao, cung cấp chất béo và vitamin, khoáng chất.', 27000, 'g2.jpg', '1', '2021-05-04 17:00:00', NULL),
(7, 'Hộp 6 trứng gà ta T.Food', 'Thịt, cá, tôm, trứng', 'Trứng gà ta là một loại thực phẩm chứa nhiều chất dinh dưỡng, cung cấp lượng đạm cao, cung cấp chất béo và vitamin, khoáng chất.', 23000, 'g3.jpg', '1', '2021-05-04 17:00:00', NULL),
(8, 'Hộp 4 trứng vịt muối T.Food', 'Thịt, cá, tôm, trứng', 'Trong lòng đỏ trứng vịt muối có chứa nhiều chất dinh dưỡng tốt cho sức khoẻ như vitamin, giàu chất oxy hoá, protein', 23000, 'g4.jpg', '1', '2021-05-04 17:00:00', NULL),
(9, 'Cá nục vỉ 500g', 'Thịt, cá, tôm, trứng', 'Cá nục là một loại cá sống ở biển, đây là một loại cá được nhiều người yêu thích bởi sự thơm ngon và nhiều lợi ích đối với sức khoẻ.', 37500, 'c1.png', '1', '2021-05-04 17:00:00', NULL),
(10, 'Cá hường làm sạch khay 500g', 'Thịt, cá, tôm, trứng', 'Cá hường hay còn gọi là cá mùi là loài cá không còn lạ với những người dân đồng bằng sông Cửu Long. Loại cá này có thịt mềm', 49500, 'c2.png', '1', '2021-05-04 17:00:00', NULL),
(11, 'Cá điêu hồng làm sạch khay 500g', 'Thịt, cá, tôm, trứng', 'Cá diêu hồng hay cá điêu hồng hay còn gọi là cá rô phi đỏ là một loài cá nước ngọt thuộc họ cá rô phi.', 42000, 'c3.jpg', '1', '2021-05-04 17:00:00', NULL),
(12, 'Đầu cá hồi tươi túi 500g', 'Thịt, cá, tôm, trứng', 'Không chỉ ngon miệng mà cá hồi còn được biết đến là thực phẩm giàu dinh dưỡng và tốt cho sức khỏe. ', 34000, 'c4.jpg', '1', '2021-05-04 17:00:00', NULL),
(13, 'Tôm thẻ bóc nõn', 'Thịt, cá, tôm, trứng', 'Tôm thẻ bóc nõn Gofood là sản phẩm đạt tiêu chuẩn Global GAP, không chứa kháng sinh, được đảm bảo chất lượng an toàn nhất khi gửi tới tay người tiêu dùng.', 540000, 'a1.jpg', '1', '2021-05-04 17:00:00', NULL),
(14, 'Tôm thẻ tươi Nobashi', 'Thịt, cá, tôm, trứng', 'Tôm tươi được nuôi theo tiêu chuẩn Global Gap, đã được làm sạch, lột bỏ vỏ và chừa đuôi theo quy trình sản xuất của Nhật Bản.', 229000, 'a2.jpg', '1', '2021-05-04 17:00:00', NULL),
(15, 'Tôm xông khói - Smoked Shrimp', 'Thịt, cá, tôm, trứng', ' Rã đông tự nhiên 30-35 phút, ăn kèm với sốt muối tiêu chanh, mù tạt hoặc nước tương.', 245000, 'a3.jpg', '1', '2021-05-04 17:00:00', NULL),
(16, 'Tôm thẻ khay 300g', 'Thịt, cá, tôm, trứng', 'Tôm thẻ là một món ăn rất được nhiều người ưa thích, có khá nhiều loại tôm khác nhau như: Tôm thẻ chân trắng, tôm thẻ chân đỏ, tôm thẻ bạc.', 51000, 'a4.jpg', '1', '2021-05-04 17:00:00', NULL),
(17, 'Xà lách búp mỡ thuỷ canh túi 300g', 'Rau, củ', 'Xà lách búp mỡ thủy canh túi 300g có lá lớn, liên kết xếp tầng xung quanh, rất dễ tách ra từ thân cây. Lá cây rất mềm, có vị ngọt thanh, rất thơm ngon khi ăn sống.', 20000, 'r1.jpg', '2', '2021-05-04 17:00:00', NULL),
(18, 'Xà lách lô lô xanh thuỷ canh túi 300g', 'Rau, củ', 'Xà lách từ lâu đã thành loại rau xanh ăn kèm không thể thiếu đối với nhiều món ăn, nhất là những món chiên, nướng. ', 20000, 'r2.jpg', '2', '2021-05-04 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `productid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `reviews_transactionid_foreign` (`transactionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_cartid_foreign` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_foreign` (`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
