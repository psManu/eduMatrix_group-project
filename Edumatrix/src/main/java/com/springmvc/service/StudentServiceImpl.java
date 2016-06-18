package com.springmvc.service;

import java.util.List;

import com.springmvc.dao.StudentDao;
import com.springmvc.entities.Student;

public class StudentServiceImpl implements StudentService{
	
	StudentDao studentDao;

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	@Override
	public void saveOrUpdate(Student student){
		studentDao.saveOrUpdate(student);
	}
    
	@Override
    public void delete(int std_id){
    	studentDao.delete(std_id);
    }
    
	@Override
    public Student get(int std_id){
    	return studentDao.get(std_id);
    }
    
	@Override
    public List<Student> list(){
    	return studentDao.list();
    }
	
	
}
