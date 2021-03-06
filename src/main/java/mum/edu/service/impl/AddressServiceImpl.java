package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Address;
import mum.edu.domain.Customer;
import mum.edu.repository.AddressRepository;
import mum.edu.service.CredentialsService;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AddressServiceImpl implements mum.edu.service.AddressService {

	@Autowired
	private AddressRepository addressRepository;

	@Override
	public long save(Address address) {
		return addressRepository.save(address).getId();

	}

	@Override
	public List<Address> findAll() {

		return (List<Address>) addressRepository.findAll();
	}

}
