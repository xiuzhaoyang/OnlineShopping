package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Address;
import mum.edu.repository.AddressRepository;
import mum.edu.service.CredentialsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AddressServiceImpl implements mum.edu.service.AddressService {

	@Autowired
	private AddressRepository addressRepository;

	public void saveFull(Address address) {
		addressRepository.save(address);
	}

	public void save(Address address) {
		addressRepository.save(address);
	}

	public List<Address> findAll() {
		return (List<Address>) addressRepository.findAll();
	}

	public Address findByAddressId(int id) {
		return addressRepository.findById(id);
	}

}
