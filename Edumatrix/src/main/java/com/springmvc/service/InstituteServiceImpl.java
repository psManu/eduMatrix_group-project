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
	
	@Override
	public void insert(Institute institute){
		instituteDao.insert(institute);
	}
    
	@Override
    public void delete(int inst_id){
    	instituteDao.delete(inst_id);
    }
	
	@Override
	public void update(Institute institute){
		instituteDao.update(institute);
	}
    
	@Override
    public Institute get(int inst_id){
    	return instituteDao.get(inst_id);
    }
    
	@Override
    public List<Institute> list(){
    	return instituteDao.list();
    }
	
	
}
