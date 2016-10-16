package mum.edu.service.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

  	@PreAuthorize("hasRole('ROLE_ADMIN')")
  	public void save(Credentials credentials) {

  		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();   		
  		String encodedPassword = passwordEncoder.encode(credentials.getPassword());
  		credentials.setPassword(encodedPassword);
  		
  		credentialsRepository.save(credentials);
	}
	public List<Credentials> findAll() {
		return (List<Credentials>)credentialsRepository.findAll();
	}
	
	public Credentials findByName(String name) throws SQLException
	{
		Statement stmt = null;
		long userId = 0;
		String query = "SELECT TOP 1 * FROM [OnlineShopping].[dbo].[users] WHERE USERS.USER_ID = /'" +name+"'/";
		try {
			Connection con = DriverManager.getConnection("jdbc:default:connection");
	        stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery(query);
	        while (rs.next()) {
	            userId = rs.getInt("USER_ID");
	        }
	    } catch (SQLException e ) {
	        //.printSQLException(e);
	    } finally {
	        if (stmt != null) { stmt.close(); }
	    }
		String idString = String.format("%d", userId);
		return credentialsRepository.findOne(idString);
	}
	
	@Override
	public long getIdByName(String name) {
		// TODO Auto-generated method stub
		try {
			return  findByName(name).getUserId();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

 
}
