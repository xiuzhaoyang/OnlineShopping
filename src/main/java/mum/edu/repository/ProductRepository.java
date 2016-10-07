package mum.edu.repository;

import mum.edu.domain.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by su on 10/7/16.
 */

@Repository
public interface ProductRepository extends CrudRepository<Product,Long> {

}
