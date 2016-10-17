package mum.edu.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Address;
import mum.edu.domain.Customer;
import mum.edu.domain.Vendor;

@Repository
public interface VendorRepository extends CrudRepository<Vendor, String> {

}