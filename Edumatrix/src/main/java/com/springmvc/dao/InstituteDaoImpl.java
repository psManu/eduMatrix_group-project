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
	
	public Integer countInstitutes(int inst_id){
		
		String sql = "SELECT COUNT(*) FROM global_institutes WHERE inst_id=?";
		int count = jdbcTemplate.update(sql,inst_id);
		return count;
		
	}
	
	
	public void addInstitute(Institute institute){
				
		if(countInstitutes(institute.getInst_id()) == 0){
			
			System.out.println("came to insert.............");
			String sql = "INSERT INTO institute(inst_id,inst_name,inst_city.inst_address,inst_phone, inst_email,schema_name) "
									+ "values(?,?,?,?,?,?,?)";
			jdbcTemplate.update(sql, 
								institute.getInst_id(),
								institute.getInst_name(),
								institute.getInst_city(),
								institute.getInst_address(),
								institute.getInst_phone(),
								institute.getInst_email(),
								institute.getSchema_name()
							);
			
		}			
	}
	
	
	public void updateInstitute(Institute institute) {
		String sql = "UPDATE institute SET "
										+ "name = ?, "
										+ "city = ?"
										+ "address = ?,"
										+ "phone = ?,"
										+ "email = ?"
										
								+ " WHERE inst_id=?";
		
		if(countInstitutes(institute.getInst_id())> 0){
				
			jdbcTemplate.update(sql,
					
					institute.getInst_name(), 
					institute.getInst_city(),
					institute.getInst_address(),
					institute.getInst_phone(),
					institute.getInst_email(),
					
					institute.getInst_id()
				);	
			System.out.println("updated successfully..");
			
		}
		else{
			System.out.println("No matching institute..");
		}
		
					
	}
	
    
    public void deleteInstitute(int inst_id){
    	
    	String sql="DELETE FROM institute WHERE inst_id=?";
    	jdbcTemplate.update(sql,inst_id);
    	
    }
	
	/*public void update(Institute institute){
		 
		  
	 }*/
     
	
    public Institute get(int inst_id){
    	
    	String sql="SELECT * FROM institute WHERE inst_id=?";
    	return jdbcTemplate.query(sql, new ResultSetExtractor<Institute>(){
    		
    		
    		public Institute extractData(ResultSet rs) throws SQLException, DataAccessException{
    			
    			if(rs.next()){
    				Institute institute = new Institute();
    				institute.setInst_id(rs.getInt("inst_id"));
    		        institute.setInst_name(rs.getString("inst_name"));
    		        institute.setInst_city(rs.getString("inst_city"));
    		        institute.setInst_address(rs.getString("inst_address"));
    		        institute.setInst_phone(rs.getString("inst_phone"));
    		        institute.setInst_email(rs.getString("inst_email"));
    		        institute.setSchema_name(rs.getString("schema_name"));
    		        
    		        institute.setInst_id(rs.getInt("inst_id"));
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
    		
    		
    		public Institute mapRow(ResultSet rs, int rowNum) throws SQLException{
    			
    			Institute institute = new Institute();
    			institute.setInst_id(rs.getInt("inst_id"));
    	        institute.setInst_name(rs.getString("inst_name"));
    	        institute.setInst_city(rs.getString("inst_city"));
    	        institute.setInst_address(rs.getString("inst_address"));
    	        institute.setInst_phone(rs.getString("inst_phone"));
    	        institute.setInst_email(rs.getString("inst_email"));
    	        institute.setSchema_name(rs.getString("schema_name"));
    			
    			return institute;
    		}
    		
    	});
    	
    	return instituteList;
    	
    }
    
    public Institute getInstituteNameById(int inst_id) {
		
		String sql = "SELECT * FROM institutes WHERE inst_id=?";
		return jdbcTemplate.queryForObject(sql, new Object[] {inst_id}, new InstituteMapper());
		
	}
	
	
	public List<Institute> fetchAllInstitutes() {
		
		return jdbcTemplate.query("SELECT * FROM institutes", new InstituteMapper());
	}
	
	private static final class InstituteMapper implements RowMapper<Institute> {
		
	    public Institute mapRow(ResultSet rs, int rowNum) throws SQLException {
	        Institute institute = new Institute();
	        institute.setInst_id(rs.getInt("inst_id"));
	        institute.setInst_name(rs.getString("inst_name"));
	        institute.setInst_city(rs.getString("inst_city"));
	        institute.setInst_address(rs.getString("inst_address"));
	        institute.setInst_phone(rs.getString("inst_phone"));
	        institute.setInst_email(rs.getString("inst_email"));
	        institute.setSchema_name(rs.getString("schema_name"));
	        return institute;
	    }
	}
    
	public String getInstituteSchemaById(int inst_id){
		
		String sql = "SELECT schema_name FROM global_institutes WHERE inst_id=?";
		
		String schema = jdbcTemplate.queryForObject(sql, new Object[]{10}, String.class);
		return schema;
		
	}

	
    
	
}
