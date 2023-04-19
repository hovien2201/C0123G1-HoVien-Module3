package bai3.service;

import bai3.model.HoaDonTienDien;
import bai3.repository.HoaDonTienDienRepository;
import bai3.util.CheckRegex;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class HoaDonTienDienService implements IHoaDonTienDienService {
    Scanner scanner = new Scanner(System.in);
    HoaDonTienDienRepository hoaDonTienDienRepository = new HoaDonTienDienRepository();
    static List<HoaDonTienDien> hoaDonTienDienList = new ArrayList<>();

    @Override
    public void add() {
        hoaDonTienDienRepository.display();
        System.out.print("Ma hoa don:(MHD:XXXX): ");
        String maHoaDon = "";
        boolean flag = true;
        do {
            maHoaDon = scanner.nextLine();
            if (CheckRegex.checkMaHoaDon(maHoaDon)) {
                int count = 0;
                for (int i = 0; i < hoaDonTienDienList.size(); i++) {
                    if (maHoaDon.equals(hoaDonTienDienList.get(i).getMaHoaDon())) {
                        System.out.println("Ma hoa don da co moi nhap lai: ");
                        break;
                    } else {
                        count++;
                    }
                }
                if (count == hoaDonTienDienList.size()) {
                    flag = false;
                }
            } else {
                System.out.println("Nhap sai dinh danh moi nhap lai: ");
            }
        } while (flag);
        System.out.print("Ho ten khach hang: ");
        String hoTenKhachHang = scanner.nextLine();
        System.out.println("Loai khach hang:");
        String loaiKhachHang = "";
        boolean flag1 = true;
        do {
            System.out.println("1, Sinh hoat\n" +
                    "2, Kinh doanh");
            String choice = scanner.nextLine();
            switch (choice) {
                case "1":
                    loaiKhachHang = "Sinh hoat";
                    flag1 = false;
                    break;
                case "2":
                    flag1 = false;
                    loaiKhachHang = "Kinh doanh";
                default:
                    System.out.println("Ban da chong sai so moi chon lai");
            }
        } while (flag1);
        System.out.print("Dinh muc tieu thu(KW): ");
        int dinhMucTieuThu = 0;
        try {
            dinhMucTieuThu = Integer.parseInt(scanner.nextLine());
        } catch (NumberFormatException e) {
            System.out.println("Nhap sai so nen so mac dinh =0");
        }
        HoaDonTienDien hoaDonTienDien = new HoaDonTienDien(maHoaDon, hoTenKhachHang, loaiKhachHang, dinhMucTieuThu);
        hoaDonTienDienRepository.add(hoaDonTienDien);
    }

    @Override
    public void display() {
        hoaDonTienDienList = hoaDonTienDienRepository.display();
        for (HoaDonTienDien x : hoaDonTienDienList) {
            System.out.println(x);
        }
    }

}
