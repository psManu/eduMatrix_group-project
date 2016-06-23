package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Manager;

public interface ManagerDao {
	
	public Integer countManagers(int user_id);
	
	public void addManager(Manager manager);
    
	public void updateManager(Manager manager);
	
    public void deleteManager(int user_id);
     
    public Manager getManagerById(int user_id);
     
    public List<Manager> fetchAllManagers();
	
}
