package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
/*import org.springframework.jdbc.core.RowMapper;

import com.springmvc.entities.Institute;*/
import com.springmvc.entities.Manager;

public class ManagerDaoImpl implements ManagerDao{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public Integer countManagers(int user_id) {
		
		String sql = "SELECT COUNT(*) FROM global_useraccounts WHERE auth_level=manager and user_id=?";
		
		Integer count = jdbcTemplate.update(sql, user_id);
		return count;
	}
	
	public void addManager(Manager manager) {
		
		String sql = "INSERT INTO global_useraccounts(inst_id,username,password,name,auth_level) VALUES(?,?,?,?,?)";
		
		if(countManagers(manager.getUser_id()) == 0){
			
			jdbcTemplate.update(sql, 
					manager.getInst_id(),
					manager.getUsername(),
					manager.getPassword(),
					manager.getEmp_name(),
					manager.getAuth_level()
				);
		}
		
	}

	
	public void updateManager(Manager manager) {
		
		if(countManagers(manager.getUser_id()) != 0){
			
			String sql = "UPDATE global_useraccounts SET username=?,password=?,name=? "
																+ "WHERE auth_level=? and user_id = ?";
			
			jdbcTemplate.update(sql,
							manager.getUsername(),
							manager.getPassword(),
							manager.getEmp_name(),
							
							manager.getAuth_level(),
							manager.getUser_id()
					);
		}
		
		
	}

	
	public void deleteManager(int user_id) {
		
		String sql = "DELETE FROM global_useraccounts WHERE user_id=?";
		jdbcTemplate.update(sql, user_id);
		
	}

	
	public Manager getManagerById(int user_id) {
		
		String sql = "SELECT * FROM global_useraccounts WHERE user_id=?";
		return jdbcTemplate.query(sql, new ResultSetExtractor<Manager>(){
    		
    		
    		public Manager extractData(ResultSet rs) throws SQLException, DataAccessException{
    			
    			if(rs.next()){
    				Manager manager = new Manager();
    				
    				return manager;
    			}
    			return null;
    		}	
    	});		  
		
	}

	
	public List<Manager> fetchAllManagers() {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	
	
	/*@Override
	public void saveOrUpdate(Manager manager){
		
		if(manager.getOfcr_id() != null){
			String sql = "UPDATE reg_user SET email=?,"
											+ "address=?,"
											+ "tp_no=?, "
											+ "salary=?, "
											+ "username=?, "
											+ "password=? "
						+ "WHERE reguser_id=? ";
			
			jdbcTemplate.update(sql, 
						manager.getEmail(), 
						manager.getAddress(),
						manager.getTp_no(), 
						manager.getSalary(),
						manager.getUsername(), 
						manager.getPassword(),
						manager.getReguser_id()
					);
		}
		else{
			String sql = "INSERT INTO reg_user(reguser_id, "
											+ "reguser_name, "
											+ "address, "
											+ "email, "
											+ "tp_no, "
											+ "gender,"
											+ "date_joined, "
											+ "salary, "
											+ "user_type, "
											+ "username, "
											+ "password) "
								+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			
			jdbcTemplate.update(sql,
						manager.getReguser_id(),
						manager.getName(),
						manager.getAddress(),
						manager.getEmail(),
						manager.getTp_no(),
						manager.getGender(),
						manager.getDate_joined(),
						manager.getSalary(),
						manager.getUser_type(),
						manager.getUsername(),
						manager.getPassword()
					);
		}
		
	}

	@Override
	public void delete(int mgr_id) {
		
		String sql="DELETE FROM manager WHERE mgr_id=?";                    //must change the sql here...
    	jdbcTemplate.update(sql,mgr_id);
		
	}

	@Override
	public Manager get(int mgr_id) {
		String sql="SELECT * FROM manager WHERE mgr_id=?";                   //must change the sql here...a JOIN comes
    	return jdbcTemplate.query(sql, new ResultSetExtractor<Manager>(){
    		
    		@Override
    		public Manager extractData(ResultSet rs) throws SQLException, DataAccessException{
    			
    			if(rs.next()){
    				Manager manager = new Manager();
	    			manager.setOfcr_id(rs.getString("mgr_id"));
	    			manager.setReguser_id(rs.getString("reguser_id"));
	    			manager.setName(rs.getString("reguser_name"));
	    			manager.setAddress(rs.getString("address"));
	    			manager.setEmail(rs.getString("email"));
	    			manager.setTp_no(rs.getString("tp_no"));
	    			manager.setGender(rs.getString("gender"));
	    			manager.setDate_joined(rs.getString("date_joined"));
	    			manager.setSalary(rs.getString("salary"));
    				
    				return manager;
    			}
    			return null;
    		}	
    	});		  	
		
	}

	@Override
	public List<Manager> list() {
			String sql = "SELECT * FROM manager"; //must change the sql here...a JOIN comes
	    	
	    	List<Manager> managerList = jdbcTemplate.query(sql,
	    			new RowMapper<Manager>(){
	    		
	    		@Override
	    		public Manager mapRow(ResultSet rs, int rowNum) throws SQLException{
	    			
	    			Manager manager = new Manager();
	    			manager.setOfcr_id(rs.getString("mgr_id"));
	    			manager.setReguser_id(rs.getString("reguser_id"));
	    			manager.setName(rs.getString("reguser_name"));
	    			manager.setAddress(rs.getString("address"));
	    			manager.setEmail(rs.getString("email"));
	    			manager.setTp_no(rs.getString("tp_no"));
	    			manager.setGender(rs.getString("gender"));
	    			manager.setDate_joined(rs.getString("date_joined"));
	    			manager.setSalary(rs.getString("salary"));
	    			
	    			manager.setUsername("username");
	    			manager.setPassword("password");
	    			
	    			return manager;
	    		}
	    		
	    	});
	    	
	    	return managerList;
		
	}*/
	
}
