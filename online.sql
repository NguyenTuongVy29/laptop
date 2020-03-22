-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 12:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
('20', 'Galaxy Grand Duos i9082', 1, 6000000, 2, 5),
('20', 'Galaxy Mega 6.3', 1, 7000000, 2, 6),
('21', 'Galaxy Mega 6.3', 1, 7000000, 3, 7),
('22', 'LG 5080', 1, 5000000, 0, 8),
('22', 'Galaxy Ace Duos S6802', 1, 5000000, 0, 9),
('22', 'Genius ECO-u500 - Pin sạc dự phòng', 2, 500000, 0, 10),
('22', 'Skullcandy S2DUDZ-012 - (Xanh dương)', 1, 360000, 0, 11),
('23', 'Galaxy Core GT-I8262', 1, 3000000, 3, 12),
('24', 'LG 5080', 1, 5000000, 1, 13),
('25', 'Nokia BL-4D – Pin điện thoại', 1, 800000, 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_sp`
--

CREATE TABLE `chitiet_sp` (
  `id` int(10) NOT NULL,
  `thuonghieu` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `baohanh` text CHARACTER SET utf8 DEFAULT NULL,
  `mausac` text CHARACTER SET utf8 DEFAULT NULL,
  `Series laptop` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Part-number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `manhinh` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CPU` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `theheCPU` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `RAM` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `chipdohoa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `luutru` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `congxuattrinh` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `congketnoi` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ketnoikhongday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `banphim` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hedieuhanh` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `kichthuoc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pin` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `khoiluong` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `odiaquang` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `denLED` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `baomat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phukiendikem` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `idsp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `idhd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`idhd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(20, 0, 'dat', 'an thuong', 978164307, 'tiendat21290@gmail.com', '2014-06-05', 2),
(21, 0, 'tuannguyen', '199/21 duong 3/2', 1202656294, 'tuanatt199@gmail.com', '2018-04-19', 3),
(22, 23, 'tuan nguyen', 'abc1212', 123456789, 'tuanatt199@gmail.com', '2018-04-19', 2),
(23, 0, 'asaaa sà cds', '12 sdfs ê', 56756123, 'fdrfet', '2018-04-26', 2),
(24, 0, 'thuan', '12thuan', 122342342, '199@gmail.com', '2018-04-28', 2),
(25, 0, 'Nguyen ngu', '756 truong chinh', 12233, 'tuanatt199@gmail.com', '2018-05-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotro`
--

INSERT INTO `hotro` (`idht`, `chude`, `noidung`, `hoten`, `dienthoai`, `email`, `ngaygui`) VALUES
(4, 'Máy tính chậm', 'Máy tính khởi động chậm, hay update', 'Nguyễn Tường Vy', 389732828, 'tuongvy020998@gmail.com', '2020-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` int(10) NOT NULL,
  `tenloaisp` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`) VALUES
(1, 'LapTop'),
(2, 'Chuột máy tính có dây'),
(3, 'Thẻ nhớ'),
(4, 'Chuột máy tính không dây'),
(5, 'Tai nghe'),
(6, 'Best seller Laptop'),
(7, 'laptop new');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(1, 'Tường Vy', 'vyvy', '123', '1998-07-20', 'Nữ', 'tuongvy@gmail.com', 0, '', '2020-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idncc` int(10) NOT NULL,
  `tenncc` varchar(100) CHARACTER SET utf8 NOT NULL,
  `emailncc` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dienthoaincc` int(13) DEFAULT NULL,
  `diachincc` text CHARACTER SET utf8 DEFAULT NULL,
  `faxncc` text CHARACTER SET utf8 DEFAULT NULL,
  `webncc` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`idncc`, `tenncc`, `emailncc`, `dienthoaincc`, `diachincc`, `faxncc`, `webncc`) VALUES
(1, 'Phần Mềm Phúc Tường - Công Ty TNHH Phúc Tường', 'phuctuong.coltd@gmail.com', 908010077, 'Số 64 Đ. D9, KDC Chánh Nghĩa, P. Chánh Nghĩa, Tp. Thủ Dầu Một,Bình Dương', '(0274) 3856999', 'www.phuctuongitc.com.vn'),
(2, 'Công Ty TNHH TM DV Tin Học - Viễn Thông Tiên Phong', 'cskh@maytinhtienphong.com', 913185827, 'D78 Trương Hán Siêu, P. Phú Thủy, TP. Phan Thiết,Bình Thuận', NULL, 'www.maytinhtienphong.com'),
(3, 'Công Ty TNHH Thương Mại Dịch Vụ Phát Triển Ánh Việt', 'anhviet6879@gmail.com', 908545373, '602/37/41 Điện Biên Phủ, P. 22, Q. Bình Thạnh, Tp. Hồ Chí Minh (TPHCM)', NULL, 'www.phattrienanhviet.com'),
(4, 'Công Ty TNHH Trends & Technologies, Inc. Việt Nam', 'thao.htp@trends.com.vn', 835512378, '153 Ung Văn Khiêm, P. 25, Q. Bình Thạnh, Tp. Hồ Chí Minh (TPHCM)', NULL, 'www.trends.com.vn');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(400) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `giacu` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `idloaisp` int(11) NOT NULL,
  `idth` int(10) NOT NULL,
  `idncc` int(10) NOT NULL,
  `dequi` int(2) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `soluong`, `daban`, `giaban`, `giacu`, `khuyenmai1`, `khuyenmai2`, `idloaisp`, `idth`, `idncc`, `dequi`, `ngaycapnhat`, `trangthai`) VALUES
(1, 'Tên sản phẩm: Máy tính xách tay/ Laptop Asus Zenbook UX333FA-A4011T (I5-8265U) (Xanh)', 'as1.jpg', 150, 9, 22990000, 23500000, 10, 'Giảm ngay 500k khi mua phần mềm bản quyền', 1, 3, 2, 1, '2020-01-01', 1),
(2, 'Máy tính xách tay/ Laptop Asus Zenbook UX434FLC - A6212T (i5-10210U) (Bạc)', 'as2.1.jpg', 100, 15, 26490000, 27000000, 10, 'Giảm ngay 500k khi mua phần mềm bản quyền', 1, 3, 1, 1, '2020-01-01', 1),
(10, 'Máy tính xách tay/ Laptop Asus Vivobook X509JA-EJ021T (i5-1035G1U) (Bạc)', 'as3.1.jpg', 100, 25, 17990000, 18500000, 0, 'Giảm ngay 500k khi mua phần mềm bản quyền', 1, 3, 1, 2, '2020-01-01', 1),
(11, 'Máy tính xách tay/ Laptop Asus TUF Gaming FX505GD-BQ012T (i5-8300H) (Xám)', 'as3.1.jpg', 20, 3, 21490000, 0, 0, 'Giảm ngay 500k khi mua phần mềm bản quyền', 1, 3, 0, 0, '0000-00-00', 0),
(15, 'Samsung Galaxy S5', '20140520013030Samsung Galaxy S5 (G900H).jpg', 20, 0, 20000000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(18, 'Samsung Galaxy Trend Lite S7392', '20140520013228Samsung Galaxy Trend Lite S7392.jpg', 20, 0, 1000000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(19, 'Samsung Galaxy Win i8552', '20140520013252Samsung Galaxy Win i8552.jpg', 20, 0, 800000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(20, 'Samsung Galaxy Y S5360', '20140520013319Samsung Galaxy Y S5360.jpg', 20, 0, 2000000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(21, 'Samsung Rex 60 (C3312R)', '20140520013346Samsung Rex 60 (C3312R).jpg', 20, 0, 4500000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(22, 'samsung 5529', '20140520013422samsung-5529-0032-1-zoom.jpg', 20, 0, 1500000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(23, 'samsung 6657', '20140520013453samsung-6657-54434-1-zoom.jpg', 20, 0, 5500000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(24, 'Sony Xperia C C2305', '20140520013542Sony Xperia C C2305.jpg', 20, 0, 10000000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(25, 'Sony Xperia M C1905', '20140520013606Sony Xperia M C1905.jpg', 20, 0, 4000000, 0, 0, '', 3, 0, 0, 0, '2014-05-20', 0),
(26, 'Chuột máy tính Logitech M221 không dây (Xám đen)', 'ckd1.jpg', 20, 0, 330000, 0, 0, '', 4, 0, 0, 0, '0000-00-00', 0),
(27, 'Chuột máy tính Logitech M221 không dây (Xanh)', 'ckd2.jpg', 20, 1, 330000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(28, 'Chuột máy tính Dell không dây WM126 (Đen)', 'ckd3.png', 20, 0, 250000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(29, 'HTC Desire 200', '20140520013946HTC Desire 200.jpg', 20, 0, 900000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(30, 'HTC desire 300', '20140520014020htc desire 300.jpg', 20, 0, 6000000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(31, 'HTC Desire 302', '20140520014053HTC Desire 302.jpg', 20, 0, 4000000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(32, 'HTC Desire 310', '20140520014118HTC Desire 310.jpg', 20, 0, 7000000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(33, 'HTC Desire 500', '20140520014158HTC Desire 500.jpg', 20, 0, 1500000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(34, 'HTC desire 501', '20140520014233htc desire 501.jpg', 20, 0, 5000000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(35, 'HTC Desire 600', '20140520014324HTC Desire 600.jpg', 20, 0, 16000000, 0, 10, '', 0, 0, 0, 0, '2014-05-20', 0),
(36, 'HTC Desire C', '20140520014358HTC Desire C.jpg', 20, 0, 8600000, 0, 0, '', 0, 0, 0, 0, '2014-05-20', 0),
(37, 'HTC Desire L', '20140520014444HTC Desire L.jpg', 20, 0, 5000000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(38, 'HTC Desire SV', '20140520014515HTC Desire SV.jpg', 20, 0, 700000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(39, 'HTC Desire U', '20140520014536HTC Desire U.jpg', 20, 0, 3500000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(40, 'HTC Desire X', '20140520014606HTC Desire X.jpg', 20, 0, 2000000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(41, 'HTC One M8', '20140520014638HTC One M8.jpg', 20, 0, 9000000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(42, 'HTC one', '20140520014713one.jpg', 20, 0, 20000000, 0, 0, '', 4, 0, 0, 0, '2014-05-20', 0),
(43, 'Sony Xperia C C2305', '20140520163825tn4.jpg', 20, 0, 13000000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(44, 'Sony Xperia P', '20140520163747tn3.jpg', 20, 1, 9000000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(45, 'Sony Xperia Z', '20140520163923tn5.jpg', 20, 0, 5000000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(46, 'Sony Xperia Z2', '20140520164000tn6.jpg', 20, 0, 6000000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(47, 'LG Optimus Z1', '20140520015320lg1.jpg', 20, 0, 15000000, 0, 0, '', 6, 0, 0, 0, '2014-05-20', 0),
(48, 'LG 5080', '20140520020016lg2.jpg', 20, 3, 5000000, 0, 0, '', 6, 0, 0, 0, '2014-05-20', 0),
(50, 'Connspeed CP3 – Pin sạc dự phòng', '201405201607091.jpg', 20, 0, 439000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(51, 'Genius ECO-u500 - Pin sạc dự phòng', '201405201608571 (2).jpg', 20, 3, 500000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(52, 'Nokia BL-4D – Pin điện thoại', '201405201611102.jpg', 20, 1, 800000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(53, 'Nokia BL-4J – Pin điện thoại', '201405201611393.jpg', 20, 0, 400000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(54, 'Reloader 10000 - Pin dự phòng  10000mAh', '201405201616184.jpg', 20, 0, 600000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(55, 'Samsung EB-L1G6LLUCSTD', '201405201616445.jpg', 20, 0, 300000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(56, 'Samsung Pouch (EFC-1J9LCEGSTD)', '20140520161826Samsung Pouch (EFC-1J9LCEGSTD) - Samsung Galaxy Note II.jpg', 20, 0, 636000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(57, 'YSD- PW 037 - Pin sạc dự phòng ', '201405201622098.jpg', 20, 0, 1000000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(58, 'YSD- PW 006 - Pin sạc dự phòng', '201405201621247.jpg', 20, 0, 300000, 0, 0, '', 7, 0, 0, 0, '2014-05-20', 0),
(59, 'iLuv Overlay - iPhone 5', '20140520162347iLuv Overlay (iCA7H305BLK) - iPhone 5.jpg', 20, 0, 200000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(60, 'Pisen iPhone 4 IP05 – iPhone 44S', '2014052016280913.jpg', 20, 1, 300000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(61, 'Pisen iPhone 4 IP07 – iPhone 4 4S', '2014052016275712.jpg', 20, 1, 159000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(62, 'Pisen iPhone 4 IP09 – iPhone 4 / 4S', '2014052016274111.jpg', 20, 0, 500000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(63, 'Pisen Samsung Galaxy Note I9220', '20140520162541Pisen Samsung Galaxy Note I9220.jpg', 20, 0, 236000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(64, 'Samsung EF – Galaxy S4 Vàng', '2014052016261610.jpg', 20, 0, 650000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(65, 'Samsung Pouch - Samsung Galaxy Note II', '2014052016293614.jpg', 20, 0, 363000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(66, 'Zenus Galaxy Note 3 G-Note Diary', '2014052016301915.jpg', 20, 0, 160000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(67, 'Zenus Sony Xperia Z1 Minimal Diary', '2014052016310616.jpg', 20, 0, 265000, 0, 0, '', 8, 0, 0, 0, '2014-05-20', 0),
(68, 'Bose SIE2i - Tai nghe (Cam)', '20140520163552tn1.jpg', 20, 0, 230000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(69, 'Jabra Easygo - Tai nghe bluetooth (Trắng)', '20140520163623tn2.jpg', 20, 0, 500000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(70, 'Skullcandy S2DUDZ-012 - (Xanh dương)', '20140520163747tn3.jpg', 20, 1, 360000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(71, 'Skullcandy S2IKDZ-003 - Đen', '20140520163825tn4.jpg', 20, 0, 180000, 0, 0, '', 5, 0, 0, 0, '2014-05-20', 0),
(72, 'Sony MDR EX450 - Trắng', '20140520163923tn5.jpg', 20, 0, 436000, 0, 20, '', 5, 0, 0, 0, '2014-05-20', 0),
(73, 'Sony MH-EX300AP – kèm mic (Đen)', '20140520164000tn6.jpg', 20, 0, 560000, 0, 0, '', 6, 0, 0, 0, '2014-05-20', 0),
(74, 'Kingston MicroSDHC Class4', '20140520164239Kingston MicroSDHC Class4.jpg', 20, 0, 100000, 0, 0, '', 10, 0, 0, 0, '2014-05-20', 0),
(75, 'Sandisk MicroSD Card', '20140520164311Sandisk MicroSD Card.jpg', 20, 0, 230000, 0, 0, '', 10, 0, 0, 0, '2014-05-20', 0),
(76, 'silicon-power 4G', '20140520164343silicon-power-1239-150021-1-zoom.jpg', 20, 0, 620000, 0, 0, '', 10, 0, 0, 0, '2014-05-20', 0),
(77, 'Thẻ nhớ Transcend Micro SDHC4 - 4GB', '20140520164417t1.jpg', 20, 0, 280000, 0, 30, '2 Pin chất lượng cao', 10, 0, 0, 0, '2014-05-20', 0),
(78, 'Toshiba Micro SDHC Class 10', '20140520164437Toshiba Micro SDHC Class 10.jpg', 20, 0, 400000, 0, 0, 'Ốp lưng', 10, 0, 0, 0, '2014-05-20', 0),
(82, 'Sony Xperia C', '20140526013154Sony Xperia C C2305.jpg', 20, 0, 6000000, 0, 50, 'Tai nghe chinh hang', 3, 0, 0, 0, '2014-05-26', 0),
(83, 'Sam Sung J7 Plus', '20180503060003samsung-galaxy-j7-plus-sm-c710fds-cty-den-didongviet.jpg', 20, 0, 7299000, 0, 10, 'Thẻ Nhó', 3, 0, 0, 0, '2018-05-03', 0),
(84, 'Nokia J7 Plus', '20180503060909nokia-7-plus-5-400x460.png', 10, 0, 6999000, 0, 0, 'Tai Nghe', 11, 0, 0, 0, '2018-05-03', 0),
(85, 'IPhone X', '20180503061732iphonex.jpeg', 5, 0, 28999000, 0, 0, 'Tai Nghe, Sạc, Ốp Lung', 15, 0, 0, 0, '2018-05-03', 0),
(101, 'Chuột gaming Fuhlen L102 (Đen)', 'chuot1.jpg', 50, 15, 129, 0, 0, 'Giảm 5% tối đa 200k khi thanh toán trực tuyến qua VNPAY-QR với mã CH200', 2, 0, 0, 0, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `idth` int(10) NOT NULL,
  `tenth` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`idth`, `tenth`) VALUES
(1, 'Dell'),
(2, 'HP'),
(3, 'ASUS'),
(4, 'ACER'),
(5, 'Lenovo'),
(6, 'APPLE'),
(7, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idtt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtt`, `tieude`, `ndngan`, `noidung`, `hinhanh`, `ngaydangtin`, `tacgia`, `trangthai`) VALUES
(1, 'Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng', 'Chỉ với 10 triệu đồng, chúng ta đã có thể sở hữu chiếc điện thoại chụp hình tốt nhất hiện nay - Lumia 1020.', '<p><a class=\"auto-link\" href=\"http://www.techz.vn/topic/nokia-lumia-1020-146.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Lumia 1020</a>&nbsp;- chiếc si&ecirc;u di động chụp h&igrave;nh đẹp nhất tr&ecirc;n thế giới thời điểm hiện tại - đang được b&aacute;n với gi&aacute; 10 triệu đồng tại một số đại l&yacute; lớn. C&aacute;c si&ecirc;u thị điện m&aacute;y,&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;cũng đang b&aacute;n Lumia 1020 với gi&aacute; thấp hơn 12 triệu đồng, như Nguyễn Kim (11 triệu), Viễn Th&ocirc;ng A v&agrave; Viettel Store (10 triệu đồng).</p>\r\n\r\n<p>Đ&acirc;y tiếp tục l&agrave; những động th&aacute;i giảm gi&aacute; kh&ocirc;ng ch&iacute;nh thức từ ph&iacute;a đại l&yacute; nhằm th&uacute;c đẩy doanh số sản phẩm. Cho đến thời điểm hiện tại, gi&aacute; b&aacute;n của Nokia 1020 vẫn được ni&ecirc;m yết ở mức 14,99 triệu đồng tr&ecirc;n website ch&iacute;nh thức của Nokia Việt Nam.</p>\r\n\r\n<p><img alt=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400559926-lumia-1020-giam-gia.JPG\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" /></p>\r\n\r\n<p>Trao đổi với một chủ&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/dia-chi-cong-nghe.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">cửa h&agrave;ng</a>&nbsp;tại H&agrave; Nội, gi&aacute; b&aacute;n của Lumia 1020 đ&atilde; được điều chỉnh giảm khoảng một tuần nay. Doanh số của sản phẩm nhờ đ&oacute; c&oacute; tăng nhưng kh&ocirc;ng đ&aacute;ng kể, trong khi lượng h&agrave;ng c&ograve;n trong kho cũng kh&ocirc;ng qu&aacute; nhiều.</p>\r\n\r\n<p>Theo nhận định chung của giới kinh doanh, Lumia 1020 l&agrave; một sản phẩm tốt nhưng kh&ocirc;ng hot. &ldquo;Lumia 1020 c&oacute; thiết kế đẹp, cấu h&igrave;nh phần cứng kh&ocirc;ng qu&aacute; mạnh nhưng vẫn cho trải nghiệm mượt m&agrave;, trong khi camera của m&aacute;y xứng đ&aacute;ng l&agrave; vua tr&ecirc;n thị trường. Tuy nhi&ecirc;n, ngoại trừ giai đoạn mới về Việt Nam, sản phẩm n&agrave;y &iacute;t khi nằm trong top b&aacute;n chạy, ngay cả khi c&oacute; gi&aacute; b&aacute;n tốt&rdquo;, một chủ đại l&yacute; nhận định.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, c&aacute;c sản phẩm cao cấp của Nokia d&ugrave; tốt vẫn chưa tạo được ưu thế so với&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/dien-thoai-iphone-126.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">iPhone</a>&nbsp;v&agrave; d&ograve;ng Galaxy S của Samsung. Những sản phẩm b&aacute;n chạy của Nokia chủ yếu nằm ở ph&acirc;n kh&uacute;c tầm thấp như&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/Lumia-520\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Lumia 520</a>, 525 hay 620.</p>\r\n\r\n<p><img alt=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400559927-lumia-1020-giam-gia-2.JPG\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng\" /></p>\r\n\r\n<p>&ldquo;Kh&aacute;ch mua sản phẩm tầm thấp c&oacute; thể h&agrave;i l&ograve;ng với trải nghiệm tr&ecirc;n&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/Windows-Phone\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Windows Phone</a>&nbsp;8, bởi m&aacute;y chạy mượt, c&oacute; đủ c&aacute;c&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/ung-dung\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">ứng dụng</a>&nbsp;cơ bản, nhưng với c&aacute;c sản phẩm cao cấp như Lumia 1020, họ cần nhiều hơn thế, đặc biệt l&agrave; yếu tố t&ugrave;y biến như giao diện, c&aacute;c phần mềm lạ v&agrave; hay. Đ&acirc;y cũng l&agrave; một phần nguy&ecirc;n nh&acirc;n dẫn đến việc, một số người ch&ecirc; Lumia 1020 hay 1520 nh&agrave;m ch&aacute;n&rdquo;, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng tại một si&ecirc;u thị cho hay.</p>\r\n\r\n<p>Hiện, chưa c&oacute; một smartphone n&agrave;o được trang bị tối t&acirc;n hơn Lumia 1020 tr&ecirc;n lĩnh vực camera. M&aacute;y d&ugrave;ng camera 41 megapixel, k&iacute;ch thước cảm biến 1/1,5 inch, ống k&iacute;nh quang học 6 th&agrave;nh phần Carl Zeiss khẩu độ f/2.2 v&agrave; đ&egrave;n flash Xenon, kết hợp với phần mềm chụp ảnh Nokia Camera, cho ph&eacute;p t&ugrave;y chỉnh dễ d&agrave;ng những th&ocirc;ng số như c&acirc;n bằng trắng, khả năng phơi s&aacute;ng, ISO.</p>\r\n', '20140520083240image-1400560084-lumia-1020-giam-gia-3.JPG', '2014-05-20', 'Zing', 0),
(2, 'Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098', 'Chiếc điện thoại có tên G9098 của Samsung dành riêng cho nhà mạng China Mobile', '<p>Điện thoại nắp trượt (slide) hay gập kiểu vỏ s&ograve; (flip) từng l&agrave; những sản phẩm thời thượng của thập ni&ecirc;n trước. Nhưng khi m&agrave; kỷ nguy&ecirc;n của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;m&agrave;n h&igrave;nh cảm ứng lớn l&ecirc;n ng&ocirc;i, c&aacute;c nh&agrave; sản xuất cũng kh&ocirc;ng c&ograve;n tung ra những mẫu điện thoại c&oacute; thiết kế độc đ&acirc;&oacute; n&agrave;y nữa.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng được ưa chuộng nhiều nhưng kh&ocirc;ng phải n&oacute; kh&ocirc;ng c&ograve;n được y&ecirc;u th&iacute;ch v&agrave; điện thoại gập cũng c&oacute; những ưu điểm ri&ecirc;ng. Samsung được cho l&agrave; đang quay trở lại sản xuất một chiếc điện thoại nắp gập d&agrave;nh ri&ecirc;ng cho nh&agrave; mạng lớn nhất thế giới China Mobile. Sản phẩm c&oacute; t&ecirc;n m&atilde;n G9098, c&oacute; thiết kế mặt trược vu&ocirc;ng vắn vốn đ&atilde; kh&ocirc;ng xuất hiện tr&ecirc;n c&aacute;c sản phẩm của Samsung từ sau chiếc Galaxy SII, mặt sau bằng nhựa giả da như tr&ecirc;n chiếc Note III.</p>\r\n\r\n<p><img alt=\"Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400556669-Samsung-G9098.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098\" /></p>\r\n\r\n<p>Điểm độc đ&aacute;o của chiếc điện thoại n&agrave;y ở chỗ, n&oacute; c&oacute; 2 m&agrave;n h&igrave;nh 3,67 inch b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i, đều l&agrave; Super AMOLED độ ph&acirc;n giải 480 x 800 pixel. M&aacute;y được trang bị vi xử l&yacute; l&otilde;i tứ 2,3GHz (c&oacute; thể l&agrave; Snapdragon 800), RAM 2GB, camera ch&iacute;nh 13MP, phụ 2MP, c&oacute; khe cắm thẻ nhớ v&agrave; đi k&egrave;m vi&ecirc;n pin 1900mAh.</p>\r\n\r\n<p>Với cấu h&igrave;nh tr&ecirc;n th&igrave; Samsung G9098 kh&ocirc;ng phải l&agrave; một sản phẩm b&igrave;nh d&acirc;n, v&agrave; chắc chắn l&agrave; cao cấp nhất trong c&aacute;c d&ograve;ng điện thoại nắp gập hiện nay. M&aacute;y sẽ chỉ được b&aacute;n tại thị trường Trung Quốc v&agrave; gi&aacute; cả vẫn chưa được tiết lộ.</p>\r\n', '20140520083543image-1400556662-Samsung-G9098-2.jpg', '2014-05-20', 'Techz', 0),
(3, 'HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng', 'Khả năng rất cao, chúng ta sẽ có 2 mẫu smartphone siêu cao cấp ‘Prime’ đến từ 2 nhà sản xuất khác nhau...', '<p>Sau những th&ocirc;ng tin v&agrave; h&igrave;nh ảnh kh&aacute; chi tiết về&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/samsung-galaxy-s5-162.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Samsung Galaxy S5</a>&nbsp;Prime bằng vỏ kim loại. Trang tin chuy&ecirc;n r&ograve; rỉ @evleaks lại tiếp tục tiết lộ mẫu flagship tiếp theo của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/htc-65.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">HTC</a>, thật th&uacute; vị l&agrave; m&aacute;y cũng c&oacute; t&ecirc;n m&atilde; &lsquo;Prime&rsquo;.</p>\r\n\r\n<p><img alt=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400543309-HTC-One-M8-Prime-features-01.png\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" /></p>\r\n\r\n<p>Những th&ocirc;ng tin n&agrave;y được đăng tải kh&aacute; cụ thể tr&ecirc;n trang tweet của @evleaks, đặc biệt chất liệu h&igrave;nh th&agrave;nh ch&iacute;nh&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/htc-m8-213.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">HTC M8</a>&nbsp;Prime sẽ được kết tinh từ &ldquo;nh&ocirc;m v&agrave; silicon lỏng&rdquo;. Kh&ocirc;ng những thế M8 Prime c&ograve;n c&oacute; thể chống thấm nước, m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải l&ecirc;n tới Quad HD (1440<a class=\"auto-link\" href=\"http://www.techz.vn/topic/moto-x2-214.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">x2</a>560 pixels), vi xử l&yacute; 4 nh&acirc;n Snapdragon 805 tốc độ 2.5GHz, 3GB RAM, hỗ trợ mạng kết nối &lsquo;si&ecirc;u tốc&rsquo; LTE-A Cat. 6.</p>\r\n\r\n<p><img alt=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400543391-HTC-One-M8-3-700x393.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng\" /></p>\r\n\r\n<p>Thời điểm Qualcomm tr&igrave;nh l&agrave;ng loại chipset Snapdragon 805 c&oacute; thể phải chờ đến sự kiện&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/su-kien-cong-nghe/15/mwc-2014-mobile-world-congress-2014.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">MWC 2014</a>diễn ra v&agrave;o th&aacute;ng 2, v&igrave; vậy vẫn c&ograve;n kh&aacute; l&acirc;u để ch&uacute;ng ta được chi&ecirc;m ngưỡng dung nhan ch&iacute;nh thức từ M8 Prime. Ngo&agrave;i ra, mạng kết nối LTE-A Cat. 6. c&oacute; khả năng download l&ecirc;n đến 300Mbps, chắc hẳn đ&acirc;y l&agrave; thiết bị đầu ti&ecirc;n của HTC đạt đến &#39;cảnh giới&#39; n&agrave;y.</p>\r\n\r\n<p>Mặc d&ugrave; trang bị nhiều&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">c&ocirc;ng nghệ</a>&nbsp;v&agrave; cải tiến vượt trội như vậy, nhưng v&oacute;c d&aacute;ng của One M8 Prime hứa hẹn sẽ kh&ocirc;ng mấy đổi kh&aacute;c so với mẫu M8 hiện tại (v&agrave;&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/tag/HTC-One-mini\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">One Mini</a>&nbsp;2).</p>\r\n', '20140520083628image-1400543386-HTC-One-M8-Harman-Kardon-Edition-rear.jpg', '2014-05-20', 'Techz', 0),
(4, 'Đánh giá camera 5 Mpx không đèn LED của Lumia 630', 'Nằm trong phân khúc thấp của thị trường smartphone, Lumia 630 chỉ được trang bị một camera 5 Mpx, không có cả đèn LED hỗ trợ chụp ban đêm. Tuy nhiên, Lumia 630 vẫn có thể chụp được những tấm ảnh có chất lượng khá tốt, độ nét sâu...', '<p>Nằm trong ph&acirc;n kh&uacute;c thấp của thị trường&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">smartphone</a>,&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/lumia-630-239.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Lumia 630</a>&nbsp;chỉ được trang bị một camera 5 Mpx, kh&ocirc;ng c&oacute; cả đ&egrave;n LED hỗ trợ chụp ban đ&ecirc;m. Tuy nhi&ecirc;n, Lumia 630 vẫn c&oacute; thể chụp được những tấm ảnh c&oacute; chất lượng kh&aacute; tốt, độ n&eacute;t s&acirc;u.</p>\r\n\r\n<p><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_1.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" />&nbsp;</p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời, m&agrave;u sắc kh&aacute; trung thực</em></p>\r\n\r\n<p><em><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509767-Nokia_Lumia_630_camera_5.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></em></p>\r\n\r\n<p><em>Ảnh chụp ở chế độ cận cảnh (macro)</em><br />\r\n<em>v&ugrave;ng ở giữa thể hiện chi tiết kh&aacute; tốt (chữ &quot;eclipse&quot;), nhưng c&agrave;ng gần m&eacute;p tấm ảnh th&igrave; c&agrave;ng soft</em></p>\r\n\r\n<p>Ở chế độ chụp chuy&ecirc;n nghiệp, người d&ugrave;ng c&oacute; thể tự điều chỉnh c&aacute;c th&ocirc;ng số theo &yacute; m&igrave;nh, c&aacute;c th&ocirc;ng số kh&ocirc;ng được điều chỉnh c&ograve;n lại sẽ tự động nhận biết ở mức độ ph&ugrave; hợp, để cho ra những tấm ảnh chụp tốt nhất. Những th&ocirc;ng số c&oacute; thể điều chỉnh bao gồm c&acirc;n bằng s&aacute;ng, ti&ecirc;u cự, ISO, tốc độ chụp, độ b&ugrave; s&aacute;ng.</p>\r\n\r\n<p>&nbsp;<img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_7.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời ở chế độ tự động, m&agrave;u sắc hơi n&oacute;ng</em></p>\r\n\r\n<p><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_8.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời ở chế độ tự điều chỉnh c&acirc;n bằng s&aacute;ng, b&ugrave; s&aacute;ng, tốc độ chụp</em></p>\r\n\r\n<p>Với hỗ trợ ISO 1600 v&agrave; thời gian phơi s&aacute;ng 1 gi&acirc;y, Lumia 630 vẫn c&oacute; thể chụp được những tấm ảnh phơi s&aacute;ng dưới &aacute;nh đ&egrave;n trong buổi tối kh&aacute; đẹp.</p>\r\n\r\n<p><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_2.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></p>\r\n\r\n<p><em>Ảnh chụp bằng chế độ chụp đ&ecirc;m (night-scene)</em></p>\r\n\r\n<p><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_3.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></p>\r\n\r\n<p><em>Ảnh chụp phơi s&aacute;ng với tốc độ 1/1s</em></p>\r\n\r\n<p><em><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509767-Nokia_Lumia_630_camera_4.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></em></p>\r\n\r\n<p>&nbsp;<em>Ảnh chụp buổi tối vẫn cho chi tiết kh&aacute; r&otilde; với &aacute;nh đ&egrave;n huỳnh quang trắng</em></p>\r\n\r\n<p><em><img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509769-Nokia_Lumia_630_camera_9.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></em></p>\r\n\r\n<p>&nbsp;<em>Ảnh chụp trực tiếp mặt trăng, ISO c&agrave;ng thấp th&igrave; hiện tượng flare c&agrave;ng r&otilde;,<br />\r\nnh&igrave;n giống như 1 vi&ecirc;n đạn lửa từ mặt trăng bắn xuống</em></p>\r\n\r\n<p>&nbsp;Tuy nhi&ecirc;n, nếu chụp trong một kh&ocirc;ng gian nhỏ như trong một qu&aacute;n caf&eacute; d&ugrave;ng đ&egrave;n m&agrave;u th&igrave; Lumia 630 sẽ cho ra ảnh bị nhiễu kh&aacute; r&otilde;, đồng thời bị ng&atilde; t&iacute;m ở phần dưới, kể cả khi đặt tốc độ chụp chậm nhất.</p>\r\n\r\n<p>&nbsp;<img alt=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_6.jpg\" style=\"background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Đánh giá camera 5 Mpx không đèn LED của Lumia 630\" /></p>\r\n\r\n<p><em>Ảnh bị nhiễu v&agrave; ng&atilde; sang m&agrave;u t&iacute;m</em></p>\r\n\r\n<p>D&ugrave; sao đi nữa, trong tầm chi ph&iacute; của những chiếc smartphone tương đương th&igrave; chất lượng ảnh c&oacute; được từ Lumia 630 được&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/danh-gia-san-pham\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">đ&aacute;nh gi&aacute;</a>&nbsp;l&agrave; kh&aacute; tốt. Nhu cầu chụp ảnh trong m&ocirc;i trường thiếu s&aacute;ng v&agrave; buổi tối cũng kh&ocirc;ng nhiều, người d&ugrave;ng kh&ocirc;ng cần c&acirc;n nhắc qu&aacute; kỹ đến yếu tố n&agrave;y.</p>\r\n', '20140520083722image-1400556298-camera-nokia-lumia-630.jpg', '2014-05-20', '', 0),
(5, 'Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán', 'Chỉ còn khoảng 1 tuần nữa, ‘bom tấn’ LG G3 sẽ chính thức đổ bộ...', '<p>V&agrave;o thời điểm n&agrave;y, những th&ocirc;ng tin về&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/lg-g3-216.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">LG G3</a>&nbsp;đ&atilde; lộ kh&aacute; chi tiết, từ h&igrave;nh ảnh cho đến th&ocirc;ng số cấu h&igrave;nh, v&agrave; cho đến h&ocirc;m nay l&agrave; mức gi&aacute;.</p>\r\n\r\n<p><img alt=\"Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400541863-image-1400472203-lg-g3-horz.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán\" /></p>\r\n\r\n<p><em>LG G3 phi&ecirc;n bản v&agrave;ng v&agrave; trắng c&oacute; mức gi&aacute; dao động từ 17~20 triệu đồng</em></p>\r\n\r\n<p>Một&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/dia-chi-cong-nghe.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">cửa h&agrave;ng</a>&nbsp;b&aacute;n lẻ c&oacute; t&ecirc;n l&agrave; Kasuplan tại Phần Lan đ&atilde; tiết lộ mức gi&aacute; &lsquo;bom tấn&rsquo; LG G3, được biết phi&ecirc;n bản m&agrave;u v&agrave;ng c&oacute; dung lượng 16GB l&agrave; 613 Euros (tương đương 17,8 triệu đồng ). Phi&ecirc;n bản 32GB bản m&agrave;u trắng c&oacute; gi&aacute; cao hơn với 659 Euros (~19,2 triệu đồng).</p>\r\n\r\n<p>Cũng tại khu vực n&agrave;y, nhưng nh&agrave; b&aacute;n lẻ Multitronic lại đưa ra mức gi&aacute; 678 Euro cho phi&ecirc;n bản G3 16GB m&agrave;u v&agrave;ng, v&agrave; 730 Euro cho bản 32GB m&agrave;u trắng. N&ecirc;n nhớ rằng, mức gi&aacute; n&agrave;y vẫn chưa phải l&agrave; ch&iacute;nh thức, v&agrave; n&oacute; c&oacute; thể thay đổi cho đến ph&uacute;t ch&oacute;t (thời điểm sản phẩm l&ecirc;n kệ), được biết gi&aacute; tr&ecirc;n đ&atilde; bao gồm 22% thuế VAT.</p>\r\n\r\n<p><img alt=\"Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán\" src=\"http://cache.media.techz.vn/upload/2014/05/20/image-1400541938-image-1400085717-LG-G3-press-renders-appear%20(4).jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán\" /></p>\r\n\r\n<p><em>LG G3 sẽ c&oacute; m&agrave;n h&igrave;nh si&ecirc;u n&eacute;t 2K</em></p>\r\n\r\n<p>G3 dự kiến sẽ trang bị m&agrave;n h&igrave;nh 5.5 inch, độ ph&acirc;n giải si&ecirc;u n&eacute;t 1440<a class=\"auto-link\" href=\"http://www.techz.vn/topic/moto-x2-214.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">x2</a>560 pixels (QHD), mật độ diểm ảnh l&ecirc;n đến 534ppi. Chạy vi xử l&yacute; Snapdragon 801 (c&oacute; thể Snapdragon 805), 3GB RAM, 32GB/16GB bộ nhớ trong, c&oacute; hỗ trợ khe cắm thẻ nhớ. Camera ch&iacute;nh 16MP v&agrave; phụ 2.1MP, chạy<a class=\"auto-link\" href=\"http://www.techz.vn/topic/android-22.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Android</a>&nbsp;4.4.2 KitKat.</p>\r\n', '20140520083812image-1400541884-image-.jpg', '2014-05-20', 'Techz', 0),
(6, 'Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm', 'Sự phân cực trên màn hình và trên kính sẽ khiến người dùng không thể nhìn thấy gì từ màn hình của chiếc Xperia Z2...', '<p>Mới đ&acirc;y, một người d&ugrave;ng tr&ecirc;n Xperia Blog đ&atilde; ph&aacute;t hiện ra một chi tiết kh&aacute; bất ngờ, đ&oacute; l&agrave; chiếc&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/sony-xperia-z2-228.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">Sony Xperia Z2</a>&nbsp;gặp vấn đề khi người d&ugrave;ng đeo k&iacute;nh r&acirc;m. Cụ thể, với một số loại k&iacute;nh r&acirc;m m&agrave; người d&ugrave;ng sử dụng, khi m&agrave;n h&igrave;nh ở chế độ xoay ngang, ch&uacute;ng ta sẽ kh&ocirc;ng thể nh&igrave;n thấy g&igrave; tr&ecirc;n m&agrave;n h&igrave;nh, v&igrave; n&oacute; đ&atilde; &hellip; tối đen.</p>\r\n\r\n<p>C&oacute; vẻ như kh&ocirc;ng li&ecirc;n quan lắm, nhưng điều n&agrave;y l&agrave; c&oacute; thực, bạn c&oacute; thể xem video v&agrave; ảnh so s&aacute;nh dưới đ&acirc;y:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điều n&agrave;y chỉ xảy ra với c&aacute;c loại k&iacute;nh m&aacute;t ph&acirc;n cực khi đeo k&iacute;nh ở đ&uacute;ng tư thế, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể giải th&iacute;ch. Tất cả&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;hiện nay đều được trang bị một m&agrave;ng lọc ph&acirc;n cực tr&ecirc;n m&agrave;n h&igrave;nh để đảm bảo g&oacute;c nh&igrave;n tốt khi nh&igrave;n nghi&ecirc;ng v&agrave; c&aacute;c tia s&aacute;ng từ m&agrave;n h&igrave;nh kh&ocirc;ng chiếu trực tiếp đến mắt người, g&acirc;y ch&oacute;i v&agrave; nhức mắt khi sử dụng. K&iacute;nh r&acirc;m cũng vậy, lớp m&agrave;ng ph&acirc;n cực tr&ecirc;n k&iacute;nh d&acirc;m n&agrave;y c&oacute; thể so s&aacute;nh như một chiếc cửa chớp v&ocirc; h&igrave;nh, chỉ cho &aacute;nh s&aacute;ng ph&acirc;n cực theo một hướng n&agrave;o đ&oacute; đi qua.</p>\r\n\r\n<p><img alt=\"Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400486092-Xperia-Z2-kinh-ram-2.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm\" /></p>\r\n\r\n<p>Thật tr&ugrave;ng hợp l&agrave; sự ph&acirc;n cực n&agrave;y v&agrave; ph&acirc;n cực tr&ecirc;n m&agrave;n h&igrave;nh chiếc Xperia Z2 ở chế độ xoay ngang m&agrave;n h&igrave;nh l&agrave; ngược nhau, v&igrave; vậy ch&uacute;ng ta chỉ thấy m&agrave;n h&igrave;nh đen v&igrave; &aacute;nh s&aacute;ng kh&ocirc;ng thể truyền từ m&agrave;n h&igrave;nh điện thoại tới mắt. Điều n&agrave;y &iacute;t nhất sẽ khiến ch&uacute;ng ta gặp kh&oacute; khăn khi muốn chụp h&igrave;nh hoặc lướt web ở ngo&agrave;i trời nắng, khi vừa đeo k&iacute;nh vừa sử dụng. V&igrave; vậy bạn h&atilde;y c&acirc;n nhắc khi mua Z2, hoặc chọn 1 loại k&iacute;nh ph&ugrave; hợp.</p>\r\n', '20140520083934image-1400486083-Xperia-Z2-kinh-ram.jpg', '2014-05-20', 'Techz', 0),
(7, 'LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất', ' Với những người đã từng trót năng lòng với G2, chắc hẳn ai cũng sẽ cảm thấy xốn xang khi chứng kiến sự xuất hiện phiên bản tiếp theo của mẫu điện thoại này...', '<p>Sau m&agrave;n ra mắt của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/lg-g-pro-2-243.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">LG G Pro 2</a>, h&atilde;ng&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/dien-thoai\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">điện thoại</a>&nbsp;đến từ H&agrave;n Quốc LG đang chuẩn bị cho sự xuất hiện của một mẫu điện thoại mới c&oacute; t&ecirc;n gọi&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/lg-g3-216.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">LG G3</a>. Đ&acirc;y l&agrave; sản phẩm cao cấp nhất của nh&agrave; sản xuất n&agrave;y trong năm 2014.&nbsp;</p>\r\n\r\n<p><img alt=\"LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400472203-lg-g3.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất\" /></p>\r\n\r\n<p>D&ugrave; đ&atilde; nhiều lần xuất hiện tr&ecirc;n c&aacute;c phương tiện truyền th&ocirc;ng với những h&igrave;nh ảnh r&ograve; rỉ nhưng phải đến ng&agrave;y h&ocirc;m nay ch&uacute;ng ta mới c&oacute; c&aacute;i nh&igrave;n r&otilde; n&eacute;t nhất về mẫu điện thoại n&agrave;y. V&agrave; người đưa ra c&aacute;c th&ocirc;ng tin n&agrave;y kh&ocirc;ng phải ai kh&aacute;c ngo&agrave;i Evleaks - &ocirc;ng ch&ugrave;m của c&aacute;c&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/C/tin-tuc-cong-nghe\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">tin tức</a>&nbsp;r&ograve; rỉ. Những h&igrave;nh ảnh vừa được Evleaks đăng tải tr&ecirc;n trang Twitter của m&igrave;nh đ&atilde; cho thấy tất cả c&aacute;c g&oacute;c độ kh&aacute;c nhau của LG G3.</p>\r\n\r\n<p><img alt=\"LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất\" src=\"http://cache.media.techz.vn/upload/2014/05/19/image-1400472214-lg-g3-1.jpg\" style=\"background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline\" title=\"LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo đ&oacute; đ&acirc;y sẽ l&agrave; một bản n&acirc;ng cấp của&nbsp;<a class=\"auto-link\" href=\"http://www.techz.vn/topic/lg-g2-148.html\" style=\"border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);\" target=\"_blank\">G2</a>&nbsp;với kh&aacute; nhiều sự thay đổi về ngoại h&igrave;nh. Vẫn l&agrave; một chiếc điện thoại với viền m&agrave;n h&igrave;nh mỏng như trước kia, tuy nhi&ecirc;n LG G3 sẽ c&oacute; c&aacute;c cạnh được thiết kế v&agrave; cắt gọt một c&aacute;ch tỉ mỉ hơn, đồng thời bộ ph&iacute;m nguồn v&agrave; cặp ph&iacute;m tăng giảm &acirc;m lượng ở mặt sau cũng được cải tiến kh&aacute; nhiều về kiểu d&aacute;ng v&agrave; ngoại h&igrave;nh so với trước. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng ta cũng thấy sự xuất hiện của một phi&ecirc;n bản với m&agrave;u v&agrave;ng champagne, m&agrave;u sắc đ&atilde; trở th&agrave;nh xu thế chủ đạo cho năm 2014 n&agrave;y. G3 sẽ được ra mắt ngay cuối th&aacute;ng n&agrave;y trong một sự kiện được tổ chức v&agrave;o ng&agrave;y 27/5. H&atilde;y theo d&otilde;i Techz.vn thường xuy&ecirc;n để nhận được những th&ocirc;ng tin mới nhất v&agrave; cập nhật nhất về sản phẩm.</p>\r\n', '20140520084020image-1400472196-LG-G3-2.jpg', '2014-05-20', 'Techz', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`);

--
-- Indexes for table `chitiet_sp`
--
ALTER TABLE `chitiet_sp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idsp` (`idsp`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhd`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idncc`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`idth`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
