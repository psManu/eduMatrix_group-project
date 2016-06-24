package com.springmvc.dao;

import java.util.List;

import com.springmvc.entities.Course;

public interface CourseDao {
	
	public void addCourse(Course course);
	
	public void updateCourse(Course course);
    
    public void deleteCourse(int crs_id);
     
    public Course getCourseDetailsById(int crs_id);
     
    public List<Course> fetchAllCourses();
	
}
