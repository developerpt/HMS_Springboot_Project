package com.hmsproject.HMSProject;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity // if not add the @entity then table not create in database.. if we dont want to
		// add then we need to manually create the table.
public class contact {

	@Id
	String name;
	String address;
	String email;
	String mobile;

	@Override
	public String toString() {
		return "contact [name=" + name + ", address=" + address + ", email=" + email + ", mobile=" + mobile + "]";
	}

	public contact(String name, String address, String email, String mobile) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
		this.mobile = mobile;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

}
