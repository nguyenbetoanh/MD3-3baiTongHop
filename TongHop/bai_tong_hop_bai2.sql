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
-- Table structure for table `ctphieunhap`
--

DROP TABLE IF EXISTS `ctphieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctphieunhap` (
  `ma_SP` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `so_PN` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Spluong` smallint NOT NULL DEFAULT (0),
  `Gianhap` double NOT NULL,
  PRIMARY KEY (`ma_SP`,`so_PN`),
  KEY `so_PN` (`so_PN`),
  CONSTRAINT `ctphieunhap_ibfk_1` FOREIGN KEY (`so_PN`) REFERENCES `phieunhap` (`SoPN`),
  CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`ma_SP`) REFERENCES `sanpham` (`MaSP`),
  CONSTRAINT `ctphieunhap_chk_1` CHECK ((`Gianhap` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctphieunhap`
--

LOCK TABLES `ctphieunhap` WRITE;
/*!40000 ALTER TABLE `ctphieunhap` DISABLE KEYS */;
INSERT INTO `ctphieunhap` VALUES ('SP01','PN003',515,65000),('SP01','PN005',65,50000),('SP02','PN001',5,1000),('SP03','PN002',58,87000),('SP03','PN005',557,410000);
/*!40000 ALTER TABLE `ctphieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctphieuxuat`
--

DROP TABLE IF EXISTS `ctphieuxuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctphieuxuat` (
  `SoPX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaSP` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Soluong` smallint NOT NULL,
  `GiaBan` double NOT NULL,
  PRIMARY KEY (`SoPX`,`MaSP`),
  KEY `MaSP` (`MaSP`),
  CONSTRAINT `ctphieuxuat_ibfk_1` FOREIGN KEY (`SoPX`) REFERENCES `phieuxuat` (`SoPX`),
  CONSTRAINT `ctphieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  CONSTRAINT `ctphieuxuat_chk_1` CHECK ((`Soluong` > 0)),
  CONSTRAINT `ctphieuxuat_chk_2` CHECK ((`GiaBan` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctphieuxuat`
--

LOCK TABLES `ctphieuxuat` WRITE;
/*!40000 ALTER TABLE `ctphieuxuat` DISABLE KEYS */;
INSERT INTO `ctphieuxuat` VALUES ('PX001','SP01',1,150000),('PX001','SP04',2,10000),('PX002','SP02',5,50000),('PX003','SP02',2,400000),('PX003','SP03',1,12000);
/*!40000 ALTER TABLE `ctphieuxuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKH` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenKH` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Diachi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SoDT` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('KH01','Nguy???n Vi???t Anh ','Giang bi??n V??nh b???o H???i ph??ng','1999-07-29','0123456789'),('KH02','Nguy???n V??n Kh??ng ','Giang bi??n V??nh b???o H???i ph??ng','1975-08-07','0945692610'),('KH03','Ph???m Th??? Ngh??a ','Vi???t Ti???n V??nh b???o H???i ph??ng','1977-08-01','0884088920'),('KH04','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),('KH05','Nguy???n V??n A','Tr??n cung ????nh huy???n may bay x?? ti??n c???nh','2000-07-29','098765431'),('KH06','Nguy???n V??n A','T??a nh?? s??ng ????','2000-11-29','098765431'),('KH07','Nguy???n thi s??u','T??a nh?? s??ng ????','2000-07-29','098741411'),('KH08','Nguy???n vi bao','T??a nh?? s??ng ????','2000-11-09','057787871'),('KH10','Nguy???n V??n A','T??a nh?? s??ng ????','2000-11-02','0945692610');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisp` (
  `MaloaiSP` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenloaiSP` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ghichu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`MaloaiSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisp`
--

LOCK TABLES `loaisp` WRITE;
/*!40000 ALTER TABLE `loaisp` DISABLE KEYS */;
INSERT INTO `loaisp` VALUES ('L001','Ng??nh h??ng h??a m?? ph???m','h??ng r???t t???t v?? b???n'),('L002','ng??nh d???t may','h??ng t???t v?? b???n'),('L003','lo???i qu???n ??o','h??ng d??ng b??nh d??n'),('L004','lo???i ????? ??n',' r??t nhanh h???ng'),('L005','lo???i ????? h???t h???n','kh??ng n??n s??? d???ng');
/*!40000 ALTER TABLE `loaisp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenNCC` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DienThoai` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Website` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('NCC01','Vinamilk','H?? n???i - Nam t??? li??m - 120 M??? tr?? th?????ng','113','suatuoi@gmail.com','porn.com'),('NCC02','S???t Th??p ','S??n la-??o??n T???p- ???????ng Chi???n th???ng','114','satThep@gmail.com','xnxx.com'),('NCC03','V???t li???u x??y d???ng','H???i Ph??ng - V??nh b???o -Giang bi??n','113','vatlieu@gmail.com','hentaiz.com'),('NCC04','????? ch??i ng?????i l???n','B???c ninh - Nam t??? li??m - 120 M??? tr?? th?????ng','112','dochoi@gmail.com','vnxx.com'),('NCC05','kiem ','chem nhau','0987','kiemhiep@gmail.com','danhnhau.com');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HoTen` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GioiTinh` bit(1) NOT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgaySinh` datetime NOT NULL,
  `DienThoai` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` text,
  `NoiSinh` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgayVaoLam` date DEFAULT NULL,
  `MaNQL` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`MaNV`),
  CONSTRAINT `nhanvien_chk_1` CHECK ((`age` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV01','Nguy???n v??n A',_binary '','?????nh n??i v??n s????n m??y tr???i l???ng l???ng','1999-07-29 00:00:00','09456321','1234@gmail.com','D?????i ?????t','2015-07-29',NULL,95),('NV02','Nguy???n v??n B',_binary '','ngo??i v?? tr???','2004-12-12 00:00:00','0984088920','1234@gmail.com','D?????i ?????t','2020-01-05',NULL,66),('NV03','Nguy???n v??n C',_binary '','tr??n sao h???a','2010-06-10 00:00:00','02194563','1234@gmail.com','Ngo??i tr??u ?????','2022-06-02',NULL,51),('NV04','khong ban dc hang',_binary '\0','o dau cung la nha','2000-07-28 00:00:00','021545','ashd@','ha tay','2012-05-05',NULL,56);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `SoPN` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaNV` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaNCC` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgayNhap` date NOT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`SoPN`),
  KEY `MaNV` (`MaNV`),
  KEY `MaNCC` (`MaNCC`),
  CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  CONSTRAINT `phieunhap_ibfk_3` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
INSERT INTO `phieunhap` VALUES ('PN001','NV01','NCC03','2022-11-12','b?? ngh??a l?? 1 doan nh??n r???t uy t??n '),('PN002','NV03','NCC01','2018-06-04','Vi???t anh l?? 1 doan nh??n r???t uy t??n '),('PN003','NV01','NCC02','2018-06-12',' c???u ???y doan nh??n r???t uy t??n '),('PN004','NV03','NCC02','2022-11-22',' l?? 1 doan nh??n r???t uy t??n '),('PN005','NV02','NCC04','2018-06-02','b?? ngh??a l?? 1 doan nh??n r???t uy t??n ');
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuxuat` (
  `SoPX` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgayBan` date NOT NULL,
  `GhiChu` text,
  `MaNV` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaKH` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`SoPX`),
  KEY `MaNV` (`MaNV`),
  KEY `MaKH` (`MaKH`),
  CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuxuat`
--

LOCK TABLES `phieuxuat` WRITE;
/*!40000 ALTER TABLE `phieuxuat` DISABLE KEYS */;
INSERT INTO `phieuxuat` VALUES ('PX001','2022-12-05','xu???t h???t trong 1 ng??y','NV01','KH03'),('PX002','2022-05-15','xu???t h???t trong 1 ng??y','NV03','KH01'),('PX003','2022-05-25','xu???t h???t trong 1 ng??y','NV02','KH02'),('PX004','2022-05-11','hehehihi','NV01','KH01');
/*!40000 ALTER TABLE `phieuxuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSP` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaLoaiSP` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenSP` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DonViTinh` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `MaLoaiSP` (`MaLoaiSP`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisp` (`MaloaiSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('SP01','L003','????i d??p th???n k??','chai','h??ng r???t th??n thi???n v???i m??i tr?????ng'),('SP02','L001','??o kho??c h??ng hi???u','chai','???? la m?? h??ng cao c???p'),('SP03','L002','Qu???n hiphop','VND','h??ng r???t phong c??ch'),('SP04','L004','m?? ????nh kim c????ng','chai','h??ng r???t qu?? t???c'),('SP05','L001','THu???c nhu???m t??c','l???','????? nhu???m t??c');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

select * from khachhang;
select * from loaisp;
select * from nhacungcap;
select * from nhanvien;
select * from phieunhap;
select * from sanpham ;
select * from phieuxuat ;
select * from ctphieunhap;
select * from ctphieuxuat;
insert into ctphieuxuat(SoPX,MaSP,Soluong,GiaBan)values
('PX001','SP01',1,150000),
('PX002','SP02',5,50000),
('PX003','SP03',1,12000),
('PX001','SP04',2,10000),
('PX003','SP02',2,400000);
insert into ctphieunhap(ma_SP,so_PN,Spluong,Gianhap)values
('SP01','PN005',65,50000),
('SP03','PN005',557,410000),
('SP03','PN002',58,87000),
('SP01','PN003',515,65000),
('SP02','PN001',5,1000);
insert into khachhang(MaKH,TenKH,Diachi,NgaySinh,SoDT)values
('KH04','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),
('KH05','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),
('KH06','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),
('KH08','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),
('KH07','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431'),
('KH10','Nguy???n V??n A','T??a nh?? s??ng ????','2000-07-29','098765431');
update  khachhang
set SoDT ='0945692610'
where MaKH ='KH10';
update khachhang
set Diachi ='Tr??n cung ????nh huy???n may bay x?? ti??n c???nh'
where MaKH='KH05';
delete from sanpham
where MaSP='SP03';
delete from nhanvien
where MaNV='NV01';
alter table nhanvien
add age int check(age>18);
update nhanvien
set age =23
where MaNV='NV01';
update nhanvien
set age =21
where MaNV='NV02';
update nhanvien
set age =51
where MaNV='NV03';
-- bai6 : 1: Li???t k?? th??ng tin v??? nh??n vi??n trong c???a h??ng 
select MaNV,HoTen,GioiTinh,NgaySinh,DiaChi,DienThoai,age from nhanvien order by age ;
-- 2:Li???t k?? c??c h??a ????n nh???p h??ng trong th??ng 6/2018  nh???p d??? li???u t?? 3 b???ng phieunhap , nhaCC va nhanvien
select phieunhap.SoPN,phieunhap.MaNV,nhanvien.HoTen as H???_t??n_nh??n_vi??n ,nhacungcap.TenNCC,phieunhap.NgayNhap,phieunhap.GhiChu
from (phieunhap inner join nhacungcap on phieunhap.MaNCC=nhacungcap.MaNCC)
inner join nhanvien on phieunhap.MaNV=nhanvien.MaNV
 where month(ngaynhap) =6 and year(ngayNhap)=2018;
-- c??ch l???y d??? li???u t??? 2 b???ng phieu nhap va nhanvien
select phieunhap.SoPN,phieunhap.MaNV,nhanvien.HoTen as H???_t??n_nh??n_vi??n ,phieunhap.NgayNhap,phieunhap.GhiChu
From phieunhap,nhanvien
where  phieunhap.MaNV=nhanvien.MaNV;
-- 3Li???t k?? t???t c??? s???n ph???m c?? ????n v??? t??nh l?? chai
select * from sanpham
where DonViTinh ='chai';
-- 4Li???t k?? chi ti???t nh???p h??ng trong th??ng hi???n h??nh
select phieunhap.SoPN,sanpham.MaSP,sanpham.TenSP,loaisp.TenloaiSP,sanpham.DonViTinh,ctphieunhap.Spluong,ctphieunhap.Gianhap,ctphieuxuat.GiaBan
from (phieunhap.Ma);
-- 5. Li???t k?? c??c nh?? cung c???p c?? giao d???ch mua b??n trong th??ng hi???n h??nh
select nhacungcap.MaNCC,nhacungcap.TenNCC,nhacungcap.DiaChi,nhacungcap.Email,nhacungcap.DienThoai,phieunhap.SoPN,phieunhap.NgayNhap
from nhacungcap, phieunhap
where phieunhap.MaNCC=nhacungcap.MaNCC and month(ngaynhap) =11 and year(ngayNhap)=2022
order by NgayNhap;
-- 6Li???t k?? chi ti???t h??a ????n b??n h??ng trong 6 th??ng ?????u n??m 2018
select phieuxuat.SoPX,nhanvien.HoTen,phieuxuat.NgayBan,sanpham.MaSP,sanpham.TenSP,sanpham.DonViTinh,ctphieuxuat.Soluong,ctphieuxuat.GiaBan;
-- 7 H??y in danh s??ch kh??ch h??ng c?? ng??y sinh nh???t trong th??ng hi???n h??nh
select * from khachhang
where month(NgaySinh) =11;
use tong_hop_2_bai_1;
-- 8Li???t k?? c??c h??a ????n b??n h??ng t??? ng??y 15/04/2018 ?????n 15/05/2018
select ct.SoPX,nv.HoTen,px.NgayBan,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong,ct.GiaBan,(ct.Soluong*ct.GiaBan) as doanh_thu 
from ctphieuxuat ct join phieuxuat px on ct.SoPX = px.SoPX join nhanvien nv on px.MaNV = nv.MaNV join sanpham sp on ct.MaSP = sp.MaSP 
where px.NgayBan between '2022-1-1' and '2022-7-29';
-- 9. Li???t k?? c??c h??a ????n mua h??ng theo t???ng kh??ch h??ng
select px.soPX,px.NgayBan,kh.MaKH,kh.TenKH,ct.GiaBan as Tri_Gia
from phieuxuat px join khachhang kh on px.MaKH=kh.MaKH 
join ctphieuxuat ct on px.SoPX=ct.SoPX;
-- 10. Cho bi???t t???ng s??? chai n?????c x??? v???i Comfort ???? b??n trong 6 th??ng ?????u n??m 2022.
 select sum(ct.Soluong)  as tong_so_chai_da_ban
 from  ctphieuxuat ct join phieuxuat px on ct.SoPX=px.SoPX
 where px.NgayBan between '2022-1-1' and '2022-6-30';
--  11 T???ng k???t doanh thu theo t???ng kh??ch h??ng theo th??ng: th??ng, m?? kh??ch h??ng, t??n kh??ch h??ng, ?????a ch???, t???ng ti???n.
select month(px.Ngayban)as thang ,kh.MaKH,kh.TenKH,kh.Diachi,(ct.Soluong*ct.GiaBan) as tong_tien
from khachhang kh join phieuxuat px on px.MaKH=kh.MaKH join ctphieuxuat ct on px.SoPX=ct.SoPX;
-- 12.Th???ng k?? t???ng s??? l?????ng s???n ph???m ???? b??n theo t???ng th??ng trong n??m, g???m
-- th??ng tin: n??m, th??ng, m?? s???n ph???m, t??n s???n ph???m, ????n v??? t??nh, t???ng s??? l?????ng.
select year(px.NgayBan) as nam , month(px.NgayBan) as thang,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong
from phieuxuat px join ctphieuxuat ct on px.SoPX=ct.SoPX join sanpham sp on sp.MaSP= ct.MaSP;
-- 13.Th???ng k?? doanh thu b??n h??ng trong trong 6 th??ng ?????u n??m 2018, th??ng tin
-- hi???n th??? g???m: th??ng, doanh thu
select month(px.NgayBan)as thang ,(ct.Soluong*ct.GiaBan)as doanh_thu
from ctphieuxuat ct join phieuxuat px on ct.SoPX=px.SoPX;
-- 14.Li???t k?? c??c h??a ????n b??n h??ng c???a th??ng 5 v?? th??ng 6 n??m 2018, g???m c??c
-- th??ng tin: s??? phi???u, ng??y b??n, h??? t??n nh??n vi??n b??n h??ng, h??? t??n kh??ch h??ng, t???ng tr??? gi??
select px.SoPX,px.NgayBan,nv.HoTen,kh.TenKH,(ct.Soluong*GiaBan) as tong_gia_tri
from phieuxuat px join nhanvien nv on px.MaNV=nv.MaNV join khachhang kh on kh.MaKH=px.MaKH join ctphieuxuat ct on px.SoPX=ct.SoPX
where px.NgayBan between '2022-1-1' and '2022-6-30';
-- 15.Cu???i ng??y, nh??n vi??n t???ng k???t c??c h??a ????n b??n h??ng trong ng??y, th??ng tin
-- g???m: s??? phi???u xu???t, m?? kh??ch h??ng, t??n kh??ch h??ng, h??? t??n nh??n vi??n b??n h??ng, ng??y b??n, tr??? gi??.
select px.SoPX,kh.MaKH,kh.TenKH,nv.HoTen as ho_ten_nhan_vien,px.NgayBan,ct.GiaBan as tri_gia
from phieuxuat px join khachhang kh on px.MaKH=kh.MaKH join nhanvien nv on nv.MaNV= px.MaNV  join ctphieuxuat ct on ct.soPX=px.soPX
where  px.NgayBan = '2022-12-05';
-- 16.Th???ng k?? doanh s??? b??n h??ng theo t???ng nh??n vi??n, g???m th??ng tin: m?? nh??n
-- vi??n, h??? t??n nh??n vi??n, m?? s???n ph???m, t??n s???n ph???m, ????n v??? t??nh, t???ng s??? l?????ng..
select nv.MaNV,nv.HoTen,sp.MaSP,sp.TenSP,sp.DonViTinh,sum(ct.Soluong) as tong_so_luong
from nhanvien nv join phieuxuat px on  px.MaNV=nv.MaNV join ctphieuxuat ct on ct.SoPX=px.SoPX join sanpham sp on sp.MaSP=ct.MaSP;
-- 17.Li???t k?? c??c h??a ????n b??n h??ng cho kh??ch v??ng lai (KH01) trong qu?? 5/2022,
-- th??ng tin g???m s??? phi???u xu???t, ng??y b??n, m?? s???n ph???m, t??n s???n ph???m, ????n v??? t??nh, s??? l?????ng, ????n gi??, th??nh ti???n
select kh.TenKH, px.SoPX,px.NgayBan,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong,ct.GiaBan,(ct.GiaBan*ct.SoLuong) as thanh_tien
from phieuxuat px join ctphieuxuat ct on px.SoPX=ct.SoPX join sanpham sp on ct.MaSP= sp.MaSP join khachhang kh on kh.MaKH=px.MaKH
where kh.MaKH ='KH01' and month(px.NgayBan) =5 and year(px.NgayBan)=2022;
-- 18.Li???t k?? c??c s???n ph???m ch??a b??n ???????c trong 6 th??ng ?????u n??m 2018, th??ng tin g???m:
--  m?? s???n ph???m, t??n s???n ph???m, lo???i s???n ph???m, ????n v??? t??nh
select sp.MaSP,sp.TenSP,l.TenloaiSP,sp.DonViTinh
from sanpham sp join loaisp l on sp.MaLoaiSP=l.MaLoaiSp;
-- 19.Li???t k?? danh s??ch nh?? cung c???p kh??ng giao d???ch mua b??n v???i c???a h??ng trong
-- qu?? 5/2022, g???m th??ng tin: m?? nh?? cung c???p, t??n nh?? cung c???p, ?????a ch???, s??? ??i???n tho???i. 
select ncc.MaNCC,ncc.TenNCC,ncc.DiaChi,ncc.DienThoai,pn.ngaynhap
from nhacungcap ncc join phieunhap pn on ncc.MaNCC=pn.MaNCc
where month(pn.NgayNhap) !=11 and year(pn.NgayNhap) !=2022 ;
-- 20.Cho bi???t kh??ch h??ng c?? t???ng tr??? gi?? ????n h??ng l???n nh???t trong 5 th??ng ?????u n??m 2022. 
select kh.TenKH,max(ct.Soluong*ct.GiaBan)as gia_tri_lon_nhat,px.NgayBan
from khachhang kh join phieuxuat px on kh.MaKH=px.MaKH join ctphieuxuat  ct on  ct.SoPX=px.SoPX
where px.NgayBan between '2022-5-1' and '2022-6-1';
-- 21.Cho bi???t m?? kh??ch h??ng v?? s??? l?????ng ????n ?????t h??ng c???a m???i kh??ch h??ng.
select kh.maKH,ct.soluong as so_luong_dat_hang
from khachhang kh join phieuxuat px on kh.MaKH=px.MaKH join ctphieuxuat ct on ct.SoPX=px.SoPX;
-- 22.Cho bi???t m?? nh??n vi??n, t??n nh??n vi??n, t??n kh??ch h??ng k??? c??? nh???ng nh??n vi??n kh??ng ?????i di???n b??n h??ng.
select nv.manv,nv.hoten,kh.tenkh
from nhanvien nv left join phieuxuat px on nv.manv=px.manv  left join khachhang kh on kh.makh=px.makh;
insert into nhanvien(MaNV,HoTen,GioiTinh,DiaChi,NgaySinh,DienThoai,Email,NoiSinh,NgayVaoLam,age)values
('NV04','khong ban dc hang',0,'o dau cung la nha','2000-07-28','021545','ashd@','ha tay','2022-5-5',35);
-- 23.Cho bi???t s??? l?????ng nh??n vi??n nam, s??? l?????ng nh??n vi??n n???
select case nv.gioitinh when 1 then 'nam' else 'nu' end as gioi_tinh,count(nv.manv)as so_luong
from nhanvien nv
group by nv.gioitinh;
-- 24.Cho bi???t m?? nh??n vi??n, t??n nh??n vi??n, s??? n??m l??m vi???c c???a nh???ng nh??n vi??n c?? th??m ni??n cao nh???t.
select nv.manv,nv.hoten, max(year(now())-year(nv.NgayVaoLam)) as tham_nien_lam_viec
from nhanvien nv;
-- 25.H??y cho bi???t h??? t??n c???a nh???ng nh??n vi??n ???? ?????n tu???i v??? h??u (nam:60 tu???i, n???: 55 tu???i)
select nv.hoten
from nhanvien nv
where nv.age>55 or nv.age >60;
-- 26.H??y cho bi???t h??? t??n c???a nh??n vi??n v?? n??m v??? h??u c???a h???. 
select nv.hoten,nv.age
from nhanvien nv
where nv.age>55 or nv.age >60;
-- 27.Cho bi???t ti???n th?????ng t???t d????ng l???ch c???a t???ng nh??n vi??n. Bi???t r???ng - th??m ni??n <1 n??m th?????ng 200.000 - 1 n??m <= th??m ni??n < 3 n??m th?????ng
-- 400.000 - 3 n??m <= th??m ni??n < 5 n??m th?????ng 600.000 - 5 n??m <= th??m ni??n < 10 n??m th?????ng 800.000 - th??m ni??n >= 10 n??m th?????ng 1.000.000
select nv.hoten,(year(now())-year(nv.NgayVaoLam))  as so_nam_tham_nien, case
 when (year(now())-year(nv.NgayVaoLam))  <1 then 'th?????ng 200.000'
 when (year(now())-year(nv.NgayVaoLam))  >=1 and  (year(now())-year(nv.NgayVaoLam)) <=3 then'th?????ng 400.000' 
 when (year(now())-year(nv.NgayVaoLam))  >3 and (year(now())-year(nv.NgayVaoLam)) <=5 then 'th?????ng 600.000'
 when (year(now())-year(nv.NgayVaoLam))   >5 and (year(now())-year(nv.NgayVaoLam)) <= 10 then 'th?????ng 800.000'
 else'th?????ng 1000.000' end as tien_thuong
from nhanvien nv ;
-- 28.Cho bi???t nh???ng s???n ph???m thu???c ng??nh h??ng H??a m??? ph???m
select l.tenloaisp,TenSP
from loaisp l right join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='Ng??nh h??ng h??a m?? ph???m';
-- 29.Cho bi???t nh???ng s???n ph???m thu???c lo???i Qu???n ??o.
select l.tenloaisp,TenSP
from loaisp l join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='lo???i qu???n ??o';
-- 30.Cho bi???t s??? l?????ng s???n ph???m lo???i Qu???n ??o.
select count(l.tenloaisp) as so_loai_quan_ao
from loaisp l 
where l.TenloaiSP='lo???i qu???n ??o';
-- 31.Cho bi???t s??? l?????ng lo???i s???n ph???m ng??nh h??ng H??a m??? ph???m.
select count(l.tenloaisp) as so_loai_san_pham,TenSP
from loaisp l right join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='Ng??nh h??ng h??a m?? ph???m';
-- 32.Cho bi???t s??? l?????ng s???n ph???m theo t???ng lo???i s???n ph???m.
select l.tenloaisp,count(sp.TenSP) as so_luong_loai_san_pham,TenSP
from loaisp l  join sanpham sp on l.MaloaiSP=sp.MaLoaiSP;
select*from sanpham
