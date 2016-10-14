package mum.edu.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ContactInformation")

public class ContactInformation {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private long id;

	@Column(name = "INFORMATION_NAME")
	private String informationName;

	@Column(name = "PHONE_NUMBER1")
	private String phoneNumber1;

	@Column(name = "PHONE_NUMBER2")
	private String phoneNumber2;

	@Column(name = "PHONE_NUMBER3")
	private String phoneNumber3;

	@Column(name = "FAX1")
	private String fax1;

	@Column(name = "email1")
	private String email1;

	@Column(name = "email2")
	private String email2;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getInformationName() {
		return informationName;
	}

	public void setInformationName(String informationName) {
		this.informationName = informationName;
	}

	public String getPhoneNumber1() {
		return phoneNumber1;
	}

	public void setPhoneNumber1(String phoneNumber1) {
		this.phoneNumber1 = phoneNumber1;
	}

	public String getPhoneNumber2() {
		return phoneNumber2;
	}

	public void setPhoneNumber2(String phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
	}

	public String getPhoneNumber3() {
		return phoneNumber3;
	}

	public void setPhoneNumber3(String phoneNumber3) {
		this.phoneNumber3 = phoneNumber3;
	}

	public String getFax1() {
		return fax1;
	}

	public void setFax1(String fax1) {
		this.fax1 = fax1;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

}