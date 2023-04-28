package repository;

import model.Product;
import repository.interfaceRepo.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRipository implements IProductRepository {
    private static List<Product> productList=new ArrayList<>();
    static {
        productList.add(new Product(1,"keo",100000,"keo ngot","NSX Thang"));
        productList.add(new Product(2,"Banh",5000000,"banh xop","NSX Thang"));
        productList.add(new Product(3,"Sach",800000,"sach hoat hinh","NSX Sach HH"));
    }
    @Override
    public List<Product> getAll() {
        return productList;
    }

    @Override
    public void saveProduct(Product product) {
        productList.add(product);
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId()==id){
                productList.remove(i);
            }
        }
    }

    @Override
    public void editProduct(Product product) {
        int id =product.getId();
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId()==id){
                productList.set(i,product);
            }
        }
    }
}
