<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Officer Dashboard</title>
	<link rel="stylesheet" href='<spring:url value="/resources/css/jquery-ui.min.css"></spring:url>' type="text/css" />
	<link rel="stylesheet" href='<spring:url value="/resources/css/officerHome.css"></spring:url>' type="text/css" />
	<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/js/jquery-ui.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/js/officerHome.js"></spring:url>'></script>

</head>
<body>
	
	<a href="#" onclick="showDialog('dialog-stud-ops', 'tabs-stud-ops')">Student Management</a>
	
	<div id="dialog-stud-ops" title="Student Management">
		
		<div id="tabs-stud-ops">
			<ul>
			    <li><a href="#stud-ops-tab-1">Add Student</a></li>
			    <li><a href="#stud-ops-tab-2">View/Edit/Remove Student</a></li>
			    <li><a href="#stud-ops-tab-3">Another function</a></li>
		  	</ul>
			<div id="stud-ops-tab-1" >
			
					<form  id="add-stud-form">
								
							<table>
								<tr>
									<td style="min-width:50%; max-width:50%;">
										<table>
											<tr><td>
												<img src="#" style="min-width:70px;max-width:70px;min-height:90px;max-height:90;">
												<input type="file" value="Upload Picture" name="pro_pic">
											</td></tr>
											<tr><td><input type="text" id="stud_name" placeholder="Students Name"></td></tr>
											<tr><td><input type="text" id="stud_dob" placeholder="Date of Birth"></td></tr>
										</table>
									</td>
									<td style="min-width:50%; max-width:50%;">
										<table>
											<tr><td><input type="text" id="stud_mob" placeholder="Mobile Phone"></td></tr>
											<tr><td><input type="text" id="stud_email" placeholder="E Mail"></td></tr>	
										</table>
									</td>
								</tr>
							</table>
							
						
								<button type="submit" id="btn-add-stud" class="btn btn-primary btn-lg">Add</button>
							
					</form>
					<div id="add-stud-feedback">
						<h5>Successfully added student</h5>
						<table>
							<tr>
								<td>Name : </td>
								<td><p id="disp-stud-name"></p></td>
							</tr>
							<tr>
								<td> Id: </td>
								<td><p id="disp-stud-id"></p></td>
							</tr>
						</table>
					</div>
					<button id="btn-add-new-stud" onclick="addNewStudent()"> Add Another Student</button>
			</div>
			<div id="stud-ops-tab-2"></div>
			<div id="stud-ops-tab-3"></div>
		</div>
	</div>
</body>
</html>