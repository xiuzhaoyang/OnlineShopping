package mum.edu.repository;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Credentials;
import mum.edu.domain.Customer;
import mum.edu.domain.Member;

	@Repository
	public interface CredentialsRepository extends  CrudRepository<Credentials, String> 
	{
		public int findUserIdByUsername(String username);
  	}

