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

/*
1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh 
viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã 
sinh viên tăng dần
*/
select masv, hosv, tensv, hocbong
from dmsv
order by masv;
/*
2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, 
Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
*/
select masv, hosv, tensv, phai, ngaysinh
from dmsv
order by phai;
/*
3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông 
tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
*/
select concat(hosv," ",tensv) as "Họ tên sinh viên", ngaysinh, hocbong
from dmsv
order by ngaysinh asc, hocbong desc ;
/*
4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã 
môn, Tên môn, Số tiết
*/
select mamh, tenmh, sotiet
from dmmh
where tenmh like "T%" ;
/*
5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm 
các thông tin: Họ tên sinh viên, Ngày sinh, Phái
*/
select concat(hosv," ",tensv) as "Họ tên sinh viên", ngaysinh, phai
from dmsv
where tensv like "%I" ;
/*
6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm 
các thông tin: Mã khoa, Tên khoa.
*/
select makhoa, tenkhoa
from dmkhoa
where tenkhoa like "_N%" ;
/*
7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
*/
select concat(hosv," ",tensv) as "Họ tên sinh viên"
from dmsv
where hosv like "%Thị%" ;
/*
8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các 
thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
được sắp xếp theo thứ tự Mã khoa giảm dần
*/
select masv, concat(hosv," ",tensv) as "Họ tên sinh viên", dmsv.makhoa, dmsv.hocbong
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmsv.hocbong > 100000 
order by dmk.makhoa desc;
/*
9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm 
các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng
*/
select concat(hosv," ",tensv) as "Họ tên sinh viên", makhoa, noisinh, hocbong
from dmsv
where dmsv.hocbong >= 150000 and dmsv.noisinh = "Hà Nội" ;

/*
10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông 
tin: Mã sinh viên, Mã khoa, Phái
*/
select dmsv.masv, dmk.makhoa, dmsv.phai
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmk.tenkhoa in ("Anh văn","Vật lý") ;
/*
11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày 
05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học 
bổng.
*/
select masv, ngaysinh, noisinh, hocbong
from dmsv
where dmsv.ngaysinh between "1991-01-01" and "1992-06-05" ;
/*
12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các 
thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
*/
select masv, ngaysinh, phai, makhoa
from dmsv
where hocbong between 80000 and 150000 ;
/*
13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông 
tin: Mã môn học, Tên môn học, Số tiết
*/

select mamh, tenmh, sotiet
from dmmh
where sotiet between 31 and 44 ;
/*
14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các 
thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
*/
select dmsv.masv, concat(hosv," ",tensv) as "Họ tên sinh viên", dmk.tenkhoa, dmsv.phai
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmsv.phai = "Nam" and dmk.tenkhoa in ("Anh văn","tin học") ;
/*
15.Liệt kê những sinh viên nữ, tên có chứa chữ N
*/
select *
from dmsv 
where phai = "nữ" and tensv like "%n%" ;
/*
16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các 
thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
*/
select hosv, tensv, noisinh, ngaysinh
from dmsv
where noisinh like "Hà Nội" and month(ngaysinh) = 02 ;
/*
17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh 
viên, Tuổi,Học bổng.
*/
select concat(hosv," ",tensv) as "Họ tên sinh viên", (year(now())- year(ngaysinh)) as "Tuổi", hocbong
from dmsv
where (year(now())- year(ngaysinh)) > 20 ;
/*
18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh 
viên, Tuổi, Tên khoa
*/
select  concat(hosv," ",tensv) as "Họ tên sinh viên", (year(now())- year(ngaysinh)) as "Tuổi", dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where (year(now())- year(ngaysinh)) between 20 and 25 ;
/*
19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ
tên sinh viên,Phái, Ngày sinh
*/
select  concat(hosv," ",tensv) as "Họ tên sinh viên", phai, ngaysinh
from dmsv
where year(ngaysinh) = 1990 and month(ngaysinh) in (2,3,4) ;
/*
20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, 
Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học 
bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển 
thị là “Mức trung bình”
*/
select masv, phai, makhoa, 
case 
when hocbong > 500000 then "Học bổng cao"
else "Mức trung bình"
end as "Mức học bổng"
from dmsv;
/*
21.Cho biết tổng số sinh viên của toàn trường
*/
select count(masv) as "tổng số sinh viên"
from dmsv ;
/*
22.Cho biết tổng sinh viên và tổng sinh viên nữ
*/
select count(masv) as "tổng số sinh viên"
from dmsv 
where phai = "nữ";
/*
23.Cho biết tổng số sinh viên của từng khoa
*/
select dmk.tenkhoa, count(masv) as "tổng số sinh viên"
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
group by dmk.makhoa ;
/*
24.Cho biết số lượng sinh viên học từng môn
*/
select dmmh.tenmh ,count(dmsv.masv) as "số lượng sinh viên"
from dmmh join ketqua kq on dmmh.mamh = kq.mamh
		  join dmsv on kq.masv = dmsv.masv
group by dmmh.tenmh ;
/*
25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có 
trong bảng kq)
*/
select count(mamh) as "số lượng môn học"
from ketqua;

