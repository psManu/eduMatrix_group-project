package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Course;

public interface CourseDao {
	
	public void saveOrUpdate(Course course);
    
    public void delete(int crs_id);
     
    public Course get(int crs_id);
     
    public List<Course> list();
	
}
