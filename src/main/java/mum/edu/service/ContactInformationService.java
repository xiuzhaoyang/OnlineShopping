package mum.edu.service;

import java.util.List;

import mum.edu.domain.ContactInformation;


public interface ContactInformationService {

	public void save(ContactInformation contactInformation);

	public List<ContactInformation> findAll();

	public ContactInformation findByContactInformationId(int contactInformationId);

	public void saveFull(ContactInformation contactInformation);
}
