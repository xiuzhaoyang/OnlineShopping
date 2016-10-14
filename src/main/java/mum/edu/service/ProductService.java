package mum.edu.service;

import mum.edu.domain.Product;

/**
 * Created by su on 10/13/16.
 */
public interface ProductService {
    public Product getProductById(long id);
    public Product addProduct(Product product);
    public boolean deleteProduct(long id);
    public boolean updateProduct(Product product);
}
