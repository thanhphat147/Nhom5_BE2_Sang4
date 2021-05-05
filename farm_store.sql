-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th5 05, 2021 lúc 03:49 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, 'Xà lách lô lô xanh thuỷ canh túi 300g', 'Rau, củ', 'Xà lách từ lâu đã thành loại rau xanh ăn kèm không thể thiếu đối với nhiều món ăn, nhất là những món chiên, nướng. ', 20000, 'r2.jpg', '2', '2021-05-04 17:00:00', NULL),
(19, 'Cải bó xôi túi 500g', 'Rau, củ', 'Cải bó xôi hay còn được gọi là rau Bina, là một loại ra được ưa chuộng ở rất nhiều nơi trên thế giới bởi những giá trị dinh dưỡng mà nó mang lại Một số công dụng tuyệt vời của cải bó xôi có thể kể đến như chống ung thư, chống viêm, ngăn ngừa bệnh tuyến tiền liệt, hỗ trợ giảm cân, làm đẹp da, sáng mắt,...', 29000, 'r3.jpg', '2', '2021-05-04 17:00:00', NULL),
(20, 'Rau muống nước baby túi 300g\r\n', 'Rau, củ', 'Rau muống nước baby là một loại rau muống có phần lá với kích thước nhỏ nhưng công dụng không thua kém gì so với rau muống thông thường. Đặc biệt, đây là loại rau có chứa hàm lượng nước cao (92%) cùng với một số các khoáng chất có lợi khác (canxi, photpho, sắt,...) cùng các nhóm vitamin B, C,... Vì thế, rau muống có nhiều công dụng như cung cấp nguồn nước cho cơ thể, giúp giải nhiệt, ổn định huyết áp, ngăn ngừa ung thư, điều hòa tim mạch,... ', 19000, 'r4.jpg', '2', '2021-05-04 17:00:00', NULL),
(21, 'Củ sắn túi 500g', 'Rau, củ', 'Củ sắn hay còn gọi là củ đậu, đây là một loại rau củ có xuất xứ từ Mexico, được trồng rất nhiều khắp thế giới. Củ sắn có kích thước to, tròn và trông khá giống với con quay, thịt chắc và nặng, có lớp vỏ xơ dai màu vàng. Phần thịt của củ sẵn khá ngọt, nhiều nước và rất giòn.\r\nThông thường người ta sẽ dùng củ sắn để ăn sống hoặc chế biến thành nhiều món ăn khác nhau như: xào, luộc hay nấu canh,...', 10000, 'u1.jpg', '2', '2021-05-04 17:00:00', NULL),
(22, 'Củ cải trắng túi 500g', 'Rau, củ', 'Củ cải trắng hay còn được gọi là củ cải mùa đông, có nguồn gốc từ Trung Quốc và Nhật Bản. Đây là một loại rau củ được trồng để làm thực phẩm và dầu hạt. Củ cải trắng có ngoại hình giống với cà rốt nhưng có màu trắng, mùi vị thì hơi ngọt và cay.', 9000, 'u2.jpg', '2', '2021-05-04 17:00:00', NULL),
(23, 'Bí xanh túi 500g', 'Rau, củ', 'Bí xanh hay còn gọi là bí đao, bí phấn, bí dài, bí chanh, bí đá, bí gối, bù rợ, đông qua… là một loại rau, củ ngon dùng để làm nấu ăn và đặc biệt hơn là có thể làm mứt. Bí xanh là một dạng dây leo, khi già trái sẽ dài và xuất hiện lớp phấn và lông cứng bao quanh. ', 8000, 'u3.jpg', '2', '2021-05-04 17:00:00', NULL),
(24, 'Su su túi 500g', 'Rau, củ', 'Su su (hay còn gọi là su le) là một loại thực phẩm thuộc lớp củ, quả thuộc họ Bầu, bí, cùng với dưa hấu, dưa chuột và bí. Cây su su thân leo có rễ phình thành củ. Lá to, bóng, hình chân vịt, có 5 thuỳ, tua cuốn chia 3-5 nhánh. Hoa nhỏ, đơn tính, cùng gốc, màu trắng vàng. Quả thịt hình quả lê có cạnh lồi dọc và sần sùi, to bằng nắm tay, chứa một hạt lớn hình cầu. Quả su su có tính mát, lành tính, chứa nhiều chất dinh dưỡng có lợi cho sức khỏe như nước, protid, glucid, vitamin C', 8000, 'u4.jpg', '2', '2021-05-04 17:00:00', NULL),
(25, 'Táo Envy hộp 1kg', 'Qủa(Trái cây)', 'Táo tây còn gọi là bôm (phiên âm từ tiếng Pháp: pomme) là một loại trái cây từ cây táo tây Malus domestica. Cây táo có nguồn gốc ở Trung Á, nơi tổ tiên của nó tức là loài táo dại Tân Cương hiện vẫn còn tồn tại cho đến ngày hôm nay. Táo đã được trồng từ hàng ngàn năm ở châu Á và châu Âu, được thực dân châu Âu đưa đến Bắc Mỹ. Táo có ý nghĩa tôn giáo và thần thoại trong nhiều nền văn hóa, bao gồm cả văn hóa ở Bắc Âu, Hy Lạp và Kitô giáo tại châu Âu.', 242000, 'q1.jpg', '3', '2021-05-04 17:00:00', NULL),
(26, 'Nho xanh không hạt hộp 1kg', '3', 'Nho xanh không hạt là loại trái cây tươi nhập khẩu cao cấp, nho có đặc điểm trái tròn, tươi ngon mọng nước. Không chỉ vậy, quả nho còn có vị ngọt đậm đà, thịt chắc giòn, ngon miệng. Sản phẩm nhập khẩu trực tiếp từ Mỹ, đạt tiêu chuẩn xuất khẩu toàn cầu và được bảo quản tươi ngon đến tận tay khách hàng.', 189000, 'q2.jpg', '3', '2021-05-04 17:00:00', NULL),
(27, 'Nho đỏ không hạt hộp 1kg', 'Qủa(Trái cây)', 'Nho là loại trái cây quen thuộc, chứa nhiều vitamin và dưỡng chất, không những thế nho còn giúp phòng chống nhiều bệnh. Quả nho có vị chua chua, ngọt ngọt rất ngon có thể ăn trực tiếp hoặc làm nước ép, sinh tố,... đều rất có lợi cho sức khoẻ, giúp phòng ngừa nhiều bệnh và làm đẹp. Nho chứa nhiều dưỡng chất như: vitamin B1, B2, B6, B12, A, C, P,... canxi, magiê, sắt, axit salicilic , axit photphoric, axit amin và những chất khác', 186000, 'q3.jpg', '3', '2021-05-04 17:00:00', NULL),
(28, 'Dâu tây hộp 500g (giao 2 hộp)', 'Qủa(Trái cây)', 'Dâu tây hay còn gọi là dâu đất, được trồng lấy trái ở vùng ôn đới. Với mùi thơm hấp dẫn cùng vị dâu ngọt lẫn chua nên dâu tây được ưa chuộng. Loại trái cây này có giá trị dinh dưỡng cao, được coi là “nữ hoàng của các loài trái cây”. Dâu tây chứa nhiều loại đường, protein, axít hữu cơ, pectic và giàu vitamin, chất khoáng cũng như nguyên tố vi lượng giúp tăng cường hệ miễn dịch, bảo vệ mắt, chống ung thư, ngăn ngừa vết nhăn,...', 158000, 'q4.jpg', '3', '2021-05-04 17:00:00', NULL);

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
