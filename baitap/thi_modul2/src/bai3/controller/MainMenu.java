package bai3.controller;

import bai3.service.HoaDonTienDienService;

import java.util.Scanner;

public class MainMenu {
    public void mainMenu() {
        Scanner scanner = new Scanner(System.in);
        HoaDonTienDienService hoaDonTienDienService = new HoaDonTienDienService();
        boolean flag = true;
        do {
            System.out.println("-----------------Hoa don tien dien--------------------");
            System.out.println("Lua chon chuc nang:\n" +
                    "1, Them moi hoa don\n" +
                    "2, Hien thi danh sach hoa don\n" +
                    "0, Thoat");
            System.out.print("Chon so:");
            String choice = scanner.nextLine();
            switch (choice) {
                case "1":
                    System.out.println("-----------------Them moi hoa don tien dien-------------------");
                    hoaDonTienDienService.add();
                    break;
                case "2":
                    System.out.println("-----------------Hien thi danh sach hoa don tien dien-------------------");
                    hoaDonTienDienService.display();
                    break;
                case "0":
                    flag = false;
                    System.out.println("Ban da thoat");
                    break;
                default:
                    System.out.println("Ban da nhap sai moi nhap lai");

            }
        } while (flag);
    }
}
