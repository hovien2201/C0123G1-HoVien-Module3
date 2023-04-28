package service;

import model.Product;
import repository.ProductRipository;
import repository.interfaceRepo.IProductRepository;
import service.interfaceService.IProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository = new ProductRipository();
    @Override
    public List<Product> getAll() {
        List<Product> productList =new ArrayList<>();
        productList=iProductRepository.getAll();
        return productList;
    }

    @Override
    public void saveProduct(Product product) {
        iProductRepository.saveProduct(product);
    }

    @Override
    public void delete(int id) {
        iProductRepository.delete(id);
    }

    @Override
    public void editProduct(Product product) {
        iProductRepository.editProduct(product);
    }
}
