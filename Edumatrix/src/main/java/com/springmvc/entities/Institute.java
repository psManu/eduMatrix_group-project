package com.springmvc.entities;

public class Institute {
	
	private Integer id;
	private String name;
	private String address;
	private String email;
	private String tp_no;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getTp_no() {
		return tp_no;
	}
	public void setTp_no(String tp_no) {
		this.tp_no = tp_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
