package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Student;

public interface StudentDao {
	
public void saveOrUpdate(Student student);
    
    public void delete(int std_id);
     
    public Student get(int std_id);
     
    public List<Student> list();
	
}
