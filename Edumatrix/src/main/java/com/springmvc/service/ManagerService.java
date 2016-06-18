package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Manager;

public interface ManagerService {
	
void saveOrUpdate(Manager manager);
    
    void delete(int mgr_id);
    
    Manager get(int mgr_id);
    
    List<Manager> list();
	
	
}
