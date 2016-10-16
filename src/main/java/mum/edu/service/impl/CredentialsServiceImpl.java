package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Credentials;
import mum.edu.repository.CredentialsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CredentialsServiceImpl implements mum.edu.service.CredentialsService {

	@Autowired
	private CredentialsRepository credentialsRepository;

	public Credentials save(Credentials credentials) {

		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(credentials.getPassword());
		System.out.println("password is : " + encodedPassword);
		credentials.setPassword(encodedPassword);

		return credentialsRepository.save(credentials);
	}

	public List<Credentials> findAll() {
		return (List<Credentials>) credentialsRepository.findAll();
	}

	public int findUserIdByUsername(String username) {
		System.out.println("Credentials service Implemation username : " + username);
		return credentialsRepository.findUserIdByUsername(username);

	}

}
