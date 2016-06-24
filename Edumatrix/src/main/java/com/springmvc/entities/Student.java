package com.springmvc.entities;

import java.util.List;


public class Student {
	
	private Integer stud_id;
	private String stud_name;
	/*private Date stud_dob;*/
	private String stud_nic;
	private String stud_mob_phn;
	private String stud_address;
	private String sch_id;
	private List<Course> stud_enrolled_crs;
	private String stud_propic;
	private String stud_guardian_name;
	private String stud_guardian_mob_phn;
	private java.util.Date utilDate = new java.util.Date();
	/*private List<String> courses;*/
	
	public Integer getStud_id() {
		return stud_id;
	}
	public void setStud_id(Integer stud_id) {
		this.stud_id = stud_id;
	}
	public String getStud_name() {
		return stud_name;
	}
	public void setStud_name(String stud_name) {
		this.stud_name = stud_name;
	}
	public String getStud_nic() {
		return stud_nic;
	}
	public void setStud_nic(String stud_nic) {
		this.stud_nic = stud_nic;
	}
	public String getStud_mob_phn() {
		return stud_mob_phn;
	}
	public void setStud_mob_phn(String stud_mob_phn) {
		this.stud_mob_phn = stud_mob_phn;
	}
	public String getStud_address() {
		return stud_address;
	}
	public void setStud_address(String stud_address) {
		this.stud_address = stud_address;
	}
	public String getSch_id() {
		return sch_id;
	}
	public void setSch_id(String sch_id) {
		this.sch_id = sch_id;
	}
	public List<Course> getStud_enrolled_crs() {
		return stud_enrolled_crs;
	}
	public void setStud_enrolled_crs(List<Course> stud_enrolled_crs) {
		this.stud_enrolled_crs = stud_enrolled_crs;
	}
	public String getStud_propic() {
		return stud_propic;
	}
	public void setStud_propic(String stud_propic) {
		this.stud_propic = stud_propic;
	}
	public String getStud_guardian_name() {
		return stud_guardian_name;
	}
	public void setStud_guardian_name(String stud_guardian_name) {
		this.stud_guardian_name = stud_guardian_name;
	}
	public String getStud_guardian_mob_phn() {
		return stud_guardian_mob_phn;
	}
	public void setStud_guardian_mob_phn(String stud_guardian_mob_phn) {
		this.stud_guardian_mob_phn = stud_guardian_mob_phn;
	}
	public java.util.Date getUtilDate() {
		return utilDate;
	}
	public void setUtilDate(java.util.Date utilDate) {
		this.utilDate = utilDate;
	}
	
	
}
