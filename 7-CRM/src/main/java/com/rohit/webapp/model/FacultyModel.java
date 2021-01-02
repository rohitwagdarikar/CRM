package com.rohit.webapp.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FacultyModel {

	@Id
	private int fid;
	private String fname;
	private String fdept;
	private String faddress;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFdept() {
		return fdept;
	}
	public void setFdept(String fdept) {
		this.fdept = fdept;
	}
	public String getFaddress() {
		return faddress;
	}
	public void setFaddress(String faddress) {
		this.faddress = faddress;
	}
	@Override
	public String toString() {
		return "FacultyModel [fid=" + fid + ", fname=" + fname + ", fdept=" + fdept + ", faddress=" + faddress + "]";
	}
	
}
