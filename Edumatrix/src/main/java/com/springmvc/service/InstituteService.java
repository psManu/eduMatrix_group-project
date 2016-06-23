package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Institute;

public interface InstituteService {
	
	 Integer countInstitutes(int inst_id);
	
	 void addInstitute(Institute institute);
	 
	 void updateInstitute(Institute institute);
    
     void deleteInstitute(int inst_id);
     
     Institute get(int inst_id);
     
     List<Institute> list();
     
     Institute getInstituteNameById(int inst_id);
     
 	 List<Institute> fetchAllInstitutes();
 	
 	 String getInstituteSchemaById(int inst_id);
	
	
}
