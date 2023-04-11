create database furama;
use furama;
create table vi_tri(
      ma_vi_tri int auto_increment,
      ten_vi_tri varchar(45),
      primary key(ma_vi_tri)
);
insert into vi_tri(ma_vi_tri,ten_vi_tri) value(1,"thang");
delete from vi_tri where ma_vi_tri =1;
select * from vi_tri;
-- drop database furama;
create table trinh_do(
	  ma_trinh_do int,
      ten_trinh_do varchar(45),
      primary key(ma_trinh_do)
);
select * from trinh_do;
create table bo_phan(
	  ma_bo_phan int,
      ten_bo_phan varchar(45),
      primary key(ma_bo_phan)
);
select * from bo_phan;
create table nhan_vien(
	  ma_nhan_vien int,
      ho_ten varchar(45),
      primary key(ma_nhan_vien),
      ngay_sinh date,
      so_cmnd varchar(45),
      luong double,
      so_dien_thoai varchar(45),
      email varchar(45),
      dia_chi varchar(45),
      ma_vi_tri int,foreign key(ma_vi_tri)references vi_tri(ma_vi_tri),
      ma_trinh_do int,foreign key(ma_trinh_do)references trinh_do(ma_trinh_do),
      ma_bo_phan int,foreign key(ma_bo_phan)references bo_phan(ma_bo_phan)
);
select * from nhan_vien;
create table loai_khach(
	  ma_loai_khach int primary key,
      ten_loai_khach varchar(45)
);
select * from loai_khach;
create table khach_hang(
	  ma_khach_hang int primary key,
      ma_loai_khach int,foreign key(ma_loai_khach)references loai_khach(ma_loai_khach),
      ho_ten varchar(45),
      ngay_sinh date,
      gioi_tinh bit(1),
      so_cmnd varchar(45),
      so_dien_thoai varchar(45),
      email varchar(45),
      dia_chi varchar(45)
);
select * from khach_hang;
