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
	
	@Override
	public void saveOrUpdate(Course course){
		courseDao.saveOrUpdate(course);
	}
    
	@Override
    public void delete(int crs_id){
    	courseDao.delete(crs_id);
    }
    
	@Override
    public Course get(int crs_id){
    	return courseDao.get(crs_id);
    }
    
	@Override
    public List<Course> list(){
    	return courseDao.list();
    }
	
	
}
