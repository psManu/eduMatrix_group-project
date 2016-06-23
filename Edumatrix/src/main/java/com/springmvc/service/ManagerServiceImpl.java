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

	
	public void saveOrUpdate(Manager manager) {
		// TODO Auto-generated method stub
		
	}

	
	public void delete(int mgr_id) {
		// TODO Auto-generated method stub
		
	}

	
	public Manager get(int mgr_id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Manager> list() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
