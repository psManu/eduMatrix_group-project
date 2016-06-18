package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Officer;

public interface OfficerService {
	
	void saveOrUpdate(Officer officer);
    
    void delete(int ofcr_id);
    
    Officer get(int ofcr_id);
    
    List<Officer> list();
	
}
