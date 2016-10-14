package mum.edu.service.impl;

import mum.edu.domain.Product;
import mum.edu.service.ProductService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by su on 10/13/16.
 */

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    @Override
    public Product getProductById(long id) {
        return null;
    }

    @Override
    public Product addProduct(Product product) {
        return null;
    }

    @Override
    public boolean deleteProduct(long id) {
        return false;
    }

    @Override
    public boolean updateProduct(Product product) {
        return false;
    }
}
