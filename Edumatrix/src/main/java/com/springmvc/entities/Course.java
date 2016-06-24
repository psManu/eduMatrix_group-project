package com.springmvc.entities;

public class Course {
	
	private Integer crs_id;
	private String crs_name;
	private Integer crs_fee_monthly;
	private Integer crs_noof_studs;
	private String crs_strt_date;
	private String crs_end_date;
	public Integer getCrs_id() {
		return crs_id;
	}
	public void setCrs_id(Integer crs_id) {
		this.crs_id = crs_id;
	}
	public String getCrs_name() {
		return crs_name;
	}
	public void setCrs_name(String crs_name) {
		this.crs_name = crs_name;
	}
	public Integer getCrs_fee_monthly() {
		return crs_fee_monthly;
	}
	public void setCrs_fee_monthly(Integer crs_fee_monthly) {
		this.crs_fee_monthly = crs_fee_monthly;
	}
	public Integer getCrs_noof_studs() {
		return crs_noof_studs;
	}
	public void setCrs_noof_studs(Integer crs_noof_studs) {
		this.crs_noof_studs = crs_noof_studs;
	}
	public String getCrs_strt_date() {
		return crs_strt_date;
	}
	public void setCrs_strt_date(String crs_strt_date) {
		this.crs_strt_date = crs_strt_date;
	}
	public String getCrs_end_date() {
		return crs_end_date;
	}
	public void setCrs_end_date(String crs_end_date) {
		this.crs_end_date = crs_end_date;
	}
	
}
