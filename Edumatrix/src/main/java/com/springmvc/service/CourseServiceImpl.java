package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.dao.CourseDao;
import com.springmvc.entities.Course;

public class CourseServiceImpl implements CourseService{
	
	@Autowired
	CourseDao courseDao;

	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}
	
	
	public void saveOrUpdate(Course course){
		courseDao.saveOrUpdate(course);
	}
    
	
    public void delete(int crs_id){
    	courseDao.delete(crs_id);
    }
    
	
    public Course get(int crs_id){
    	return courseDao.get(crs_id);
    }
    
	
    public List<Course> list(){
    	return courseDao.list();
    }
	
	
}
