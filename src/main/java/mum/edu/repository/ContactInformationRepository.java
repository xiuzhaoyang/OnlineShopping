package mum.edu.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Address;
import mum.edu.domain.ContactInformation;

@Repository
public interface ContactInformationRepository extends CrudRepository<ContactInformation, String> {

	public ContactInformation findById(int id);

}