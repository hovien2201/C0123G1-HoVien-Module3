CREATE DATABASE furama;
USE furama;

-- task 1,2
CREATE TABLE vi_tri(
      ma_vi_tri INT AUTO_INCREMENT,
      ten_vi_tri VARCHAR(45),
      PRIMARY KEY(ma_vi_tri)
);
INSERT INTO vi_tri(ma_vi_tri,ten_vi_tri) VALUE(1,"thang");
DELETE FROM vi_tri WHERE ma_vi_tri =1;
CREATE TABLE trinh_do(
	  ma_trinh_do INT,
      ten_trinh_do VARCHAR(45),
      PRIMARY KEY(ma_trinh_do)
);
CREATE TABLE bo_phan(
	  ma_bo_phan INT,
      ten_bo_phan VARCHAR(45),
      PRIMARY KEY(ma_bo_phan)
);
CREATE TABLE nhan_vien(
	  ma_nhan_vien INT PRIMARY KEY,
      ho_ten VARCHAR(45) NOT NULL,
      ngay_sinh DATE NOT NULL,
      so_cmnd VARCHAR(45) NOT NULL UNIQUE,
      luong DOUBLE NOT NULL,
      so_dien_thoai VARCHAR(45) NOT NULL,
      email VARCHAR(45),
      dia_chi VARCHAR(45),
      ma_vi_tri INT,FOREIGN KEY(ma_vi_tri)REFERENCES vi_tri(ma_vi_tri),
      ma_trinh_do INT,FOREIGN KEY(ma_trinh_do)REFERENCES trinh_do(ma_trinh_do),
      ma_bo_phan INT,FOREIGN KEY(ma_bo_phan)REFERENCES bo_phan(ma_bo_phan)
);
CREATE TABLE loai_khach(
	  ma_loai_khach INT PRIMARY KEY,
      ten_loai_khach VARCHAR(45) NOT NULL
);
CREATE TABLE khach_hang(
	  ma_khach_hang INT PRIMARY KEY,
      ma_loai_khach INT,FOREIGN KEY(ma_loai_khach)REFERENCES loai_khach(ma_loai_khach),
      ho_ten VARCHAR(45) NOT NULL,
      ngay_sinh DATE NOT NULL,
      gioi_tinh BIT(1) NOT NULL,
      so_cmnd VARCHAR(45) NOT NULL,
      so_dien_thoai VARCHAR(45) NOT NULL,
      email VARCHAR(45),
      dia_chi VARCHAR(45)
);
CREATE TABLE dich_vu_di_kem(
	  ma_dich_vu_di_kem INT PRIMARY KEY,
      ten_dich_vu_di_kem VARCHAR(45) NOT NULL,
      gia DOUBLE,
      don_vi VARCHAR(45),
      trang_thai VARCHAR(45)
);
CREATE TABLE loai_dich_vu(
	  ma_loai_dich_vu INT PRIMARY KEY,
      ten_loai_dich_vu VARCHAR(45) NOT NULL
);
CREATE TABLE kieu_thue(
	  ma_kieu_thue INT PRIMARY KEY,
      ten_kieu_thue VARCHAR(45)
);
CREATE TABLE dich_vu(
	  ma_dich_vu INT PRIMARY KEY,
      ten_dich_vu VARCHAR(45) NOT NULL,
      dien_tich INT,
      chi_phi_thue DOUBLE NOT NULL,
      so_nguoi_toi_da INT,
      ma_kieu_thue INT,FOREIGN KEY(ma_kieu_thue)REFERENCES kieu_thue(ma_kieu_thue),
      ma_loai_dich_vu INT,FOREIGN KEY(ma_loai_dich_vu)REFERENCES loai_dich_vu(ma_loai_dich_vu),
      tieu_chuan_phong VARCHAR(45),
      mo_ta_tien_nghi_khac VARCHAR(45),
      dien_tich_ho_boi DOUBLE,
      so_tang INT,
      dich_vu_mien_phi_di_kem TEXT
);
CREATE TABLE hop_dong(
	  ma_hop_dong INT PRIMARY KEY,
      ngay_lam_hop_dong DATETIME NOT NULL,
      ngay_ket_thuc DATETIME NOT NULL,
      tien_dat_coc DOUBLE NOT NULL,
      ma_nhan_vien INT,FOREIGN KEY(ma_nhan_vien)REFERENCES nhan_vien(ma_nhan_vien),
      ma_khach_hang INT ,FOREIGN KEY(ma_khach_hang)REFERENCES khach_hang(ma_khach_hang),
      ma_dich_vu INT,FOREIGN KEY(ma_dich_vu)REFERENCES dich_vu(ma_dich_vu)
);
CREATE TABLE hop_dong_chi_tiet(
	  ma_hop_dong_chi_tiet INT PRIMARY KEY,
      ma_hop_dong INT,FOREIGN KEY(ma_hop_dong)REFERENCES hop_dong(ma_hop_dong),
      ma_dich_vu_di_kem INT,FOREIGN KEY(ma_dich_vu_di_kem)REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem),
      so_luong INT NOT NULL
);

