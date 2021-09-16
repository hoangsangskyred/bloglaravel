-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table blogadmin.about-us
CREATE TABLE IF NOT EXISTS `about-us` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.about-us: 1 rows
/*!40000 ALTER TABLE `about-us` DISABLE KEYS */;
REPLACE INTO `about-us` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'Tại Sao Chọn Unique House', '<p><span style="color:#c0392b"><em>[Chưa c&oacute; nội dung]</em></span></p>', '2021-01-31 15:38:38', '2021-01-31 15:55:47');
/*!40000 ALTER TABLE `about-us` ENABLE KEYS */;

-- Dumping structure for table blogadmin.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `avatar_path` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `type` enum('article','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'article',
  `article_source_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_category_id` (`article_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.articles: 2 rows
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
REPLACE INTO `articles` (`id`, `article_category_id`, `avatar_path`, `title`, `slug`, `description`, `avatar`, `content`, `show`, `type`, `article_source_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, NULL, 'Căn Nhà Có Thiết Kế \'Mở Bên Trong, Kín Bên Ngoài\'', 'kien-thuc-noi-that/can-nha-co-thiet-ke-mo-ben-trong-kin-ben-ngoai', NULL, NULL, '<p>TP HCM - Căn nh&agrave; ba tầng xuống cấp được kiến tr&uacute;c sư Tạ Vĩnh Ph&uacute;c cải tạo kết cấu, hai bức tường cũ thay bằng gạch k&iacute;nh, với chi ph&iacute; khoảng 500 triệu đồng.</p>', 'Y', 'article', NULL, '2021-01-21 15:02:41', '2021-02-02 17:36:50', NULL),
	(5, 1, NULL, 'Kỹ Năng Và Kinh Nghiệm Khi Làm Tư Vấn Giám Sát Thi Công', 'kien-thuc-noi-that/ky-nang-va-kinh-nghiem-khi-lam-tu-van-giam-sat-thi-cong', NULL, NULL, '<p style="text-align:center"><strong>B&agrave;i Học Về Kỹ Năng Tư Vấn Gi&aacute;m S&aacute;t C&ocirc;ng Tr&igrave;nh</strong></p>\r\n\r\n<p>GS.TS.Vũ trọng Hồng<br />\r\nĐại học Thủy lợi<br />\r\nPhần một: cơ sở ph&aacute;p l&yacute; v&agrave; nghiệp vụ gi&aacute;m s&aacute;t thi c&ocirc;ng</p>\r\n\r\n<p><span style="color:#666699"><span style="color:#000000"><strong>&raquo; </strong></span>Hồ sơ mời thầu trong hoạt động x&acirc;y dựng l&agrave; g&igrave;?</span><br />\r\n<span style="color:#666699"><span style="color:#000000"><strong>&raquo;</strong></span> Dịch vụ c&acirc;́p nhanh chứng chỉ hành ngh&ecirc;̀ tư v&acirc;́n giám sát tại sở x&acirc;y dựng</span><br />\r\n<span style="color:#666699"><span style="color:#000000"><strong>&raquo; </strong></span>Nh&acirc;n tố cần thiết của một gi&aacute;m s&aacute;t vi&ecirc;n giỏi<strong>&nbsp;</strong>trong c&ocirc;ng việc</span><br />\r\n<span style="color:#666699"><span style="color:#000000"><strong>&raquo; </strong></span>Tổ chức c&aacute;c kh&oacute;a học bồi dưỡng nghiệp vụ x&acirc;y dựng tại đơn vị tr&ecirc;n to&agrave;n quốc</span></p>\r\n\r\n<p><strong>I &ndash; Mở đầu</strong></p>\r\n\r\n<p>&ndash; C&ocirc;ng t&aacute;c gi&aacute;m s&aacute;t thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh l&agrave; một hoạt động nằm trong một chuỗi c&aacute;c hoạt động kh&aacute;c của qu&aacute; tr&igrave;nh thực hiện dự &aacute;n x&acirc;y dựng c&ocirc;ng tr&igrave;nh như: lập qui hoạch x&acirc;y dựng, lập dự &aacute;n đầu tư x&acirc;y dựng c&ocirc;ng tr&igrave;nh, khảo s&aacute;t x&acirc;y dựng, thiết kế x&acirc;y dựng c&ocirc;ng tr&igrave;nh, thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh, gi&aacute;m s&aacute;t thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh, <span style="color:#3366ff">quản l&iacute; dự &aacute;n đầu tư x&acirc;y dựng</span> c&ocirc;ng tr&igrave;nh, lựa chọn nh&agrave; thầu v&agrave; c&aacute;c hoạt động kh&aacute;c (điều 3 &ndash; Luật X&acirc;y dựng).<br />\r\n&ndash; Tổ chức hoặc c&aacute; nh&acirc;n h&agrave;nh nghề gi&aacute;m s&aacute;t thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh cũng được qui định th&agrave;nh chức danh c&oacute; c&aacute;c chức năng, nhiệm vụ với c&aacute;c ti&ecirc;u chuẩn như tr&igrave;nh độ học vấn, th&acirc;m ni&ecirc;n c&ocirc;ng việc, kinh nghiệm nghề nghiệp, chứng chỉ h&agrave;nh nghề (điều 62, điều 65 &ndash; Nghị định 16/2005)<br />\r\n&ndash; Mục đ&iacute;ch của hoạt động <span style="color:#3366ff">gi&aacute;m s&aacute;t thi c&ocirc;ng</span> nhằm x&aacute;c nhận cho c&ocirc;ng tr&igrave;nh bảo đảm đ&uacute;ng thiết kế, theo qui chuẩn, ti&ecirc;u chuẩn x&acirc;y dựng, chất lượng để đưa v&agrave;o nghiệm thu. Như vậy mọi c&ocirc;ng tr&igrave;nh x&acirc;y dựng trong qu&aacute; tr&igrave;nh thi c&ocirc;ng phải được thực hiện chế độ gi&aacute;m s&aacute;t (điều 87 &ndash; Luật X&acirc;y dựng)<br />\r\n&ndash; C&ocirc;ng tr&igrave;nh x&acirc;y dựng l&agrave; sản phẩm được tạo th&agrave;nh bởi sức lao động của con người, vật liệu x&acirc;y dựng, thiết bị lắp đặt v&agrave;o c&ocirc;ng tr&igrave;nh, được li&ecirc;n kết với đất, được x&acirc;y dựng theo thiết kế. Với đặc th&ugrave; tr&ecirc;n th&igrave; việc thi c&ocirc;ng c&ocirc;ng tr&igrave;nh x&acirc;y dựng kh&ocirc;ng chỉ phụ thuộc điều kiện tự nhi&ecirc;n m&agrave; c&ograve;n tuỳ thuộc v&agrave;o tr&igrave;nh độ v&agrave; sức lao động của con người, v&agrave;o đặc điểm c&aacute;c loại vật liệu, c&aacute;c loại thiết bị x&acirc;y dựng. Điều n&agrave;y đ&ograve;i hỏi người gi&aacute;m s&aacute;t thi c&ocirc;ng kh&ocirc;ng chỉ nắm vững kĩ thuật x&acirc;y dựng m&agrave; c&ograve;n cần c&oacute; kinh nghiệm về <span style="color:#3366ff">gi&aacute;m s&aacute;t thi c&ocirc;ng</span>, c&oacute; nghiệp vụ v&agrave; sức khoẻ mới c&oacute; thể theo kịp mọi diễn biến trong q&uacute;a tr&igrave;nh thi c&ocirc;ng.</p>\r\n\r\n<div>\r\n<p>Nội dung ch&iacute;nh</p>\r\n\r\n<ul>\r\n	<li>1 II &ndash; Vai tr&ograve; người gi&aacute;m s&aacute;t thi c&ocirc;ng\r\n	<ul>\r\n		<li>1.1 III &ndash; Đặc th&ugrave; của qu&aacute; tr&igrave;nh x&acirc;y dựng\r\n		<ul>\r\n			<li>1.1.1 IV. Tổ chức gi&aacute;m s&aacute;t</li>\r\n			<li>1.1.2 V. B&agrave;i tập thực h&agrave;nh</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<h2><strong>II &ndash; Vai tr&ograve; người gi&aacute;m s&aacute;t thi c&ocirc;ng</strong></h2>\r\n\r\n<p>1. Vị tr&iacute; : một chức danh trong hoạt động x&acirc;y dựng (tương tự chủ nhiệm dự &aacute;n, chủ nhiệm khảo s&aacute;t, chủ nhiệm thiết kế).<br />\r\n2. Chức năng: gi&aacute;m s&aacute;t nh&agrave; thầu thi c&ocirc;ng trong qu&aacute; tr&igrave;nh x&acirc;y dựng.<br />\r\n3. Nhiệm vụ: c&oacute; 2 nhiệm vụ ch&iacute;nh như sau<br />\r\na) Theo d&otilde;i việc thực hiện c&aacute;c c&ocirc;ng việc của nh&agrave; thầu thi c&ocirc;ng bằng những biện ph&aacute;p được ghi trong hợp đồng x&acirc;y dựng, ở kh&acirc;u x&acirc;y v&agrave; lắp trong qu&aacute; tr&igrave;nh thi c&ocirc;ng tại hiện trường.<br />\r\nb) Kiểm tra:<br />\r\n&ndash; Điều kiện khởi c&ocirc;ng x&acirc;y dựng;<br />\r\n&ndash; Sự ph&ugrave; hợp năng lực nh&agrave; thầu thi c&ocirc;ng với hồ sơ dự thầu v&agrave; hợp đồng x&acirc;y dựng (nh&acirc;n lực, thiết bị; hệ thống quản l&iacute; chất lượng; giấy ph&eacute;p sử dụng m&aacute;y m&oacute;c, thiết bị, vật tư; ph&ograve;ng th&iacute; nghiệm v&agrave; cơ sở sản xuất vật liệu, cấu kiện, sản phẩm x&acirc;y dựng phục vụ thi c&ocirc;ng);<br />\r\n&ndash; Chất lượng vật tư, vật liệu v&agrave; thiết bị lắp đặt do nh&agrave; thầu thi c&ocirc;ng cung cấp (giấy chứng nhận chất lượng của nh&agrave; sản xuất; kết quả th&iacute; nghiệm của ph&ograve;ng th&iacute; nghiệm hợp ti&ecirc;u chuẩn v&agrave; kết quả kiểm định chất lượng thiết bị của c&aacute;c tổ chức được cơ quan nh&agrave; nước c&oacute; thẩm quyền c&ocirc;ng nhận; khi nghi ngờ th&igrave; kiểm tra trực tiếp);<br />\r\n&ndash; Kiểm tra biện ph&aacute;p thi c&ocirc;ng;<br />\r\n&ndash; Kiểm tra qu&aacute; tr&igrave;nh triển khai c&ocirc;ng việc ở hiện trường (ghi nhật k&iacute; gi&aacute;m s&aacute;t hoặc bi&ecirc;n bản kiểm tra);<br />\r\n&ndash; X&aacute;c nhận bản vẽ ho&agrave;n c&ocirc;ng;<br />\r\n&ndash; Tổ chức nghiệm thu;<br />\r\n&ndash; Tập hợp, kiểm tra t&agrave;i liệu phục vụ nghiệm thu của nh&agrave; thầu thi c&ocirc;ng;<br />\r\n&ndash; Ph&aacute;t hiện sai s&oacute;t, bất hợp l&iacute; về thiết kế để điều chỉnh hoặc y&ecirc;u cầu nh&agrave; thầu điều chỉnh;<br />\r\n&ndash; Tổ chức kiểm định lại khi nghi ngờ về chất lượng c&ocirc;ng tr&igrave;nh;<br />\r\n&ndash; Chủ tr&igrave; giải quyết vướng mắc giữa c&aacute;c b&ecirc;n li&ecirc;n quan;</p>\r\n\r\n<p style="text-align:center"><img alt="vai-tro-nguoi-giam-sat-thi-cong" class="aligncenter size-full wp-image-844" src="https://vienxaydung.edu.vn/wp-content/uploads/2015/09/vai-tro-nguoi-giam-sat-thi-cong.jpg" /></p>\r\n\r\n<p>4. Quyền hạn:<br />\r\n&ndash; Y&ecirc;u cầu điều chỉnh;<br />\r\n&ndash; Dừng thi c&ocirc;ng;<br />\r\n&ndash; Y&ecirc;u cầu khắc phục hậu quả;<br />\r\n&ndash; Từ chối nghiệm thu;<br />\r\n5. Năng lực:<br />\r\n&ndash; Tr&igrave;nh độ: đại học trở l&ecirc;n<br />\r\n&ndash; kinh nghiệm: tham gia thiết kế, thi c&ocirc;ng, gi&aacute;m s&aacute;t &iacute;t nhất 5 năm<br />\r\n&ndash; Đ&agrave;o tạo: qua lớp bồi dưỡng gi&aacute;m s&aacute;t thi c&ocirc;ng;<br />\r\n&ndash; Được cấp <span style="color:#3366ff">chứng chỉ h&agrave;nh nghề tư vấn gi&aacute;m s&aacute;</span>t ;<br />\r\n6. Phạm vi hoạt động:<br />\r\n&ndash; Kh&ocirc;ng gian: phạm vi thi c&ocirc;ng của nh&agrave; thầu;<br />\r\n&ndash; Thời gian: thường xuy&ecirc;n, li&ecirc;n tục trong qu&aacute; tr&igrave;nh thi c&ocirc;ng;<br />\r\n7. Mối quan hệ:<br />\r\n&ndash; Nh&agrave; thầu thi c&ocirc;ng;<br />\r\n&ndash; chủ đầu tư;<br />\r\n&ndash; Tư vấn thiết kế;<br />\r\n&ndash; Chuy&ecirc;n gia một số lĩnh vực trong thiết kế, thi c&ocirc;ng.<br />\r\n8. Ngoại lệ:<br />\r\n&ndash; Ngo&agrave;i thiết kế quy định<br />\r\n&ndash; Sự cố c&ocirc;ng tr&igrave;nh<br />\r\nNguồn dữ liệu:<br />\r\n&ndash; Hồ sơ thiết kế: thuyết minh, bản vẽ;<br />\r\n&ndash; Chỉ dẫn kĩ thuật, biện ph&aacute;p thi c&ocirc;ng trong hợp đồng;<br />\r\n&ndash; Qui chuẩn x&acirc;y dựng;<br />\r\n&ndash; Ti&ecirc;u chuẩn x&acirc;y dựng (bắt buộc).<br />\r\nSản phẩm<br />\r\n&ndash; X&aacute;c nhận để nghiệm thu hay kh&ocirc;ng nghiệm thu</p>\r\n\r\n<h3><strong>III &ndash; Đặc th&ugrave; của qu&aacute; tr&igrave;nh x&acirc;y dựng</strong></h3>\r\n\r\n<p style="text-align:center"><img alt="Đặc thù ngành xây dựng" class="size-full wp-image-846" src="https://vienxaydung.edu.vn/wp-content/uploads/2015/09/dac-thu-xay-dung.jpg" /></p>\r\n\r\n<p style="text-align:center">Ảnh minh họa</p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh n&agrave;y c&oacute; thể chia l&agrave;m 3 thời k&igrave;: thời k&igrave; chuẩn bị, thời k&igrave; thi c&ocirc;ng v&agrave; thời k&igrave; ho&agrave;n thiện c&ocirc;ng tr&igrave;nh. Mỗi thời k&igrave; c&oacute; những đặc điểm ri&ecirc;ng.<br />\r\nTrong thời k&igrave; chuẩn bị, trước ti&ecirc;n phải kiểm tra những điều kiện để khởi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh như c&oacute; mặt bằng x&acirc;y dựng để b&agrave;n giao to&agrave;n bộ hoặc từng phần theo tiến độ x&acirc;y dựng do chủ đầu tư x&acirc;y dựng c&ocirc;ng tr&igrave;nh v&agrave; nh&agrave; thầu thi c&ocirc;ng thoả thuận. C&aacute;c tồn tại trong việc giải ph&oacute;ng mặt bằng thi c&ocirc;ng c&ocirc;ng tr&igrave;nh cần phải giải quyết, thoả thuận về c&aacute;c biện ph&aacute;p v&agrave; tr&aacute;ch nhiệm cụ thể của mỗi b&ecirc;n. X&aacute;c lập hệ thống cọc mốc định vị cơ bản phục vụ thi c&ocirc;ng. Phần mặt bằng cần l&agrave;m r&otilde; đường thi c&ocirc;ng v&agrave; c&aacute;c vật kiến tr&uacute;c di dời, c&aacute;c mỏ vật liệu cần được khai th&aacute;c sớm. Đối với c&ocirc;ng tr&igrave;nh thủy lợi-thủy điện th&igrave; việc dọn l&ograve;ng hồ v&agrave; di dời d&acirc;n l&agrave; c&ocirc;ng việc rất phức tạp cần c&oacute; thời gian. Tiếp theo l&agrave; kiểm tra giấy ph&eacute;p x&acirc;y dựng (ch&uacute; &yacute; đến c&aacute;c c&ocirc;ng tr&igrave;nh đang tồn tại ở xung quanh c&ocirc;ng trường để khi x&acirc;y dựng kh&ocirc;ng g&acirc;y hư hại (do nổ m&igrave;n, do đ&oacute;ng cọc g&acirc;y l&uacute;n xung quanh, do ti&ecirc;u nước l&agrave;m mất nguồn nước sinh hoạt của cộng đồng xung quanh). Đồng thời đảm bảo khoảng c&aacute;ch qui định đối với c&ocirc;ng tr&igrave;nh vệ sinh, kho chứa ho&aacute; chất độc hại), thiết kế bản vẽ thi c&ocirc;ng c&ugrave;ng c&aacute;c chỉ dẫn kĩ thuật của hạng mục c&ocirc;ng tr&igrave;nh đ&atilde; được ph&ecirc; duyệt.Trong thực tế, để x&acirc;y dựng c&ocirc;ng tr&igrave;nh c&oacute; nhiều phần khuất như c&ocirc;ng tr&igrave;nh thuỷ lợi hoặc trải d&agrave;i theo tuyến như c&ocirc;ng tr&igrave;nh giao th&ocirc;ng th&igrave; trong hồ sơ thiết kế thường c&oacute; những sai s&oacute;t ở những mức độ kh&aacute;c nhau. C&oacute; 3 nh&oacute;m sai s&oacute;t:<br />\r\n<strong>Nh&oacute;m 1</strong>: Gồm những sai s&oacute;t đơn giản c&oacute; thể bổ khuyết m&agrave; kh&ocirc;ng cần sửa lại thiết kế.<br />\r\n1. Kh&ocirc;ng l&agrave;m đ&uacute;ng y&ecirc;u cầu về hệ thống hồ sơ thiết kế v&agrave; ti&ecirc;u chuẩn của hệ thống kiểm tra t&agrave;i liệu, cụ thể trong c&ocirc;ng việc l&agrave;m thủ tục hồ sơ thiết kế.<br />\r\n2. L&agrave;m hồ sơ thiết kế nhưng kh&ocirc;ng sử dụng những mẫu chuẩn, m&ocirc; h&igrave;nh bảng t&iacute;nh sẵn, c&aacute;c định mức dự to&aacute;n tổng hợp, c&aacute;c bản vẽ trang tr&iacute; mẫu, c&aacute;c phần ti&ecirc;u chuẩn ho&aacute; của bản vẽ.<br />\r\n3. Bản vẽ kh&ocirc;ng ghi đầy đủ, sai tỉ lệ qui định<br />\r\n4. Sao ch&eacute;p c&aacute;c bộ phận của bản vẽ, cấu kiện, chi tiết, v&agrave; cụm ti&ecirc;u chuẩn ho&aacute; in trong c&aacute;c tập sưu tầm v&agrave; sản xuất đại tr&agrave; hiện h&agrave;nh, sao ch&eacute;p lời thuyết minh.<br />\r\n5. C&aacute;c thiếu s&oacute;t kh&ocirc;ng đ&aacute;ng về k&iacute;ch thước, cao tr&igrave;nh hoặc bỏ qua kh&ocirc;ng theo đ&uacute;ng qui định.<br />\r\n6. Kh&ocirc;ng tận dụng phương ph&aacute;p in bản vẽ nhanh nhất<br />\r\n7. Thiếu c&aacute;c &yacute; kiến phản biện, g&oacute;p &yacute; kiến của chuy&ecirc;n gia ch&iacute;nh trong từng lĩnh vực hoặc của bộ phận li&ecirc;n quan.<br />\r\n<strong>Nh&oacute;m 2</strong>: gồm những sai s&oacute;t phải t&iacute;nh th&ecirc;m (sửa lại) trong bản thiết kế hoặc l&agrave; th&ecirc;m một số phần.<br />\r\n1. Thiếu phần luận chứng đối với nhiệm vụ thiết kế, giải th&iacute;ch điều kiện kĩ thuật, giải ph&aacute;p kĩ thuật ch&iacute;nh của thiết kế được duyệt<br />\r\n2. Kh&ocirc;ng l&agrave;m đ&uacute;ng định mức, nguy&ecirc;n tắc x&acirc;y dựng v&agrave; c&aacute;c định mức kh&aacute;c dẫn tới phải sửa lại t&agrave;i liệu.<br />\r\n3. T&agrave;i liệu thiết kế kh&ocirc;ng được lập đầy đủ họăc chưa đồng bộ<br />\r\n4. Sai s&oacute;t lớn trong t&iacute;nh to&aacute;n khối lượng, chọn đơn gi&aacute;, lập bảng nhu cầu vật tư, thiết bị, nhiệm vụ đề ra cho c&aacute;c đơn vị.<br />\r\n5. Sai s&oacute;t lớn trong t&iacute;nh to&aacute;n kết cấu x&acirc;y dựng v&agrave; chọn thiết bị vận h&agrave;nh, g&acirc;y ra những thay đổi lớn.<br />\r\n6. Sử dụng lại c&aacute;c kết cấu, chi tiết thiết bị kh&ocirc;ng c&ograve;n ph&ugrave; hợp<br />\r\n7. Sử dụng những biện ph&aacute;p kh&ocirc;ng kinh tế<br />\r\n8. Sử dụng c&aacute;c kết cấu chịu tải, c&aacute;c thiết bị vận h&agrave;nh thiếu những t&iacute;nh to&aacute;n cần thiết.<br />\r\n9. Thiếu những phương &aacute;n cần thiết để chọn lựa c&aacute;c giải ph&aacute;p thiết kế tiết kiệm nhất.<br />\r\n10. Giữa những bản vẽ t&iacute;nh to&aacute;n v&agrave; c&aacute;c bộ phận của bản vẽ thiết kế thiếu sự chuyển tiếp nhau.<br />\r\n11. Sử dụng kh&ocirc;ng đ&uacute;ng vật liệu hiếm nhập ngoại.<br />\r\n12. Thiếu hoặc kh&ocirc;ng đầy đủ c&aacute;c phương s&aacute;ch chống nhiễm bẩn, chống ổn, bảo về m&ocirc;i trường ( kể cả đất thổ nhưỡng)<br />\r\n13. Kh&ocirc;ng c&oacute; quy tr&igrave;nh c&ocirc;ng nghệ để chế tạo lắp r&aacute;p c&aacute;c chi tiết kết cấu thiết bị<br />\r\n14. Trong thiết kế thi c&ocirc;ng thiếu c&aacute;c giải ph&aacute;p c&ocirc;ng xưởng ho&aacute;, sử dụng lao động x&acirc;y dựng nhiều, kh&ocirc;ng hợp l&yacute;.<br />\r\n15. Thiếu sự thoả thuận của cơ quan gi&aacute;m định nh&agrave; nước đối với tồn tại về ti&ecirc;u chuẩn nh&agrave; nước v&agrave; đinh mức, nguy&ecirc;n tắc x&acirc;y dựng v&agrave; c&aacute;c t&agrave;i liệu kh&aacute;c. Đặc biệt thiếu sự thoả thuận về an to&agrave;n ch&aacute;y nổ v&agrave; an to&agrave;n điện.<br />\r\n16. Chất lượng giải ph&aacute;p thiết kế thấp(so với chuẩn hoặc c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng tương tự)<br />\r\n<strong>Nh&oacute;m 3</strong>: gồm những vi phạm kh&ocirc;ng cho ph&eacute;p sử dụng hồ sơ thiết kế hiện c&oacute; hoặc phải sửa lại to&agrave;n bộ<br />\r\n1. Thiếu nhiệm vụ thiết kế v&agrave; c&aacute;c quy định về kỹ thuật<br />\r\n2. Sai lệch lớn về khối lượng v&agrave; gi&aacute; trị dự to&aacute;n dẫn đến l&agrave;m sai lệch về gi&aacute; trị x&acirc;y dựng thực của c&ocirc;ng tr&igrave;nh<br />\r\n3. Vi phạm định mức, nguy&ecirc;n tắc x&acirc;y dựng, ảnh hưởng đến độ tin cậy của kết cấu.<br />\r\n4. Thiếu sự an to&agrave;n trong v n h&agrave;nh, đặc biệt an to&agrave;n về ch&aacute;y nổ v&agrave; an to&agrave;n điện<br />\r\n5. Những bản vẽ thiết kế đặc th&ugrave; ri&ecirc;ng thiếu luận cứ khi lập ra<br />\r\n6. Mức độ chỉ ti&ecirc;u kinh tế kỹ thuật v&agrave; chất lượng c&aacute;c giải ph&aacute;p thấp hơn quy định<br />\r\n7. Gi&aacute; trị x&acirc;y dựng của c&ocirc;ng tr&igrave;nh thiết kế, ở giai đoạn thiết kế kỹ thuật cao hơn so với vốn đầu tư dự kiến trong giai đoạn chứng kinh tế kĩ thuật.<br />\r\nHợp đồng x&acirc;y dựng ghi r&otilde; c&aacute;c c&ocirc;ng việc cần tiến h&agrave;nh, y&ecirc;u cầu về chất lượng, c&oacute; biện ph&aacute;p bảo đảm <span style="color:#3366ff">an to&agrave;n lao động</span>, vệ sinh m&ocirc;i trường xung quanh, thống nhất biện ph&aacute;p thi c&ocirc;ng.<br />\r\nTrong việc kiểm tra năng lực của nh&agrave; thầu phải ghi r&otilde; chủng loại v&agrave; số lượng c&aacute;c dụng cụ đo lường, trắc đạc, phương tiện lấy mẫu kiểm tra chất lượng m&agrave; mỗi nh&agrave; thầu thi c&ocirc;ng cần c&oacute; ở c&ocirc;ng trường. C&aacute;c nguy&ecirc;n tắc khi lấy mẫu v&agrave; đem mẫu đi th&iacute; nghiệm. Nguy&ecirc;n tắc th&ocirc;ng b&aacute;o v&agrave; xử l&iacute; kết quả th&iacute; nghiệm.<br />\r\nTrong giai đoạn thi c&ocirc;ng chia ra c&aacute;c giai đoạn: chuyển bước thi c&ocirc;ng đơn giản v&agrave; chuyển bước thi c&ocirc;ng quan trọng.<br />\r\nC&aacute;c giai đoạn chuyển tiếp bước thi c&ocirc;ng đơn giản :<br />\r\n&ndash; Mặt bằng thi c&ocirc;ng;<br />\r\n&ndash; Tim mốc định vị thi c&ocirc;ng của hạng mục hoặc bộ phận c&ocirc;ng tr&igrave;nh hoặc của c&ocirc;ng tr&igrave;nh;<br />\r\n&ndash; Hố m&oacute;ng trước khi đổ b&ecirc; t&ocirc;ng hoặc trước khi đắp đất;<br />\r\n&ndash; Cốt liệu c&aacute;t, đ&aacute;, xi măng, nước, v&aacute;n khu&ocirc;n, cốt th&eacute;p v&agrave; c&aacute;c vật đặt sẵn trong b&ecirc; t&ocirc;ng trước khi đổ b&ecirc; t&ocirc;ng;<br />\r\n&ndash; Phần đ&aacute;nh rỉ trước khi sơn;<br />\r\n&ndash; C&aacute;c bộ phận cơ kh&iacute; gia c&ocirc;ng hoặc mua ở c&aacute;c nh&agrave; m&aacute;y trươc khi đưa xuống hiện trường v&agrave; ở hiện trường trước khi lắp đặt.<br />\r\nC&aacute;c giai đoạn chuyển bước thi c&ocirc;ng quan trọng :<br />\r\nCần ch&uacute; &yacute; những điểm sau:<br />\r\n&ndash; Khi nghiệm thu hố m&oacute;ng: Phải c&oacute; &yacute; kiến đ&aacute;nh gi&aacute;, kết luận của chủ nhiệm địa chất v&agrave; chủ nhiệm đồ &aacute;n về địa chất thực tế của nền so với t&agrave;i liệu khảo s&aacute;t thiết kế v&agrave; biện ph&aacute;p xử l&iacute; nền. Phải c&oacute; hồ sơ (chứ kh&ocirc;ng phải sơ đồ) ho&agrave;n c&ocirc;ng c&ocirc;ng tr&igrave;nh hội đồng nghiệm thu cơ sở.<br />\r\n&ndash; Khi nghiệm thu m&oacute;ng cọc phải thực hiện nghiệm thu trước khi đ&agrave;o m&oacute;ng nếu l&agrave; đ&oacute;ng cọc &acirc;m. Đơn vị x&acirc;y lắp lập bản vẽ ho&agrave;n c&ocirc;ng giai đoạn n&agrave;y, v&agrave; tr&igrave;nh chủ đầu tư tiến h&agrave;nh nghiệm thu hố m&oacute;ng.<br />\r\n&ndash; Đối với nghiệm thu kh&ocirc; trước khi th&ocirc;ng nước như cống, k&ecirc;nh, tr&agrave;n, trước khi cho ngập nước, khi ngăn s&ocirc;ng. C&aacute;c đơn vị x&acirc;y lắp phải lập hồ sơ ho&agrave;n c&ocirc;ng cho c&aacute;c phần việc đ&atilde; ho&agrave;n th&agrave;nh v&agrave; phải cam kết chịu mọi ph&iacute; tổn về sửa chữa v&agrave; phục vụ cho y&ecirc;u cầu về sửa chữa (nếu c&oacute;) do thi c&ocirc;ng chưa đảm bảo g&acirc;y n&ecirc;n.<br />\r\nTrường hợp nghiệm thu kh&ocirc; trước khi th&ocirc;ng nước cho c&aacute;c c&ocirc;ng tr&igrave;nh tr&ecirc;n k&ecirc;nh của hồ chứa, trạm bơm c&oacute; qui m&ocirc; nhỏ, &iacute;t quan trọng th&igrave; c&oacute; thể xem x&eacute;t c&acirc;n nhắc ở phi&ecirc;n họp đầu ti&ecirc;n của hội đồng nghiệm thu cơ sở để uỷ quyền cho ban nghiệm thu cơ sở tiến h&agrave;nh nghiệm thu. Khi đ&oacute; đơn vị x&acirc;y lắp vẫn phải lập hồ sơ ho&agrave;n c&ocirc;ng để tr&igrave;nh ban nghiệm thu cơ sở kiểm tra đ&aacute;nh gi&aacute; nghiệm thu.<br />\r\n&ndash; Đối với c&ocirc;ng t&aacute;c đắp đập hoặc k&ecirc;nh bằng phương ph&aacute;p đầm n&eacute;n tuỳ theo biện ph&aacute;p dẫn d&ograve;ng thi c&ocirc;ng hoặc ph&acirc;n đoạn thi c&ocirc;ng m&agrave; qui định c&aacute;c giai đoạn chuyển bước thi c&ocirc;ng quan trọng. Khi nghiệm thu đơn vị x&acirc;y lắp phải lập hồ sơ ho&agrave;n c&ocirc;ng tr&igrave;nh hội đồng nghiệm thu cơ sở.<br />\r\nNghiệm thu c&aacute;c hạng mục c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng xong đưa v&agrave;o sử dụng:<br />\r\nChỉ c&oacute; hạng mục c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng xong sau khi vận h&agrave;nh thử v&agrave; kiểm tra đủ khả năng chịu tải, c&ocirc;ng suất l&agrave;m việc như thiết kế qui định mới được nghiệm thu để đưa v&agrave;o sử dụng.<br />\r\nTrường hợp c&oacute; thể ph&aacute;t huy hiệu quả từng phần do chủ đầu tư hoặc đơn vị x&acirc;y lắp y&ecirc;u cầu trong qu&aacute; tr&igrave;nh lập biện ph&aacute;p tiến độ tổ chức thi c&ocirc;ng đ&atilde; được ph&ecirc; duyệt, hội đồng nghiệm thu cơ sở c&oacute; thể thoả thuận tiến h&agrave;nh nghiệm thu từng đoạn trong một hạng mục k&ecirc;nh, lần lượt từ đầu mối đến một c&ocirc;ng tr&igrave;nh điều tiết, từ cống điều tiết đ&oacute; đến c&ocirc;ng tr&igrave;nh điều tiết ph&iacute;a sau&hellip; Ở c&ocirc;ng tr&igrave;nh hồ chứa nước hay trạm bơm, hoặc l&agrave; từng đoạn k&ecirc;nh của c&ocirc;ng tr&igrave;nh tr&ecirc;n k&ecirc;nh đ&agrave;o ở đồng bằng s&ocirc;ng Cửu Long như l&agrave; nghiệm thu hạng mục c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng xong đưa v&agrave;o sử dụng theo đ&uacute;ng c&aacute;c điều quy định đ&atilde; n&ecirc;u ở tr&ecirc;n<br />\r\nTrong giai đoạn kết th&uacute;c x&acirc;y dựng &ndash; Tổng hợp c&aacute;c bản nghiệm thu để b&agrave;n giao đưa c&ocirc;ng tr&igrave;nh v&agrave;o sử dụng theo c&aacute;c qui định như sau: bảo đảm c&aacute;c y&ecirc;u cầu về nguy&ecirc;n tắc, nội dung v&agrave; tr&igrave;nh tự b&agrave;n giao c&ocirc;ng tr&igrave;nh đ&atilde; x&acirc;y dựng xong đưa v&agrave;o sử dụng theo qui định của ph&aacute;p luật x&acirc;y dựng; bảo đảm an to&agrave;n trong vận h&agrave;nh, khai th&aacute;c khi đưa c&ocirc;ng tr&igrave;nh v&agrave;o sử dụng.<br />\r\nNh&agrave; thầu thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh c&oacute; tr&aacute;ch nhiệm ho&agrave;n thiện thi c&ocirc;ng x&acirc;y dựng, thu dọn hiện trường, lập bản vẽ ho&agrave;n c&ocirc;ng v&agrave; chuẩn bị c&aacute;c t&agrave;i liệu để phục vụ việc nghiệm thu c&ocirc;ng tr&igrave;nh v&agrave; b&agrave;n giao c&ocirc;ng tr&igrave;nh. Để đảm bảo c&ocirc;ng tr&igrave;nh đang được x&acirc;y dựng thoả m&atilde;n với tất cả mọi y&ecirc;u cầu của nhiệm vụ thiết kế, thể hiện cụ thể ở bản vẽ thiết kế v&agrave; ph&ugrave; hợp với c&aacute;c qui chuẩn x&acirc;y dựng, ti&ecirc;u chuẩn x&acirc;y dựng; khi nghi ngờ về chất lượng, chủ đầu tư kiểm định lại chất lượng bộ phận c&ocirc;ng tr&igrave;nh, hay hạng mục c&ocirc;ng tr&igrave;nh v&agrave; c&ocirc;ng tr&igrave;nh x&acirc;y dựng. Nội dung như sau:<br />\r\na) Xem x&eacute;t sự thi h&agrave;nh hợp đồng x&acirc;y dựng c&oacute; thực hiện đ&uacute;ng y&ecirc;u cầu về khối lượng, chất lượng đ&atilde; qui định.<br />\r\nb) Kiểm so&aacute;t nội dung c&ocirc;ng việc theo c&aacute;c thời gian kh&aacute;c nhau<br />\r\nc) Thử nghiệm để x&aacute;c nhận sản phẩm đ&atilde; ph&ugrave; hợp chưa với những y&ecirc;u cầu của qui chuẩn, ti&ecirc;u chuẩn x&acirc;y dựng<br />\r\nĐể phục vụ nội dung tr&ecirc;n cần nghi&ecirc;n cứu những chỉ đạo t&aacute;c nghiệp sau:<br />\r\n1. Những y&ecirc;u cầu về qui tr&igrave;nh kĩ thuật:<br />\r\n&ndash; Trong hợp đồng phải n&ecirc;u r&otilde; những y&ecirc;u cầu thuộc quy tr&igrave;nh kỹ thuật nhất thiết b&ecirc;n nhận phải đạt được n&oacute; l&agrave; chỉ ti&ecirc;u kỹ thuật cơ bản l&agrave; th&ocirc;ng số kỹ thuật trong c&ocirc;ng nghệ thi c&ocirc;ng.V&iacute; dụ:c&ocirc;ng tr&igrave;nh đất phải quy định r&otilde; dung trọng th&agrave;nh phần hạt&hellip;c&ocirc;ng tr&igrave;nh b&ecirc; t&ocirc;ng phải đạt cường độ, độ chống thấm&hellip;lắp m&aacute;y phải đạt độ đồng t&acirc;m,khe hở, cửa van phải đạt độ k&iacute;n nước&hellip; trong c&ocirc;ng nghệ thi c&ocirc;ng đất phải đủ thiết bị đầm trong thi c&ocirc;ng b&ecirc; t&ocirc;ng phải c&oacute; đồng bộ thiết bị trộn, chuyển, đầm ph&ugrave; hợp với cường độ thiết kế&hellip;.<br />\r\n&ndash; Quy định những y&ecirc;u cầu của c&aacute;c b&ecirc;n để đạt được theo quy tr&igrave;nh kỹ thuật đề ra.<br />\r\nNgo&agrave;i ra c&ograve;n c&oacute; một số y&ecirc;u cầu cho ph&eacute;p thực hiện theo mức độ giới hạn nhất định nhưng chỉ &aacute;p dụng ở hạng mục kh&ocirc;ng quan trọng, khối lượng nhỏ hoặc d&ugrave;ng để chỉ đạo trong qu&aacute; tr&igrave;nh thi c&ocirc;ng.<br />\r\n2. Sự kiểm tra:<br />\r\n&ndash; Những y&ecirc;u cầu chung cho kiểm tra nghi&ecirc;n cứu v&agrave; thử nghiệm x&aacute;c định trong những điều khoản thuộc về điều kiện chung của hợp đồng, c&ograve;n những y&ecirc;u cầu chi tiết ti&ecirc;u chuẩn kiểm tra v&agrave; những phương ph&aacute;p thử nghiệm được đặt ra trong suốt qu&aacute; tr&igrave;nh thực hiện quy tr&igrave;nh kỹ thuật, c&aacute;n bộ kiểm tra tiến h&agrave;nh c&ocirc;ng việc bằng c&aacute;c phương ph&aacute;p trực quan, đo lường, thử nghiệm, chia hai loại kiểm tra<br />\r\n&ndash; Kiểm tra tổng hợp:phần n&agrave;y ho&agrave;n to&agrave;n do người thực hiện lấy ở vốn đầu tư c&ocirc;ng tr&igrave;nh nhằm nghiệm thu c&ocirc;ng tr&igrave;nh đưa v&agrave;o vận h&agrave;nh sử dụng.<br />\r\n&ndash; Kiểm tra t&aacute;c nghiệp:nhằm điều chỉnh lại quy tr&igrave;nh c&ocirc;ng nghệ để đạt dất lượng theo y&ecirc;u cầu v&agrave; nghiệm thu để chuyển giai đoạn thi c&ocirc;ng &ndash; phần n&agrave;y chủ yếu dựa v&agrave;o t&agrave;i liệu tự kiểm tra của b&ecirc;n nhận thầu cung cấp, kết hợp sự quan s&aacute;t tại hiện trường của b&ecirc;n chủ đầu tư<br />\r\n3. Ph&ograve;ng th&iacute; nghiệm:<br />\r\nNgo&agrave;i phần th&iacute; nghiệm do b&ecirc;n nh&agrave; thầu tiến h&agrave;nh cần c&oacute; hoặc hợp đồng ph&ograve;ng th&iacute; nghiệm của b&ecirc;n chủ đầu tư nhằm kiểm tra, kiểm định c&aacute;c số liệu c&ograve;n nghi ngờ do b&ecirc;n nh&agrave; thầu cung cấp như vật liệu, cấu kiện, thiết bị c&oacute; đ&uacute;ng theo y&ecirc;u cầu thiết kế kh&ocirc;ng ? Qua đ&oacute; c&ocirc;ng nhận<br />\r\n&ndash; Quy tr&igrave;nh kỹ thuật đ&atilde; v&agrave; đang thực hiện;<br />\r\n&ndash; Vật tư, vật liệu, thiết bị được chọn lọc đ&uacute;ng y&ecirc;u cầu thiết kế.<br />\r\nTrong một c&ocirc;ng trường tốt nhất x&acirc;y dựng 1 ph&ograve;ng th&iacute; nghiệm cho cả chủ đầu tư v&agrave; nh&agrave; thầu sử dụng. Ph&ograve;ng th&iacute; nghiệm n&agrave;y cần c&oacute; ngay từ l&uacute;c mới khởi c&ocirc;ng để đảm bảo chất lượng c&ocirc;ng tr&igrave;nh. Trong thực tế thi c&ocirc;ng tại một số c&ocirc;ng tr&igrave;nh lớn th&igrave; sau một thời gian từ 3 đ&ecirc;n 6 th&aacute;ng (thậm ch&iacute; 1 năm) c&ocirc;ng nghệ thi c&ocirc;ng mới ổn định, l&uacute;c đ&oacute; mới đảm bảo chất lượng, c&ograve;n trong giai đoạn tr&ecirc;n c&aacute;c ti&ecirc;u ch&iacute; kĩ thuật của sản phẩm dao động với khoảng c&aacute;ch lớn. Ph&ograve;ng th&iacute; nghiệm cần c&oacute; nh&acirc;n vi&ecirc;n kĩ thuật huấn luyện đầy đủ để đảm đương c&aacute;c kh&acirc;u th&iacute; nghiệm. Những mẫu th&iacute; nghiệm cần chia ra:<br />\r\n&ndash; Loại mẫu quản l&iacute;: do kĩ sư c&oacute; tr&aacute;ch nhiệm thực hiện lấy để quản l&iacute; chất lượng ở mỗi giờ, mỗi ng&agrave;y để kịp thời điều chỉnh c&ocirc;ng nghệ thi c&ocirc;ng.<br />\r\n&ndash; Loại mẫu đ&atilde; nghiệm thu, thanh to&aacute;n, thay đổi theo qui m&ocirc; v&agrave; một loại c&ocirc;ng t&aacute;c, được cơ quan thiết kế y&ecirc;u cầu v&agrave; ghi trong hợp đồng. Dựa tr&ecirc;n mẫu n&agrave;y để lập số kiểu th&iacute; nghiệm gốc, đối chiếu với y&ecirc;u cầu cần thiết kế.<br />\r\n&ndash; Loại mẫu để kiểm tra bằng dụng cụ tự ghi gi&uacute;p việc ch&iacute;nh x&aacute;c ho&aacute; c&aacute;c số đo của thiết bị.<br />\r\n4. Hồ sơ thi c&ocirc;ng:<br />\r\nHồ sơ thi c&ocirc;ng phải ho&agrave;n chỉnh, t&agrave;i liệu cơ sở của hồ sơ l&agrave; bản vẽ thiết kế gốc c&oacute; sự điều chỉnh, bổ sung thay đổi do thực tế thi c&ocirc;ng đặt ra, c&ugrave;ng với c&aacute;c y&ecirc;u cầu của qui định kĩ thuật. Trong hồ sơ phản &aacute;nh cả kết quả th&iacute; nghiệm, đo lường, b&aacute;o c&aacute;o v&agrave; ảnh chụp&hellip; trong c&aacute;c qui phạm c&oacute; qui định chi tiết nội dung v&agrave; số lượng từng loại hồ sơ. hồ sơ gốc do b lập, b&ecirc;n a sẽ bổ sung một số t&agrave;i liệu kiểm tra tổng hợp.<br />\r\nBản vẽ ho&agrave;n c&ocirc;ng l&agrave; cơ bản nhất trong tập hồ sơ đ&oacute;, do vậy chủ đầu tư khi nghiệm thu nhất thiết kh&ocirc;ng được bỏ qua bản vẽ n&agrave;y; nhiều trường hợp lấy nguy&ecirc;n bản vẽ thiết kế l&agrave;m hồ sơ gốc, khiến cho hồ sơ n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; gi&aacute; trị trong qu&aacute; tr&igrave;nh thi c&ocirc;ng.</p>\r\n\r\n<h4><strong>IV. Tổ chức gi&aacute;m s&aacute;t</strong></h4>\r\n\r\n<p><img alt="to-chuc-giam-sat" class="aligncenter size-full wp-image-845" src="data:image/svg+xml,%3Csvg%20xmlns=\'http://www.w3.org/2000/svg\'%20viewBox=\'0%200%20450%20299\'%3E%3C/svg%3E" style="height:299px; width:450px" /></p>\r\n\r\n<p>Do đặc điểm c&ocirc;ng tr&igrave;nh x&acirc;y dựng v&agrave; đặc th&ugrave; của qu&aacute; tr&igrave;nh x&acirc;y dựng n&ecirc;n người gi&aacute;m s&aacute;t thi c&ocirc;ng cần c&oacute; một một số khả năng.<br />\r\n1. Kỹ năng v&agrave; phẩm chất<br />\r\n&ndash; Tr&igrave;nh độ học vấn: đại học;<br />\r\n&ndash; Bồi dưỡng kiến thức: kỹ thuật cũng như nghiệp vụ (c&aacute;ch xem x&eacute;t c&aacute;c qu&aacute; tr&igrave;nh; phỏng vấn v&agrave; giao tiếp; thu thập dữ liệu;ph&acirc;n t&iacute;ch v&agrave; đ&aacute;nh gi&aacute; th&ocirc;ng tin; lập b&aacute;o c&aacute;o về những ph&aacute;t hiện; hiểu c&aacute;c ti&ecirc;u chuẩn, qui chuẩn; hoạch định v&agrave; tổ chức đ&aacute;nh gi&aacute;; hiểu đặc điểm kỹ thuật v&agrave; nguy&ecirc;n tắc hoạt động của lĩnh vực gi&aacute;m s&aacute;t thi c&ocirc;ng);<br />\r\n&ndash; Phẩm chất c&aacute; nh&acirc;n: c&oacute; khả năng l&agrave;m việc tập thể; tin cậy với mọi người; trung thực; d&uacute;ng giờ; kỹ lưỡng; n&oacute;i chuyện thu h&uacute;t; ph&aacute;t &acirc;m r&otilde;; ki&ecirc;n tr&igrave;; kh&ocirc;ng vụ lợi; kh&aacute;ch quan; ch&iacute;nh x&aacute;c; nh&atilde; nhặn; nhạy cảm; hiếu kỳ; nghi&ecirc;m khắc; giao tiếp tốt;<br />\r\n&ndash; Khả năng quản l&yacute;: x&aacute;c định mục ti&ecirc;u; lập kế hoạch; truyền đạt trong nh&oacute;m; lập ti&ecirc;u chuẩn đ&aacute;nh gi&aacute;; gi&aacute;m s&aacute;t v&agrave; đo lường tiến độ;<br />\r\n&ndash; Trau dồi năng lực: lu&ocirc;n cập nhật kiến thức (ti&ecirc;u chuẩn hệ thống chất lượng, những y&ecirc;u cầu, thủ tục v&agrave; phương ph&aacute;p đ&aacute;nh gi&aacute;); tham gia c&aacute;c kh&oacute;a huấn luyện để củng cố kiến thức v&agrave; kỹ năng;<br />\r\n&ndash; Ng&ocirc;n ngữ: ngo&agrave;i ng&ocirc;n ngữ giao tiếp th&ocirc;ng thường (tiếng Việt, tiếng Anh v.v.) đ&aacute;nh gi&aacute; chất lượng c&ograve;n li&ecirc;n quan đến ng&ocirc;n ngữ kỹ thuật (thuật ngữ) chuy&ecirc;n biệt đối với đặc th&ugrave; sản phẩm hay qu&aacute; tr&igrave;nh sản xuất;<br />\r\n&ndash; Đạo đức nghề nghiệp: nhận thức đ&uacute;ng đắn tầm quan trọng của đạo đức nghề nghiệp để c&oacute; thể xử sự một c&aacute;ch đ&uacute;ng đắn khi thực thi tr&aacute;ch nhiệm của m&igrave;nh. Kh&ocirc;ng được tiến h&agrave;nh c&ocirc;ng việc dựa tr&ecirc;n cảm t&igrave;nh hoặc th&agrave;nh kiến;t&ocirc;n trọng nguy&ecirc;n tắc bảo mật;cần linh động xử l&yacute; để đạt được mục ti&ecirc;u.<br />\r\n2. Phương ph&aacute;p đ&aacute;nh gi&aacute;<br />\r\n&ndash; Phương ph&aacute;p truy t&igrave;m: d&ugrave;ng để đ&aacute;nh gi&aacute; một qu&aacute; tr&igrave;nh;<br />\r\n&ndash; Phương ph&aacute;p đ&aacute;nh gi&aacute; ngẫu nhi&ecirc;n; kh&aacute;m ph&aacute; những g&igrave; đang diễn ra trong thực tế;<br />\r\n&ndash; Phương ph&aacute;p xem x&eacute;t từng yếu tố;<br />\r\n&ndash; Phương ph&aacute;p đ&aacute;nh gi&aacute; theo chức năng.<br />\r\n3. Kỹ năng đ&aacute;nh gi&aacute;<br />\r\n&ndash; Phỏng vấn;<br />\r\n&ndash; Quan s&aacute;t;<br />\r\n&ndash; Thẩm tra v&agrave; kiểm chứng;<br />\r\n&ndash; Ph&acirc;n t&iacute;ch dữ liệu.</p>\r\n\r\n<h4><strong>V. B&agrave;i tập thực h&agrave;nh</strong></h4>\r\n\r\n<p>1. Hiểu những kh&aacute;i niệm quan trọng của thuạt ngữ. Gắn mỗi kh&aacute;i niệm xếp theo thứ tự chữ c&aacute;i v&agrave;o với mỗi c&acirc;u tương ứng xếp theo thứ tự chữ số:<br />\r\na/ Điều kiện khởi c&ocirc;ng<br />\r\nb/ Gi&aacute;m s&aacute;t thi c&ocirc;ng<br />\r\nc/ Bản vẽ ho&agrave;n c&ocirc;ng<br />\r\nd/ Ti&ecirc;u chuẩn x&acirc;y dựng bắt buộc<br />\r\ne/ Điều kiện thi c&ocirc;ng<br />\r\ng/ Qui chuẩn x&acirc;y dựng<br />\r\nh/ Gi&aacute;m s&aacute;t t&aacute;c giả<br />\r\ni/ Chủ đầu tư<br />\r\nk/ Hoạt động x&acirc;y dựng<br />\r\nl/ Ti&ecirc;u chuẩn x&acirc;y dựng<br />\r\n1/ Để x&acirc;y dựng c&ocirc;ng tr&igrave;nh phải tiến h&agrave;nh c&aacute;c c&ocirc;ng việc: qui hoạch, lập dự &aacute;n đầu tư, khảo s&aacute;t, thiết kế, thi c&ocirc;ng, gi&aacute;m s&aacute;t thi c&ocirc;ng.<br />\r\n2/ Khi x&acirc;y dựng c&ocirc;ng tr&igrave;nh ở những v&ugrave;ng nằm trong hoạt động chấn động của vỏ tr&aacute;i đất, thiết kế v&agrave; thi c&ocirc;ng bắt buộc phải &aacute;p dụng những qui định của nh&agrave; nước.<br />\r\n3/ Trong thi c&ocirc;ng b&ecirc; t&ocirc;ng phải tu&acirc;n thủ tr&igrave;nh tự thực hiện của qui phạm thi c&ocirc;ng v&agrave; nghiệm thu kết cấu b&ecirc; t&ocirc;ng.<br />\r\n4/ Mọi dự &aacute;n x&acirc;y dựng phải l&agrave;m r&otilde; người sở hữu vốn.<br />\r\n5/ Trong qu&aacute; tr&igrave;nh thi c&ocirc;ng phải gi&aacute;m s&aacute;t để bảo đảm thi c&ocirc;ng đ&uacute;ng bản vẽ thiết kế.<br />\r\n6/ Khi mở c&ocirc;ng trường x&acirc;y dựng phải c&oacute; mặt bằng, giấy ph&eacute;p, thiết kế bản vẽ thi c&ocirc;ng, hợp đồng x&acirc;y dựng, vốn, biện ph&aacute;p thi c&ocirc;ng.<br />\r\n7/ Nh&agrave; th&agrave;u thi c&ocirc;ng phải c&oacute; đăng k&yacute;, <span style="color:#3366ff">năng lực tư vấn gi&aacute;m s&aacute;t</span>, chỉ huy trưởng c&ocirc;ng tr&igrave;nh, chứng chỉ năng lực thi c&ocirc;ng x&acirc;y dựng theo hạng 1 2 3 t&ugrave;y theo ph&acirc;n cấp c&ocirc;ng tr&igrave;nh,&nbsp; thiết bị thi c&ocirc;ng<br />\r\n8/ Khi thi c&ocirc;ng x&acirc;y dựng c&ocirc;ng tr&igrave;nh phải theo d&otilde;i, kiểm tra về chất lượng, khối lượng, tiến độ, an to&agrave;n lao động v&agrave; vệ sinh m&ocirc;i trường.<br />\r\n9/ Bản vẽ c&ocirc;ng tr&igrave;nh, trong đ&oacute; thể hiện k&iacute;ch thước thực tế so với k&iacute;ch thước thiết kế.<br />\r\n10/ Khi thiết kế phải ch&uacute; &yacute; : điều kiện kh&iacute; hậu x&acirc;y dựng, dịa chất thủy văn, thủy văn kh&iacute; tượng, ph&acirc;n v&ugrave;ng động đất, ph&ograve;ng chống ch&aacute;y nổ, bảo vệ m&ocirc;i trường, an to&agrave;n lao động.<br />\r\n2. Đ&uacute;ng/Sai<br />\r\n1/ Khi nghiệm thu b&agrave;n giao bộ phận c&ocirc;ng tr&igrave;nh b&ecirc; t&ocirc;ng chỉ cần căn cứ v&agrave;o những chỉ ti&ecirc;u th&iacute; nghiệm của mẫu b&ecirc; t&ocirc;ng đ&atilde; được đ&uacute;c trước đ&acirc;y.<br />\r\n2/ Khi k&iacute;ch thước, th&ocirc;ng số thực tế thi c&ocirc;ng ph&ugrave; hợp với k&iacute;ch thước, th&ocirc;ng số thiết kế th&igrave; bản vẽ thiết kế thi c&ocirc;ng được d&ugrave;ng l&agrave;m bản vẽ ho&agrave;n c&ocirc;ng.<br />\r\n3/Trọng lượng đơn vị khối b&ecirc; t&ocirc;ng t&iacute;nh theo định mức cấp phối kh&ocirc;ng bao giờ nhỏ hơn 2,4T/m3.<br />\r\n4/ Hồ sơ thiết kế bản vẽ thi c&ocirc;ng chỉ cần thuyết minh v&agrave; bản vẽ chi tiết.<br />\r\n5/ Khi ph&aacute;t hiện thi c&ocirc;ng sai thiết kế gi&aacute;m s&aacute;t t&aacute;c giả kh&ocirc;ng c&oacute; quyền y&ecirc;u cầu nh&agrave; thầu dừng thi c&ocirc;ng.<br />\r\n6/ Sau khi c&ocirc;ng tr&igrave;nh đ&atilde; được nghiệm thu, b&agrave;n giao đưa v&agrave;o vận h&agrave;nh th&igrave; kh&ocirc;ng cần lưu trữ kết quả gi&aacute;m s&aacute;t thi c&ocirc;ng.<br />\r\n7/ Nhật k&yacute; thi c&ocirc;ng c&ocirc;ng tr&igrave;nh kh&ocirc;ng chỉ c&oacute; gi&aacute; trị theo d&otilde;i tiến độ thi c&ocirc;ng m&agrave; c&ograve;n gi&uacute;p cho việc truy t&igrave;m nguy&ecirc;n nh&acirc;n ảnh hưởng chất lượng c&ocirc;ng tr&igrave;nh.<br />\r\n8/ Khi nghiệm thu b&agrave;n giao bộ phận c&ocirc;ng tr&igrave;nh đập đất chỉ cần căn cứ v&agrave;o những chỉ ti&ecirc;u th&iacute; nghiệm từng lớp đất đắp trong qu&aacute; tr&igrave;nh l&ecirc;n đập.<br />\r\n9/ Trong qu&aacute; tr&igrave;nh thi c&ocirc;ng đập tr&agrave;n b&ecirc; t&ocirc;ng người ta ph&aacute;t hiện tường c&aacute;nh thượng lưu được thi c&ocirc;ng đ&atilde; nghiệm thu nay c&oacute; vết nứt d&agrave;i, tương đối thẳng, độ rộng khe nứt khoảng dưới 1mm, tr&ocirc;ng như 1 sợi chỉ. Nh&oacute;m gi&aacute;m s&aacute;t đưa ra 3 nguy&ecirc;n nh&acirc;n g&acirc;y nứt: do nổ m&igrave;n khi đ&agrave;o m&oacute;ng gần tường, do tường bị l&uacute;n kh&ocirc;ng đều, do hiện tượng ứng suất nhiệt của b&ecirc; t&ocirc;ng. Nguy&ecirc;n nh&acirc;n n&agrave;o đ&uacute;ng? Nguy&ecirc;n nh&acirc;n n&agrave;o sai? V&igrave; sao?<br />\r\n10/ Khi kiểm tra điều kiện thi c&ocirc;ng của nh&agrave; thầu, ph&aacute;t hiện thiếu giấy ph&eacute;p x&acirc;y dựng, chủ đầu tư vẫn cho tiếp tục thi c&ocirc;ng v&agrave; y&ecirc;u cầu bổ sung giấy ph&eacute;p.<br />\r\n3. B&agrave;i tập<br />\r\nĐể thi c&ocirc;ng c&ocirc;ng tr&igrave;nh b&ecirc; t&ocirc;ng, căn cứ v&agrave;o khối lượng c&ocirc;ng việc, định mức v&agrave; năng lực nh&agrave; thầu, đ&atilde; x&aacute;c định thời gian để ho&agrave;n th&agrave;nh từng việc như sau:<br />\r\n&ndash; Thi c&ocirc;ng b&ecirc; t&ocirc;ng m&oacute;ng trạm trộn b&ecirc; t&ocirc;ng :15 ng&agrave;y;<br />\r\n&ndash; lắp trạm trộn v&agrave; chạy thử: 30 ng&agrave;y;<br />\r\n&ndash; Song song với việc lắp trạm trộn, vận chuyển c&aacute;t, đ&aacute;, xi măng về kho của trạm trộn 20 ng&agrave;y;<br />\r\n&ndash; Th&iacute; nghiệm vật liệu, điều chỉnh cấp phối: 45 ng&agrave;y;<br />\r\n&ndash; Đổ b&ecirc; t&ocirc;ng, dưỡng hộ, kiểm tra lấy mẫu, nghiệm thu đưa v&agrave;o sử dụng: 30 ng&agrave;y.<br />\r\nH&atilde;y x&aacute;c định:<br />\r\n&ndash; Tổng độ d&agrave;i x&acirc;y dựng c&ocirc;ng tr&igrave;nh l&agrave; bao nhi&ecirc;u ng&agrave;y ?<br />\r\n&ndash; Những c&ocirc;ng việc n&agrave;o phải tu&acirc;n thủ chặt chẽ về thời gian (kh&ocirc;ng c&oacute; thời gian dự trữ).</p>\r\n\r\n<p style="text-align:right"><strong><em>(Nguồn: GS.TS Vũ&nbsp;Trọng Hồng &ndash; Trường Đại Học Thủy Lợi)</em></strong></p>\r\n<!--<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n			xmlns:dc="http://purl.org/dc/elements/1.1/"\r\n			xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/">\r\n		<rdf:Description rdf:about="https://vienxaydung.edu.vn/ky-nang-va-kinh-nghiem-khi-lam-tu-van-giam-sat-thi-cong/"\r\n    dc:identifier="https://vienxaydung.edu.vn/ky-nang-va-kinh-nghiem-khi-lam-tu-van-giam-sat-thi-cong/"\r\n    dc:title="K&#7929; n&#259;ng v&agrave; kinh nghi&#7879;m khi l&agrave;m t&#432; v&#7845;n gi&aacute;m s&aacute;t thi c&ocirc;ng"\r\n    trackback:ping="https://vienxaydung.edu.vn/ky-nang-va-kinh-nghiem-khi-lam-tu-van-giam-sat-thi-cong/trackback/" />\r\n</rdf:RDF>-->', 'Y', 'article', NULL, '2021-01-22 05:00:40', '2021-02-02 17:36:59', NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table blogadmin.article_categories
CREATE TABLE IF NOT EXISTS `article_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.article_categories: 5 rows
/*!40000 ALTER TABLE `article_categories` DISABLE KEYS */;
REPLACE INTO `article_categories` (`id`, `display_name`, `slug`, `show`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Kiến Thức Nội Thất', 'kien-thuc-noi-that', 'Y', '2021-01-21 01:37:33', '2021-01-21 01:43:12', NULL),
	(2, 'Nội Thất Phòng Khách', 'noi-that-phong-khach', 'Y', '2021-01-21 01:37:56', '2021-01-21 01:45:45', NULL),
	(3, 'Nội Thất Nhà Bếp', 'noi-that-nha-bep', 'Y', '2021-01-21 01:38:07', '2021-01-21 01:38:07', NULL),
	(4, 'Nội Thất Phòng Tắm', 'noi-that-phong-tam', 'Y', '2021-01-21 01:45:34', '2021-01-21 01:45:34', NULL),
	(5, 'Dự Án Đang Triển Khai', 'du-an-dang-trien-khai', 'Y', '2021-02-26 09:22:52', '2021-02-26 09:22:52', NULL);
/*!40000 ALTER TABLE `article_categories` ENABLE KEYS */;

-- Dumping structure for table blogadmin.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blogadmin.customers: 14 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `phone`, `address`, `active`, `created_at`, `updated_at`) VALUES
	(63, 'Hoang Pro', 'Van Sangv', '2021-02-12', 'male', 'hoangsangskyreddd@gmail.com', '01234567822', NULL, NULL, '2021-02-27 20:55:19', '2021-03-01 08:42:24'),
	(67, 'hoang pro', 'van sang', '2021-02-03', 'female', 'hoangsangskyredw@gmail.com', '0123267772', '123456', NULL, '2021-02-27 21:35:30', '2021-02-28 22:31:02'),
	(65, 'văn lâm', 'van sangv', '2021-02-01', 'Female', 'hoangsangskyredd2d@gmail.com', '01239999222', 'dddddd', 'on', '2021-02-27 20:59:35', '2021-02-27 21:08:08'),
	(66, 'hoang pro ssss', 'van sangv', '2021-02-03', 'male', 'john_smith@gmail.com', '0123456789', NULL, '1', '2021-02-27 21:08:37', '2021-02-27 21:08:37'),
	(70, 'hoang pro', 'van sangv', '2021-02-04', 'Female', 'hoangsangskyred25@gmail.com', '01234234567', 'dd', '1', '2021-02-28 01:03:04', '2021-02-28 01:03:19'),
	(60, 'hoang pro', 'Quốc', '2021-02-11', 'female', 'hoangsangskyred@gmail.com2', '0123456784', NULL, NULL, '2021-02-27 20:52:41', '2021-02-27 20:52:41'),
	(57, 'Văn Sáng', 'Hoàng', '2021-02-04', 'female', 'hoangsangskyred22@gmail.com', '0123999933', 'nguyễn văn lâm', NULL, '2021-02-27 20:07:57', '2021-03-01 08:31:10'),
	(58, 'van sang', 'hoàng', '2021-02-05', 'male', 'hoangsangskyred222@gmail.com', '0123999922', NULL, '1', '2021-02-27 20:08:43', '2021-02-27 20:08:43'),
	(73, 'tham', 'hoang', '2021-02-28', 'female', 'john_smith12@gmail.com', '0123999966', NULL, '1', '2021-03-01 08:53:51', '2021-03-01 08:53:51'),
	(61, 'hoang pro ssss', 'van sangv', '2021-02-12', 'male', 'hoangsangskyred2222@gmail.com', '0123999922', NULL, '1', '2021-02-27 20:53:32', '2021-02-28 22:32:55'),
	(62, 'Hoang Pro Ssss', 'Nguyen Van', '2021-02-05', 'female', 'hoangsangskyrewd@gmail.com', '07123456782', NULL, NULL, '2021-02-27 20:53:54', '2021-03-01 08:42:32'),
	(71, 'hoang p', 'đặng', '2021-02-03', 'male', 'abc222@gmail.com', '0968137147', 'đang cập nhật', '1', '2021-02-28 01:21:22', '2021-02-28 01:21:34'),
	(72, 'Van Sang', 'Hoang', '2021-02-28', 'male', 'hoangsangskyred123@gmail.com', '012345678968', NULL, NULL, '2021-03-01 08:29:20', '2021-03-01 08:29:29'),
	(69, 'hoang pro ssss', 'van sangv', '2021-02-02', 'Male', 'iuh@gmail.com', '01234567822', 'test demo ai là người thươn em test demo, anh vẫn thích em như ngày hôm qua', '1', '2021-02-28 00:41:53', '2021-02-28 01:17:32');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table blogadmin.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table blogadmin.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.migrations: 4 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_12_29_014023_create_permission_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table blogadmin.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.model_has_permissions: 0 rows
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table blogadmin.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.model_has_roles: 4 rows
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
REPLACE INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 3),
	(3, 'App\\Models\\User', 3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table blogadmin.modules
CREATE TABLE IF NOT EXISTS `modules` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.modules: 4 rows
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
REPLACE INTO `modules` (`id`, `display_name`) VALUES
	('article', 'Bài viết'),
	('article_category', 'Chủ đề bài viết'),
	('service', 'Dịch vụ'),
	('member', 'Nhân viên');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;

-- Dumping structure for table blogadmin.module_routes
CREATE TABLE IF NOT EXISTS `module_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_value_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `module_value_id` (`module_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.module_routes: 0 rows
/*!40000 ALTER TABLE `module_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_routes` ENABLE KEYS */;

-- Dumping structure for table blogadmin.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table blogadmin.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.permissions: 0 rows
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table blogadmin.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `avatar_path` text COLLATE utf8mb4_unicode_ci,
  `folder_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_count` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `project_category_id` (`project_category_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.projects: 2 rows
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
REPLACE INTO `projects` (`id`, `project_category_id`, `avatar_path`, `folder_path`, `photo_count`, `title`, `slug`, `content`, `show`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, '/public/uploads/photos/shares/projects/mixtape/01.jpg', '/public/uploads/photos/shares/projects/mixtape', 7, 'Mixtape Communication', '/mixtape-communication', '<p>Dự &aacute;n văn ph&ograve;ng C&Ocirc;NG TY TNHH DỊCH VỤ TRUYỀN TH&Ocirc;NG MIXTAPE. Thiết kế hiện đại với c&aacute;c gam m&agrave;u trung t&iacute;nh.</p>', 'Y', '2021-02-01 15:35:01', '2021-02-01 15:40:31', NULL),
	(2, 5, '/public/uploads/photos/shares/projects/vinhome-q9/01.jpg', '/public/uploads/photos/shares/projects/vinhome-q9', 4, 'Vinhome Quận 9', '/vinhome-quan-9', '<p>Thiết kế trang tr&iacute; nội thất sang trọng, hiện đại&nbsp;cho&nbsp;dự &aacute;n Vincity Grand Park&nbsp;đem đến cuộc sống chất lượng hơn d&agrave;nh cho người Việt.</p>', 'Y', '2021-02-01 15:46:59', '2021-02-01 15:48:33', NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table blogadmin.project_categories
CREATE TABLE IF NOT EXISTS `project_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.project_categories: 8 rows
/*!40000 ALTER TABLE `project_categories` DISABLE KEYS */;
REPLACE INTO `project_categories` (`id`, `display_name`, `slug`, `show`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Văn Phòng', 'van-phong', 'Y', '2021-02-01 12:39:53', '2021-02-01 12:39:53', NULL),
	(2, 'Nhà Hàng - Cafe', 'nha-hang-cafe', 'Y', '2021-02-01 12:44:14', '2021-02-01 12:44:14', NULL),
	(3, 'Khu Nghỉ Dưỡng - Xông Hơi - Massage', 'khu-nghi-duong-xong-hoi-massage', 'Y', '2021-02-01 12:44:35', '2021-02-01 12:44:42', NULL),
	(4, 'Khu Trưng Bày', 'khu-trung-bay', 'Y', '2021-02-01 15:48:03', '2021-02-01 15:48:03', NULL),
	(5, 'Căn Hộ', 'can-ho', 'Y', '2021-02-01 15:48:08', '2021-02-01 15:48:08', NULL),
	(6, 'Biệt Thự', 'biet-thu', 'Y', '2021-02-01 15:48:17', '2021-02-01 15:48:17', NULL),
	(7, 'Nhà Phố', 'nha-pho', 'Y', '2021-02-01 15:48:20', '2021-02-01 15:48:20', NULL),
	(8, 'Dự Án Đang Triển Khai2', 'du-an-dang-trien-khai2', 'Y', '2021-02-26 11:51:31', '2021-02-26 11:51:31', NULL);
/*!40000 ALTER TABLE `project_categories` ENABLE KEYS */;

-- Dumping structure for table blogadmin.project_photos
CREATE TABLE IF NOT EXISTS `project_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT '0',
  `photo_path` text COLLATE utf8mb4_unicode_ci,
  `caption` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci,
  `updated_at` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.project_photos: 0 rows
/*!40000 ALTER TABLE `project_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_photos` ENABLE KEYS */;

-- Dumping structure for table blogadmin.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.roles: 3 rows
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `display_name`, `guard_name`, `priority`, `created_at`, `updated_at`) VALUES
	(1, 'super-admin', 'Super Admin', 'web', 1, '2021-01-20 10:41:34', '2021-01-20 10:41:34'),
	(2, 'admin', 'Administrators', 'web', 5, '2021-01-20 10:41:34', '2021-01-20 10:41:34'),
	(3, 'editor', 'Editor', 'web', 10, '2021-01-20 10:41:34', '2021-01-20 10:41:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table blogadmin.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.role_has_permissions: 0 rows
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table blogadmin.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `avatar_path` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.services: 2 rows
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
REPLACE INTO `services` (`id`, `avatar_path`, `title`, `slug`, `description`, `content`, `show`, `created_at`, `updated_at`) VALUES
	(1, '/public/uploads/photos/shares/services/phong-khach-01.jpg', 'Thiết Kế Nội Thất', 'thiet-ke-noi-that', NULL, '<p>Trong mỗi c&ocirc;ng tr&igrave;nh nh&agrave; ở, mỗi kh&ocirc;ng gian&nbsp;đều c&oacute;&nbsp;vai tr&ograve; quan trọng tạo cảm x&uacute;c cho con người trong đời sống h&agrave;ng ng&agrave;y&nbsp;nhưng c&oacute; lẽ ph&ograve;ng kh&aacute;ch l&agrave; nơi&nbsp;được đa phần gia chủ&nbsp;quan t&acirc;m hơn cả. D&ugrave; l&agrave;&nbsp;quan niệm của người phương Đ&ocirc;ng hay phương T&acirc;y, người ta đều&nbsp;cho rằng ph&ograve;ng kh&aacute;ch giữ hai chức năng sau:</p>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng gian sinh hoạt chung của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh với c&aacute;c hoạt động như ăn uống, qu&acirc;y quần c&ugrave;ng tr&ograve; chuyện, xem phim, đọc b&aacute;o, ca h&aacute;t&hellip; nhằm gắn kết t&igrave;nh th&acirc;n.</li>\r\n	<li>L&agrave; nơi tiếp đ&oacute;n c&aacute;c vị kh&aacute;ch gh&eacute; thăm.</li>\r\n</ul>\r\n\r\n<p style="text-align:center"><img alt="Phòng khách sang trọng và hiện đại" src="/public/uploads/photos/shares/services/phong-khach-01.jpg" /></p>\r\n\r\n<p>Với những c&ocirc;ng năng đ&oacute; th&igrave; &rdquo;sang trọng&rdquo; v&agrave; &rdquo;tiện nghi&rdquo; trở th&agrave;nh 2 y&ecirc;u cầu cơ bản nhất m&agrave; một bản thiết kế nội thất cần đạt được. Những phương &aacute;n bố tr&iacute;, sắp xếp kh&ocirc;ng gian tối ưu kh&ocirc;ng chỉ coi trọng việc mang đến sự thoải m&aacute;i, tiện &iacute;ch trong qu&aacute; tr&igrave;nh sinh hoạt của người sử dụng m&agrave; th&ocirc;ng qua ng&ocirc;n ngữ đặc biệt &ndash; ng&ocirc;n ngữ nội thất để l&agrave;m nổi bật t&iacute;nh c&aacute;ch, t&acirc;m l&yacute;, phong c&aacute;ch sống cũng như xu hướng thẩm mỹ của gia chủ v&agrave; gia đ&igrave;nh. Ngo&agrave;i ra, đảm bảo việc h&agrave;i h&ograve;a c&aacute;c nguy&ecirc;n tắc trong phong thủy Việt Nam l&agrave; yếu tố kh&aacute; quan trọng. N&oacute;i một c&aacute;ch kh&aacute;c, qu&aacute; tr&igrave;nh ho&agrave;n thiện thiết kế nội thất ch&iacute;nh l&agrave; sự vận dụng chuy&ecirc;n m&ocirc;n, kinh nghiệm v&agrave; sự lắng nghe, thấu hiểu kh&aacute;ch h&agrave;ng. Từ quan niệm đ&oacute;, Unique House đ&atilde;, đang v&agrave; sẽ kh&ocirc;ng ngừng học hỏi, nỗ lực để mang đến mọi người, mọi nh&agrave; những kh&ocirc;ng gian sống ho&agrave;n hảo nhất. V&agrave; nếu bạn đang mong muốn sở hữu ph&ograve;ng kh&aacute;ch hiện đại, tiện nghi m&agrave; nhiều người mơ ước, Unique House l&agrave; địa chỉ kh&ocirc;ng n&ecirc;n bỏ qua.</p>', 'Y', '2021-02-01 16:44:42', '2021-02-02 13:54:30'),
	(2, '/public/uploads/photos/shares/services/phong-khach-02.jpg', 'Tư Vấn Thiết Kế Nội Thất', 'tu-van-thiet-ke-noi-that', NULL, '<p>Thiết kế nội thất l&agrave; việc lựa chọn, b&agrave;i tr&iacute;, sắp xếp mỗi đồ vật trong một kh&ocirc;ng gian dựa tr&ecirc;n c&aacute;c yếu tố về m&agrave;u sắc, k&iacute;ch thước, kiểu d&aacute;ng, c&ocirc;ng năng, ngoại cảnh&hellip; sao cho h&agrave;i h&ograve;a, ph&ugrave; hợp nhất. N&oacute;i một c&aacute;ch kh&aacute;c, thiết kế nội thất l&agrave; c&aacute;ch tổ chức khoa học kh&ocirc;ng gian sống v&agrave; kh&ocirc;ng gian sống muốn thỏa m&atilde;n tối đa nhu cầu sử dụng cũng như thẩm mỹ của con người cần c&oacute; sự hiện diện của thiết kế nội thất. B&ecirc;n cạnh đ&oacute;, những sản phẩm thiết kế đạt chất lượng cao c&ograve;n phải h&agrave;i h&ograve;a c&ugrave;ng c&aacute;c quan điểm phong thủy của người Việt Nam gi&uacute;p gia chủ đ&oacute;n rước nhiều may mắn, t&agrave;i lộc. Ch&iacute;nh bởi vai tr&ograve; quan trọng n&ecirc;u tr&ecirc;n mỗi kh&aacute;ch h&agrave;ng đều muốn lựa chọn được những kiến tr&uacute;c sư c&oacute; khả năng l&agrave;m việc chuy&ecirc;n nghiệp, t&agrave;i năng v&agrave; tr&aacute;ch nhiệm hỗ trợ, tư vấn tạo ra những ng&ocirc;i nh&agrave;, văn ph&ograve;ng, qu&aacute;n cafe&hellip; ho&agrave;n hảo nhất. Unique House &ndash; thương hiệu uy t&iacute;n trong lĩnh vực thiết kế nội thất trở th&agrave;nh địa chỉ đ&aacute;ng tin cậy của những kh&aacute;ch h&agrave;ng th&ocirc;ng th&aacute;i.</p>\r\n\r\n<p style="text-align:center"><img alt="Tư vấn thiết kế nội thất chuyên nghiệp" src="/public/uploads/photos/shares/services/phong-khach-02.jpg" /></p>\r\n\r\n<h4>Dịch vụ tư vấn thiết kế nội thất chuy&ecirc;n nghiệp tại Unique House</h4>\r\n\r\n<p>Trong thị trường ph&aacute;t triển s&ocirc;i động v&agrave; cạnh tranh mạnh mẽ của lĩnh vực thiết kế nội thất hiện nay, Unique House tự h&agrave;o khi đ&atilde; v&agrave; đang x&acirc;y dựng được một thương hiệu uy t&iacute;n, chuy&ecirc;n nghiệp đối với đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng. Thế mạnh nổi trội m&agrave; Unique House sở hữu ch&iacute;nh l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Nguồn nh&acirc;n lực bao gồm c&aacute;c kiến tr&uacute;c sư, nh&agrave; thiết kế nội thất được đ&agrave;o tạo b&agrave;i bản, giỏi chuy&ecirc;n m&ocirc;n, gi&agrave;u khả năng s&aacute;ng tạo v&agrave; ứng biến linh hoạt với tinh thần l&agrave;m việc nhiệt huyết, tr&aacute;ch nhiệm v&agrave; nghi&ecirc;m t&uacute;c.</li>\r\n	<li>Quy tr&igrave;nh l&agrave;m việc với kh&aacute;ch h&agrave;ng v&agrave; l&agrave;m việc nội bộ chuy&ecirc;n nghiệp, khoa học mang đến hiệu quả c&ocirc;ng việc cao cũng như những sản phẩm thiết kế nội thất tốt nhất tới c&aacute;c chủ đầu tư c&ocirc;ng tr&igrave;nh.</li>\r\n	<li>B&aacute;o gi&aacute; thiết kế với gi&aacute; th&agrave;nh hợp l&yacute;, tiết kiệm v&agrave; cạnh tranh nhất tr&ecirc;n thị trường, đảm bảo lợi &iacute;ch hợp t&aacute;c từ cả kh&aacute;ch h&agrave;ng v&agrave; c&ocirc;ng ty, ph&ugrave; hợp với nhiều đối tượng kh&aacute;ch h&agrave;ng từ b&igrave;nh d&acirc;n đến cao cấp.</li>\r\n	<li>Cam kết b&agrave;n giao sản phẩm thiết kế nội thất chất lượng đ&uacute;ng tiến độ thời gian.</li>\r\n</ul>\r\n\r\n<h4>Quy tr&igrave;nh l&agrave;m việc của THIDI</h4>\r\n\r\n<p>Bước 1: Gặp gỡ kh&aacute;ch h&agrave;ng, nghe v&agrave; trao đổi về &yacute; tưởng thiết kế v&agrave; định h&igrave;nh phong c&aacute;ch.<br />\r\nBước 2: Khảo s&aacute;t thực trạng v&agrave; kh&ocirc;ng gian c&ocirc;ng tr&igrave;nh cần thiết kế nội thất.<br />\r\nBước 3: Thỏa thuận k&iacute; kết hợp đồng giữa kh&aacute;ch h&agrave;ng v&agrave; c&ocirc;ng ty.<br />\r\nBước 4: L&ecirc;n phương &aacute;n mặt bằng 2D v&agrave; th&ocirc;ng qua &yacute; kiến kh&aacute;ch h&agrave;ng.<br />\r\nBước 5: Thiết kế nội thất bằng h&igrave;nh ảnh 3D v&agrave; duyệt th&ocirc;ng qua &yacute; kiến kh&aacute;ch h&agrave;ng.<br />\r\nBước 6: Ho&agrave;n thiện 3D lần cuối c&ugrave;ng.<br />\r\nBước 7: B&agrave;n giao Hồ sơ kỹ thuật v&agrave; quyết to&aacute;n hợp đồng thiết kế nội thất.</p>\r\n\r\n<p>Với một quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp, khoa học, THIDI đ&atilde;, đang v&agrave; sẽ kh&ocirc;ng ngừng cống hiến t&agrave;i năng, sự s&aacute;ng tạo nhằm mang đến cho qu&yacute; kh&aacute;ch h&agrave;ng những kh&ocirc;ng gian sống ho&agrave;n hảo nhất. Thực hiện cam kết đảm bảo lợi &iacute;ch đ&ocirc;i b&ecirc;n, đề cao lợi &iacute;ch kh&aacute;ch h&agrave;ng.</p>', 'Y', '2021-02-01 17:07:40', '2021-02-02 13:54:24');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Dumping structure for table blogadmin.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` tinyint(30) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.settings: 6 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `name`, `display_name`, `setting_value`, `created_at`, `updated_at`) VALUES
	(1, 'ten-cong-ty', 'Tên công ty', 'Công ty TNHH Kiến Trúc Ngôi Nhà Độc Đáo', '2021-01-31 17:51:23', '2021-01-31 17:51:23'),
	(2, 'dia-chi', 'Địa chỉ', '22 Võ Văn Kiệt, Phường Nguyễn Thái Bình, Quận 1, Thành Phố Hồ Chí Minh', '2021-01-31 17:52:29', '2021-01-31 18:28:06'),
	(3, 'dien-thoai', 'Điện thoại', '', '2021-01-31 17:52:43', '2021-01-31 17:52:43'),
	(4, 'ma-so-thue', 'Mã số thuế', '0313929840', '2021-01-31 17:52:56', '2021-01-31 17:52:56'),
	(5, 'hotline', 'Hotline', '0123 300 1522', '2021-01-31 17:53:02', '2021-01-31 17:53:03'),
	(6, 'e-mail', 'E-mail', 'uniquehouse2016@gmail.com', '2021-01-31 17:53:14', '2021-01-31 17:53:14');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table blogadmin.team_members
CREATE TABLE IF NOT EXISTS `team_members` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_path` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `linkedin` text COLLATE utf8mb4_unicode_ci,
  `show` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.team_members: 4 rows
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
REPLACE INTO `team_members` (`id`, `full_name`, `avatar_path`, `title`, `phone`, `facebook`, `twitter`, `linkedin`, `show`, `created_at`, `updated_at`) VALUES
	(1, 'Nguyễn Văn A', '/public/uploads/photos/shares/team-members/01-designer.jpg', 'Kiến Trúc Sư', NULL, NULL, NULL, NULL, 'Y', '2021-02-02 10:27:38', '2021-02-02 10:59:19'),
	(2, 'Trần Thị B', '/public/uploads/photos/shares/team-members/02-sale-manager.jpg', 'Sale Manager', NULL, NULL, NULL, NULL, 'Y', '2021-02-02 10:59:43', '2021-02-02 10:59:43'),
	(3, 'Lưu Văn C', '/public/uploads/photos/shares/team-members/04-detector.jpg', 'Giám Sát Công Trình', NULL, NULL, NULL, NULL, 'Y', '2021-02-02 11:00:12', '2021-02-02 11:01:10'),
	(4, 'Lê Văn A', '/public/uploads/photos/shares/team-members/03-architecture.jpg', 'Kiến Trúc Sư', NULL, NULL, NULL, NULL, 'Y', '2021-02-02 11:01:01', '2021-03-01 08:35:19');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;

-- Dumping structure for table blogadmin.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table blogadmin.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `last_login_at`, `password`, `confirm_code`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'hoangsangskyred@gmail.com', NULL, '2021-09-16 21:59:16', '$2y$10$YX9lmeZgDxYisqAh29xmxupQvetsTmlf2qBi2BE1vylhrFYqbRIGW', NULL, 'SEEqNurUI3PAXL9JAsWxDOZ0ixSOzn6sK5Hz2NNp4TjSUhn0ntKdpJ0ADPk2', '2021-01-20 10:53:37', '2021-09-16 21:59:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
