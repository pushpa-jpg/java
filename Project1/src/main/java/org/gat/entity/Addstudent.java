package org.gat.entity;

public class Addstudent {
	private int id;
	private String name;
	private String gender;
	private String branch;
	private String address;
	private String email;
	private String phone;
	

	
	

	public Addstudent(int id, String name, String gender, String branch, String address, String email, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.branch = branch;
		this.address = address;
		this.email = email;
		this.phone = phone;
		
	}
	
	public Addstudent(String name, String gender, String branch, String address, String email, String phone) {
		super();
		this.name = name;
		this.gender = gender;
		this.branch = branch;
		this.address = address;
		this.email = email;
		this.phone = phone;
	
		
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