/*
26.Cho biết tổng số học bổng của mỗi khoa
*/
select makhoa, count(hocbong)
from dmsv
group by makhoa ;
/*
27.Cho biết học bổng cao nhất của mỗi khoa
*/
select makhoa, max(hocbong)
from dmsv
group by makhoa ;
/*
28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa
*/
select makhoa, sum(phai="nam") as "số sinh viên nam", sum(phai="nữ") as "số sinh viên nữ"
from dmsv
group by makhoa ;
/*
29.Cho biết số lượng sinh viên theo từng độ tuổi
*/
select year(now()) - year(ngaysinh) as "độ tuổi", count(masv) as "số sinh viên"
from dmsv
group by year(now()) - year(ngaysinh) ;
/*
30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường
*/
select year(ngaysinh), count(masv)
from dmsv
group by year(ngaysinh)
having count(masv) = 2 ;
/*
31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường
*/
select noisinh, count(masv)
from dmsv
group by noisinh
having count(masv) >= 2 ;
/*
32.Cho biết những môn nào có trên 3 sinh viên dự thi.
*/
select dmmh.tenmh, count(kq.masv) as "sinh viên dự thi"
from ketqua kq join dmmh on dmmh.mamh = kq.mamh
group by kq.mamh
having count(kq.masv) > 3 ;
/*
33.Cho biết những sinh viên thi lại trên 2 lần.
*/
select dmsv.masv, kq.lanthi
from ketqua kq join dmsv on kq.masv = dmsv.masv
where kq.lanthi >= 2 ;
/*
34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
*/
select dmsv.masv, avg(kq.diem)
from ketqua kq join dmsv on kq.masv = dmsv.masv
where kq.lanthi = 1 and dmsv.phai ="nam"
group by  dmsv.masv
having  avg(kq.diem) > 7;
/*
35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.

*/
select dmsv.masv
from ketqua kq join dmsv on kq.masv = dmsv.masv
where kq.lanthi = 1 and kq.diem < 5 
group by dmsv.masv
having count(kq.mamh) >= 2 ;
/*
36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
*/
select dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
group by dmk.tenkhoa
having count(dmsv.phai = "nam") > 2 ;
/*
37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000.
*/
select dmk.tenkhoa
from dmsv join dmkhoa dmk on dmsv.makhoa = dmk.makhoa
where dmsv.hocbong between 100000 and 300000
group by dmk.tenkhoa
having count(dmsv.masv) = 2 ;
/*
38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn 
trong lần thi 1
*/
select  sum(case when kq.diem >= 5 then 1 else 0 end) as "số lượng sinh viên đậu" ,
		sum(case when kq.diem < 5 then 1 else 0 end) as "số lượng sinh viên rớt" 
from dmsv join ketqua kq on kq.masv = dmsv.masv
		  join dmmh on dmmh.mamh = kq.mamh
where kq.lanthi = 1
group by kq.mamh ;
/*
39.Cho biết sinh viên nào có học bổng cao nhất
*/
select masv, max(hocbong)
from dmsv 
group by masv
having max(hocbong);
/*
40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
*/
select kq.masv, kq.diem
from dmsv join ketqua kq on kq.masv = dmsv.masv
		  join dmmh on dmmh.mamh = kq.mamh
where kq.lanthi = 1 and dmmh.tenmh = "cơ sở dữ liệu"
order by kq.diem desc
limit 1 ;
/*
41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
*/
select dmsv.masv, max(year(now())-year(ngaysinh)) as "tuổi lớn nhất"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
where dmk.tenkhoa = "anh văn" 
group by dmsv.masv
order by max(year(now())-year(ngaysinh)) desc
limit 1;
/*
42.Cho biết khoa nào có đông sinh viên nhất.
*/
select dmk.tenkhoa, COUNT(dmsv.masv) as "Số lượng sinh viên"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
group by dmk.makhoa, dmk.tenkhoa
having COUNT(dmsv.masv) = (
  select MAX(cnt)
  from (
    select COUNT(dmsv.masv) as cnt
    from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
    group by dmk.makhoa
  ) as max_counts
);
/*
43.Cho biết khoa nào có đông nữ nhất.
*/
select dmk.tenkhoa, COUNT(dmsv.phai = 'nữ') as "Số lượng nữ sinh viên"
from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
where dmsv.phai = 'nữ'
group by dmk.makhoa, dmk.tenkhoa
having COUNT(dmsv.phai = 'nữ') = (
  select MAX(cnt)
  from (
    select COUNT(dmsv.phai = 'nữ') as cnt
    from dmsv join dmkhoa dmk on dmk.makhoa = dmsv.makhoa
    where dmsv.phai = 'nữ'
    group by dmk.makhoa
  ) as max_counts
);

/*
44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
*/
/*
45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn 
điểm thi văncủa sinh viên học khoa anh văn
*/
/*
46.Cho biết sinh viên có nơi sinh cùng với Hải.

*/
/*
47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của
sinh viên thuộc khoa anh văn
*/
/*
48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên 
học khóa anh văn

*/
/*
49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm 
thi lần 1 môn cơ sở dữ liệu của những sinh viên khác
*/
/*
50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn
*/
/*
51.Cho biết những khoa không có sinh viên học.
*/
/*
52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu
*/
/*
53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
*/
/*
54.Cho biết môn nào không có sinh viên khoa anh văn học
*/
/*
55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm
*/
/*
56.Cho biết những sinh viên không rớt môn nào.
*/
/*
57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên 
chưa bao giờ rớt.
*/
/*
58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa 
nào có ít sinh viên nhận học bổng nhất
*/
/*
59.Cho biết 3 sinh viên có học nhiều môn nhất
*/
/*
60.Cho biết những môn được tất cả các sinh viên theo học.
*/
/*
61.Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học.
*/
/*
62.Cho biết những sinh viên học những môn bằng đúng những môn mà sinh 
viên A02 học
*/
