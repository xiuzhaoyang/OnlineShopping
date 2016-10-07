package mum.edu.repository;

import mum.edu.domain.CartItem;
import mum.edu.domain.Credentials;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by su on 10/7/16.
 */

@Repository
public interface CartItmRepository extends CrudRepository <CartItem, String> {

}
