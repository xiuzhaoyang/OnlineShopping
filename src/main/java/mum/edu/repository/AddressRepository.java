package mum.edu.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Address;

@Repository
public interface AddressRepository extends CrudRepository<Address, String> {

	public Address findById(long id);

}