package com.springmvc.entities;

import java.util.List;

public class Officer {
	
	private Integer user_id;
	private Integer inst_id;
	private String auth_level ="officer";
	private Integer emp_id;
	private String emp_name;
	private String nic;
	private String emp_mob_phn;
	private String emp_address;
	private String username;
	private String password;
	private List<String> privileges;
	private List<String> activities;
	
	
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getInst_id() {
		return inst_id;
	}
	public void setInst_id(Integer inst_id) {
		this.inst_id = inst_id;
	}
	public String getAuth_level() {
		return auth_level;
	}
	public void setAuth_level(String auth_level) {
		this.auth_level = auth_level;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getEmp_mob_phn() {
		return emp_mob_phn;
	}
	public void setEmp_mob_phn(String emp_mob_phn) {
		this.emp_mob_phn = emp_mob_phn;
	}
	public String getEmp_address() {
		return emp_address;
	}
	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<String> getPrivileges() {
		return privileges;
	}
	public void setPrivileges(List<String> privileges) {
		this.privileges = privileges;
	}
	public List<String> getActivities() {
		return activities;
	}
	public void setActivities(List<String> activities) {
		this.activities = activities;
	}
	
	
	
	
}
