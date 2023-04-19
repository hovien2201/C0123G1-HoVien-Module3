package bai2;

import java.util.Scanner;

public class FindMaxNumber {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhap vao 1 so");
        int number = Integer.parseInt(scanner.nextLine());
        System.out.println(findMaxNumber(number));
    }

    public static String findMaxNumber(int number) {
        String str = String.valueOf(number);
        int delete = 0;
        String numberMax = "";
        if (number > 999 && number < 10000) {
            for (int i = 0; i < 3; i++) {
                if (str.charAt(i) < str.charAt(i + 1)) {
                    delete = i;
                    break;
                } else {
                    delete = str.length() - 1;
                }
            }
            for (int i = 0; i < 4; i++) {
                if (i != delete) {
                    numberMax = numberMax + str.charAt(i);
                }
            }
            return numberMax;
        } else {
            return "-1";
        }
    }
}
