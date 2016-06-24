package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Activity;
import com.springmvc.entities.Officer;

public interface OfficerDao {
	
	Integer countOfficers(int user_id);
	
	public void addOfficer(Officer officer);
    
	public void updateOfficer(Officer officer);
	
    public void deleteOfficer(int user_id);
     
    public Officer getOfficerById(int user_id);
     
    public List<Officer> fetchAllOfficers();
    
    List<Activity> getActivityLogs(int user_id);
	
}
