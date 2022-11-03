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
INSERT INTO `khachhang` VALUES ('KH01','Nguyễn Việt Anh ','Giang biên Vĩnh bảo Hải phòng','1999-07-29','0123456789'),('KH02','Nguyễn Văn Kháng ','Giang biên Vĩnh bảo Hải phòng','1975-08-07','0945692610'),('KH03','Phạm Thị Nghĩa ','Việt Tiến Vĩnh bảo Hải phòng','1977-08-01','0884088920'),('KH04','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),('KH05','Nguyễn Văn A','Trên cung đình huyện may bay xã tiên cảnh','2000-07-29','098765431'),('KH06','Nguyễn Văn A','Tòa nhà sông đà','2000-11-29','098765431'),('KH07','Nguyễn thi sáu','Tòa nhà sông đà','2000-07-29','098741411'),('KH08','Nguyễn vi bao','Tòa nhà sông đà','2000-11-09','057787871'),('KH10','Nguyễn Văn A','Tòa nhà sông đà','2000-11-02','0945692610');
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
INSERT INTO `loaisp` VALUES ('L001','Ngành hàng hóa mĩ phẩm','hàng rất tốt và bền'),('L002','ngành dệt may','hàng tốt và bền'),('L003','loại quần áo','hàng dùng bình dân'),('L004','loại đồ ăn',' rât nhanh hỏng'),('L005','loại đồ hết hạn','không nên sủ dụng');
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
INSERT INTO `nhacungcap` VALUES ('NCC01','Vinamilk','Hà nội - Nam từ liêm - 120 Mễ trì thượng','113','suatuoi@gmail.com','porn.com'),('NCC02','Sắt Thép ','Sơn la-Đoàn Tập- đường Chiến thắng','114','satThep@gmail.com','xnxx.com'),('NCC03','Vật liệu xây dựng','Hải Phòng - Vĩnh bảo -Giang biên','113','vatlieu@gmail.com','hentaiz.com'),('NCC04','Đồ chơi người lớn','Bắc ninh - Nam từ liêm - 120 Mễ trì thượng','112','dochoi@gmail.com','vnxx.com'),('NCC05','kiem ','chem nhau','0987','kiemhiep@gmail.com','danhnhau.com');
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
INSERT INTO `nhanvien` VALUES ('NV01','Nguyễn văn A',_binary '','đỉnh núi vân sươn mây trời lồng lộng','1999-07-29 00:00:00','09456321','1234@gmail.com','Dưới đất','2015-07-29',NULL,95),('NV02','Nguyễn văn B',_binary '','ngoài vũ trụ','2004-12-12 00:00:00','0984088920','1234@gmail.com','Dưới đất','2020-01-05',NULL,66),('NV03','Nguyễn văn C',_binary '','trên sao hỏa','2010-06-10 00:00:00','02194563','1234@gmail.com','Ngoài tráu đẩ','2022-06-02',NULL,51),('NV04','khong ban dc hang',_binary '\0','o dau cung la nha','2000-07-28 00:00:00','021545','ashd@','ha tay','2012-05-05',NULL,56);
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
INSERT INTO `phieunhap` VALUES ('PN001','NV01','NCC03','2022-11-12','bà nghĩa là 1 doan nhân rất uy tín '),('PN002','NV03','NCC01','2018-06-04','Việt anh là 1 doan nhân rất uy tín '),('PN003','NV01','NCC02','2018-06-12',' cậu ấy doan nhân rất uy tín '),('PN004','NV03','NCC02','2022-11-22',' là 1 doan nhân rất uy tín '),('PN005','NV02','NCC04','2018-06-02','bà nghĩa là 1 doan nhân rất uy tín ');
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
INSERT INTO `phieuxuat` VALUES ('PX001','2022-12-05','xuất hết trong 1 ngày','NV01','KH03'),('PX002','2022-05-15','xuất hết trong 1 ngày','NV03','KH01'),('PX003','2022-05-25','xuất hết trong 1 ngày','NV02','KH02'),('PX004','2022-05-11','hehehihi','NV01','KH01');
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
INSERT INTO `sanpham` VALUES ('SP01','L003','Đôi dép thần kì','chai','hàng rất thân thiện với môi trường'),('SP02','L001','Áo khoác hàng hiệu','chai','Đô la mĩ hàng cao cấp'),('SP03','L002','Quần hiphop','VND','hàng rất phong cách'),('SP04','L004','mũ đính kim cương','chai','hàng rất quý tộc'),('SP05','L001','THuốc nhuộm tóc','lọ','để nhuộm tóc');
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
('KH04','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),
('KH05','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),
('KH06','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),
('KH08','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),
('KH07','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431'),
('KH10','Nguyễn Văn A','Tòa nhà sông đà','2000-07-29','098765431');
update  khachhang
set SoDT ='0945692610'
where MaKH ='KH10';
update khachhang
set Diachi ='Trên cung đình huyện may bay xã tiên cảnh'
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
-- bai6 : 1: Liệt kê thông tin về nhân viên trong cửa hàng 
select MaNV,HoTen,GioiTinh,NgaySinh,DiaChi,DienThoai,age from nhanvien order by age ;
-- 2:Liệt kê các hóa đơn nhập hàng trong tháng 6/2018  nhập dữ liệu tù 3 bảng phieunhap , nhaCC va nhanvien
select phieunhap.SoPN,phieunhap.MaNV,nhanvien.HoTen as Họ_tên_nhân_viên ,nhacungcap.TenNCC,phieunhap.NgayNhap,phieunhap.GhiChu
from (phieunhap inner join nhacungcap on phieunhap.MaNCC=nhacungcap.MaNCC)
inner join nhanvien on phieunhap.MaNV=nhanvien.MaNV
 where month(ngaynhap) =6 and year(ngayNhap)=2018;
-- cách lấy dữ liệu từ 2 bảng phieu nhap va nhanvien
select phieunhap.SoPN,phieunhap.MaNV,nhanvien.HoTen as Họ_tên_nhân_viên ,phieunhap.NgayNhap,phieunhap.GhiChu
From phieunhap,nhanvien
where  phieunhap.MaNV=nhanvien.MaNV;
-- 3Liệt kê tất cả sản phẩm có đơn vị tính là chai
select * from sanpham
where DonViTinh ='chai';
-- 4Liệt kê chi tiết nhập hàng trong tháng hiện hành
select phieunhap.SoPN,sanpham.MaSP,sanpham.TenSP,loaisp.TenloaiSP,sanpham.DonViTinh,ctphieunhap.Spluong,ctphieunhap.Gianhap,ctphieuxuat.GiaBan
from (phieunhap.Ma);
-- 5. Liệt kê các nhà cung cấp có giao dịch mua bán trong tháng hiện hành
select nhacungcap.MaNCC,nhacungcap.TenNCC,nhacungcap.DiaChi,nhacungcap.Email,nhacungcap.DienThoai,phieunhap.SoPN,phieunhap.NgayNhap
from nhacungcap, phieunhap
where phieunhap.MaNCC=nhacungcap.MaNCC and month(ngaynhap) =11 and year(ngayNhap)=2022
order by NgayNhap;
-- 6Liệt kê chi tiết hóa đơn bán hàng trong 6 tháng đầu năm 2018
select phieuxuat.SoPX,nhanvien.HoTen,phieuxuat.NgayBan,sanpham.MaSP,sanpham.TenSP,sanpham.DonViTinh,ctphieuxuat.Soluong,ctphieuxuat.GiaBan;
-- 7 Hãy in danh sách khách hàng có ngày sinh nhật trong tháng hiện hành
select * from khachhang
where month(NgaySinh) =11;
use tong_hop_2_bai_1;
-- 8Liệt kê các hóa đơn bán hàng từ ngày 15/04/2018 đến 15/05/2018
select ct.SoPX,nv.HoTen,px.NgayBan,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong,ct.GiaBan,(ct.Soluong*ct.GiaBan) as doanh_thu 
from ctphieuxuat ct join phieuxuat px on ct.SoPX = px.SoPX join nhanvien nv on px.MaNV = nv.MaNV join sanpham sp on ct.MaSP = sp.MaSP 
where px.NgayBan between '2022-1-1' and '2022-7-29';
-- 9. Liệt kê các hóa đơn mua hàng theo từng khách hàng
select px.soPX,px.NgayBan,kh.MaKH,kh.TenKH,ct.GiaBan as Tri_Gia
from phieuxuat px join khachhang kh on px.MaKH=kh.MaKH 
join ctphieuxuat ct on px.SoPX=ct.SoPX;
-- 10. Cho biết tổng số chai nước xả vải Comfort đã bán trong 6 tháng đầu năm 2022.
 select sum(ct.Soluong)  as tong_so_chai_da_ban
 from  ctphieuxuat ct join phieuxuat px on ct.SoPX=px.SoPX
 where px.NgayBan between '2022-1-1' and '2022-6-30';
--  11 Tổng kết doanh thu theo từng khách hàng theo tháng: tháng, mã khách hàng, tên khách hàng, địa chỉ, tổng tiền.
select month(px.Ngayban)as thang ,kh.MaKH,kh.TenKH,kh.Diachi,(ct.Soluong*ct.GiaBan) as tong_tien
from khachhang kh join phieuxuat px on px.MaKH=kh.MaKH join ctphieuxuat ct on px.SoPX=ct.SoPX;
-- 12.Thống kê tổng số lượng sản phẩm đã bán theo từng tháng trong năm, gồm
-- thông tin: năm, tháng, mã sản phẩm, tên sản phẩm, đơn vị tính, tổng số lượng.
select year(px.NgayBan) as nam , month(px.NgayBan) as thang,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong
from phieuxuat px join ctphieuxuat ct on px.SoPX=ct.SoPX join sanpham sp on sp.MaSP= ct.MaSP;
-- 13.Thống kê doanh thu bán hàng trong trong 6 tháng đầu năm 2018, thông tin
-- hiển thị gồm: tháng, doanh thu
select month(px.NgayBan)as thang ,(ct.Soluong*ct.GiaBan)as doanh_thu
from ctphieuxuat ct join phieuxuat px on ct.SoPX=px.SoPX;
-- 14.Liệt kê các hóa đơn bán hàng của tháng 5 và tháng 6 năm 2018, gồm các
-- thông tin: số phiếu, ngày bán, họ tên nhân viên bán hàng, họ tên khách hàng, tổng trị giá
select px.SoPX,px.NgayBan,nv.HoTen,kh.TenKH,(ct.Soluong*GiaBan) as tong_gia_tri
from phieuxuat px join nhanvien nv on px.MaNV=nv.MaNV join khachhang kh on kh.MaKH=px.MaKH join ctphieuxuat ct on px.SoPX=ct.SoPX
where px.NgayBan between '2022-1-1' and '2022-6-30';
-- 15.Cuối ngày, nhân viên tổng kết các hóa đơn bán hàng trong ngày, thông tin
-- gồm: số phiếu xuất, mã khách hàng, tên khách hàng, họ tên nhân viên bán hàng, ngày bán, trị giá.
select px.SoPX,kh.MaKH,kh.TenKH,nv.HoTen as ho_ten_nhan_vien,px.NgayBan,ct.GiaBan as tri_gia
from phieuxuat px join khachhang kh on px.MaKH=kh.MaKH join nhanvien nv on nv.MaNV= px.MaNV  join ctphieuxuat ct on ct.soPX=px.soPX
where  px.NgayBan = '2022-12-05';
-- 16.Thống kê doanh số bán hàng theo từng nhân viên, gồm thông tin: mã nhân
-- viên, họ tên nhân viên, mã sản phẩm, tên sản phẩm, đơn vị tính, tổng số lượng..
select nv.MaNV,nv.HoTen,sp.MaSP,sp.TenSP,sp.DonViTinh,sum(ct.Soluong) as tong_so_luong
from nhanvien nv join phieuxuat px on  px.MaNV=nv.MaNV join ctphieuxuat ct on ct.SoPX=px.SoPX join sanpham sp on sp.MaSP=ct.MaSP;
-- 17.Liệt kê các hóa đơn bán hàng cho khách vãng lai (KH01) trong quý 5/2022,
-- thông tin gồm số phiếu xuất, ngày bán, mã sản phẩm, tên sản phẩm, đơn vị tính, số lượng, đơn giá, thành tiền
select kh.TenKH, px.SoPX,px.NgayBan,sp.MaSP,sp.TenSP,sp.DonViTinh,ct.Soluong,ct.GiaBan,(ct.GiaBan*ct.SoLuong) as thanh_tien
from phieuxuat px join ctphieuxuat ct on px.SoPX=ct.SoPX join sanpham sp on ct.MaSP= sp.MaSP join khachhang kh on kh.MaKH=px.MaKH
where kh.MaKH ='KH01' and month(px.NgayBan) =5 and year(px.NgayBan)=2022;
-- 18.Liệt kê các sản phẩm chưa bán được trong 6 tháng đầu năm 2018, thông tin gồm:
--  mã sản phẩm, tên sản phẩm, loại sản phẩm, đơn vị tính
select sp.MaSP,sp.TenSP,l.TenloaiSP,sp.DonViTinh
from sanpham sp join loaisp l on sp.MaLoaiSP=l.MaLoaiSp;
-- 19.Liệt kê danh sách nhà cung cấp không giao dịch mua bán với cửa hàng trong
-- quý 5/2022, gồm thông tin: mã nhà cung cấp, tên nhà cung cấp, địa chỉ, số điện thoại. 
select ncc.MaNCC,ncc.TenNCC,ncc.DiaChi,ncc.DienThoai,pn.ngaynhap
from nhacungcap ncc join phieunhap pn on ncc.MaNCC=pn.MaNCc
where month(pn.NgayNhap) !=11 and year(pn.NgayNhap) !=2022 ;
-- 20.Cho biết khách hàng có tổng trị giá đơn hàng lớn nhất trong 5 tháng đầu năm 2022. 
select kh.TenKH,max(ct.Soluong*ct.GiaBan)as gia_tri_lon_nhat,px.NgayBan
from khachhang kh join phieuxuat px on kh.MaKH=px.MaKH join ctphieuxuat  ct on  ct.SoPX=px.SoPX
where px.NgayBan between '2022-5-1' and '2022-6-1';
-- 21.Cho biết mã khách hàng và số lượng đơn đặt hàng của mỗi khách hàng.
select kh.maKH,ct.soluong as so_luong_dat_hang
from khachhang kh join phieuxuat px on kh.MaKH=px.MaKH join ctphieuxuat ct on ct.SoPX=px.SoPX;
-- 22.Cho biết mã nhân viên, tên nhân viên, tên khách hàng kể cả những nhân viên không đại diện bán hàng.
select nv.manv,nv.hoten,kh.tenkh
from nhanvien nv left join phieuxuat px on nv.manv=px.manv  left join khachhang kh on kh.makh=px.makh;
insert into nhanvien(MaNV,HoTen,GioiTinh,DiaChi,NgaySinh,DienThoai,Email,NoiSinh,NgayVaoLam,age)values
('NV04','khong ban dc hang',0,'o dau cung la nha','2000-07-28','021545','ashd@','ha tay','2022-5-5',35);
-- 23.Cho biết số lượng nhân viên nam, số lượng nhân viên nữ
select case nv.gioitinh when 1 then 'nam' else 'nu' end as gioi_tinh,count(nv.manv)as so_luong
from nhanvien nv
group by nv.gioitinh;
-- 24.Cho biết mã nhân viên, tên nhân viên, số năm làm việc của những nhân viên có thâm niên cao nhất.
select nv.manv,nv.hoten, max(year(now())-year(nv.NgayVaoLam)) as tham_nien_lam_viec
from nhanvien nv;
-- 25.Hãy cho biết họ tên của những nhân viên đã đến tuổi về hưu (nam:60 tuổi, nữ: 55 tuổi)
select nv.hoten
from nhanvien nv
where nv.age>55 or nv.age >60;
-- 26.Hãy cho biết họ tên của nhân viên và năm về hưu của họ. 
select nv.hoten,nv.age
from nhanvien nv
where nv.age>55 or nv.age >60;
-- 27.Cho biết tiền thưởng tết dương lịch của từng nhân viên. Biết rằng - thâm niên <1 năm thưởng 200.000 - 1 năm <= thâm niên < 3 năm thưởng
-- 400.000 - 3 năm <= thâm niên < 5 năm thưởng 600.000 - 5 năm <= thâm niên < 10 năm thưởng 800.000 - thâm niên >= 10 năm thưởng 1.000.000
select nv.hoten,(year(now())-year(nv.NgayVaoLam))  as so_nam_tham_nien, case
 when (year(now())-year(nv.NgayVaoLam))  <1 then 'thưởng 200.000'
 when (year(now())-year(nv.NgayVaoLam))  >=1 and  (year(now())-year(nv.NgayVaoLam)) <=3 then'thưởng 400.000' 
 when (year(now())-year(nv.NgayVaoLam))  >3 and (year(now())-year(nv.NgayVaoLam)) <=5 then 'thưởng 600.000'
 when (year(now())-year(nv.NgayVaoLam))   >5 and (year(now())-year(nv.NgayVaoLam)) <= 10 then 'thưởng 800.000'
 else'thưởng 1000.000' end as tien_thuong
from nhanvien nv ;
-- 28.Cho biết những sản phẩm thuộc ngành hàng Hóa mỹ phẩm
select l.tenloaisp,TenSP
from loaisp l right join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='Ngành hàng hóa mĩ phẩm';
-- 29.Cho biết những sản phẩm thuộc loại Quần áo.
select l.tenloaisp,TenSP
from loaisp l join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='loại quần áo';
-- 30.Cho biết số lượng sản phẩm loại Quần áo.
select count(l.tenloaisp) as so_loai_quan_ao
from loaisp l 
where l.TenloaiSP='loại quần áo';
-- 31.Cho biết số lượng loại sản phẩm ngành hàng Hóa mỹ phẩm.
select count(l.tenloaisp) as so_loai_san_pham,TenSP
from loaisp l right join sanpham sp on l.MaloaiSP=sp.MaLoaiSP
where l.TenloaiSP='Ngành hàng hóa mĩ phẩm';
-- 32.Cho biết số lượng sản phẩm theo từng loại sản phẩm.
select l.tenloaisp,count(sp.TenSP) as so_luong_loai_san_pham,TenSP
from loaisp l  join sanpham sp on l.MaloaiSP=sp.MaLoaiSP;
select*from sanpham
