<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>	
	<!-- start: Meta -->
	<meta charset="utf-8">
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link href='<spring:url value="/resources/css/bootstrap.css"></spring:url>' rel="stylesheet" type="text/css" />
	<link id="bootstrap-style" href='<spring:url value="/resourcescss/bootstrap.min.css"></spring:url>' rel="stylesheet">
	<link href='<spring:url value="/resources/css/bootstrap-responsive.min.css"></spring:url>' rel="stylesheet">
	<link id="base-style" href='<spring:url value="/resources/css/style.css"></spring:url>' rel="stylesheet">
	<link id="base-style-responsive" href='<spring:url value="/resources/css/style-responsive.css"></spring:url>' rel="stylesheet">
	<!-- end: CSS -->

	<link rel="stylesheet" href='<spring:url value="/resources/js/jquery-ui.css"></spring:url>'>
	<script src='<spring:url value="/resources/js/jquery.js"></spring:url>'></script>
	<script src='<spring:url value="/resources/js/jquery-ui.js"></spring:url>'></script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d1').dialog({ autoOpen: false, minWidth:700 })
		$('#popup').click(function(){ $('div#d1').dialog('open'); return false; });
		$('#pop').click(function(){ $('div#d1').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d2').dialog({ autoOpen: false, minWidth:700 })
		$('#popup2').click(function(){ $('div#d2').dialog('open'); return false; });
		$('#pop2').click(function(){ $('div#d2').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d3').dialog({ autoOpen: false, minWidth:700 })
		$('#popup3').click(function(){ $('div#d3').dialog('open'); return false; });
		$('#pop3').click(function(){ $('div#d3').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d4').dialog({ autoOpen: false, minWidth:700 })
		$('#popup4').click(function(){ $('div#d4').dialog('open'); return false; });
		$('#pop4').click(function(){ $('div#d4').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});	
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d5').dialog({ autoOpen: false, minWidth:700 })
		$('#popup5').click(function(){ $('div#d5').dialog('open'); return false; });
		$('#pop5').click(function(){ $('div#d5').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d6').dialog({ autoOpen: false, minWidth:700 })
		$('#popup6').click(function(){ $('div#d6').dialog('open'); return false; });
		$('#pop6').click(function(){ $('div#d6').dialog('open'); return false; });
		})
    </script>
	<script>
		$(function() {
		$( "#tabs" ).tabs();
		});		
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
		$('div#d7').dialog({ autoOpen: false, minWidth:700 })
		$('#popup7').click(function(){ $('div#d7').dialog('open'); return false; });
		$('#pop7').click(function(){ $('div#d7').dialog('open'); return false; });
		})
    </script>
	
	<script>
		function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#blah').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
		}
		$("#imgInp").change(function(){
	    	readURL(this);
		});
	</script>	
</head>

<body>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<br>
				<img src="/resources/images/logo.jpg" width="85px" height="80px" alt="Logo" style=" margin-left:15px; margin-right:20px;">
				<a class="brand" href="#"><span>eduMatrix</span></a>								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">																		
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Admin
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href='<spring:url value="#"></spring:url>'><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href='<spring:url value="managerHome.jsp"></spring:url>'><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
	<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href='<spring:url value="managerHome.jsp"></spring:url>'><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Manage Officer</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop2"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Settings</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop3"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Attendance Reports</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop4"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Data Backup</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop5"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> My Profile</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop6"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Activity Logs</span></a></li>
						<li><a href='<spring:url value="#"></spring:url>' id="pop7"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Financial Reports</span></a></li>
					</ul>
				</div>
			</div><br>
			<!-- end: Main Menu -->
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href='<spring:url value="managerHome.jsp"></spring:url>'>Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href='<spring:url value="#"></spring:url>'>managerHome</a></li>
			</ul>

		<div class="row-fluid" >
				
				<div class="span3 statbox purple"  onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon user" style="width:50px;height:50px;float:right;"></i>
					<div class="footer" >
						<a href='<spring:url value=""></spring:url>' style="font-size:20px;" id="popup">Manage Officer</a>					
					</div>
					<div id="d1"  title="Manage Officer" >
						<div id="tabs" >
						<ul>
							<li><a href='<spring:url value="#tabs-1"></spring:url>'>View</a></li>
							<li><a href='<spring:url value="#tabs-2"></spring:url>'>Add New</a></li>
							<li><a href='<spring:url value="#tabs-3"></spring:url>'>Privileges</a></li>
						</ul>
						
						<div id="tabs-1" >						
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-4">
										<div>	<label>Select Officer</label></br>					
											<select name="select" size="4" style="margin-left:30px;">
												<option value="Pasan"> Pasan</option></br>
												<option value="Janadhi"> Janadhi</option></br>
												<option value="Naveen"> Naveen</option></br>
												<option value="Randi"> Randi</option></br>
												<option value="Waruni"> Waruni</option></br>
												<option value="Madhu"> Madhu</option></br>
												<option value="Deemanthi"> Deemanthi</option></br>
											</select></div></div><div class="col-md-4">
										</div>
									<div class="col-md-4"></br>
										<div  style="float:right; margin-left:250px;">							
											<a   href='<spring:url value=""></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Delete</button></a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div>
											</br>
											<img src='<spring:url value="/resources/images/man.png"></spring:url>' width="120px" height="120px" alt="man" style=" margin-left:50px; ">						
										</div>
									</div>
									<div class="col-md-8">
										<div style="float:right; "><td>
											<div  title="Username" >
												<label style=" margin-left:150px;">Username</label>
												<text name="username" id="username" type="display" style=" margin-left:70px; ">abc</text>
												</br>
											</div>						
											<div  title="Password" >
												<label style=" margin-left:150px;">Password</label>
												<text  name="username" id="password" type="display"  style=" margin-left:70px; ">123</text>
											</div>							
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div style="float:left; ">
											<div  title="name" >
												</br>
												<label style=" margin-left:10px;">Name</label>
												<text name="name" id="name" type="display" style=" margin-left:10px; ">A.W. Perera</text>
												</br>
											</div>						
											<div  title="nic" >
												<label style=" margin-left:10px;">NIC</label>
												<text  name="nic" id="nic" type="display"  style=" margin-left:15px; ">786574849v &nbsp; &nbsp;&nbsp; &nbsp;</text>
											</div>
											<div></br></div>
										</div>
									</div>
									<div class="col-md-8"><textarea name="des" id="des" type="display" style="width:250px; height:80px; margin-left:100px;" placeholder="Description of the officer"></textarea></td></div>
								</div>
								<div class="row">
									<div class="col-md-8"></div>
									<div class="col-md-4">
										<div  style="float:right; margin-left:250px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Close</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
												
						<div id="tabs-2">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6">
										<form id="form1" runat="server" style="margin-left:30px;">
											<image style="width:190px; height:130px;" type="display" name="img" id="blah" src="#" alt="officer image" />
											<input type='file' name="img" id="imgInp" />
										</form>
									</div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:30px;">							
											<a   href='<spring:url value=""></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Delete</button></a>
										</div>
										<div style="float:right; "><br><br>
											<div  title="Username" >
												<label style=" margin-left:10px;">Username</label>
												<input name="username" id="username" type="text" style=" margin-left:10px; width:220px;"/>
											</div>						
											<div  title="Password" >
												<label style=" margin-left:10px;">Password</label>
												<input  name="username" id="password" type="text"  style=" margin-left:10px; width:220px;"/>
											</div>						
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div style="float:left; ">
											<div  title="name" >
												<div class="row">
												<div class="col-md-2">
												<label style=" margin-left:30px;">Name</label></div>
												<div class="col-md-4">
												<input name="name" id="name" type="text" style=" margin-left:30px;width:220px; "></input>
												</div></div>
											</div>						
											<div  title="nic" >
												<div class="row">
												<div class="col-md-2">
												<label style=" margin-left:30px;">NIC</label></div>
												<div class="col-md-4">
												<input  name="nic" id="nic" type="text"  style=" margin-left:30px; width:220px;"></input>
												</div></div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div></br></br><textarea name="des" id="des" type="display" style="width:250px; height:80px; margin-left:30px;" placeholder="Description of the officer"></textarea></div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6">
										<div  style="float:left; margin-left:250px;">
											<a href="#" role="button"><button type="submit" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Save</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div id="tabs-3">
						<div class="container-fluid">
								<div class="row">
									<div class="col-md-6">
										<label>Select Officer</label></br>	
										<select name="select" size="5" style="margin-left:30px;">
											<option value="Pasan"> Pasan</option></br>
											<option value="Janadhi"> Janadhi</option></br>
											<option value="Naveen"> Naveen</option></br>
											<option value="Randi"> Randi</option></br>
											<option value="Waruni"> Waruni</option></br>
											<option value="Madhu"> Madhu</option></br>
											<option value="Deemanthi"> Deemanthi</option></br>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="checkbox" style="margin-left:30px;"></br>
											<label><input type="checkbox">&nbsp; Collect Fees</label></br>
											<label><input type="checkbox">&nbsp; Send SMS Alerts</label></br>
											<label><input type="checkbox">&nbsp; Add/Delete Lecturer</label></br>
											<label><input type="checkbox">&nbsp; Add/Delete Lecture</label></br>
											<label><input type="checkbox">&nbsp; Mark Attendance</label></br>
											<label><input type="checkbox">&nbsp; Add/Delete Officer</label></br>
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkbox" style="margin-left:30px;">
											<label><input type="checkbox">&nbsp; Exam Results update/upload</label></br>
											<label><input type="checkbox">&nbsp; Issue Free Cards</label></br>
											<label><input type="checkbox">&nbsp; Add/Delete Students</label></br>
											<label><input type="checkbox">&nbsp; Pay Lecturers</label></br>
											<label><input type="checkbox">&nbsp; Pay Officers</label></br>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="button-close" style="float:right; margin-right:50px; ">	
												<a href='<spring:url value="#"></spring:url>'><button type="button"  class="btn btn-primary">Restore</button></a>
										</div>
									</div>
									<div class="col-md-6">
										<div class="button-close" style="float:right; margin-right:33px; ">	
											<a href='<spring:url value="#"></spring:url>'><button type="button"  class="btn btn-primary">Apply</button></a>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:250px;">
											<a href='<spring:url value="#"></spring:url>' role="button"><button type="submit" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:33px;">Save</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
				</div>
				
				<div class="span3 statbox green" onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon settings" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href='<spring:url value="#"></spring:url>' style="font-size:20px;" id="popup2"> Settings</a>	
					</div>
					<div id="d2"  title="Settings" >
						<div id="tabs" >
							<ul>
								<li><a href='<spring:url value="#tabs-1"></spring:url>'>General</a></li>
								<li><a href='<spring:url value="#tabs-2"></spring:url>'>Financial</a></li>
							</ul>
						
						<div id="tabs-1" >						
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
											<div class="checkbox" >
												<label><input type="checkbox">&nbsp; SMS Alerts - Students</label></br>
												<label><input type="checkbox">&nbsp; SMS Alerts - Parents</label></br>
												<label><input type="checkbox">&nbsp; SMS Alerts - Lecturers</label></br>
												<label><input type="checkbox">&nbsp; SMS Alerts - Officers</label></br>
												<label><input type="checkbox">&nbsp; Use Barcode - reader</label></br>
												<label><input type="checkbox">&nbsp; Issue Free Cards</label></br>
												<label><input type="checkbox">&nbsp; Delete Dormant Student Accounts</label></br>
											</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6"></div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:550px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="submit" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Save</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div id="tabs-2">
						
						</div>
						</div>
					</div>
				</div>
				
				<div class="span3 statbox blue noMargin" onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon notes_2" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href='<spring:url value="#"></spring:url>' style="font-size:20px;" id="popup3"> Attendance reports</a>
					</div>
					<div id="d3"  title="Attendance reports">
						<div id="tabs" >
						<ul>
						<li><a href='<spring:url value="#tabs-1"></spring:url>'>View Attendance</a></li>
						<li><a href='<spring:url value="#tabs-2"></spring:url>'>Update Attendance</a></li>
						<li><a href='<spring:url value="#tabs-3"></spring:url>'>Send Attendance Alerts</a></li>
						</ul>
						
						<div id="tabs-1" >						
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<div>
											<label style="float:left; margin-right:10px;">Select Month</label>
											<div class="control-group" style="width:30px;" name="month1">
												<div class="controls">
												  <select id="selectError"  data-rel="chosen">
													<option>January</option>
													<option>February</option>
													<option>March</option>
													<option>April</option>
													<option>May</option>
													<option>June</option>
													<option>July</option>
													<option>August</option>
													<option>September</option>
													<option>October</option>
													<option>November</option>
													<option>December</option>
												  </select>
												</div>
											</div>
										</div>						
										<div>
											<label>Select Course</label></br>				
											<select name="selectcourse" size="5">
												<option value="Mathematics"> Mathematics</option>
												<option value="Physics"> Physics</option>
												<option value="Chemistry"> Chemistry</option>
												<option value="Bio"> Bio</option>
												<option value="Art"> Art</option>
												<option value="Politics"> Politics</option>
												<option value="Economic"> Economic</option>
												<option value="Business"> Business</option>
												<option value="Management"> Management</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<a href='<spring:url value="/resources/images/attendance.JPG"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">View</button></a>
									</div>
									<div class="col-md-6">
										<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Close</button></a>
									</div>
								</div>
							</div>
						</div>
						
						<div id="tabs-2">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">						
										<div>
											<label style="float:left; margin-right:10px;">Select Month</label>
											<div class="control-group" style="width:30px;" name="month2">
												<div class="controls">
												  <select id="selectError">
													<option>January</option>
													<option>February</option>
													<option>March</option>
													<option>April</option>
													<option>May</option>
													<option>June</option>
													<option>July</option>
													<option>August</option>
													<option>September</option>
													<option>October</option>
													<option>November</option>
													<option>December</option>
												  </select>
												</div>
											</div>
										</div>
										<div>
											<label>Select Course</label></br>				
											<select name="selectcourse" size="5">
												<option value="Mathematics"> Mathematics</option>
												<option value="Physics"> Physics</option>
												<option value="Chemistry"> Chemistry</option>
												<option value="Bio"> Bio</option>
												<option value="Art"> Art</option>
												<option value="Politics"> Politics</option>
												<option value="Economic"> Economic</option>
												<option value="Business"> Business</option>
												<option value="Management"> Management</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div  style="float:right; margin-left:250px;">
											<a   href='<spring:url value="/resources/images/attendance.JPG"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Update</button></a>
										</div>
									</div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:250px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Close</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div id="tabs-3">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">	
										<div class="control-group">
											<label class="control-label" for="selectError1">Select Students</label>
											<div class="controls">
											  <select id="selectError1" multiple data-rel="chosen">
												<option>Student1</option>
												<option>Student2</option>
												<option>Student3</option>
												<option>Student4</option>
												<option>Student5</option>
											  </select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="chat-form">
											<textarea></textarea>
											<button class="btn btn-info">Send message</button>
										</div>	
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
						
				<div class="span3 statbox yellow" onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon inbox_out" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href='<spring:url value="#"></spring:url>' style="font-size:20px;" id="popup4"> Data Backup</a>
					</div>
				</div>
			</div>
			
			<div class="row-fluid">
				<div  class="span3 statbox blue" onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon home" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href='<spring:url value="#"></spring:url>' style="font-size:20px;" id="popup5">My Profile </a>
					</div>	
					<div id="d5"  title="Admin Profile" > 
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-6">
								<form id="form1" runat="server" >
									<image style="width:190px; height:130px;" type="display" name="img" id="blah" src="#" alt="admin image" />
									<input type='file' name="img" id="imgInp" />
								</form>
							</div>
							<div class="col-md-6">
								<form>
									</br>
									<fieldset style="display:block; border:2px; padding-top:0.35em;">
										<legend>Log in credentials:</legend>
											Username:&nbsp;&nbsp;&nbsp;&nbsp; <input name="username" type="text"><br>
											Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="password" type="text"><br>
											Re:Password: <input type="text">
										</fieldset>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<form>
									</br>
									<fieldset style="display:block; border:2px; padding-top:0.35em;">
										<legend>Basic Info:</legend>
											Name: <input name="name" type="text"><br>
											NIC: &nbsp;&nbsp;&nbsp;<input name="nic" type="text"><br>
										</fieldset>
								</form>
							</br></div>
							<div class="col-md-6">
								<form>
									</br>
									<fieldset style="display:block; border:2px; padding-top:0.35em;">
										<legend>Contact Info:</legend>
											Telephone: <input name="tel" type="text"><br>
											Address: &nbsp;&nbsp;&nbsp;<textarea name="address" type="text"></textarea><br>
									</fieldset>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6">
								<div  style="float:right; margin-left:40px;">
										<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right; margin-right:40px;">Save</button></a>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
				
				<div class="span3 statbox red" onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon log_book" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href='<spring:url value="#"></spring:url>' style="font-size:20px;" id="popup6">Activity Logs</a>
					</div>
					<div id="d6"  title="Activity Logs" > 
					<div class="container-fluid">
							<div class="row">
								<div class="col-md-5">
									<input name="date1" value="date1" type="date" style="margin-right:20px;">to</input>
								</div>
								<div class="col-md-4">
									<input name="date2" value="date2" type="date"></input>
								</div>
								<div class="col-md-3">
									<select name="select" style="width:110px;">
										<option value=""> Own</option></br>
										<option value="Pasan"> Pasan</option></br>
										<option value="Janadhi"> Janadhi</option></br>
										<option value="Naveen"> Naveen</option></br>
										<option value="Randi"> Randi</option></br>
										<option value="Waruni"> Waruni</option></br>
										<option value="Madhu"> Madhu</option></br>
										<option value="Deemanthi"> Deemanthi</option></br>
									</select></br>
								</div>
							</div>
							<div class="row">
								<div class="col-md-5">
									<div>
										<label>Added Student Student01 </label></br>
										<label>Collected Fees 912100 500.00 </label></br>
										<label>Collected Fees 913220 500.00 </label></br>
										<label>Added Student Student02 </label></br>
										<label>Deleted Student Student01 </label></br>
										<label>Added Student Student03 </label></br>
										<label>Added Student Student04 </label></br>
									</div>
								</div>
								<div class="col-md-5">
									<div>
										<label>2015-05-21 21:30:00pm</label></br>
										<label>2015-05-21 01:30:00pm</label></br>
										<label>2015-05-21 03:30:00pm</label></br>
										<label>2015-05-21 11:30:00pm</label></br>
										<label>2015-05-21 21:30:00pm</label></br>
										<label>2015-05-21 08:30:00pm</label></br>
										<label>2015-05-21 05:30:00pm</label></br>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row">
								<div class="col-md-6"></div>
								<div class="col-md-6">
									<div  style="float:right; margin-left:40px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right; margin-right:40px;">Close</button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="span3 statbox greenLight " onTablet="span6" onDesktop="span3">
					<i class="glyphicons-icon usd" style="width:50px;height:50px;float:right;"></i>
					<div class="footer">
						<a href="#" style="font-size:20px;" id="popup7"> Financial reports</a>
					</div>
					<div id="d7"  title="Payments" >
						<div id="tabs" >
						<ul>
						<li><a href='<spring:url value="#tabs-1"></spring:url>'>Officers</a></li>
						<li><a href='<spring:url value="#tabs-2"></spring:url>'>Lecturers</a></li>
						</ul>
						
						<div id="tabs-1" >						
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6">
										<label>Select Officer</label></br></br>
										<select name="select" size="10" style="margin-left:30px; ">
											<option value="Officer 01"> Officer 01</option>
											<option value="Officer 02"> Officer 02</option>
											<option value="Officer 03"> Officer 03</option>
											<option value="Officer 04"> Officer 04</option>
											<option value="Officer 05"> Officer 05</option>
											<option value="Officer 06"> Officer 06</option>
											<option value="Officer 07"> Officer 07</option>
											<option value="Officer 08"> Officer 08</option>
											<option value="Officer 01"> Officer 09</option>
											<option value="Officer 02"> Officer 10</option>
											<option value="Officer 03"> Officer 11</option>
											<option value="Officer 04"> Officer 12</option>
											<option value="Officer 05"> Officer 13</option>
										</select>
									</div>
									<div class="col-md-6">
										<fieldset style="display:block; border:2px; padding-top:0.35em;">
											<legend>This Month</legend>
												Days Worked: <input name="tel" type="text"><br>
												Months Pay: <input name="tel" type="text"><br>
												Additional:<input name="tel" type="text"><br>
												Total:<input name="tel" type="text"><br>
											</fieldset>
										<fieldset style="display:block; border:2px; padding-top:0.35em;">
												Balance Brought: <input name="tel" type="text"><br>
										</fieldset>
										<a href='<spring:url value="#"></spring:url>'><button type="button">Payment History</button></a>
										<div></br>Total Payable: <input  name="tel" type="text"><br></div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div  style="float:right; margin-left:100px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Cancel</button></a>
										</div>
									</div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:250px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="submit" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Pay</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div id="tabs-2">
						<div class="container-fluid">
								<div class="row">
									<div class="col-md-6">	
										<label>Select Lecturer</label></br></br>
										<select name="select" size="10" style="margin-left:30px;">
											<option value="Lecturer 01"> Lecturer 01</option>
											<option value="Lecturer 02"> Lecturer 02</option>
											<option value="Lecturer 03"> Lecturer 03</option>
											<option value="Lecturer 04"> Lecturer 04</option>
											<option value="Lecturer 05"> Lecturer 05</option>
											<option value="Lecturer 06"> Lecturer 06</option>
											<option value="Lecturer 07"> Lecturer 07</option>
											<option value="Lecturer 08"> Lecturer 08</option>
											<option value="Lecturer 01"> Lecturer 09</option>
											<option value="Lecturer 02"> Lecturer 10</option>
											<option value="Lecturer 03"> Lecturer 11</option>
											<option value="Lecturer 04"> Lecturer 12</option>
											<option value="Lecturer 05"> Lecturer 13</option>
										</select>
									</div>
									<div class="col-md-6">
										<fieldset style="display:block; border:2px; padding-top:0.35em;">
											<legend>This Month</legend>
												Days Worked: <input name="tel" type="text"><br>
												Months Pay: <input name="tel" type="text"><br>
												Additional:<input name="tel" type="text"><br>
												Total:<input name="tel" type="text"><br>
										</fieldset>
										<fieldset style="display:block; border:2px; padding-top:0.35em;">
												Balance Brought: <input name="tel" type="text"><br>
										</fieldset>
										<a href='<spring:url value="#"></spring:url>'><button type="button">Payment History</button></a>
										<div></br>Total Payable: <input  name="tel" type="text"><br></div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div  style="float:right; margin-left:100px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="button" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Cancel</button></a>
										</div>
									</div>
									<div class="col-md-6">
										<div  style="float:right; margin-left:250px;">
											<a   href='<spring:url value="managerHome.jsp"></spring:url>'><button type="submit" class="btn btn-primary btn-lg btn-block" style="float:right;margin-right:40px;">Pay</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</br>	
			</div>
		</div>
	</div>
</div>
</body>
</html>