CREATE DATABASE bai_tap_1_day_2;
USE bai_tap_1_day_2;
CREATE TABLE so_dien_thoai(
  ten_so_dien_thoai VARCHAR(45) UNIQUE
);
CREATE TABLE nha_cung_cap(
  ma_nha_cung_cap INT PRIMARY KEY, 
  ten_nha_cung_cap VARCHAR(45), 
  dia_chi VARCHAR(45), 
  so_dien_thoai VARCHAR(45), 
  FOREIGN KEY(so_dien_thoai) REFERENCES so_dien_thoai(ten_so_dien_thoai)
);
CREATE TABLE phieu_nhap(
  so_phieu_nhap INT PRIMARY KEY, ngay_nhap DATE
);
CREATE TABLE chi_tiet_don_dat_hang(
  so_dat_hang INT, 
  ma_vat_tu INT, 
  PRIMARY KEY(so_dat_hang, ma_vat_tu)
);
CREATE TABLE don_dat_hang(
  so_dat_hang INT PRIMARY KEY, 
  ngay_dat_hang DATE, 
  ma_nha_cung_cap INT, 
  FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);
CREATE TABLE phieu_xuat(
  so_px INT PRIMARY KEY, ngay_xuat DATE
);
CREATE TABLE vat_tu (
  ma_vat_tu INT PRIMARY KEY, 
  ten_vat_tu VARCHAR(50), 
  so_px INT, 
  FOREIGN KEY (so_px) REFERENCES phieu_xuat (so_px), 
  so_pn INT, 
  FOREIGN KEY (so_pn) REFERENCES phieu_nhap (so_phieu_nhap), 
  so_dat_hang INT, 
  FOREIGN KEY (so_dat_hang) REFERENCES don_dat_hang (so_dat_hang), 
  ma_nha_cung_cap INT, 
  FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap (ma_nha_cung_cap)
);
CREATE TABLE chi_tiet_phieu_xuat (
  don_gia_xuat DOUBLE, 
  so_luong_xuat INT, 
  so_px INT, 
  FOREIGN KEY (so_px) REFERENCES phieu_xuat (so_px), 
  so_pn INT, 
  ma_vat_tu INT, 
  FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu)
);
CREATE TABLE chi_tiet_phieu_nhap (
  don_gia_nhap DOUBLE, 
  so_luong_nhap INT, 
  so_phieu_nhap INT, 
  FOREIGN KEY (so_phieu_nhap) REFERENCES phieu_nhap (so_phieu_nhap), 
  ma_vat_tu INT, 
  FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu (ma_vat_tu)
);
CREATE TABLE chi_tiet_don_hang (
  ma_vat_tu INT, 
  FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu), 
  so_dat_hang INT, 
  FOREIGN KEY (so_dat_hang) REFERENCES don_dat_hang(so_dat_hang)
);

