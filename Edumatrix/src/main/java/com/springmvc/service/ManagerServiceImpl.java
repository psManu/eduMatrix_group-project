package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.dao.ManagerDao;
import com.springmvc.entities.Manager;

public class ManagerServiceImpl implements ManagerService{
	
	@Autowired
	ManagerDao managerDao;

	public ManagerDao getManagerDao() {
		return managerDao;
	}

	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}
	
	@Override
	public void saveOrUpdate(Manager manager){
		managerDao.saveOrUpdate(manager);
	}
    
	@Override
    public void delete(int mgr_id){
    	managerDao.delete(mgr_id);
    }
    
	@Override
    public Manager get(int mgr_id){
    	return managerDao.get(mgr_id);
    }
    
	@Override
    public List<Manager> list(){
    	return managerDao.list();
    }
	
	
}
