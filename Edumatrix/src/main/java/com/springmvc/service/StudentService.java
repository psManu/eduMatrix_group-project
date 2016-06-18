package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Student;

public interface StudentService {
	
	void saveOrUpdate(Student student);
    
    void delete(int std_id);
    
    Student get(int std_id);
    
    List<Student> list();
	
	
}