-- thêm dữ liệu task3
INSERT INTO VI_Tri VALUE(1,"LỄ Tân"),(2,"PhỤC VỤ"),(3,"Chuyên VIÊN"),(4,"Giám sát"),(5,"Quản lí"),(6,"Giám đốc");
INSERT INTO trinh_do VALUE(1,"TRUNg cấp"),(2,"CAO ĐẲng"),(3,"Đại HỌC"),(4,"Sau Đại HỌC");
INSERT INTO BO_PHan VALUE(1,"Sale-MArkETING"),(2,"Hành ChíNH"),(3,"Phục Vụ"),(4,"QUẢN Lý");
INSERT INTO NHan_vien VALUES(1,'Nguyễn Văn AN','1970-11-07','456231786',10000000,'0901234121','aNnguyen@gmail.com','295 NGUYỄN TẤT Thành, Đà NẵNg',1,3,1),
(2,'Lê VăN Bình','1997-04-09','654231234',7000000,'0934212314','binhlv@gmail.cOm','22 Yên BÁi, Đà Nẵng',1,2,2),
(3,'Hồ Thị YẾn','1995-12-12','999231723',14000000,'0412352315','THIyEN@gmail.com','K234/11 Điện Biên PHủ, Gia Lai',1,3,2),
(4,'Võ Công TOản','1980-04-04','123231365',17000000,'0374443232','toan0404@GMAIl.COm','77 Hoàng Diệu, Quảng Trị',1,4,4),
(5,'NGUYỄN BỈNH Phát','1999-12-09','454363232',6000000,'0902341231','phatphat@gmaiL.COM','43 Yên Bái, Đà Nẵng',2,1,1),
(6,'Khúc NgUyễn An Nghi','2000-11-08','964542311',7000000,'0978653213','annghi20@gmail.com','294 NGUYễN Tất Thành, Đà Nẵng',2,2,3),
(7,'Nguyễn Hữu Hà','1993-01-01','534323231',8000000,'0941234553','nhh0101@gmail.com','4 Nguyễn Chí Thanh, HUẾ',2,3,2),
(8,'Nguyễn Hà Đông','1989-09-03','234414123',9000000,'0642123111','donghanguyen@gmaiL.com','111 Hùng Vương, Hà Nội',2,4,4),
(9,'Tòng Hoang','1982-09-03','256781231',6000000,'0245144444','hoangtoNg@gmail.com','213 Hàm NgHi, Đà Nẵng',2,4,4),
(10,'NguyễN CÔNG ĐạO','1994-01-08','755434343',8000000,	'0988767111','nguyencongdAo12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);
INSERT INTO loai_khach VALUE(1,"Diamond"),(2,"Platinium"),(3,"Gold"),(4,"Silver"),(5,"Member");
INSERT INTO khach_hang VALUES
(1,5,'Nguyễn Thị Hào','1970-11-07',0,'643431213','0945423362','thihao07@gmail.com','23 Nguyễn Hoàng, Đà Nẵng'),
(2,3,'Phạm Xuân Diệu','1992-08-08',1,'865342123','0954333333','xuandieu92@gmail.com','K77/22 Thái Phiên, Quảng Trị'),
(3,1,'Trương Đình Nghệ','1990-02-27',1,'488645199','0373213122','nghenhan2702@gmail.com','K323/12 Ông Ích Khiêm, Vinh'),
(4,1,'Dương Văn Quan','1981-07-08',1,'543432111','0490039241','duongquan@gmail.com','K453/12 Lê Lợi, Đà Nẵng'),
(5,4,'Hoàng Trần Nhi Nhi','1995-12-09',0,'795453345','0312345678','nhinhi123@gmail.com','224 Lý Thái Tổ, Gia Lai'),
(6,4,'Tôn Nữ Mộc Châu','2005-12-06',0,'732434215','0988888844','tonnuchau@gmail.com','37 Yên Thế, Đà Nẵng'),
(7,1,'Nguyễn Mỹ Kim','1984-04-08',0,'856453123','0912345698','kimcuong84@gmail.com','K123/45 Lê Lợi, Hồ Chí Minh'),
(8,3,'Nguyễn Thị Hào','1999-04-08',0,'965656433','0763212345','haohao99@gmail.com','55 Nguyễn Văn Linh, Kon Tum'),
(9,1,'Trần Đại Danh','1994-07-01',1,'432341235','0643343433','danhhai99@gmail.com','24 Lý Thường Kiệt, Quảng Ngãi'),
(10,2,'Nguyễn Tâm Đắc','1989-07-01',1,'344343432','0987654321','dactam@gmail.com','22 Ngô Quyền, Đà Nẵng');
INSERT INTO dich_vu_di_kem VALUE(1,"Karaoke",100000,"giờ",'tiện nghi,hiện đại'),
(2,"thuê xe máy",10000,"chiếc",'tiện nghi,hiện đại'),
(3,"thuê xe đạp",20000,"chiếc",'tiện nghi,hiện đại');
INSERT INTO loai_dich_vu VALUE(1,"Villa"),(2,"HoUSE"),(3,"Room");
INSERT INTO kieu_thue VALUE(1,"year"),(2,"month"),(3,"day"),(4,"hour");
INSERT INTO dich_vu VALUES
(1,'Villa Beach Front',25000,1000000,10,3,1,'vip','Có hồ bơi',500,4,null),
(2,'HoUSE Princess 01',14000,5000000,7,2,2,'vip','Có thêm bếp nướng',null,3,null),
(3,'Room Twin 01',5000,1000000,2,4,3,'nORmal','Có tivi',null,null,'1 Xe máy, 1 Xe đạp'),
(4,'Villa No Beach Front',22000,9000000,8,3,1,'nORmal','Có hồ bơi',300,3,null),
(5,'HoUSE Princess 02',10000,4000000,5,3,2,'nORmal','Có thêm bếp nướng',null,2,null),
(6,'Room Twin 02',3000,900000,2,4,3,'nORmal','Có tivi',null,null,'1 Xe máy');
INSERT INTO hop_dong VALUE(1,"2023-11-4","2023-11-6",0,3,1,3),
(2,"2023-1-4","2023-1-6",200000,7,3,1),
(3,"2023-6-4","2023-6-8",500000,3,4,2),
(4,"2023-1-12","2023-1-16",1000000,7,5,5),
(5,"2021-11-9","2021-11-14",0,7,2,6),
(6,"2021-1-8","2021-1-12",600000,7,7,6),
(7,"2023-12-6","2023-12-8",700000,7,4,4),
(8,"2023-3-1","2023-3-2",1000000,3,4,1),
(9,"2023-11-4","2023-11-8",300000,3,4,3),
(10,"2022-11-6","2022-11-10",50000,10,3,5);
INSERT INTO hop_dong_chi_tiet VALUE(1,2,1,5),
(2,3,2,8),
(3,2,3,7),
(4,1,2,1),
(5,3,2,12),
(6,1,3,3),
(7,2,2,12);

-- task 4
-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
SELECT * FROM nhan_vien WHERE ho_ten LIKE 'H%' OR ho_ten LIKE 'T%' OR ho_ten LIKE 'K%' AND length(ho_ten)<=15;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT * FROM khach_hang WHERE ((YEAR(CURDATE()) - YEAR(ngay_sinh) BETWEEN 18 AND 50) AND dia_chi LIKE '%Đà Nẵng' OR dia_chi LIKE '%Quảng Trị');

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
SELECT kh.*,lk.ten_loai_khach, COUNT(kh.ma_khach_hang) AS tong_lan_dat FROM khach_hang AS kh 
INNER JOIN loai_khach AS lk ON kh.ma_loai_khach = lk.ma_loai_khach 
INNER JOIN hop_dong AS hd ON  kh.ma_khach_hang = hd.ma_khach_hang 
WHERE  lk.ten_loai_khach = 'Diamond' 
GROUP BY kh.ma_khach_hang ORDER BY tong_lan_dat;

--  5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc,
--  tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem,
--   hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
SELECT kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach,hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc FROM khach_hang kh 
LEFT JOIN hop_dong hd ON kh.ma_khach_hang=hd.ma_khach_hang
LEFT JOIN loai_khach lk ON lk.ma_loai_khach=kh.ma_loai_khach
LEFT JOIN dich_vu dv ON dv.ma_dich_vu=hd.ma_dich_vu
LEFT JOIN loai_dich_vu ldv ON ldv.ma_loai_dich_vu=dv.ma_loai_dich_vu
LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong=hd.ma_hop_dong
LEFT JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem;


-- DROP DATABASE furama;
