package com.springmvc.service;

import java.util.List;

import com.springmvc.dao.OfficerDao;
import com.springmvc.entities.Officer;

public class OfficerServiceImpl implements OfficerService{
	
	OfficerDao officerDao;

	public OfficerDao getOfficerDao() {
		return officerDao;
	}

	public void setOfficerDao(OfficerDao officerDao) {
		this.officerDao = officerDao;
	}
	
	
	public void saveOrUpdate(Officer officer){
		officerDao.saveOrUpdate(officer);
	}
    
	
    public void delete(int ofcr_id){
    	officerDao.delete(ofcr_id);
    }
    
	
    public Officer get(int ofcr_id){
    	return officerDao.get(ofcr_id);
    }
    
	
    public List<Officer> list(){
    	return officerDao.list();
    }
	
	
	
}
