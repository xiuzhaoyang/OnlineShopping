package mum.edu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import mum.edu.domain.Address;
import mum.edu.domain.Credentials;
import mum.edu.domain.Customer;
import mum.edu.domain.Customer;
import mum.edu.repository.CustomerRepository;
import mum.edu.repository.CustomerRepository;
import mum.edu.service.CredentialsService;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

	public void saveFull(Customer customer) {
		credentialsService.save(customer.getCredentials());
		customerRepository.save(customer);
	}

	public void save(Customer customer) {
		customerRepository.save(customer);
	}

	public List<Customer> findAll() {
		return (List<Customer>) customerRepository.findAll();
	}

	public Customer findByCustomerId(int customerId) {
		return customerRepository.findByCustomerId(customerId);
	}

	@Override
	public Customer getCustomerByUser(Credentials credentials) {
		return customerRepository.findByCredentials(credentials);
	}

	@Override
	public List<Address> getAddressByCustomer(Customer customer) {

		return null;
	}

}
