package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/*import org.springframework.web.bind.annotation.ModelAttribute;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*import com.springmvc.entities.Institute;*/
import com.springmvc.entities.Student;
/*import com.springmvc.service.InstituteService;*/
import com.springmvc.service.StudentService;


@Controller
public class MainController {
	
	@Autowired
	StudentService studentService;
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public ModelAndView getForm(ModelAndView model){
		
		Student std = new Student();
		model.addObject("student", std);
		model.setViewName("welcome");
		return model;
	}
	
	/*@RequestMapping(value="/save", method=RequestMethod.GET)
	public String save(@ModelAttribute("institute") Student student){
		
		studentService.saveOrUpdate(student);
		
		return ("success");
		
	}*/
	
	/*@RequestMapping(value="/save", method=RequestMethod.POST)
	public ModelAndView save(@RequestParam("std_id") String std_id,@RequestParam("name") String std_name,@RequestParam("address") String address,@RequestParam("courses")List<String> courses){
		
		Student student = new Student();
		student.setStd_id(std_id);
		student.setName(std_name);
		student.setAddress(address);
		student.setCourses(courses);
		
		ModelAndView model = new ModelAndView("success");
		studentService.saveOrUpdate(student);
		
		return model;
		
	}*/
	
	
	
	/*@Autowired
	InstituteService instituteService;
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public ModelAndView getForm(ModelAndView model){
		
		Institute institute = new Institute();
		model.addObject("institute", institute);
		model.setViewName("welcome");
		return model;
	}
	
	@RequestMapping(value="/save", method=RequestMethod.GET)
	public String save(@ModelAttribute("institute") Institute institute){
		
		instituteService.insert(institute);
		
		return ("success");
		
	}*/
	
}
