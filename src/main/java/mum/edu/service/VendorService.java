package mum.edu.service;

import java.util.List;

import mum.edu.domain.Address;
import mum.edu.domain.Customer;
import mum.edu.domain.Member;
import mum.edu.domain.Vendor;

public interface VendorService {

	public long save(Vendor vendor);

	public List<Vendor> findAll();
}
