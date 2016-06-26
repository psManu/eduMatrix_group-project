//////////////////Common behaviours for officer dash board ///////////
	
/////// 2 functions to hide and view elements 
	function setVisible(elementId){
		document.getElementById(elementId).style.display = "block";
	}
	
	function setHidden(elementId){
		document.getElementById(elementId).style.display = "none";
	}

// Load the dialog box and tabs inside it, uses loadTabs function 
	function showDialog(dialog_id, tabs_id){
		var dialogId = "#" + dialog_id;
		$( dialogId ).dialog("open");
		loadTabs(tabs_id);
	}

//// Load tabs when given id	
	function loadTabs(id){
		var tabList = "#" + id;
		$( tabList ).tabs();
	}


////////////Dialog Box for Student Activities//////////////////////////////////////////////

 $(function() {
    $( "#dialog-stud-ops" ).dialog({autoOpen:false, width:800, minHeight:500});
  });
  
////////////Controller Calls - Add New student //////////////////////
	jQuery(document).ready(function($) {

		$("#add-stud-form").submit(function(event) {

			// Disble the search button
			enableAddStudBtn(false);

			// Prevent the form from submitting via the browser.
			event.preventDefault();

			addStudent();

		});

	});

	function addStudent() {

		var newStudent = {}                                        /// Bind values to the array
		newStudent["name"] = $("#stud_name").val();                
		newStudent["bday"] = $("#stud_dob").val();         			/// Same value names as the binding entity object
		newStudent["tp_no"] = $("#stud_mob").val();
		newStudent["email"] = $("#stud_email").val();

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "/Edu-matrix/addStudent",
			data : JSON.stringify(newStudent),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				if(data.code == '200'){
					
					setHidden('add-stud-form');
					setVisible('add-stud-feedback');
					setVisible('btn-add-new-stud');
					document.getElementById('disp-stud-name').innerHTML=data.msg;
					document.getElementById('disp-stud-id').innerHTML=data.content;
				}
				
			},
			error : function(e) {
				console.log("ERROR: ", e);
				alert('error');
				
			},
			done : function(e) {
				console.log("DONE");
				enableAddStudBtn(true);
			}
		});

	}

	function enableAddStudBtn(flag) {
		$("#btn-add-stud").prop("disabled", flag);
	}

	
	function addNewStudent(){
		setHidden('add-stud-feedback');
		setHidden('btn-add-new-stud');
		setVisible('add-stud-form');
		document.getElementById('add-stud-form').reset();
	}
	
	
	
