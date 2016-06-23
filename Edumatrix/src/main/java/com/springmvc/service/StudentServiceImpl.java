package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.dao.StudentDao;
import com.springmvc.entities.Student;

public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	
	public void saveOrUpdate(Student student){
		studentDao.saveOrUpdate(student);
	}
    
	
    public void delete(int std_id){
    	studentDao.delete(std_id);
    }
    
	
    public Student get(int std_id){
    	return studentDao.get(std_id);
    }
    
	
    public List<Student> list(){
    	return studentDao.list();
    }
	
	
}
