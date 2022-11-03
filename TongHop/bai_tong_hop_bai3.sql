Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
-- 1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
-- viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần
select sv.masv,sv.hosv,sv.tensv,sv.hocbong
from dmsv sv ;
-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
-- Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ
select sv.masv,sv.hosv,sv.tensv,sv.phai,sv.ngaysinh
from dmsv sv
order by sv.phai;
-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần
select sv.hosv,sv.tensv,sv.ngaysinh,sv.hocbong
from dmsv sv
order by sv.ngaysinh ,sv.hocbong desc;
-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết.
select * from dmmh mh
where  mh.TenMH like 'T%';
-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái.
select sv.hosv,sv.tensv,sv.ngaysinh,sv.phai
from dmsv sv
where sv.tensv like '__i' or'___i'or'____i'or'_____i';
-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa.
select kh.makhoa,kh.tenkhoa
from dmkhoa kh
where kh.tenkhoa like '_N%';
-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
select sv.hosv,sv.tensv,sv.ngaysinh,sv.phai
from dmsv sv
where sv.hosv like '%thị%';
-- 8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các thông tin: 
-- Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã khoa giảm dần
select sv.hosv,sv.tensv,kh.makhoa,sv.hocbong
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.Makhoa
where sv.hocbong>100000
order by kh.makhoa desc;
-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm các thông tin:
--  Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select sv.hosv,sv.tensv, kh.makhoa,sv.noisinh,sv.hocbong
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where sv.noisinh='Hà Nội';
-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông tin: Mã sinh viên, Mã khoa, Phái
select sv.masv, kh.makhoa,sv.phai,kh.tenkhoa
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where kh.tenkhoa='Vật Lý' or kh.tenkhoa='Anh Văn';
-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày05/06/1992 gồm các thông tin: 
-- Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng.
select sv.masv,sv.ngaysinh,sv.noisinh,sv.hocbong
from dmsv sv 
where sv.ngaysinh between'1991/01/01' and '1992/05/06';
-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các thông tin:
--  Mã sinh viên, Ngày sinh, Phái, Mã khoa
select sv.masv,sv.ngaysinh,sv.phai,kh.makhoa,sv.hocbong
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where sv.hocbong between 80000 and 150000;
-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: 
-- Mã môn học, Tên môn học, Số tiết.
select *
from dmmh mh
where mh.soTiet between 30 and 45;
-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: 
-- Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
select sv.masv,sv.hosv,sv.tensv, kh.tenkhoa,sv.phai
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where kh.tenKhoa in ('Anh văn','Tin Học')  
group by sv.phai
having sv.phai='Nam';
-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
select * from dmsv sv
where sv.tensv like '%N%'
group by sv.phai
having sv.phai='Nữ';
-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 03, gồm các thông tin: 
-- Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
select sv.hosv,sv.tensv,sv.noisinh,sv.ngaysinh
from dmsv sv
where sv.noisinh='Hà Nội' and month( sv.ngaysinh)=3;
-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng
select sv.hosv,sv.tensv, year(now()) - year(sv.ngaysinh)  as age ,sv.hocbong
from dmsv sv
where (year(now()) - year(sv.ngaysinh)) > 20;
-- 18.Danh sách những sinh viên có tuổi từ 30 đến 31, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa
select sv.hosv,sv.tensv, year(now()) - year(sv.ngaysinh)  as age ,kh.tenKhoa
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where (year(now()) - year(sv.ngaysinh)) between 29 and 31;
-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin:
-- Họ tên sinh viên,Phái, Ngày sinh.
select sv.hosv,sv.tensv,sv.phai,sv.ngaysinh
from dmsv sv
where sv.ngaysinh between '1990-01-01' and '1990-04-01';
-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng. 
-- Trong đó, mức học bổng sẽ hiển thị là “Học bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển
-- thị là “Mức trung bình”
select sv.masv,sv.phai,kh.makhoa,sv.hocbong, case when sv.hocbong > 140000 then 'Học bổng cao' else 'Mức trung bình' end as mức_học_bổng
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
where sv.hocbong>0;
-- 21.Cho biết tổng số sinh viên của toàn trường
select count(sv.masv) as tổng_số_học_sinh_toàn_trường from dmsv sv;
-- 22.Cho biết tổng sinh viên và tổng sinh viên nữ.
select count(sv.masv) as tổng_số_học_sinh_toàn_trường ,sum(case sv.phai when 'Nữ' then 1 else 0 end) as tổng_số_học_sinh_Nữ_toàn_trường
from dmsv sv ;

