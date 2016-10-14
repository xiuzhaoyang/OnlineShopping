package mum.edu.service;

import java.util.List;

import mum.edu.domain.Address;

public interface AddressService {

	public void save(Address address);

	public List<Address> findAll();

	public Address findByAddressId(int addressId);

	public void saveFull(Address address);
}
