package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Vendor;
import mum.edu.domain.Customer;
import mum.edu.repository.VendorRepository;
import mum.edu.service.CredentialsService;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class VendorServiceImpl implements mum.edu.service.VendorService {

	@Autowired
	private VendorRepository vendorRepository;

	@Override
	public long save(Vendor vendor) {
		return vendorRepository.save(vendor).getVendorId();

	}

	@Override
	public List<Vendor> findAll() {

		return (List<Vendor>) vendorRepository.findAll();
	}

}
