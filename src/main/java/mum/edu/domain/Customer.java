package mum.edu.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Customer")
public class Customer {

	@Id
	@GeneratedValue
	@Column(name = "CUSTOMER_ID")
	private long customerId;

	@Column(name = "FIRSTNAME", nullable = false, length = 100)
	private String firstName;

	@Column(name = "LASTNAME", nullable = false, length = 100)
	private String lastName;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "USER_ID")
	private Credentials credentials;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "CUSTOMER_ADDRESS", joinColumns = { @JoinColumn(name = "CUSTOMER_ID") }, inverseJoinColumns = {
			@JoinColumn(name = "ADDRESS_ID") })
	private Set<Address> addresses;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "CUSTOMER_CONTACT", joinColumns = { @JoinColumn(name = "CUSTOMER_ID") }, inverseJoinColumns = {
			@JoinColumn(name = "CONTACT_INFORMATION_ID") })
	private Set<ContactInformation> contactInformation;

	public long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Credentials getCredentials() {
		return credentials;
	}

	public void setCredentials(Credentials credentials) {
		this.credentials = credentials;
	}

	public Set<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(Set<Address> addresses) {
		this.addresses = addresses;
	}

	public Set<ContactInformation> getContactInformation() {
		return contactInformation;
	}

	public void setContactInformation(Set<ContactInformation> contactInformation) {
		this.contactInformation = contactInformation;
	}

}
