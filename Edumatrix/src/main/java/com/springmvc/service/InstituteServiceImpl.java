package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.dao.InstituteDao;
import com.springmvc.entities.Institute;

public class InstituteServiceImpl implements InstituteService{
	
	@Autowired
	InstituteDao instituteDao;

	public InstituteDao getInstituteDao() {
		return instituteDao;
	}

	public void setInstituteDao(InstituteDao instituteDao) {
		this.instituteDao = instituteDao;
	}
	
	
	public Integer countInstitutes(int inst_id) {
		return instituteDao.countInstitutes(inst_id);	
	}
	
	
	public void addInstitute(Institute institute){
		instituteDao.addInstitute(institute);
	}
	
	
	public void updateInstitute(Institute institute){
		instituteDao.updateInstitute(institute);
	}
    
	
    public void deleteInstitute(int inst_id){
    	instituteDao.deleteInstitute(inst_id);
    }
	
	
    public Institute get(int inst_id){
    	return instituteDao.get(inst_id);
    }
    
	
    public List<Institute> list(){
    	return instituteDao.list();
    }
	
	
	public Institute getInstituteNameById(int inst_id) {
		return instituteDao.getInstituteNameById(inst_id);
	}

	
	public List<Institute> fetchAllInstitutes() {
		return instituteDao.fetchAllInstitutes();
	}

	
	public String getInstituteSchemaById(int inst_id) {	
		return instituteDao.getInstituteSchemaById(inst_id);
	}
	
	
}
