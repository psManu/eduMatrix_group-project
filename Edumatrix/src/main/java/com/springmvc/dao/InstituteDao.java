package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Institute;


public interface InstituteDao {
	
	public void insert(Institute institute);
    
    public void delete(int inst_id);
    
    public void update(Institute institute);
     
    public Institute get(int inst_id);
     
    public List<Institute> list();
	
	
}
