package bai3.repository;

import bai3.model.HoaDonTienDien;
import bai3.util.ReadAndWriteFile;

import java.util.ArrayList;
import java.util.List;

public class HoaDonTienDienRepository implements IHoaDonTienDienRepository {
    private final String PATH = "src\\data\\hoa_don_tien_dien.csv";
    static List<HoaDonTienDien> hoaDonTienDienList = new ArrayList<>();

    @Override
    public void add(HoaDonTienDien hoaDonTienDien) {
        String str = hoaDonTienDien.getInfoToCSV();
        ReadAndWriteFile.writeFile(PATH, str, true);
    }

    @Override
    public List<HoaDonTienDien> display() {
        List<HoaDonTienDien> list = new ArrayList<>();
        List<String> stringList = ReadAndWriteFile.readFile(PATH);
        for (int i = 0; i < stringList.size(); i++) {
            String[] arr = stringList.get(i).split(",");
            list.add(new HoaDonTienDien(arr[0], arr[1], arr[2], Integer.parseInt(arr[3])));
        }
        hoaDonTienDienList = list;
        return hoaDonTienDienList;
    }
}
