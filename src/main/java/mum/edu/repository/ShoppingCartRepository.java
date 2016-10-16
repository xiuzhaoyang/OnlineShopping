package mum.edu.repository;

import mum.edu.domain.Product;
import mum.edu.domain.ShoppingCart;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by su on 10/7/16.
 */

@Repository
public interface ShoppingCartRepository extends CrudRepository<ShoppingCart,Long> {

}
