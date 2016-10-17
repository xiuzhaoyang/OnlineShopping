package mum.edu.domain;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
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

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "customer")
	@OrderBy("id DESC")
	private Set<Address> addressList = new HashSet<Address>(0);

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "customer")
	@OrderBy("id DESC")
	private Set<ContactInformation> contactList = new HashSet<ContactInformation>(0);

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

	public Set<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(Set<Address> addressList) {
		this.addressList = addressList;
	}

	public Set<ContactInformation> getContactList() {
		return contactList;
	}

	public void setContactList(Set<ContactInformation> contactList) {
		this.contactList = contactList;
	}

}
