package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
/*import org.springframework.jdbc.core.RowMapperResultSetExtractor;*/
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.entities.Institute;

public class InstituteDaoImpl implements InstituteDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void insert(Institute institute){
		
		/*if(institute.getId() > 0){
			String sql = "UPDATE institute SET name=?, email=?,adress=?,"
					+ "tp_phone=? WHERE inst_id=?";
			jdbcTemplate.update(sql,institute.getName(), institute.getEmail(), 
								institute.getAddress(),institute.getId());
		}
		else{
			System.out.println("came to insert.............");
			String sql = "INSERT INTO institute(inst_id,inst_name,address,email,tp_no) values(?,?,?,?,?)";
			jdbcTemplate.update(sql, institute.getId(),institute.getName(), institute.getAddress(),institute.getEmail(),
							institute.getTp_no());
		}*/
		System.out.println("came to insert.............");
		String sql = "INSERT INTO institute(inst_id,inst_name,address,email,tp_no) values(?,?,?,?,?)";
		jdbcTemplate.update(sql, institute.getId(),institute.getName(), institute.getAddress(),institute.getEmail(),
						institute.getTp_no());
				
	}
    
	@Override
    public void delete(int inst_id){
    	
    	String sql="DELETE FROM institute WHERE inst_id=?";
    	jdbcTemplate.update(sql,inst_id);
    	
    }
	
	 public void update(Institute institute){
		 
		 String sql = "UPDATE institute SET name=?, email=?,adress=?,"
					+ "tp_phone=? WHERE inst_id=?";
			jdbcTemplate.update(sql,institute.getName(), institute.getEmail(), 
								institute.getAddress(),institute.getId());		 
	 }
     
	@Override
    public Institute get(int inst_id){
    	
    	String sql="SELECT * FROM institute WHERE inst_id=?";
    	return jdbcTemplate.query(sql, new ResultSetExtractor<Institute>(){
    		
    		@Override
    		public Institute extractData(ResultSet rs) throws SQLException, DataAccessException{
    			
    			if(rs.next()){
    				Institute institute = new Institute();
    				institute.setId(rs.getInt("inst_id"));
    				institute.setName(rs.getString("name"));
    				institute.setEmail(rs.getString("email"));
    				institute.setAddress(rs.getString("address"));
    				institute.setTp_no(rs.getString("tp_no"));
    				return institute;
    			}
    			return null;
    		}	
    	});		  	
    }
     
    public List<Institute> list(){
    	
    	String sql = "SELECT * FROM institute";
    	
    	List<Institute> instituteList = jdbcTemplate.query(sql,
    			new RowMapper<Institute>(){
    		
    		@Override
    		public Institute mapRow(ResultSet rs, int rowNum) throws SQLException{
    			
    			Institute institute = new Institute();
    			institute.setId(rs.getInt("inst_id"));
    			institute.setName(rs.getString("name"));
    			institute.setEmail(rs.getString("email"));
    			institute.setAddress(rs.getString("address"));
    			institute.setTp_no(rs.getString("tp_no"));
    			
    			return institute;
    		}
    		
    	});
    	
    	return instituteList;
    	
    }
	
}
