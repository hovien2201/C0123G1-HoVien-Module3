package bai3.util;

public class CheckRegex {
    public static boolean checkMaHoaDon(String str) {
        String regex = "^MHD-[0-9]{4}$";
        return (str.matches(regex));
    }
}
