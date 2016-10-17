package mum.edu.service.impl;

import mum.edu.domain.Credentials;
import mum.edu.domain.Product;
import mum.edu.domain.ShoppingCart;
import mum.edu.repository.ProductRepository;
import mum.edu.repository.ShoppingCartRepository;
import mum.edu.service.CredentialsService;
import mum.edu.service.ProductService;
import mum.edu.service.ShoppingCartService;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
	@Autowired
	ProductService pservice;
	@Autowired
	CredentialsService cservice;
	
	@Autowired
	ShoppingCartRepository repo;
	
	@PersistenceContext
	private EntityManager manager;

    @Override
    public boolean addProductToCart(long productId, int count) {
    	System.out.println("adding to shopping cart 2");
    	ShoppingCart cart = new ShoppingCart();
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	User user =  (User)auth.getPrincipal();
    	Calendar today = Calendar.getInstance();
    	today.set(Calendar.HOUR_OF_DAY, 0); // same for minutes and seconds
    	System.out.println("adding to shopping cart 3"+today.toString());
//<<<<<<< Updated upstream
    	String username = user.getUsername();
    	//System.out.println("adding to shopping cart 3.0,name =" +username);
    	
		cart.setCuId(cservice.findByName(username));

//=======
//    	cart.setCuId(cservice.getIdByName(user.getUsername()));
//>>>>>>> Stashed changes
    	System.out.println("adding to shopping cart 3.1");
    	cart.setDate(today.getTime());
    	System.out.println("adding to shopping cart 3.2");
    	cart.setTotal(count);
    	System.out.println("adding to shopping cart 4");
    	System.out.println("adding shopping cart"+cart.toString());
    	if(repo.save(cart) == null) {
    		System.out.println("Returning False");
    		return false;
    	}
    	System.out.println("Returning True");
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

	@Override
	public List<ShoppingCart> findAllById(long uid) {
		return  manager
				.createNamedQuery("SELECTALLBYUID",ShoppingCart.class)
				.setParameter(1, uid)
                .getResultList();
	}
}
