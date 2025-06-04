SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `blsanpham`;
CREATE TABLE IF NOT EXISTS `blsanpham` (
  `id_bl` int(10) NOT NULL AUTO_INCREMENT,
  `id_sp` int(10) NOT NULL,
  `ten` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `dien_thoai` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `binh_luan` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ngay_gio` datetime NOT NULL,
  PRIMARY KEY (`id_bl`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(1, 13, 'Tuân', '096347364', 'Dép xịn, đúng mẫu', '2025-05-28 12:00:56 '),
(2, 17, 'Châu', '023572352', 'Dép vừa chân, đúng size', '2025-06-11 9:15:30'),
(3, 21, 'Nhân', '073623836', 'Dép đẹp, vừa ý', '2025-06-18 13:15:30');

DROP TABLE IF  EXISTS `dmsanpham`;
CREATE TABLE IF NOT EXISTS `dmsanpham` (
    `id_dm` int(10) NOT NULL AUTO_INCREMENT,
    `ten_dm` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
    `anh_dm` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
    PRIMARY KEY (`id_dm`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`, `anh_dm`) VALUES
(1, 'Depnam', 'logo_depnam.png'),
(2, 'Depnu','logo_depnu.png');

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `gia_sp` float(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `khuyen_mai` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `trang_thai` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id_sp`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(11, 1, 'Dép nam quai chéo','depnam_quai_cheo.jpg', '55000', 'mới', 'không', 'còn hàng', 0, 'Nổi bật với phong cách trẻ trung hiện đại.'),
(12, 1, 'Dép nam xỏ ngón', 'depnam_xo_ngon.jpg', '60000', 'mới', 'không', 'còn hàng', 0, 'Từ mẫu mã đến chất liệu, tất cả đều đơn giản, thuần nhất.'),
(13, 1, 'Dép nam quai ngang', 'depnam_quai_ngang.jpg', '83000', 'mới', 'có', 'còn hàng', 1, 'Tuy có nét sang trọng là thế nhưng những đôi dép quai ngang trông khá giản dị và dễ đi, không hề phô trương'),
(14, 1, 'Dép Sandal da nam ', 'dep_sandal.jpg', '110000', 'mới', 'không', 'còn hàng', 1, 'Dép nam này có thiết kế quai ngang gọn nhẹ, tiện lợi phù hợp với rất nhiều kiểu trang phục khác nhau,'),
(15, 1, 'Dép nam đẹp sandal xỏ ngón đế cao', 'sandal_nam_cao.jpg', '119000', 'mới', 'không', 'còn hàng', 0, 'Sản phẩm có thiết kế khá tinh tế và bắt mắt khi tận dụng dây da để bao quanh ngón chân cái của người dùng'),
(16, 1, 'Dép nam đẹp da bò quai hậu', 'sanda_quai_hau.jpg', '120000', 'mới', 'không', 'còn hàng', 1, ' Thiết kế tương đối đơn giản với nguyên liệu chính là từ những lớp da bò mềm mại.'),
(17, 2, 'Dép cao gót nữ', 'dep-cao-got-nu.jpg', '111000', 'mới', 'không', 'còn hàng', 1, 'Tây là dép tôn dáng giúp chị em nhẹ nhàng và nữ tính hơn'),
(18, 2, 'Dép quai hậu đế bằng', 'dep_nu_de_bang.jpg','120050', 'mới', 'có', 'còn hàng', 0, 'Thiết kế mang lại sự thoải mái dễ chịu cho đôi chân, hạn chế đau và tổn thương cho đôi chân.' ),
(19, 2, 'Dép nữ đính ngọc trai', 'dinh_ngoc_trai.jpg', '125000', 'mới', 'không', 'còn hàng', 0, 'Chất liệu được làm từ da mềm cao cấp, thiết kế chắc chắn điểm cộng là có khả năng chống trơn trượt cực kỳ tốt.'),
(20, 2, 'Dép nữ cao cấp Adidas', 'nu_adidas.jpg','132000', 'mới', 'không', 'còn hàng', 1, ' Thiết kế đơn giản tuy nhiên lại mang đến nhiều cơn sốt cho các tín đồ thời trang. '),
(21, 2, 'Dép nữ Sandal bảng ngang quai hậu', 'sandal_nu_quai.jpg', '143000', 'mới', 'không', 'còn hàng', 0, 'Kiểu dáng thời trang, cá tính, năng động, trẻ trung'),
(22, 2, 'Dép nữ bánh mì thời trang', 'depnu_banhmi.jpg', '135000', 'mới', 'có', 'còn hàng', 0, 'Kiểu dép đế bánh mì mang đến cảm giác êm ái và năng động cho bạn gái.'),
(23, 2, 'Dép nữ đế xuồng phối nơ', 'depnu_dexuong_no.jpg', '142000', 'mới', 'không', 'còn hàng', 1, 'Thiết kế nhẹ nhàng với điểm nhấn là chiếc nơ xinh xắn.'),
(24, 2, 'Dép nữ lông mềm đi trong nhà', 'depnu_longmem.jpg', '75000', 'mới', 'có', 'còn hàng', 0, 'Mang lại cảm giác ấm áp, thoải mái vào mùa đông.'),
(25, 2, 'Dép nữ thời trang quai trong suốt', 'depnu_quai_trong.jpg', '110000', 'mới', 'không', 'còn hàng', 1, 'Phong cách cá tính, hiện đại, dễ phối đồ.'),
(26, 2, 'Dép sandal nữ quai chéo', 'depnu_sandal_quai_cheo.jpg', '123000', 'mới', 'không', 'còn hàng', 0, 'Thiết kế năng động phù hợp cho cả đi học và dạo phố.'),
(27, 2, 'Dép nữ đế thấp phối hạt', 'depnu_de_thap_hat.jpg', '129000', 'mới', 'có', 'còn hàng', 1, 'Trang nhã, nhẹ nhàng với các hạt trang trí tinh tế.'),
(28, 2, 'Dép nữ đi biển chống trượt', 'depnu_bien_truot.jpg', '98000', 'mới', 'không', 'còn hàng', 0, 'Thiết kế tiện dụng, chống trượt, thích hợp đi biển.'),
(29, 2, 'Dép nữ crocs phong cách', 'depnu_crocs.jpg', '115000', 'mới', 'có', 'còn hàng', 1, 'Chất liệu nhẹ, êm chân, dễ vệ sinh, phù hợp nhiều dịp.'),
(30, 2, 'Dép nữ đế bánh mì basic', 'depnu_banhmi_basic.jpg', '100000', 'mới', 'không', 'còn hàng', 0, 'Mẫu mã đơn giản nhưng thời thượng, dễ mang.'),
(31, 2, 'Dép nữ sandal quai mảnh', 'depnu_quai_manh.jpg', '139000', 'mới', 'không', 'còn hàng', 1, 'Sự lựa chọn hoàn hảo cho phong cách thanh lịch.'),
(32, 1, 'Dép nam thể thao Adidas', 'depnam_adidas.jpg', '145000', 'mới', 'có', 'còn hàng', 1, 'Phong cách thể thao khỏe khoắn, phù hợp đi dạo hoặc tập luyện.'),
(33, 1, 'Dép nam cao su chống trượt', 'depnam_cao_su.jpg', '78000', 'mới', 'không', 'còn hàng', 0, 'Chất liệu cao su mềm dẻo, chống trơn hiệu quả.'),
(34, 1, 'Dép nam da bò kiểu lịch lãm', 'depnam_da_bo.jpg', '165000', 'mới', 'không', 'còn hàng', 1, 'Mang phong cách lịch sự, phù hợp đi làm hoặc gặp gỡ.'),
(35, 1, 'Dép Nam Da Bò AG0275', 'depnam_ag0275.jpg', '150000', 'mới', 'có', 'còn hàng', 0, 'Thiết kế từ da bò thật cao cấp, kiểu dáng sang trọng, bền chắc.'),
(36, 1, 'Dép Nam TZLDN Chống Trượt Tăng Chiều Cao', 'depnam_tzldn.jpg', '145000', 'mới', 'không', 'còn hàng', 1, 'Dép nam TZLDN thiết kế thể thao, đế cao 4.5cm giúp tăng chiều cao, chất liệu bền chắc, chống trơn trượt, đi được mọi địa hình.'),
(37, 1, 'Sandal Bitis nam đế cao 5cm', 'sandal_bitis_nam_5cm.jpg', '155000', 'mới', 'có', 'còn hàng', 1, 'Sandal Bitis nam thiết kế trẻ trung, đế cao 5cm giúp tôn dáng, đệm êm chống trượt, phù hợp đi chơi hoặc đi học.'),
(38, 1, 'Dép nam tổ ong cao cấp', 'depnam_to_ong.jpg', '95000', 'mới', 'không', 'còn hàng', 0, 'Thiết kế lỗ tổ ong giúp thoáng khí, chống trượt.'),
(39, 1, 'Dép nam da PU thời trang', 'depnam_pu.jpg', '125000', 'mới', 'không', 'còn hàng', 1, 'Chất liệu da PU giả cao cấp, mềm nhẹ, dễ phối đồ.'),
(40, 1, 'Dép nam sandal thể thao', 'depnam_sandal_tt.jpg', '138000', 'mới', 'có', 'còn hàng', 0, 'Kiểu dáng thể thao năng động, thích hợp hoạt động ngoài trời.'),
(41, 1, 'Dép Sandal Eva nam đế 5cm GL460', 'dep_sandal_eva_gl460.jpg', '179000', 'mới', 'không', 'còn hàng', 1, 'Dép Sandal EVA GL460 với đế cao 5cm, thiết kế thể thao mạnh mẽ, chất liệu EVA siêu nhẹ, chống trơn trượt, bền bỉ, phù hợp cho dạo phố và đi chơi.'),
(42, 2, 'Dép nữ đế bệt quai chéo vải bố', 'depnu42.jpg', '89000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép nữ thời trang đế bệt, quai chéo bằng vải bố nhẹ nhàng và thoải mái, thích hợp đi dạo, đi chơi.'),
(43, 2, 'Dép nữ mũi vuông quai bản trong suốt', 'depnu43.jpg', '115000', 'Mới', 'Không', 'Còn hàng', 1, 'Thiết kế mũi vuông hiện đại, quai bản to nhựa trong suốt tạo cảm giác sang trọng, dễ phối đồ.'),
(44, 2, 'Dép nữ đế xuồng cao 5cm, quai ngang bèo nhún', 'depnu_beonhun.jpg', '135000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép nữ đế xuồng cao 5cm, thiết kế quai ngang với bèo nhún nữ tính, phù hợp đi học, đi chơi, dạo phố.'),
(45, 2, 'Dép nữ quai chéo nhún lụa', 'depnu45.jpg', '99000', 'Mới', 'Không', '', 0, 'Quai chéo nhún bằng vải lụa mềm mại, tạo sự nữ tính và nhẹ nhàng cho đôi chân.'),
(46, 2, 'Dép nữ quai ngang đính nơ', 'depnu46.jpg', '105000', 'Mới', 'Có', 'Còn hàng', 0, 'Thiết kế đơn giản với điểm nhấn chiếc nơ dễ thương, phù hợp nhiều độ tuổi.'),
(47, 2, 'Dép nữ kẹp hoa vải thời trang', 'depnu47.jpg', '85000', 'Mới', 'Không', 'Còn hàng', 1, 'Dép kẹp kiểu nữ tính, điểm hoa vải nổi bật, thích hợp đi dạo hay đi biển.'),
(48, 2, 'Dép nữ sandal quai mảnh', 'depnu48.jpg', '110000', 'Mới', 'Không', 'Còn hàng', 0, 'Thiết kế sandal đơn giản, quai mảnh nhẹ nhàng phù hợp đi học hoặc đi làm.'),
(49, 2, 'Dép nữ xỏ ngón đính đá', 'depnu49.jpg', '120000', 'Mới', 'Có', 'Còn hàng', 1, 'Dép xỏ ngón với điểm nhấn đính đá lấp lánh, tạo điểm nhấn sang trọng.'),
(50, 2, 'Dép nữ đế xuồng hoa nổi', 'depnu50.jpg', '135000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép đế xuồng giúp tăng chiều cao nhẹ nhàng, hoa nổi tạo sự duyên dáng.'),
(51, 2, 'Dép nữ bệt bản to', 'depnu51.jpg', '78000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép nữ bản to đơn giản, dễ phối đồ và thích hợp sử dụng hàng ngày.'),
(52, 2, 'Dép nữ sục mũi nhọn', 'depnu52.jpg', '145000', 'Mới', 'Có', 'Còn hàng', 1, 'Dép sục mũi nhọn phong cách Hàn Quốc, tôn dáng, dễ phối đồ đi tiệc.'),
(53, 2, 'Dép nữ đế bánh mì', 'depnu53.jpg', '125000', 'Mới', 'Không', 'Còn hàng', 0, 'Đế bánh mì thời trang, giúp tăng chiều cao và êm ái khi di chuyển.'),
(54, 2, 'Dép nữ quai ngang lưới', 'depnu54.jpg', '99000', 'Mới', 'Không', 'Còn hàng', 0, 'Quai ngang dạng lưới tạo cảm giác thông thoáng, nhẹ nhàng cho đôi chân.'),
(55, 2, 'Dép nữ da trơn thanh lịch', 'depnu55.jpg', '138000', 'Mới', 'Có', 'Còn hàng', 1, 'Chất liệu da trơn bền đẹp, thiết kế thanh lịch phù hợp công sở.'),
(56, 2, 'Dép nữ quai nhựa chéo', 'depnu56.jpg', '92000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép quai nhựa đan chéo bền bỉ, phù hợp đi mưa hoặc đi chơi.'),
(57, 2, 'Dép nữ đế cói vintage', 'depnu57.jpg', '115000', 'Mới', 'Không', 'Còn hàng', 1, 'Phong cách vintage nhẹ nhàng, đế cói thoáng mát và êm chân.'),
(58, 2, 'Dép nữ sandal thể thao', 'depnu58.jpg', '135000', 'Mới', 'Có', 'Còn hàng', 0, 'Sandal năng động, phù hợp các hoạt động ngoài trời hoặc đi học.'),
(59, 2, 'Dép nữ bệt quai bản chéo', 'depnu59.jpg', '88000', 'Mới', 'Không', 'Còn hàng', 0, 'Dép đế bệt với quai chéo bản to chắc chắn, phù hợp đi bộ nhiều.'),
(60, 2, 'Dép nữ đế trấu da PU', 'depnu60.jpg', '99000', 'Mới', 'Không', 'Còn hàng', 0, 'Chất liệu đế trấu mềm mại kết hợp da PU thời trang, chống trượt tốt.'),
(61, 2, 'Dép nữ để bệt quai xoắn', 'depnu61.jpg', '99000', 'Mới', 'Không', 'Còn hàng', 0, 'Quai xoắn nhẹ tinh tế, đế bệt thoải mái, gam màu trung tính dễ phối trang phục.'),
(62, 1, 'Dép nam quai ngang da PU', 'depnam1.jpg', '120000', 'mới', 'Giảm 10%', 'Còn hàng', 0, 'Dép nam thiết kế đơn giản, da PU mềm mại.'),
(63, 1, 'Dép nam đế tổ ong chống trượt', 'depnam2.jpg', '99000', 'Mới', 'Mua 1 tặng 1', 'Còn hàng', 0, 'Đế chống trượt, thích hợp mang đi mưa.'),
(64, 1, 'Dép nam quai chéo bản lớn', 'depnam3.jpg', '135000', 'Mới', 'Giảm 5%', 'Còn hàng', 1, 'Quai chéo chắc chắn, phong cách thể thao.'),
(65, 1, 'Dép nam da bò thật thủ công', 'depnam4.jpg', '289000', 'Mới', 'Freeship toàn quốc', 'Mới', 1, 'Chất liệu da bò thật, may thủ công.'),
(66, 1, 'Dép nam đế cao su êm ái', 'depnam5.jpg', '110000', 'Mới', 'Giảm 15%', 'Còn hàng', 0, 'Đế cao su chống sốc, phù hợp đi chơi, dạo phố.'),
(67, 1, 'Dép nam xỏ ngón thể thao', 'depnam6.jpg', '125000', 'Mới', 'Flash sale', 'Còn hàng', 0, 'Phong cách thể thao, phù hợp cho mùa hè.'),
(68, 1, 'Dép nam bản da trơn cao cấp', 'depnam7.jpg', '149000', 'Mới', 'Tặng voucher 10k', 'Còn hàng', 1, 'Thiết kế sang trọng, phù hợp đi làm, đi chơi.'),
(69, 1, 'Dép nam quai vải dù bền đẹp', 'depnam8.jpg', '105000', 'Mới', 'Mua 2 giảm 20k', 'Còn hàng', 0, 'Quai vải bền chắc, trẻ trung năng động.'),
(70, 1, 'Dép nam xỏ ngón da PU cao cấp', 'depnam9.jpg', '115000', 'Mới', 'Tặng kèm vớ', 'Còn hàng', 0, 'Dép xỏ ngón làm từ da PU bền đẹp, thoáng khí, thích hợp đi dạo, đi biển.'),
(71, 1, 'Dép nam quai ngang phối khóa', 'depnam10.jpg', '135000', 'Mới', 'Mua 2 tặng 1', 'Còn hàng', 0, 'Phối khóa tinh tế, thời trang hiện đại.'),
(72, 1, 'Dép nam đế xuồng cá tính', 'depnam11.jpg', '145000', 'Mới', 'Giảm 10k khi mua kèm áo', 'Còn hàng', 0, 'Thiết kế phá cách, năng động trẻ trung.'),
(73, 1, 'Dép nam da lộn quai kép', 'depnam12.jpg', '159000', 'Mới', 'Giảm 20% cho đơn hàng sau', 'Còn hàng', 1, 'Da lộn mềm mịn, mang êm chân.'),
(74, 1, 'Dép nam chống trượt đi biển', 'depnam13.jpg', '99000', 'Mới', 'Giảm 15%', 'Còn hàng', 0, 'Chống trượt, nhanh khô, phù hợp du lịch.'),
(75, 1, 'Dép nam thể thao Adidas phong cách', 'depnam14.jpg', '199000', 'Mới', 'Sale cuối tuần', 'Còn hàng', 1, 'Thiết kế thể thao, in logo nổi bật.'),
(82, 1, 'Dép nam EVA siêu nhẹ đế cao 4cm', 'depnam_eva4cm.jpg', '145000', 'Mới', 'Giảm 10%', 'Còn hàng', 0, 'Chất liệu EVA siêu nhẹ, đế cao êm chân, phù hợp đi học, đi chơi.'),
(77, 1, 'Dép nam vải jeans cá tính', 'depnam16.jpg', '139000', 'Mới', 'Freeship đơn 150k', 'Còn hàng', 0, 'Chất liệu jeans phá cách, bền bỉ.'),
(78, 1, 'Dép nam 3 sọc thể thao', 'depnam17.jpg', '89000', 'Mới', 'Giảm 20%', 'Còn hàng', 0, 'Đặc trưng 3 sọc mạnh mẽ, dễ phối đồ.'),
(79, 1, 'Dép nam quai da phối vải', 'depnam18.jpg', '125000', 'Mới', 'Tặng 1 voucher', 'Còn hàng', 0, 'Sự kết hợp giữa da và vải, cá tính hiện đại.'),
(80, 1, 'Dép nam đế massage êm chân', 'depnam19.jpg', '135000', 'Mới', 'Flash sale', 'Còn hàng', 0, 'Đế massage nhẹ, giảm mỏi chân.'),
(81, 1, 'Dép nam dáng sandal hở mũi', 'depnam20.jpg', '159000', 'Mới', 'Có', 'Còn hàng', 1, 'Thiết kế sandal thoáng mát, dễ mang.');
DROP TABLE IF EXISTS `thanhvien`;
CREATE TABLE IF NOT EXISTS `thanhvien` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

INSERT INTO `thanhvien` (`id`, `name`, `email`, `pass`, `role`) VALUES
(101, 'Quang', 'quang@gmail.com', '1245', 0),
(102, 'Tuan', 'tuan123@gmail.com', '123', 0),
(103, 'Chau', 'chau123@gmail.com', '123', 0),
(104, 'Nhân', 'nhan123@gmail.com', '123', 0),
(105, 'Admin', 'admin@gmail.com', 'admin', 1);

COMMIT;