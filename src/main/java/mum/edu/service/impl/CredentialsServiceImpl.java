package mum.edu.service.impl;

import java.sql.Statement;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import mum.edu.domain.Credentials;
import mum.edu.repository.CredentialsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CredentialsServiceImpl implements mum.edu.service.CredentialsService {

	@PersistenceContext
	private EntityManager manager;

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

	@Override
	public long findByName(String name) {
		Credentials c = (Credentials) manager.createNamedQuery("SELECTNAMEBYID", Credentials.class)
				.setParameter(1, name).getResultList().get(0);
		// String sUid = ""+ c.getUserId();
		return c.getUserId();

		/*
		 * Credentials c = (Credentials)
		 * manager.createNamedQuery("SELECTNAMEBYID",Credentials.class);
		 * //Credentials c = (Credentials) manager.createNamedQuery(name);
		 * String sUid = String.format("%d", c.getUserId()); return
		 * credentialsRepository.findOne(sUid).getUserId();
		 */
	}

	@Override
	public Credentials getUser(String username) {

		return credentialsRepository.findByUsername(username);
	}

}
