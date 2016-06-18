package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Institute;

public interface InstituteService {
	
	 void insert(Institute institute);
    
     void delete(int inst_id);
     
     void update(Institute institute);
     
     Institute get(int inst_id);
     
     List<Institute> list();
	
	
}
