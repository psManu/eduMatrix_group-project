<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="save" method="post">
		<label>ID:</label>
		<input type="text" name="std_id" /><br>
		
		<label>Name:</label>
		<input type="text" name="name" /><br>
		
		<label>Address:</label>
		<input type="text" name="address" /><br>
		
		<!-- <label>email:</label>
		<input type="text" name="email" /><br> -->
		
		<label>Phone:</label>
		<input type="text" name="tp_no" /><br>
		
		<label>Courses:</label>
		<!-- <input type="text" name="courses" /><br> -->
		
		<select name="courses" multiple>
			<option value="5" >5</option>
			<option value="10" >10</option> 
			<option value="15" >15</option>
		</select>
		
		<input type="submit" value="submit" />
	</form>
	
	
	
</body>
</html>