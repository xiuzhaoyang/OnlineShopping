package mum.edu.service.impl;

import mum.edu.domain.Product;
import mum.edu.domain.ShoppingCart;
import mum.edu.repository.ProductRepository;
import mum.edu.repository.ShoppingCartRepository;
import mum.edu.service.CredentialsService;
import mum.edu.service.ProductService;
import mum.edu.service.ShoppingCartService;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by su on 10/13/16.
 */


@Service
@Transactional
public class ShoppingCartServiceImpl implements ShoppingCartService {
	ProductService pservice;
	CredentialsService cservice;
	
	@Autowired
	ShoppingCartRepository repo;

    @Override
    public boolean addProductToCart(long productId, int count) {
    	ShoppingCart cart = new ShoppingCart();
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user =  (User)auth.getPrincipal();
    	Calendar today = Calendar.getInstance();
    	today.set(Calendar.HOUR_OF_DAY, 0); // same for minutes and seconds
    	
    	cart.setCuId(cservice.getIdByName(user.getUsername()));
    	cart.setDate(today.getTime());
    	cart.setTotal(count);
    	
    	if(repo.save(cart) == null)
    		return false;
    	return true;
    }

    @Override
    public boolean deleteProductFromCart(long productId, int count) {
        return false;
    }

    @Override
    public ShoppingCart getShoppingCartByUId(long uid) {
        return repo.findOne(uid);
    }
}
