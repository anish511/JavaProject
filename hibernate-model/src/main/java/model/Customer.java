package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column
	private String firstName;
	
	@Column
	private String lastName;

	@Column
	private String primaryPhonenumber;

	@Column
	private String secondaryPhonenumber;

	@Column
	private String Email;
	
	@Column
	private String dateofbirth;
	
	@Column
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setLastName(String name) {
		this.lastName = name;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setFirstName(String name) {
		this.firstName = name;
	}

	public String getPrimaryPhonenumber() {
		return primaryPhonenumber;
	}

	public void setPrimaryPhonenumber(String primaryPhonenumber) {
		this.primaryPhonenumber = primaryPhonenumber;
	}

	public String getSecondaryPhonenumber() {
		return secondaryPhonenumber;
	}

	public void setSecondaryPhonenumber(String secondaryPhonenumber) {
		this.secondaryPhonenumber = secondaryPhonenumber;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
