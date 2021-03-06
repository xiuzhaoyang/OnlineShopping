package mum.edu.service;

import java.util.List;

import mum.edu.domain.Address;
import mum.edu.domain.Customer;
import mum.edu.domain.Member;

public interface AddressService {

	public long save(Address address);

	public List<Address> findAll();
}
