package mum.edu.service.impl;

import mum.edu.domain.ShoppingCart;
import mum.edu.service.ShoppingCartService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by su on 10/13/16.
 */


@Service
@Transactional
public class ShoppingCartServiceImpl implements ShoppingCartService {

    @Override
    public boolean addProductToCart(long productId, int count) {
        return false;
    }

    @Override
    public boolean deleteProductFromCart(long productId, int count) {
        return false;
    }

    @Override
    public ShoppingCart getShoppingCartByUId(long uid) {
        return null;
    }
}
