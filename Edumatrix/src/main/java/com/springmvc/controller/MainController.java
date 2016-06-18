package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.entities.Institute;
import com.springmvc.service.InstituteService;


@Controller
public class MainController {
	
	@Autowired
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
		
		/*return new ModelAndView("success");*/
	}
	
}
