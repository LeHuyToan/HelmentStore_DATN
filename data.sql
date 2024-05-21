CREATE DATABASE  IF NOT EXISTS `datn` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `datn`;

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: datn
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `noi_dung` varchar(10000) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_phanhoi` int DEFAULT NULL,
  `id_san_pham` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd8074xyo14wtlxe0uoqi3492j` (`id_user`),
  KEY `id_phanhoi` (`id_phanhoi`),
  KEY `id_san_pham` (`id_san_pham`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_phanhoi`) REFERENCES `comment` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`),
  CONSTRAINT `FKd8074xyo14wtlxe0uoqi3492j` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_chi`
--

DROP TABLE IF EXISTS `dia_chi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dia_chi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(10000) DEFAULT NULL,
  `id_quan_huyen` int DEFAULT NULL,
  `id_tinh_thanh` int DEFAULT NULL,
  `id_phuong_xa` varchar(255) DEFAULT NULL,
  `loai_dia_chi` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten_quan_huyen` varchar(255) DEFAULT NULL,
  `ten_tinh_thanh` varchar(255) DEFAULT NULL,
  `ten_phuong_xa` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbfv0wiqy3kyntfe72a952m3ym` (`id_user`),
  CONSTRAINT `FKbfv0wiqy3kyntfe72a952m3ym` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_chi`
--

LOCK TABLES `dia_chi` WRITE;
/*!40000 ALTER TABLE `dia_chi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dia_chi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `gio_hang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpvcogldmug8cho628f0m28em0` (`id_user`),
  CONSTRAINT `FKpvcogldmug8cho628f0m28em0` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang`
--

LOCK TABLES `gio_hang` WRITE;
/*!40000 ALTER TABLE `gio_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gio_hang_chi_tiet`
--

DROP TABLE IF EXISTS `gio_hang_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `gio_hang_chi_tiet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `don_gia` decimal(20,0) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_gio_hang` int DEFAULT NULL,
  `id_san_pham_chi_tiet` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkt2s807w7uf9vgc64x6r3cl2n` (`id_gio_hang`),
  KEY `FKjrkuss0lgfn76maw426puheeu` (`id_san_pham_chi_tiet`),
  CONSTRAINT `FKjrkuss0lgfn76maw426puheeu` FOREIGN KEY (`id_san_pham_chi_tiet`) REFERENCES `san_pham_chi_tiet` (`id`),
  CONSTRAINT `FKkt2s807w7uf9vgc64x6r3cl2n` FOREIGN KEY (`id_gio_hang`) REFERENCES `gio_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang_chi_tiet`
--

LOCK TABLES `gio_hang_chi_tiet` WRITE;
/*!40000 ALTER TABLE `gio_hang_chi_tiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `gio_hang_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hoa_don` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hinh_thuc_giao_hang` int DEFAULT NULL,
  `ly_do` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `ngay_nhan` datetime(6) DEFAULT NULL,
  `ngay_ship` datetime(6) DEFAULT NULL,
  `ngay_sua` datetime(6) DEFAULT NULL,
  `ngay_tao` datetime(6) DEFAULT NULL,
  `ngay_thanh_toan` datetime(6) DEFAULT NULL,
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `tien_sau_khi_giam_gia` decimal(20,0) DEFAULT NULL,
  `tien_ship` decimal(20,0) DEFAULT NULL,
  `tong_tien` decimal(20,0) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_dia_chi_sdt` int DEFAULT NULL,
  `id_phuong_thuc_thanh_toan` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_nguoi_tao` int DEFAULT NULL,
  `tien_khach_dua` decimal(20,0) DEFAULT NULL,
  `id_voucher` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3hpv2auavm1xw5cm0m7f0g8eu` (`id_dia_chi_sdt`),
  KEY `FKi74bvrg7meqbrhpwk8ff6o8xi` (`id_phuong_thuc_thanh_toan`),
  KEY `FKm5hgwxf6p05vqdw5ptm19p0lj` (`id_user`),
  KEY `id_voucher` (`id_voucher`),
  CONSTRAINT `FK3hpv2auavm1xw5cm0m7f0g8eu` FOREIGN KEY (`id_dia_chi_sdt`) REFERENCES `dia_chi` (`id`),
  CONSTRAINT `FKi74bvrg7meqbrhpwk8ff6o8xi` FOREIGN KEY (`id_phuong_thuc_thanh_toan`) REFERENCES `phuong_thuc_thanh_toan` (`id`),
  CONSTRAINT `FKm5hgwxf6p05vqdw5ptm19p0lj` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don`
--

LOCK TABLES `hoa_don` WRITE;
/*!40000 ALTER TABLE `hoa_don` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoa_don` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoa_don_chi_tiet`
--

DROP TABLE IF EXISTS `hoa_don_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8*/;
CREATE TABLE `hoa_don_chi_tiet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `don_gia` decimal(20,0) DEFAULT NULL,
  `ly_do` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_hoa_don` int DEFAULT NULL,
  `id_san_pham_chi_tiet` int DEFAULT NULL,
  `chiet_khau` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3igy4tfvmm2b6mypd176k4948` (`id_hoa_don`),
  KEY `FKmm0mt4gwrghnll65uq9b5b4ox` (`id_san_pham_chi_tiet`),
  CONSTRAINT `FK3igy4tfvmm2b6mypd176k4948` FOREIGN KEY (`id_hoa_don`) REFERENCES `hoa_don` (`id`),
  CONSTRAINT `FKmm0mt4gwrghnll65uq9b5b4ox` FOREIGN KEY (`id_san_pham_chi_tiet`) REFERENCES `san_pham_chi_tiet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoa_don_chi_tiet`
--

LOCK TABLES `hoa_don_chi_tiet` WRITE;
/*!40000 ALTER TABLE `hoa_don_chi_tiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoa_don_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8*/;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anh` varchar(10000) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_san_pham` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa4gihn9sp5ngnuwb70tce2nxx` (`id_san_pham`),
  CONSTRAINT `FKa4gihn9sp5ngnuwb70tce2nxx` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` 
