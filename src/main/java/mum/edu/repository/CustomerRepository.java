package mum.edu.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, String> {

	public Customer findByCustomerId(long id);

}