-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tong_hop
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `MaDH` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenDH` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`MaDH`),
  UNIQUE KEY `MaDH` (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES ('hj','jhg');
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(5) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `Dienthoai` varchar(15) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Website` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MaNCC`),
  UNIQUE KEY `idNHACUNGCAP_UNIQUE` (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('NCC01','Cung cấp đồ ăn nhanh','Hải Phòng','0945692610','nguyenbetoanh1999@gmail.com','www.porn.com'),('NCC02','Cung cấp quần áo','Hà Nội','0984088920','conchimnon@gmail.com','www.viet.hub'),('NCC03','Cung cấp thuốc ','TP HCM','0942595229','bacsinhumehien@gmail.com','www.xnxx.com'),('NCC04','Cung cấp tinh thần','Huế','0123456789','huemongmo@gmail.com','www.hentai.com');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` varchar(4) NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `NoiSinh` varchar(45) DEFAULT NULL,
  `NgayVaoLam` date DEFAULT NULL,
  `DienThoai` varchar(45) DEFAULT NULL,
  `MaNQL` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`MaNV`),
  UNIQUE KEY `idNHANVIEN_UNIQUE` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV01','Nguyễn Việt Anh',_binary '','Hải phòng','1999-07-29','Conmeo@gmail.com','vĩnh Bảo','2022-08-22','0945692610',NULL),('NV02','Phạm thị nghĩa',_binary '\0','Vĩnh An','1977-06-23','NghiaPham@gmail.com','Thôn4','2022-06-15','0984088920',NULL),('NV03','Nguyễn thị thu hà',_binary '\0','Hà nội','2004-12-12','thuha@gmail.com','bắc từ liêm','2022-09-26','0945692666',NULL),('NV04','Nguyễn văn kháng',_binary '','Sống mới','1975-07-08','khang#gmail.com','Thôn 1','2000-11-03','0945692610',NULL),('NV05','Nguyễn Phương Thảo',_binary '\0','Huế','2010-06-10','danchoitictoc@gmail.com','Vĩnh bảo','2023-06-11','0984088111',NULL);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `soPN` varchar(5) NOT NULL,
  `MaNV` varchar(4) NOT NULL,
  `MaNCC` varchar(5) NOT NULL,
  `NgayNhap` date NOT NULL,
  `GhiChu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`soPN`,`MaNV`),
  UNIQUE KEY `idPHIEUNHAP_UNIQUE` (`soPN`),
  UNIQUE KEY `MaNV_UNIQUE` (`MaNV`),
  KEY `fk1_idx` (`MaNCC`),
  KEY `fk2_idx` (`MaNV`),
  CONSTRAINT `fk1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`),
  CONSTRAINT `fk2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04  1:12:13
