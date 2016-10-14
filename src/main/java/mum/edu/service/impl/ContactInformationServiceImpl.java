package mum.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.ContactInformation;
import mum.edu.repository.ContactInformationRepository;
@Service
@Transactional 
public class ContactInformationServiceImpl implements mum.edu.service.ContactInformationService {

	@Autowired
	private ContactInformationRepository contactInformationRepository;

	public void saveFull(ContactInformation contactInformation) {
		contactInformationRepository.save(contactInformation);
	}

	public void save(ContactInformation contactInformation) {
		contactInformationRepository.save(contactInformation);
	}

	public List<ContactInformation> findAll() {
		return (List<ContactInformation>) contactInformationRepository.findAll();
	}

	public ContactInformation findByContactInformationId(int contactInformationId) {
		return contactInformationRepository.findById(contactInformationId);
	}

}
