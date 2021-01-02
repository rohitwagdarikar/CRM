package com.rohit.webapp.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentModel {

	@Id
	private int rollno;
	private String sname;
	private String saddress;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	@Override
	public String toString() {
		return "StudentModel [rollno=" + rollno + ", sname=" + sname + ", saddress=" + saddress + "]";
	}
	
}
