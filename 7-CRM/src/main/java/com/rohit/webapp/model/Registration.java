package com.rohit.webapp.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Registration {

	@Id
	private String email;
	private String fullName;
	private long mobileNo;
	private String password;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Registration [email=" + email + ", fullName=" + fullName + ", mobileNo=" + mobileNo + ", password="
				+ password + "]";
	}
	
}
