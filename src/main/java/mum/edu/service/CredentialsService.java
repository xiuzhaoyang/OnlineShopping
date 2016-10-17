package mum.edu.service;

import java.util.List;

import mum.edu.domain.Credentials;
import mum.edu.domain.Member;
import mum.edu.domain.Product;

public interface CredentialsService {

	public Credentials save(Credentials credentials);

	public List<Credentials> findAll();

	public long findByName(String name);

	public Credentials getUser(String username);
}