VALUES 
(1, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/TLXYEi_MG_3350.jpg', NULL, NULL, NULL, 1, 1),
(2, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/NOYMt4_MG_3352.jpg', NULL, NULL, NULL, 1, 1),
(3, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/gqyBwx_MG_3348.jpg', NULL, NULL, NULL, 1, 1),
(4, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/klIZba_MG_3349.jpg', NULL, NULL, NULL, 1, 1),
(5, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/3IqhWcroyal-m139-v7-1.jpg', NULL, NULL, NULL, 1, 2),
(6, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hD1uIXroyal-m139-v7-2.jpg', NULL, NULL, NULL, 1, 2),
(7, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/u50Ujeroyal-m139-v7-3.jpg', NULL, NULL, NULL, 1, 2),
(8, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/RsOSbzroyal-m139-v7-4.jpg', NULL, NULL, NULL, 1, 2),
(9, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/b5w1kq_MG_8633.jpg', NULL, NULL, NULL, 1, 3),
(10, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/y5cqFR_MG_8637.jpg', NULL, NULL, NULL, 1, 3),
(11, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Nj2XlL_MG_8639.jpg', NULL, NULL, NULL, 1, 3),
(12, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/nb4pQX_MG_8638.jpg', NULL, NULL, NULL, 1, 3),
(13, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/OSknJrIMG_5435.jpg', NULL, NULL, NULL, 1, 4),
(14, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/gJnFjBIMG_5433.jpg', NULL, NULL, NULL, 1, 4),
(15, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/ikwHUAIMG_5436.jpg', NULL, NULL, NULL, 1, 4),
(16, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/cDpyPNIMG_5437.jpg', NULL, NULL, NULL, 1, 4),
(17, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QvSImNM787DenMo.gif', NULL, NULL, NULL, 1, 10),
(18, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/JCwparM787DenMo3.gif', NULL, NULL, NULL, 1, 10),
(19, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/gscLRJM787DenMo4.gif', NULL, NULL, NULL, 1, 10),
(20, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg', NULL, NULL, NULL, 1, 20),
(21, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg', NULL, NULL, NULL, 1, 21),
(22, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/LlRcN9M266DenMo1.jpg', NULL, NULL, NULL, 1, 22),
(23, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/6kQd5zM266DenMo2.jpg', NULL, NULL, NULL, 1, 22),
(24, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/e2PchgM266DenMo4.jpg', NULL, NULL, NULL, 1, 22),
(25, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/O3RHVYM266DenMo3.jpg', NULL, NULL, NULL, 1, 22),
(26, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/zWlLc9_MG_1276.jpg', NULL, NULL, NULL, 1, 23),
(27, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/zWlLc9_MG_1276.jpg', NULL, NULL, NULL, 1, 23),
(28, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Zngopf_MG_1227.jpg', NULL, NULL, NULL, 1, 23),
(29, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/L3fiPw_MG_1221-bac.jpg', NULL, NULL, NULL, 1, 23),
(30, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/iWjG6PIMG_4967.jpg', NULL, NULL, NULL, 1, 17),
(31, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hkrUL2IMG_4971.jpg', NULL, NULL, NULL, 1, 17),
(32, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/F2UTAOIMG_4968.jpg', NULL, NULL, NULL, 1, 17),
(33, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/LR0EtQIMG_0481.jpg', NULL, NULL, NULL, 1, 17),
(34, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7mUNiFIMG_9767.jpg', NULL, NULL, NULL, 1, 31),
(35, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/8qjbgWIMG_9771.jpg', NULL, NULL, NULL, 1, 31),
(36, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Js0CamIMG_9774.jpg', NULL, NULL, NULL, NULL, 31),
(37, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/VW1cmRIMG_9775.jpg', NULL, NULL, NULL, NULL, 31),
(38, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/LkNxVuIMG_9735.jpg', NULL, NULL, NULL, NULL, 32),
(39, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/zFQE51IMG_9739.jpg', NULL, NULL, NULL, NULL, 32),
(40, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/uv5pERIMG_9742.jpg', NULL, NULL, NULL, NULL, 32),
(41, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/P7f1ZJIMG_9745.jpg', NULL, NULL, NULL, NULL, 32),
(42, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Oz57txIMG_9717.jpg', NULL, NULL, NULL, NULL, 35),
(43, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/uEIVaiIMG_9720.jpg', NULL, NULL, NULL, NULL, 35),
(44, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/MXqfSCIMG_9721.jpg', NULL, NULL, NULL, NULL, 35),
(45, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/pFNwdYIMG_9722.jpg', NULL, NULL, NULL, NULL, 35),
(46, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/bs6gDeIMG_4053-copy.jpg', NULL, NULL, NULL, NULL, 37),
(47, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/V4kCr3IMG_0634.jpg', NULL, NULL, NULL, NULL, 34),
(48, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/senguYIMG_0636.jpg', NULL, NULL, NULL, NULL, 34),
(49, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/MNDjHxIMG_0639.jpg', NULL, NULL, NULL, NULL, 34),
(50, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/3RnfeIIMG_0640.jpg', NULL, NULL, NULL, NULL, 34),
(51, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/eLpt69royal-kl-08.jpg', NULL, NULL, NULL, NULL, 49),
(52, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/edncUZroyal-kl-07.jpg', NULL, NULL, NULL, NULL, 49),
(53, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/MjADSPIMG_3224.jpg', NULL, NULL, NULL, NULL, 49),
(54, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/5GrbgJIMG_8994.jpg', NULL, NULL, NULL, NULL, 48),
(55, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hKN9sZIMG_8997.jpg', NULL, NULL, NULL, NULL, 48),
(56, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/dNR7H2IMG_8998.jpg', NULL, NULL, NULL, NULL, 48),
(57, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/NvXqicIMG_1423.jpg', NULL, NULL, NULL, NULL, 46),
(58, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/5NsT2YIMG_1425.jpg', NULL, NULL, NULL, NULL, 46),
(59, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/sDHolTIMG_1428.jpg', NULL, NULL, NULL, NULL, 46),
(60, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/n6M957MD-07-(5).jpg', NULL, NULL, NULL, NULL, 45),
(61, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/6XWoZ9IMG_8992-copy.jpg', NULL, NULL, NULL, NULL, 43),
(62, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/6QMwPiVn-09.jpg', NULL, NULL, NULL, NULL, 42),
(63, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/kEP3OBIMG_6413.jpg', NULL, NULL, NULL, NULL, 40),
(64, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/UgxaR0_MG_8621.jpg', NULL, NULL, NULL, NULL, 30),
(65, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hDS5IjM179-V1-4.jpg', NULL, NULL, NULL, NULL, 29),
(66, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/OA5B2P_MG_1524.jpg', NULL, NULL, NULL, NULL, 28),
(67, 'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2e3Vnam08-vang.jpg', NULL, NULL, NULL, NULL, 27);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyen_mai`
--

DROP TABLE IF EXISTS `khuyen_mai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8*/;
CREATE TABLE `khuyen_mai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dieu_kien` decimal(20,0) DEFAULT NULL,
  `gia_tri_giam` int DEFAULT NULL,
  `giam_toi_da` decimal(20,0) DEFAULT NULL,
  `kieu_giam_gia` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `ngay_sua` datetime(6) DEFAULT NULL,
  `ngay_tao` datetime(6) DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `thoi_gian_bat_dau` datetime(6) DEFAULT NULL,
  `thoi_gian_ket_thuc` datetime(6) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyen_mai`
--

LOCK TABLES `khuyen_mai` WRITE;
/*!40000 ALTER TABLE `khuyen_mai` DISABLE KEYS */;
INSERT INTO `khuyen_mai` VALUES 
(1, NULL, 5, NULL, NULL, 'KM1', 'giảm 5% giá tiền của 1 sản phẩm với tất cả mặt hàng', '2023-11-23 00:00:00.288154', '2023-10-24 00:00:00.000000', 100, 'giảm 5%', '2023-11-15 00:00:00.000000', '2024-11-23 00:00:00.000000', 0),
(2, NULL, 15, NULL, NULL, 'KM2', 'giảm 15% giá tiền của 1 sản phẩm với tất cả mặt hàng', '2023-11-23 00:00:00.388156', '2023-09-24 00:00:00.000000', 80, 'giảm 15%', '2023-10-15 00:00:00.000000', '2024-11-23 00:00:00.000000', 0),
(3, NULL, 20, NULL, NULL, 'KM3', 'giảm 20% giá tiền của 1 sản phẩm với tất cả mặt hàng', '2023-11-20 00:00:00.198751', '2023-06-24 00:00:00.000000', 60, 'giảm 20%', '2023-07-15 00:00:00.000000', '2024-07-23 00:00:00.000000', 0),
(4, NULL, 25, NULL, NULL, 'KM4', 'giảm 25% giá tiền của 1 sản phẩm với tất cả mặt hàng', '2023-09-10 00:00:00.000000', '2023-08-24 00:00:00.000000', 400, 'giảm 25%', '2023-09-15 00:00:00.000000', '2024-09-23 00:00:00.000000', 0);
/*!40000 ALTER TABLE `khuyen_mai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8*/;
CREATE TABLE `loai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'L1','2023-09-10','2023-09-05','3/4 đầu',1),(2,'L2','2023-09-15','2023-09-10','Fullface',1),(3,'L3','2023-09-23','2023-09-19','1/2 đầu',1),(4,'L4','2023-09-24','2023-09-20','Xe đạp',1),(5,'L5','2023-08-10','2023-07-25','Trẻ em',1),(6,'L6','2023-07-19','2023-07-15','Lật cằm',1);
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mau_sac`
--

DROP TABLE IF EXISTS `mau_sac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mau_sac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mau_sac`
--

LOCK TABLES `mau_sac` WRITE;
/*!40000 ALTER TABLE `mau_sac` DISABLE KEYS */;
INSERT INTO `mau_sac` VALUES (1,'MS1',NULL,'2023-05-05','2023-04-13','Vàng',1),(2,'MS2',NULL,'2023-05-05','2023-04-13','Đen',1),(3,'MS3',NULL,'2023-05-05','2023-04-13','Trắng',1),(4,'MS4',NULL,'2023-05-05','2023-04-13','Xanh',1),(5,'MS5',NULL,'2023-05-05','2023-04-13','Đỏ',1),(6,'MS6',NULL,'2023-05-05','2023-04-13','Hồng',1),(7,'MS7',NULL,'2023-05-05','2023-04-13','Rêu',1),(8,'MS8',NULL,'2023-05-05','2023-04-13','Sữa',1);
/*!40000 ALTER TABLE `mau_sac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phuong_thuc_thanh_toan`
--

DROP TABLE IF EXISTS `phuong_thuc_thanh_toan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `phuong_thuc_thanh_toan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phuong_thuc_thanh_toan`
--

LOCK TABLES `phuong_thuc_thanh_toan` WRITE;
/*!40000 ALTER TABLE `phuong_thuc_thanh_toan` DISABLE KEYS */;
INSERT INTO `phuong_thuc_thanh_toan` VALUES (1,'PTTT1',NULL,'2023-11-17 12:50:00','Tiền mặt',0),(2,'PTTT2',NULL,'2023-11-17 12:50:00','Chuyển khoản',0);
/*!40000 ALTER TABLE `phuong_thuc_thanh_toan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reset_password_token`
--

DROP TABLE IF EXISTS `reset_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `reset_password_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `thoi_gian_tao` datetime(6) DEFAULT NULL,
  `thoi_gian_het_han` datetime(6) DEFAULT NULL,
  `hieu_luc` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reset_password_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reset_password_token`
--

LOCK TABLES `reset_password_token` WRITE;
/*!40000 ALTER TABLE `reset_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `san_pham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anh` varchar(255) DEFAULT NULL,
  `dem_lot` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `quai_deo` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_loai` int DEFAULT NULL,
  `id_thuong_hieu` int DEFAULT NULL,
  `id_vat_lieu` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3ietyty0m29mftr3yaff0v4wb` (`id_loai`),
  KEY `FKng0be3yah8qweo3tnmxm9pnrw` (`id_thuong_hieu`),
  KEY `FKk978ncnc6kbpaj5ugxf5y6ia3` (`id_vat_lieu`),
  CONSTRAINT `FK3ietyty0m29mftr3yaff0v4wb` FOREIGN KEY (`id_loai`) REFERENCES `loai` (`id`),
  CONSTRAINT `FKk978ncnc6kbpaj5ugxf5y6ia3` FOREIGN KEY (`id_vat_lieu`) REFERENCES `vat_lieu` (`id`),
  CONSTRAINT `FKng0be3yah8qweo3tnmxm9pnrw` FOREIGN KEY (`id_thuong_hieu`) REFERENCES `thuong_hieu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham`
--

LOCK TABLES `san_pham` WRITE;
/*!40000 ALTER TABLE `san_pham` DISABLE KEYS */;
INSERT INTO `san_pham` VALUES (1,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/klIZba_MG_3349.jpg','Vải','SP1','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M20D',1,1,9,1),(2,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/b4hEP5SwGTU0royal-m139-v7.jpg','Vải','SP2','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M139 DESIGN',1,1,9,2),(3,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/of3MY8_MG_8636.jpg','Vải','SP3','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M139',1,1,8,3),(4,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/xKHMALIMG_5434.jpg','Vải','SP4','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M268',1,1,7,3),(10,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/lANmFe_MG_9655.jpg','Vật liệu mềm','SP10','Bền đẹp, bảo đảm an toàn khi tham gia giao thông','2023/12/17','2023-12-17 11:08:55','Quai đeo đặc biệt','M134C',1,1,1,3),(17,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/9th8nxIMG_4967.jpg','Vải','SP17','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M141K',1,2,8,3),(20,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg','Da','SP20','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Da','M138B',1,2,5,2),(21,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg','Vải','SP21','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M266 DESIGN',1,2,8,2),(22,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/UX95KJsX3lM5IMG_5275.jpg','Vải','SP22','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M266',1,2,9,2),(23,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/jzdsGW_MG_1270.jpg','Vải','SP23','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M136 DESIGN',1,2,6,1),(27,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2e3Vnam08-vang.jpg','Polycarbonate','SP27','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','M08 DESIGN',1,6,1,2),(28,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/OA5B2P_MG_1524.jpg','Vải','SP28','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M08',1,6,1,2),(29,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hDS5IjM179-V1-4.jpg','Polycarbonate','SP29','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','M179 DESIGN',1,6,3,3),(30,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/UgxaR0_MG_8621.jpg','Polycarbonate','SP30','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','M179',1,6,2,2),(31,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/nmlwi7IMG_9768.jpg','Vải','SP31','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M152K',1,3,5,1),(32,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/HQ0S39IMG_9737.jpg','Vải','SP32','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M153K',1,3,6,2),(34,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/iCmEnHIMG_0634b.jpg','Polycarbonate','SP34','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','M152LT',1,3,8,1),(35,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hX6g9FIMG_9718.jpg','Vải','SP35','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M153LT',1,3,7,1),(37,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7MC6kFIMG_4053-copy.jpg','Polycarbonate','SP37','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','M379',1,3,4,3),(40,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/kEP3OBIMG_6413.jpg','Vải','SP40','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','MD-15 DESIGN',1,4,6,3),(42,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/6QMwPiVn-09.jpg','Da','SP42','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Da','MD-16 DESIGN',1,4,2,1),(43,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/YVNGyMIMG_8992-copy.jpg','Polycarbonate','SP43','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','MD-16',1,4,6,1),(45,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/n6M957MD-07-(5).jpg','Da','SP45','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Da','MD-07',1,4,8,1),(46,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/naBX9iIMG_1424.jpg','Polycarbonate','SP46','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Polycarbonate','MD-05',1,4,1,2),(48,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/K9FtBoIMG_8995.jpg','Da','SP48','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Da','M139 KID',1,5,6,3),(49,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/gTzVfEroyal-kl-08.jpg','Vải','SP49','Bền đẹp, bảo đảm an toàn khi tham gia giao thông',NULL,'2023-12-17 11:08:55','Vải','M20KS',1,5,4,1);
/*!40000 ALTER TABLE `san_pham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `san_pham_chi_tiet`
--

DROP TABLE IF EXISTS `san_pham_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `san_pham_chi_tiet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anh` varchar(255) DEFAULT NULL,
  `gia_ban` decimal(20,0) DEFAULT NULL,
  `gia_nhap` decimal(20,0) DEFAULT NULL,
  `gia_sau_giam` decimal(20,0) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `so_luong_ton` int DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `id_khuyen_mai` int DEFAULT NULL,
  `id_mau_sac` int DEFAULT NULL,
  `id_san_pham` int DEFAULT NULL,
  `id_size` int DEFAULT NULL,
  `id_trong_luong` int DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1rjmi0xu7agob46sq32ns1587` (`id_khuyen_mai`),
  KEY `FKdt9xxy835agedr1aa67p8vw0o` (`id_mau_sac`),
  KEY `FKmby561odp360b0sfqx4mmarja` (`id_san_pham`),
  KEY `FK899rggxfp9dtblqirh75pme1` (`id_size`),
  KEY `FKdrjkavdharm2dd7tsh3wywlr1` (`id_trong_luong`),
  CONSTRAINT `FK1rjmi0xu7agob46sq32ns1587` FOREIGN KEY (`id_khuyen_mai`) REFERENCES `khuyen_mai` (`id`),
  CONSTRAINT `FK899rggxfp9dtblqirh75pme1` FOREIGN KEY (`id_size`) REFERENCES `size` (`id`),
  CONSTRAINT `FKdrjkavdharm2dd7tsh3wywlr1` FOREIGN KEY (`id_trong_luong`) REFERENCES `trong_luong` (`id`),
  CONSTRAINT `FKdt9xxy835agedr1aa67p8vw0o` FOREIGN KEY (`id_mau_sac`) REFERENCES `mau_sac` (`id`),
  CONSTRAINT `FKmby561odp360b0sfqx4mmarja` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `san_pham_chi_tiet`
--

LOCK TABLES `san_pham_chi_tiet` WRITE;
/*!40000 ALTER TABLE `san_pham_chi_tiet` DISABLE KEYS */;
INSERT INTO `san_pham_chi_tiet` 
VALUES 
(1,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Zt7RKI_MG_3349.jpg',103000,NULL,NULL,NULL,'2023-12-17 14:58:15',24,1,NULL,1,1,1,2,'CTSP1'),
(2,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/vJqbjnroyal-m139-v4.jpg',75000,NULL,NULL,NULL,'2023-12-17 14:58:15',11,1,NULL,2,2,1,3,'CTSP2'),
(3,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/of3MY8_MG_8636.jpg',469000,NULL,NULL,NULL,'2023-12-17 14:58:15',35,1,NULL,7,3,1,1,'CTSP3'),
(4,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/of3MY8_MG_8636.jpg',265000,NULL,NULL,NULL,'2023-12-17 14:58:15',70,1,NULL,7,3,2,1,'CTSP4'),
(5,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/of3MY8_MG_8636.jpg',321000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,7,3,4,1,'CTSP5'),
(6,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QPhNDS_MG_0742.jpg',309000,NULL,NULL,NULL,'2023-12-17 14:58:15',14,1,NULL,1,3,1,1,'CTSP6'),
(7,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QPhNDS_MG_0742.jpg',82000,NULL,NULL,NULL,'2023-12-17 14:58:15',35,1,NULL,1,3,2,1,'CTSP7'),
(8,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CmSw3f_MG_9437.jpg',335000,NULL,NULL,NULL,'2023-12-17 14:58:15',33,1,NULL,5,3,1,1,'CTSP8'),
(9,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/AfmhwnIMG_5283.jpg',479000,NULL,NULL,NULL,'2023-12-17 14:58:15',59,1,NULL,5,4,2,2,'CTSP9'),
(10,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Zt7RKI_MG_3349.jpg',438000,NULL,NULL,NULL,'2023-12-17 14:58:15',94,1,NULL,1,1,2,2,'CTSP10'),
(11,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/P0jXDB_MG_3354.jpg',250000,NULL,NULL,NULL,'2023-12-17 14:58:15',96,1,NULL,2,1,1,2,'CTSP11'),
(12,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/sN4zd1Royal-m139-v10.jpg',340000,NULL,NULL,NULL,'2023-12-17 14:58:15',94,1,NULL,3,2,1,3,'CTSP12'),
(13,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QPhNDS_MG_0742.jpg',450000,NULL,NULL,NULL,'2023-12-17 14:58:15',83,1,NULL,1,3,4,1,'CTSP13'),
(14,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/YJ9rG8IMG_2412.jpg',279000,NULL,NULL,NULL,'2023-12-17 14:58:15',32,1,NULL,6,3,2,1,'CTSP14'),
(15,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/YJ9rG8IMG_2412.jpg',445000,NULL,NULL,NULL,'2023-12-17 14:58:15',12,1,NULL,6,3,1,1,'CTSP15'),
(16,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CmSw3f_MG_9437.jpg',436000,NULL,NULL,NULL,'2023-12-17 14:58:15',64,1,NULL,5,3,4,1,'CTSP16'),
(17,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CmSw3f_MG_9437.jpg',347000,NULL,NULL,NULL,'2023-12-17 14:58:15',81,1,NULL,5,3,2,1,'CTSP17'),
(18,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/YJ9rG8IMG_2412.jpg',374000,NULL,NULL,NULL,'2023-12-17 14:58:15',14,1,NULL,6,3,4,1,'CTSP18'),
(19,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/8MzEPqIMG_5454.jpg',330000,NULL,NULL,NULL,'2023-12-17 14:58:15',27,1,NULL,8,4,2,2,'CTSP19'),
(20,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/AfmhwnIMG_5283.jpg',480000,NULL,NULL,NULL,'2023-12-17 14:58:15',92,1,NULL,5,4,1,2,'CTSP20'),
(21,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/P0jXDB_MG_3354.jpg',457000,NULL,NULL,NULL,'2023-12-17 14:58:15',77,1,NULL,2,1,2,2,'CTSP21'),
(22,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/0IAa3e_MG_0585.jpg',346000,NULL,NULL,NULL,'2023-12-17 14:58:15',8,1,NULL,3,1,1,2,'CTSP22'),
(23,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/0IAa3e_MG_0585.jpg',309000,NULL,NULL,NULL,'2023-12-17 14:58:15',10,1,NULL,3,1,2,2,'CTSP23'),
(24,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/K6uk81_MG_3354-muc.jpg',457000,NULL,NULL,NULL,'2023-12-17 14:58:15',27,1,NULL,4,1,1,2,'CTSP24'),
(25,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/K6uk81_MG_3354-muc.jpg',406000,NULL,NULL,NULL,'2023-12-17 14:58:15',3,1,NULL,4,1,2,2,'CTSP25'),
(26,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/pUtKrM_MG_0597.jpg',157000,NULL,NULL,NULL,'2023-12-17 14:58:15',33,1,NULL,7,1,1,2,'CTSP26'),
(27,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/pUtKrM_MG_0597.jpg',420000,NULL,NULL,NULL,'2023-12-17 14:58:15',57,1,NULL,7,1,2,2,'CTSP27'),
(28,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/sN4zd1Royal-m139-v10.jpg',229000,NULL,NULL,NULL,'2023-12-17 14:58:15',83,1,NULL,3,2,4,3,'CTSP28'),
(29,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/vJqbjnroyal-m139-v4.jpg',284000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,2,2,2,3,'CTSP29'),
(30,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/vJqbjnroyal-m139-v4.jpg',234000,NULL,NULL,NULL,'2023-12-17 14:58:15',77,1,NULL,2,2,4,3,'CTSP30'),
(31,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QH7gUuroyal-m139-v4-2.jpg',269000,NULL,NULL,NULL,'2023-12-17 14:58:15',50,1,NULL,6,2,1,3,'CTSP31'),
(32,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QH7gUuroyal-m139-v4-2.jpg',140000,NULL,NULL,NULL,'2023-12-17 14:58:15',17,1,NULL,6,2,2,3,'CTSP32'),
(33,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QH7gUuroyal-m139-v4-2.jpg',296000,NULL,NULL,NULL,'2023-12-17 14:58:15',37,1,NULL,6,2,4,3,'CTSP33'),
(34,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/sN4zd1Royal-m139-v10.jpg',106000,NULL,NULL,NULL,'2023-12-17 14:58:15',31,1,NULL,3,2,2,3,'CTSP34'),
(35,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/PeCI1GIMG_3358.jpg',498000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,2,4,2,2,'CTSP35'),
(36,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/9iomrJIMG_5461.jpg',317000,NULL,NULL,NULL,'2023-12-17 14:58:15',29,1,NULL,4,4,1,2,'CTSP36'),
(37,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/9iomrJIMG_5461.jpg',493000,NULL,NULL,NULL,'2023-12-17 14:58:15',11,1,NULL,4,4,2,2,'CTSP37'),
(38,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/8MzEPqIMG_5454.jpg',109000,NULL,NULL,NULL,'2023-12-17 14:58:15',69,1,NULL,8,4,1,2,'CTSP38'),
(39,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/PeCI1GIMG_3358.jpg',372000,NULL,NULL,NULL,'2023-12-17 14:58:15',10,1,NULL,2,4,1,2,'CTSP39'),
(40,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/lANmFe_MG_9655.jpg',130000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,2,10,2,1,'CTSP40'),
(41,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg',384000,NULL,NULL,NULL,'2023-12-17 14:58:15',92,1,NULL,2,20,1,1,'CTSP41'),
(42,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg',131000,NULL,NULL,NULL,'2023-12-17 14:58:15',24,1,NULL,2,20,4,1,'CTSP42'),
(43,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/TKXck1IMG_6096.jpg',353000,NULL,NULL,NULL,'2023-12-17 14:58:15',42,1,NULL,4,21,2,3,'CTSP43'),
(44,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/TKXck1IMG_6096.jpg',420000,NULL,NULL,NULL,'2023-12-17 14:58:15',40,1,NULL,4,21,1,3,'CTSP44'),
(45,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/fPbOjEIMG_6116.jpg',93000,NULL,NULL,NULL,'2023-12-17 14:58:15',73,1,NULL,5,21,2,3,'CTSP45'),
(46,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/CRTP8N139B-den-bong.jpg',54000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,2,20,2,1,'CTSP46'),
(47,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/LucA6vIMG_1147.jpg',392000,NULL,NULL,NULL,'2023-12-17 14:58:15',5,1,NULL,2,22,1,2,'CTSP47'),
(48,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/LucA6vIMG_1147.jpg',398000,NULL,NULL,NULL,'2023-12-17 14:58:15',88,1,NULL,2,22,2,2,'CTSP48'),
(49,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/fPbOjEIMG_6116.jpg',314000,NULL,NULL,NULL,'2023-12-17 14:58:15',26,1,NULL,5,21,1,3,'CTSP49'),
(50,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7uQysP_MG_1227.jpg',326000,NULL,NULL,NULL,'2023-12-17 14:58:15',66,1,NULL,5,23,2,4,'CTSP50'),
(51,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/l61YIj_MG_1227-vang.jpg',187000,NULL,NULL,NULL,'2023-12-17 14:58:15',52,1,NULL,1,23,1,4,'CTSP51'),
(52,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/l61YIj_MG_1227-vang.jpg',357000,NULL,NULL,NULL,'2023-12-17 14:58:15',61,1,NULL,1,23,2,4,'CTSP52'),
(53,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/utOmb1_MG_1233-xanhlam.jpg',274000,NULL,NULL,NULL,'2023-12-17 14:58:15',47,1,NULL,4,23,1,4,'CTSP53'),
(54,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/utOmb1_MG_1233-xanhlam.jpg',251000,NULL,NULL,NULL,'2023-12-17 14:58:15',51,1,NULL,4,23,2,4,'CTSP54'),
(55,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7uQysP_MG_1227.jpg',382000,NULL,NULL,NULL,'2023-12-17 14:58:15',15,1,NULL,5,23,1,4,'CTSP55'),
(56,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/9th8nxIMG_4967.jpg',205000,NULL,NULL,NULL,'2023-12-17 14:58:15',20,1,NULL,3,17,1,2,'CTSP56'),
(57,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/9th8nxIMG_4967.jpg',282000,NULL,NULL,NULL,'2023-12-17 14:58:15',55,1,NULL,3,17,2,2,'CTSP57'),
(58,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/H53xjhIMG_0631.jpg',294000,NULL,NULL,NULL,'2023-12-17 14:58:15',13,1,NULL,2,17,1,2,'CTSP58'),
(59,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/H53xjhIMG_0631.jpg',125000,NULL,NULL,NULL,'2023-12-17 14:58:15',100,1,NULL,2,17,2,2,'CTSP59'),
(60,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/eKrhU4IMG_0597.jpg',142000,NULL,NULL,NULL,'2023-12-17 14:58:15',62,1,NULL,1,17,1,2,'CTSP60'),
(61,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/eKrhU4IMG_0597.jpg',287000,NULL,NULL,NULL,'2023-12-17 14:58:15',7,1,NULL,1,17,2,2,'CTSP61'),
(62,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/nmlwi7IMG_9768.jpg',59000,NULL,NULL,NULL,'2023-12-17 14:58:15',48,1,NULL,5,31,2,4,'CTSP62'),
(63,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Oh23BlIMG_2953.jpg',286000,NULL,NULL,NULL,'2023-12-17 14:58:15',22,1,NULL,4,31,1,4,'CTSP63'),
(64,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/Oh23BlIMG_2953.jpg',299000,NULL,NULL,NULL,'2023-12-17 14:58:15',62,1,NULL,4,31,2,4,'CTSP64'),
(65,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/KDMNaEIMG_2945.jpg',139000,NULL,NULL,NULL,'2023-12-17 14:58:15',46,1,NULL,2,31,1,4,'CTSP65'),
(66,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/KDMNaEIMG_2945.jpg',200000,NULL,NULL,NULL,'2023-12-17 14:58:15',43,1,NULL,2,31,2,4,'CTSP66'),
(67,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/nmlwi7IMG_9768.jpg',82000,NULL,NULL,NULL,'2023-12-17 14:58:15',76,1,NULL,5,31,1,4,'CTSP67'),
(68,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hRgDYVIMG_9754.jpg',210000,NULL,NULL,NULL,'2023-12-17 14:58:15',50,1,NULL,4,32,2,4,'CTSP68'),
(69,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hRgDYVIMG_9754.jpg',305000,NULL,NULL,NULL,'2023-12-17 14:58:15',24,1,NULL,4,32,1,4,'CTSP69'),
(70,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/HQ0S39IMG_9737.jpg',396000,NULL,NULL,NULL,'2023-12-17 14:58:15',67,1,NULL,5,32,2,4,'CTSP70'),
(71,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/cN0qpvIMG_2909.jpg',112000,NULL,NULL,NULL,'2023-12-17 14:58:15',62,1,NULL,2,32,1,4,'CTSP71'),
(72,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/cN0qpvIMG_2909.jpg',225000,NULL,NULL,NULL,'2023-12-17 14:58:15',10,1,NULL,2,32,2,4,'CTSP72'),
(73,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/HQ0S39IMG_9737.jpg',286000,NULL,NULL,NULL,'2023-12-17 14:58:15',61,1,NULL,5,32,1,4,'CTSP73'),
(74,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hX6g9FIMG_9718.jpg',257000,NULL,NULL,NULL,'2023-12-17 14:58:15',76,1,NULL,5,35,2,3,'CTSP74'),
(75,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/cXLDHSM153-LT-(3).jpg',377000,NULL,NULL,NULL,'2023-12-17 14:58:15',96,1,NULL,2,35,1,3,'CTSP75'),
(76,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/cXLDHSM153-LT-(3).jpg',161000,NULL,NULL,NULL,'2023-12-17 14:58:15',51,1,NULL,2,35,2,3,'CTSP76'),
(77,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/hX6g9FIMG_9718.jpg',77000,NULL,NULL,NULL,'2023-12-17 14:58:15',67,1,NULL,5,35,1,3,'CTSP77'),
(78,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/QhKmMYIMG_4068-copy.jpg',302000,NULL,NULL,NULL,'2023-12-17 14:58:15',82,1,NULL,2,37,1,2,'CTSP78'),
(79,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/StzqxeIMG_4064-copy.jpg',329000,NULL,NULL,NULL,'2023-12-17 14:58:15',7,1,NULL,1,37,1,2,'CTSP79'),
(80,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/O5IMUPIMG_4076-copy.jpg',237000,NULL,NULL,NULL,'2023-12-17 14:58:15',87,1,NULL,3,37,1,2,'CTSP80'),
(81,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/iCmEnHIMG_0634b.jpg',151000,NULL,NULL,NULL,'2023-12-17 14:58:15',16,1,NULL,5,34,2,2,'CTSP81'),
(82,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/iCmEnHIMG_0634b.jpg',446000,NULL,NULL,NULL,'2023-12-17 14:58:15',19,1,NULL,5,34,1,2,'CTSP82'),
(83,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/IrwyHWIMG_2940.jpg',372000,NULL,NULL,NULL,'2023-12-17 14:58:15',45,1,NULL,4,34,2,2,'CTSP83'),
(84,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/IrwyHWIMG_2940.jpg',473000,NULL,NULL,NULL,'2023-12-17 14:58:15',67,1,NULL,4,34,1,2,'CTSP84'),
(85,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/u5lSeNIMG_2963.jpg',297000,NULL,NULL,NULL,'2023-12-17 14:58:15',100,1,NULL,2,34,2,2,'CTSP85'),
(86,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/u5lSeNIMG_2963.jpg',467000,NULL,NULL,NULL,'2023-12-17 14:58:15',99,1,NULL,2,34,1,2,'CTSP86'),
(87,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/naBX9iIMG_1424.jpg',492000,NULL,NULL,NULL,'2023-12-17 14:58:15',94,1,NULL,2,46,1,5,'CTSP87'),
(88,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/naBX9iIMG_1424.jpg',109000,NULL,NULL,NULL,'2023-12-17 14:58:15',75,1,NULL,2,46,2,5,'CTSP88'),
(89,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/V6fpcUIMG_6428.jpg',374000,NULL,NULL,NULL,'2023-12-17 14:58:15',89,1,NULL,3,40,1,2,'CTSP89'),
(90,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/P9dO7qMD15.jpg',140000,NULL,NULL,NULL,'2023-12-17 14:58:15',21,1,NULL,4,40,1,2,'CTSP90'),
(91,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/YVNGyMIMG_8992-copy.jpg',428000,NULL,NULL,NULL,'2023-12-17 14:58:15',38,1,NULL,3,43,1,3,'CTSP91'),
(92,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/qYFJh7IMG_8993.jpg',318000,NULL,NULL,NULL,'2023-12-17 14:58:15',25,1,NULL,2,43,1,3,'CTSP92'),
(93,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/3TDzRaIMG_1446.jpg',259000,NULL,NULL,NULL,'2023-12-17 14:58:15',10,1,NULL,1,45,1,1,'CTSP93'),
(94,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/peGS8HIMG_1455.jpg',290000,NULL,NULL,NULL,'2023-12-17 14:58:15',74,1,NULL,2,45,1,1,'CTSP94'),
(95,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/DzjPZ8IMG_8969-copy.jpg',171000,NULL,NULL,NULL,'2023-12-17 14:58:15',41,1,NULL,4,42,1,4,'CTSP95'),
(96,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/je8YaBIMG_8967-copy.jpg',390000,NULL,NULL,NULL,'2023-12-17 14:58:15',81,1,NULL,5,42,1,4,'CTSP96'),
(97,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/k75KYuIMG_9020.jpg',483000,NULL,NULL,NULL,'2023-12-17 14:58:15',84,1,NULL,4,48,3,2,'CTSP97'),
(98,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/vLXzeQIMG_9014.jpg',293000,NULL,NULL,NULL,'2023-12-17 14:58:15',77,1,NULL,5,48,3,2,'CTSP98'),
(99,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/K9FtBoIMG_8995.jpg',419000,NULL,NULL,NULL,'2023-12-17 14:58:15',31,1,NULL,1,48,3,2,'CTSP99'),
(100,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2zeIjJIMG_1777-copy.jpg',264000,NULL,NULL,NULL,'2023-12-17 14:58:15',24,1,NULL,6,48,3,2,'CTSP100'),
(101,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/DyXUshroyal-kl-14.jpg',463000,NULL,NULL,NULL,'2023-12-17 14:58:15',28,1,NULL,1,49,3,4,'CTSP101'),
(102,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/gTzVfEroyal-kl-08.jpg',123000,NULL,NULL,NULL,'2023-12-17 14:58:15',67,1,NULL,5,49,3,4,'CTSP102'),
(103,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2h5Wqxroyal-kl-02.jpg',78000,NULL,NULL,NULL,'2023-12-17 14:58:15',48,1,NULL,4,49,3,4,'CTSP103'),
(104,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/adguIvroyal-kl-12.jpg',424000,NULL,NULL,NULL,'2023-12-17 14:58:15',40,1,NULL,6,49,3,4,'CTSP104'),
(105,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2e3Vnam08-vang.jpg',481000,NULL,NULL,NULL,'2023-12-17 14:58:15',56,1,NULL,1,27,1,5,'CTSP105'),
(106,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/2e3Vnam08-vang.jpg',183000,NULL,NULL,NULL,'2023-12-17 14:58:15',58,1,NULL,1,27,2,5,'CTSP106'),
(107,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/xkQZyt_MG_0872.jpg',323000,NULL,NULL,NULL,'2023-12-17 14:58:15',23,1,NULL,4,27,1,5,'CTSP107'),
(108,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/xkQZyt_MG_0872.jpg',113000,NULL,NULL,NULL,'2023-12-17 14:58:15',39,1,NULL,4,27,2,5,'CTSP108'),
(109,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/OA5B2P_MG_1524.jpg',451000,NULL,NULL,NULL,'2023-12-17 14:58:15',26,1,NULL,2,28,1,1,'CTSP109'),
(110,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/OA5B2P_MG_1524.jpg',61000,NULL,NULL,NULL,'2023-12-17 14:58:15',13,1,NULL,2,28,2,1,'CTSP110'),
(111,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/wj3UWbM179-V1-12.jpg',254000,NULL,NULL,NULL,'2023-12-17 14:58:15',86,1,NULL,5,29,1,2,'CTSP111'),
(112,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/wj3UWbM179-V1-12.jpg',137000,NULL,NULL,NULL,'2023-12-17 14:58:15',91,1,NULL,5,29,2,2,'CTSP112'),
(113,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/37MKTPM179-V3-9.jpg',326000,NULL,NULL,NULL,'2023-12-17 14:58:15',97,1,NULL,4,29,1,2,'CTSP113'),
(114,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/37MKTPM179-V3-9.jpg',266000,NULL,NULL,NULL,'2023-12-17 14:58:15',11,1,NULL,4,29,2,2,'CTSP114'),
(115,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/UgxaR0_MG_8621.jpg',305000,NULL,NULL,NULL,'2023-12-17 14:58:15',62,1,NULL,7,30,1,2,'CTSP115'),
(116,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/UgxaR0_MG_8621.jpg',223000,NULL,NULL,NULL,'2023-12-17 14:58:15',78,1,NULL,7,30,2,2,'CTSP116'),
(117,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7mPt1b_MG_9810.jpg',153000,NULL,NULL,NULL,'2023-12-17 14:58:15',4,1,NULL,2,30,1,2,'CTSP117'),
(118,'https://royalhelmet.com.vn/ckfinder/userfiles/images/products/7mPt1b_MG_9810.jpg',497000,NULL,NULL,NULL,'2023-12-17 14:58:15',85,1,NULL,2,30,2,2,'CTSP118');
/*!40000 ALTER TABLE `san_pham_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` 
VALUES 
(1,'S1','56-57cm',NULL,NULL,'L',1),
(2,'S2','58-59cm',NULL,NULL,'XL',1),
(3,'S3','52-54cm',NULL,NULL,'S',1),
(4,'S4','54-55cm',NULL,NULL,'M',1),
(5,'S5','Freesize',NULL,NULL,'Freesize',1);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_bao`
--

DROP TABLE IF EXISTS `thong_bao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `thong_bao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `id_san_pham_chi_tiet` int DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5dd115i50w4aw5s2ciyepw3gx` (`id_san_pham_chi_tiet`),
  KEY `FKskwt6maa75a67qfpgigo1kwam` (`id_user`),
  CONSTRAINT `FK5dd115i50w4aw5s2ciyepw3gx` FOREIGN KEY (`id_san_pham_chi_tiet`) REFERENCES `san_pham_chi_tiet` (`id`),
  CONSTRAINT `FKskwt6maa75a67qfpgigo1kwam` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_bao`
--

LOCK TABLES `thong_bao` WRITE;
/*!40000 ALTER TABLE `thong_bao` DISABLE KEYS */;

/*!40000 ALTER TABLE `thong_bao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuong_hieu`
--

DROP TABLE IF EXISTS `thuong_hieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `thuong_hieu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuong_hieu`
--

LOCK TABLES `thuong_hieu` WRITE;
/*!40000 ALTER TABLE `thuong_hieu` DISABLE KEYS */;
INSERT INTO `thuong_hieu` VALUES 
(1,'1001','2023-09-10','2023-09-05','Amoro',1),
(2,'1002','2023-09-15','2023-09-10','Protec',1),
(3,'1003','2023-09-23','2023-09-19','HSL',1),
(4,'1004','2023-09-24','2023-09-20','Hitech',1),
(5,'1005','2023-08-10','2023-07-25','Andes',1),
(6,'1006','2023-07-19','2023-07-15','Honda',1),
(7,'1007','2023-05-20','2023-05-15','Sankyo',1),
(8,'1008','2023-10-10','2023-10-05','Avex',1),
(9,'1009','2023-07-10','2023-07-01','Royal',1);
/*!40000 ALTER TABLE `thuong_hieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trong_luong`
--

DROP TABLE IF EXISTS `trong_luong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `trong_luong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `don_vi` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trong_luong`
--

LOCK TABLES `trong_luong` WRITE;
/*!40000 ALTER TABLE `trong_luong` DISABLE KEYS */;
INSERT INTO `trong_luong` VALUES 
(1,'gam','TL1','2023-09-10','2023-08-20',1,1050),
(2,'gam','TL2','2023-09-10','2023-08-20',1,850),
(3,'gam','TL3','2023-09-10','2023-08-20',1,752),
(4,'gam','TL4','2023-09-10','2023-08-20',1,500),
(5,'gam','TL5','2023-09-10','2023-08-20',1,350);
/*!40000 ALTER TABLE `trong_luong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `gioi_tinh` int DEFAULT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `ma` varchar(255) DEFAULT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES 
(1,'',NULL,NULL,'U1',NULL,NULL,NULL,'','USER','','Khách hàng lẻ',-1,''),
(2,'cskh@gmail.com',1,'https://i.pinimg.com/736x/34/60/3c/34603ce8a80b1ce9a768cad7ebf63c56.jpg','U2',NULL,NULL,'2023-11-29 10:57:28','$2a$12$Xcp214DEIsQr61KrINMt5egl.2Tqfcjwhu32Y9Y5TCEFzH5yiEOlS','ADMIN','0987678987','Quản trị viên',2,'cskh@gmail.com'),
(3,'levanc@gmail.com',1,'https://icons.veryicon.com/png/o/miscellaneous/user-avatar/user-avatar-male-5.png','U3','2002-12-07','2023-11-10 00:00:00','2023-11-29 15:57:28','$2a$12$Xcp214DEIsQr61KrINMt5egl.2Tqfcjwhu32Y9Y5TCEFzH5yiEOlS','USER','0987678985','Lê Văn Cờ',2,'levanc@gmail.com'),
(4,'0123456789@gmail.com',NULL,'https://i.pinimg.com/474x/0a/a8/58/0aa8581c2cb0aa948d63ce3ddad90c81.jpg','U4',NULL,NULL,'2023-11-29 13:57:28',NULL,'USER','0123456789','Rô Nan Đô',2,'0123456789@gmail.com'),
(5,'0999999999@gmail.com',NULL,'https://whatsondisneyplus.b-cdn.net/wp-content/uploads/2021/09/homer.png','U5',NULL,NULL,'2023-11-29 16:57:28',NULL,'USER','0999999999','Lê Văn Đốt Ky',2,'0999999999@gmail.com'),
(6,'0912345678@gmail.com',NULL,'https://whatsondisneyplus.b-cdn.net/wp-content/uploads/2021/09/bart-.png','U6',NULL,NULL,'2023-11-29 12:57:28',NULL,'USER','0912345678','Nguyễn Văn Mẹc Si',2,'0912345678@gmail.com'),
(7,'qtv@gmail.com',1,'https://whatsondisneyplus.b-cdn.net/wp-content/uploads/2021/09/lisa.png','U7','2002-10-07','2023-11-10 00:00:00','2023-11-29 10:57:28','$2a$12$Xcp214DEIsQr61KrINMt5egl.2Tqfcjwhu32Y9Y5TCEFzH5yiEOlS','ADMIN','0987678789','Quản trị viên',2,'qtv@gmail.com'),
(8,'ngthanhnam371@gmail.com',NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfUKa2WWIelgAydVWYwNScEQe15D5cXI4e7ou3_1ygPg&s','U8',NULL,NULL,'2023-11-29 10:57:28','$2a$10$323A.p2uDw3RzabRSKDuPu/gCEWolLjTLywaicMpw.foQbh3wVKdq','USER','0456123987','Karen Thompson',2,'ngthanhnam371@gmail.com'),
(9,'0123789654@gmail.com',2,'https://www.yellowavatar.com/assets/img/yellowavatar_icon.png','U9','2023/12/05 00:00:00',NULL,'2023-12-05 09:04:38','$2a$10$gR.MO37wyqBEyTY8qcsQu.kwUM7kzyMx71nHMFGHwV1v3F4afmMz6','USER','0123789654','Elizabeth Roberts',2,'0123789654@gmail.com'),
(10,'hn7566410@gmail.com',NULL,'https://lh3.googleusercontent.com/a/ACg8ocLm_XqTXg5gIW5wi09UW_pz-nwcni6qJqf-cY5v5czLOWPW=s96-c','U10',NULL,NULL,'2023-12-07 23:09:48','$2a$12$Xcp214DEIsQr61KrINMt5egl.2Tqfcjwhu32Y9Y5TCEFzH5yiEOlS','USER',NULL,'vinh nguyễn',2,'hn7566410@gmail.com'),
(11,'nv1@gmail.com',NULL,'https://png.pngtree.com/png-vector/20191110/ourmid/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg','U11',NULL,NULL,'2023-12-07 23:09:48','$2a$12$Xcp214DEIsQr61KrINMt5egl.2Tqfcjwhu32Y9Y5TCEFzH5yiEOlS','NHANVIEN',NULL,'nhân viên1',2,'nv1@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_lieu`
--

DROP TABLE IF EXISTS `vat_lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `vat_lieu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `ngay_sua` varchar(255) DEFAULT NULL,	
  `ngay_tao` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_lieu`
--

LOCK TABLES `vat_lieu` WRITE;
/*!40000 ALTER TABLE `vat_lieu` DISABLE KEYS */;
INSERT INTO `vat_lieu`
VALUES
    (1, 'VL1', 'Độ bền cao', '2023-11-10', '2023-10-24', 'Nhựa ABS nguyên sinh', 1),
    (2, 'VL2', 'Êm ái, thông thoáng', '2023-11-10', '2023-10-24', 'Xốp EPS', 1),
    (3, 'VL3', 'Mềm mịn', '2023-11-10', '2023-10-24', 'Da Simili', 1);
/*!40000 ALTER TABLE `vat_lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `giam_toi_da` decimal(20,0) DEFAULT NULL,
  `mo_ta` varchar(10000) DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  `gia_tri_giam` int DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `thoi_gian_bat_dau` datetime(6) DEFAULT NULL,
  `thoi_gian_ket_thuc` datetime(6) DEFAULT NULL,
  `trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher`
VALUES
    (1, 15000, 'ma giam gia zomot', NULL, NULL, 'zô mốt', '2023-06-23 00:00:00.000000', '2023-06-25 00:00:00.000000', 1),
    (2, 13000, 'freeship', NULL, NULL, 'freeship', '2023-06-23 00:00:00.000000', '2023-06-25 00:00:00.000000', 1),
    (3, 16000, 'thời trang', NULL, NULL, 'thời trang', '2023-06-23 00:00:00.000000', '2023-06-25 00:00:00.000000', 1),
    (4, 15000, 'siêu voucher', NULL, NULL, 'siêu voucher', '2023-06-23 00:00:00.000000', '2023-06-25 00:00:00.000000', 1),
    (5, 11000, 'datn', NULL, NULL, 'datn', '2023-06-23 00:00:00.000000', '2023-06-25 00:00:00.000000', 1);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 22:21:04
