package mum.edu.service;

import java.util.List;

import mum.edu.domain.Customer;

public interface CustomerService {

	public void save(Customer customer);

	public List<Customer> findAll();

	public Customer findByCustomerId(int customerId);

	public void saveFull(Customer customer);
	
}