-- 23.Cho biết tổng số sinh viên của từng khoa
select count(sv.MaSV) as tong_sosv,kh.makhoa
from dmsv sv join dmkhoa kh on sv.MaKhoa=kh.MaKhoa
group by kh.makhoa;

-- 24.Cho biết số lượng sinh viên học từng môn.
select  mh.TenMH,count(sv.MaSV) as so_luong_sv
from dmsv sv join ketqua kq on sv.MaSV=kq.MaSV join dmmh mh on kq.MaMH=mh.MaMH
group by mh.tenmh;
-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có trong bảng kq)
select count(kq.mamh) as so_luong_mh
from ketqua kq join dmsv sv on kq.masv=sv.masv;
-- 26.Cho biết tổng số học bổng của mỗi khoa
select  count(sv.hocbong) as tong_so_hoc_bong,kh.tenkhoa
from dmkhoa kh join dmsv sv on kh.maKhoa=sv.makhoa
group by sv.makhoa;
-- 27.Cho biết học bổng cao nhất của mỗi khoa.
select  max(sv.hocbong) as hoc_bong_max,kh.tenkhoa
from dmkhoa kh join dmsv sv on kh.maKhoa=sv.makhoa
group by sv.makhoa;

-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
select kh.tenkhoa,sum(case sv.phai when 'Nam' then 1 else 0 end) as so_sinh_vien_nam,
count(sv.phai)-sum(case sv.phai when 'Nam' then 1 else 0 end) as so_sinh_vien_nu
from dmkhoa kh join dmsv sv on kh.maKhoa=sv.makhoa
group by kh.tenkhoa;
-- 29.Cho biết số lượng sinh viên theo từng độ tuổi
select count(sv.masv) as so_luong_sv , year(now())- year(sv.NgaySinh) as do_tuoi
from dmsv sv
group by year(now())- year(sv.NgaySinh);
-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
select count(sv.masv) as so_luong_sv , year(sv.NgaySinh) as nam_sinh
from dmsv sv
group by year(sv.NgaySinh)
having count(sv.masv) =2 ;
select  sv.hosv,sv.ngaysinh
from dmkhoa kh join dmsv sv on kh.maKhoa=sv.makhoa;
-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
select sv.noiSinh, count(sv.masv) as so_luong_sv 
from dmsv sv
group by sv.noisinh
having  count(sv.masv)=2;
-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.
select mh.tenMh, count(kq.masv) as so_sv_du_thi
from ketqua kq join dmmh mh on kq.MaMh=mh.MaMH
where  kq.lanthi =1
group by mh.tenMh
having count(kq.masv)>3;
-- 33.Cho biết những sinh viên thi lại trên 2 lần.
select  sv.hosv, sv.tensv, kq.lanthi
from dmsv sv join ketqua kq on sv.masv=kq.masv
where kq.lanthi >=2
group by sv.tensv;
-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
select sv.hosv,sv.tensv,avg(kq.diem) as diem_thi_tb_lan_1
from dmsv sv join ketqua kq on sv.masv=kq.masv
where sv.phai ='nam' and kq.lanthi=1
group by sv.masv
having avg(kq.diem) > 7;
-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1
select sv.hosv,sv.tensv,kq.diem as diem_thi_lan_1
from dmsv sv join ketqua kq on sv.masv=kq.masv
where  kq.lanthi=2 and kq.diem <5
group by sv.masv;
-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
select kh.tenkhoa,count(sv.masv) as so_sinh_vien
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
where sv.phai='nam'
group by kh.makhoa
having count(sv.masv)>=2;
-- 37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000
select kh.tenkhoa,sv.hosv,sv.tensv,count(sv.masv) as so_sinh_vien
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
where sv.hocbong between 200000 and 300000
group by kh.makhoa 
having count(sv.masv)=2;
-- 38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.
select count(kq.masv)as soluong, mh.tenmh,case when kq.diem < 5 then 'truot'  else  'do' end as ket_qua_thi
from dmsv sv join ketqua kq on sv.masv=kq.masv join dmmh mh on mh.mamh=kq.mamh
where kq.lanthi =1 
group by kq.mamh, case when kq.diem < 5 then 'truot'  else  'do' end 
order by kq.mamh;
-- 39.Cho biết sinh viên nào có học bổng cao nhất.
select sv.hosv ,sv.tensv,max(sv.hocbong) as học_bổng_cao_nhất
from dmsv sv;
-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
select sv.hosv ,sv.tensv,max(kq.diem) as điểm_cao_nhất_CSDL
from dmsv sv join ketqua kq on sv.masv=kq.masv join dmmh mh on mh.mamh=kq.mamh
where kq.lanthi=1 and mh.tenmh='cơ sở dữ liệu';
-- 41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
select sv.hosv,sv.tensv, max(year(now())-year(sv.NgaySinh) ) as tuổi_max
from dmsv sv join dmkhoa kh on sv.makhoa=kh.makhoa
where kh.tenkhoa='anh văn';
-- 42.Cho biết khoa nào có đông sinh viên nhất.
select kh.tenkhoa,sv.hosv,sv.tensv, count(sv.masv) as  số_lượng_sv
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
group by kh.tenkhoa 
having count(sv.masv)=(select  count(sv.masv) as  số_lượng_sv
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
group by kh.tenkhoa 
order by count(sv.masv) desc
limit 1
);
-- 43.Cho biết khoa nào có đông nữ nhất.
select kh.tenkhoa,sv.hosv,sv.tensv, count(sv.masv) as  số_lượng_sv
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
where sv.phai='nu'
group by kh.tenkhoa 
having count(sv.masv)=(select count(sv.masv) as  số_lượng_sv
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
group by kh.tenkhoa 
order by count(sv.masv) desc
limit 1
);
select kh.tenkhoa, count(sv.masv) as  số_lượng_sv
from dmkhoa kh join dmsv sv on kh.makhoa=sv.makhoa
group by kh.tenkhoa 
having count(sv.masv) >= all(select count(s.masv)
from dmsv s join dmkhoa k on s.makhoa = k.makhoa
group by s.makhoa );
-- 44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
select mh.tenmh,count(sv.masv) as ' tong so sv rot mon'
from dmmh mh join ketqua kq  on mh.mamh=kq.mamh join dmsv sv on sv.masv=kq.masv 
where kq.lanthi =1 and kq.diem <5
group by mh.mamh
limit 1;
-- 45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn điểm thi văn của sinh viên học khoa anh văn.
select sv.hosv,sv.tensv ,kh.tenkhoa,mh.tenmh,kq.diem
from dmsv sv join dmkhoa kh on sv.makhoa=kh.makhoa join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kh.tenkhoa != 'anh văn' and mh.tenmh='Cơ sở dữ liệu' 
group by sv.masv
having kq.diem >(select kq1.diem
from dmsv sv1 join dmkhoa kh1 on sv1.makhoa=kh1.makhoa join ketqua kq1 on kq1.masv=sv1.masv join dmmh mh1 on mh1.mamh=kq1.mamh
where kh1.tenkhoa = 'anh văn'  
group by sv1.masv);
-- 46.Cho biết sinh viên có nơi sinh cùng với Hải.
select sv.hosv,sv.tensv,sv.noisinh
from dmsv sv
where sv.noisinh=(select sv1.noisinh
from dmsv sv1
where sv1.tensv='hải');
-- 47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của sinh viên thuộc khoa anh văn
select sv.hosv,sv.tensv,sv.hocbong
from dmsv sv 
where sv.hocbong > all(select sum(sv1.hocbong)
from dmsv sv1
where sv1.makhoa='av');
-- 48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên học khóa anh văn
select sv.hosv,sv.tensv,sv.hocbong
from dmsv sv 
where sv.hocbong > all(select sv1.hocbong
from dmsv sv1
where sv1.makhoa='av'
group by sv1.masv);
-- 49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm
-- thi lần 1 môn cơ sở dữ liệu của những sinh viên khác.
select sv.hosv,sv.tensv,kq.diem
from dmsv sv join ketqua kq on kq.masv=sv.masv
where kq.mamh= 1 and kq.lanthi =2 
group by sv.masv
having kq.diem >= all(select kq.diem
from dmsv sv join ketqua kq on kq.masv=sv.masv
where kq.mamh= 1 and kq.lanthi =1 
);
-- 50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn.
select sv.hosv,sv.tensv, mh.tenmh,max(kq.diem) as diem_max
from dmsv sv join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh  
group by mh.mamh;
-- 51.Cho biết những khoa không có sinh viên học.
select kh.tenkhoa
from  dmkhoa kh 
where kh.tenkhoa !=all(select kh.tenkhoa
from dmsv sv left join dmkhoa kh on sv.makhoa=kh.makhoa
group by kh.tenkhoa);
-- 52 .Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
select sv1.tensv
from  dmsv sv1 
where sv1.tensv !=all(select sv.tensv
from dmsv sv left join ketqua kq on sv.masv=kq.masv
where kq.mamh=1
group by sv.masv);
-- 53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
select sv1.hosv,sv1.tensv
from  dmsv sv1 join ketqua kq1 on sv1.masv=kq1.masv
where kq1.lanthi !=1 and kq1.lanthi =2
group by sv1.masv;
-- 54.Cho biết môn nào không có sinh viên khoa anh văn .
select mh.tenmh
from dmsv sv join dmkhoa kh on kh.makhoa=sv.makhoa join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kh.tenkhoa != 'Anh Văn' and sv.masv != all(select sv1.masv
from dmsv sv1 join dmkhoa kh1 on kh1.makhoa=sv1.makhoa
where kh1.tenkhoa = 'Anh Văn')
group by mh.mamh;
-- 55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm
select sv1.hosv,sv1.tensv
from dmsv sv1 join dmkhoa kh1 on kh1.makhoa=sv1.makhoa join ketqua kq1 on kq1.masv=sv1.masv join dmmh mh1 on mh1.mamh=kq1.mamh
where kh1.tenkhoa = 'Anh Văn' and sv1.masv != all(select sv.masv 
from dmsv sv join dmkhoa kh on kh.makhoa=sv.makhoa join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where mh.tenmh = 'Văn Phạm' 
group by sv.masv)
group by sv1.masv;
-- 56.Cho biết những sinh viên không rớt môn nào
select sv.hosv,sv.tensv, mh.tenmh, count(sv.masv) as solanthi
from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kq.diem >5 
group by sv.masv
having count(sv.masv) = 4;
-- 57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên chưa bao giờ rớt.
select sv.hosv,sv.tensv
from dmsv sv join dmkhoa kh on kh.makhoa=sv.makhoa
where kh.tenkhoa='anh văn' and sv.hocbong >0
UNION 
select sv.hosv,sv.tensv
from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kq.diem >5 
group by sv.masv
having count(sv.masv) = 4;
-- 58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa nào có ít sinh viên nhận học bổng nhất.
select  kh.tenkhoa,  case count(sv.masv) when 1 then 'có it sinh viên nhật học bổng nhất' else'có  nhiều sinh viên nhật học bổng nhất 'end as tình_trạng_nhận_học_bổng
from dmsv sv join dmkhoa kh on kh.makhoa=sv.makhoa 
where sv.hocbong >0
group by kh.makhoa;
-- 59.Cho biết 3 sinh viên có học nhiều môn nhất.
select sv.hosv,sv.tensv,mh.tenmh ,count(sv.masv) as so_mon_hoc
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kq.lanthi=1
 group by sv.tensv
 order by count(sv.masv) desc
 limit 3;
--  60.Cho biết những môn được tất cả các sinh viên theo học
select sv.hosv,sv.tensv,mh.tenmh ,count(sv.masv) as so_mon_hoc
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
where kq.lanthi=1
 group by sv.tensv
 having count(sv.masv) =5
 order by count(sv.masv) desc
 limit 1;
--  61.Cho biết những sinh viên học những môn giống sinh viên có mã số A04 học
select sv.hosv,sv.tensv
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
 where mh.tenmh like (select  mh.tenmh
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
 where sv.masv like'A04'
 group by mh.tenmh);
--  .Cho biết những sinh viên học những môn bằng đúng những môn mà sinhviên A02 học.
select sv.hosv,sv.tensv
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
 where mh.tenmh = all(select  mh.tenmh
 from dmsv sv  join ketqua kq on kq.masv=sv.masv join dmmh mh on mh.mamh=kq.mamh
 where sv.masv ='A02'
 group by mh.tenmh);
