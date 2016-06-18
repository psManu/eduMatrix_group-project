package com.springmvc.service;

import java.util.List;

import com.springmvc.entities.Course;

public interface CourseService {
	
	void saveOrUpdate(Course course);
    
    void delete(int crs_id);
    
    Course get(int crs_id);
    
    List<Course> list();
	
	
}
