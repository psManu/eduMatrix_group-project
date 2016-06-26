package com.edumatrix.core.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.edumatrix.core.entity.Student;
import com.edumatrix.core.jsonviews.AjaxResponse;
import com.edumatrix.core.jsonviews.Views;
import com.fasterxml.jackson.annotation.JsonView;


@RestController
public class OfficerOps {

	@Autowired
	private JdbcTemplate dbMan;

	@JsonView(Views.Public.class)
	@RequestMapping(value="/addStudent", method=RequestMethod.POST)
    public AjaxResponse addStudent(@RequestBody Student student) {
		
		AjaxResponse response = new AjaxResponse();
		

				
		
		int status = 0;
		
		status = dbMan.queryForObject(""
				+ "INSERT INTO inst_student_details(stud_name, stud_dob, stud_mob_phn ) "
				+ "VALUES(?, ?, ?) "
				+ "RETURNING stud_id; ", 
				new Object[]{student.getName(), java.sql.Date.valueOf(student.getBday()), student.getTp_no()}, 
				Integer.class);
		
		if(status > 0){
			System.out.println("Insertion succesful. ID = " + status);
			response.setCode("200");
			response.setMsg("Student added successfuly!");
			response.setContent("" + status);
			
		}else{
			response.setCode("400");
			response.setMsg("Student didn't get added!");
			response.setContent("" + status);
		}
		
		student.setStd_id("" + status); 
		
		System.out.println(response);
		
		System.out.println(student);
		
		
		return response;
    }
}
