package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.entities.Student;

public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	public void saveOrUpdate(Student student){
		
		/*if(student.getStd_id() != null){
			String sql = "UPDATE student SET address=?, "
											+ "email=?, "
											+ "tp_phone=?, "
											+ "school=?, "
											+ "bday=? "
											+ "username=?, "
											+ "password=? "
											+ "courses=?"
						+ "WHERE reguser_id=? ";*/
			
			/*jdbcTemplate.update(sql, 
							student.getAddress(),
							student.getEmail(),
							student.getTp_no(),
							student.getSchool(),
							student.getBday(),
							student.getUsername(),
							student.getPassword(),
							student.getCourses()[0]
							
					);
		}*/
		/*else{*/
			/*String sql = "INSERT INTO student(name,email,address) values(?,?,?,?)";*/
			
			/*String sql = "WITH std_crs AS("
						+ "INSERT INTO student(std_id,std_name,address) VALUES(?,?,?) RETURNING std_id "
						+ ")"
						+ "INSERT INTO student_courses(std_id,crs_id)"
						+ "VALUES("
						+ "(SELECT std_id FROM std_crs),"
						+ "?"
						+ ")";*/
			List<String> crs = new ArrayList<String>();
			
			for(int i=0;i<student.getCourses().size();i++){
				crs.add(student.getCourses().get(i));
			}
			
		
			String sql = "WITH std_crs AS(INSERT INTO student(std_id,std_name,address) VALUES(?,?,?)RETURNING std_id) INSERT INTO student_courses(std_id,crs_id)  VALUES( (SELECT std_id FROM std_crs),?)";
				
			jdbcTemplate.update(sql,
						student.getStd_id(),
						student.getName(),
						student.getAddress(),
						crs.get(0)
						
						
						/*(for(int i=0;i<student.getCourses().length;i++){
							student.getCourses()[i];
						})*/
						
						/*student.getEmail(),
						student.getTp_no(),
						student.getSchool(),
						student.getBday(),
						student.getUsername(),
						student.getPassword()*/
					);
		/*}*/
		
	}

	
	public void delete(int std_id) {
		
		String sql="DELETE FROM student WHERE std_id=?";
    	jdbcTemplate.update(sql,std_id);
		
	}

	
	public Student get(int std_id) {
		String sql="SELECT * FROM student WHERE std_id=?";
    	return jdbcTemplate.query(sql, new ResultSetExtractor<Student>(){
    		
    		
    		public Student extractData(ResultSet rs) throws SQLException, DataAccessException{
    			
    			if(rs.next()){
    				Student student = new Student();
    				student.setStd_id(rs.getString("std_id"));
    				student.setName(rs.getString("name"));
    				/*student.setEmail(rs.getString("email"));*/
    				student.setAddress(rs.getString("address"));
    				student.setTp_no(rs.getString("tp_no"));
    				/*student.setUsername("username");
	    			student.setPassword("password");*/
    				
    				return student;
    			}
    			return null;
    		}	
    	});		  	
		
	}

	
	public List<Student> list() {
			String sql = "SELECT * FROM student";
	    	
	    	List<Student> studentList = jdbcTemplate.query(sql,
	    			new RowMapper<Student>(){
	    		
	    		
	    		public Student mapRow(ResultSet rs, int rowNum) throws SQLException{
	    			
	    			Student student = new Student();
	    			student.setStd_id(rs.getString("std_id"));
	    			student.setName(rs.getString("name"));
	    			/*student.setEmail(rs.getString("email"));*/
	    			student.setAddress(rs.getString("address"));
	    			student.setTp_no(rs.getString("tp_no"));
	    			/*student.setUsername("username");
	    			student.setPassword("password");*/
	    			
	    			return student;
	    		}
	    		
	    	});
	    	
	    	return studentList;
		
	}
	
	
}
