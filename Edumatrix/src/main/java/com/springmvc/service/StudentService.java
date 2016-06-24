package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Student;

public interface StudentService {
	
	void addStudent(Student student);
	
	void updateStudent(Student student);
    
    void deleteStudent(int std_id);
     
    Student getStudentDetailsById(int std_id);
     
    List<Student> fetchAllStudentslist();
	
	
}
