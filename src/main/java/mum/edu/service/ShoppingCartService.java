package mum.edu.service;

import java.util.List;

import mum.edu.domain.ShoppingCart;

/**
 * Created by su on 10/13/16.
 */
public interface ShoppingCartService {
    public boolean addProductToCart(long productId,int count);
    public boolean deleteProductFromCart(long productId, int count);
    public ShoppingCart getShoppingCartByUId(long uid);
    public List<ShoppingCart> findAllById(long uid);
}
