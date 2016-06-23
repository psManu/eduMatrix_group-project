package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Institute;


public interface InstituteDao {
	
	public void addInstitute(Institute institute);
    
    public void deleteInstitute(int inst_id);
    
    public void updateInstitute(Institute institute);
     
    public Institute get(int inst_id);
     
    public List<Institute> list();
    
    public Institute getInstituteNameById(int inst_id);
    
	public List<Institute> fetchAllInstitutes();
	
	public Integer countInstitutes(int inst_id);
	
	public String getInstituteSchemaById(int inst_id);
}
