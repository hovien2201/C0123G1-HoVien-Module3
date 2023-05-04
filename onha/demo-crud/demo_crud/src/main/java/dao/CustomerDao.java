package dao;

import model.Customer;

import java.util.*;

public class CustomerDao {
    private static final Map<Integer, Customer> listCustomer =new HashMap<Integer, Customer>();

    static {
        initCustomers();
    }

    private static void initCustomers() {
        Customer cus1= new Customer(1,"Hồ Viễn","0867561009","hovien@gmail.com");
        Customer cus2= new Customer(2,"Nguyễn Đức Thắng","08888666444","ducthang@gmail.com");
        Customer cus3= new Customer(3,"Trung Thiện","09888777444","trungthien@gmail.com");
        Customer cus4= new Customer(4,"Quốc Hòa","07666222111","quochoa@gmail.com");
        listCustomer.put(cus1.getId(),cus1);
        listCustomer.put(cus2.getId(),cus2);
        listCustomer.put(cus3.getId(),cus3);
        listCustomer.put(cus4.getId(),cus4);
    }
    // getcus theo id
    public static Customer getCustomer(int customerId){
        return listCustomer.get(customerId);
    }
    // thêm mới
    public static void addCustomer(Customer customer){
        listCustomer.put(customer.getId(),customer);
    }
    // update
    public static Customer  updateCustomer(Customer customer){
        listCustomer.put(customer.getId(), customer);
        return customer;
    }
    // xoa
    public static void deleteCustomer(int customerId){
        listCustomer.remove(customerId);
    }
    // hien thi all
    public static List<Customer> getAllCustomer(){
        Collection<Customer> c= listCustomer.values();
        List<Customer> list =new ArrayList<Customer>();
        return list;
    }
}
