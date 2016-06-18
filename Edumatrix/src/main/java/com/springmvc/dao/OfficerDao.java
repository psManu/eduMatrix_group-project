package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Officer;

public interface OfficerDao {
	
public void saveOrUpdate(Officer officer);
    
    public void delete(int ofcr_id);
     
    public Officer get(int ofcr_id);
     
    public List<Officer> list();
	
}
