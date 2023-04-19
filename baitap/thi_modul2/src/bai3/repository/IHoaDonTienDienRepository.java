package bai3.repository;

import bai3.model.HoaDonTienDien;

import java.util.List;

public interface IHoaDonTienDienRepository {
    void add(HoaDonTienDien hoaDonTienDien);

    List<HoaDonTienDien> display();
}
