package bai1;

import java.util.Scanner;

public class CheckArray {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập độ dài mảng");
        int length = Integer.parseInt(scanner.nextLine());
        int[] arr = new int[length];
        for (int i = 0; i < length; i++) {
            System.out.println("Nhap phan tu " + i);
            arr[i] = Integer.parseInt(scanner.nextLine());
        }
        System.out.println(checkArray(arr));
    }

    public static boolean checkArray(int[] arr) {
        int khoangCach = arr[1] - arr[0];
        if (khoangCach <= 0) {
            return false;
        } else {
            for (int i = 0; i < arr.length - 1; i++) {
                if (arr[i + 1] - arr[i] != khoangCach) {
                    return false;
                }
            }
        }
        return true;
    }
}
