package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Customer;
import mum.edu.domain.Customer;
import mum.edu.repository.CustomerRepository;
import mum.edu.repository.CustomerRepository;
import mum.edu.service.CredentialsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional 
public class CustomerServiceImpl implements mum.edu.service.CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	CredentialsService credentialsService;

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void saveFull(Customer customer) {
		credentialsService.save(customer.getCredentials());
		customerRepository.save(customer);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void save(Customer customer) {
		customerRepository.save(customer);
	}

	public List<Customer> findAll() {
		return (List<Customer>) customerRepository.findAll();
	}

	public Customer findByCustomerId(int customerId) {
		return customerRepository.findByCustomerId(customerId);
	}
	
}
