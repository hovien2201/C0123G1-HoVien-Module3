package bai3.model;

public class HoaDonTienDien {
    private String maHoaDon;
    private String hoTenKhachHang;
    private String loaiKhach;
    private int dinhMucTieuThu;

    public HoaDonTienDien() {
    }

    public HoaDonTienDien(String maHoaDon, String hoTenKhachHang, String loaiKhach, int dinhMucTieuThu) {
        this.maHoaDon = maHoaDon;
        this.hoTenKhachHang = hoTenKhachHang;
        this.loaiKhach = loaiKhach;
        this.dinhMucTieuThu = dinhMucTieuThu;
    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getHoTenKhachHang() {
        return hoTenKhachHang;
    }

    public void setHoTenKhachHang(String hoTenKhachHang) {
        this.hoTenKhachHang = hoTenKhachHang;
    }

    public String getLoaiKhach() {
        return loaiKhach;
    }

    public void setLoaiKhach(String loaiKhach) {
        this.loaiKhach = loaiKhach;
    }

    public int getDinhMucTieuThu() {
        return dinhMucTieuThu;
    }

    public void setDinhMucTieuThu(int dinhMucTieuThu) {
        this.dinhMucTieuThu = dinhMucTieuThu;
    }

    @Override
    public String toString() {
        return "HoaDonTienDien{" +
                "maHoaDon='" + maHoaDon + '\'' +
                ", hoTenKhachHang='" + hoTenKhachHang + '\'' +
                ", loaiKhach='" + loaiKhach + '\'' +
                ", dinhMucTieuThu=" + dinhMucTieuThu +
                ", tongTien=" + (dinhMucTieuThu * 2500) + "VND" +
                '}';
    }

    public String getInfoToCSV() {
        return maHoaDon + "," + hoTenKhachHang + "," + loaiKhach + "," + dinhMucTieuThu;
    }
}
