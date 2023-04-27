package bai1.model;

public class Customer {
    private String name;
    private String dayBirth;
    private String address;
    private  String img;

    public Customer() {
    }

    public Customer(String name, String dayBirth, String address, String img) {
        this.name = name;
        this.dayBirth = dayBirth;
        this.address = address;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayBirth() {
        return dayBirth;
    }

    public void setDayBirth(String dayBirth) {
        this.dayBirth = dayBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
