--Structure I'm suggesting is like this,

--Each institute has its own employees in a table.
--From those employees we can appoint system user by further adding them to system user table in public shema by 
--          giving their login and authlevel.
--Each institute has 3 different system user categories    -----> manager,  officer,  lecturer
--Particular institute can have (>0) manager/s.
--		*Once superuser (we) add a manager when registering an institute, that manager can add/remove more managers 
--		*Later added managers also can add/remove managers.(each manager gets equal privilleges)
--
--
--

-- Global schema relations --
CREATE		TYPE			pay_strategy		AS	ENUM ( 'fixed' , 'per head');
CREATE		TYPE			auth_type			AS	ENUM ('manager', 'officer', 'lecturer');


CREATE 	TABLE		global_institutes(
	inst_id			SERIAL		PRIMARY KEY,
	inst_name		TEXT,
	inst_city		TEXT,
	schema_name		VARCHAR(50)
);

CREATE	TABLE		global_useraccounts(
	user_id					SERIAL PRIMARY KEY,
	inst_id     				INTEGER,
	username				VARCHAR(50),
	password				VARCHAR(50),
	user_name			TEXT,
	auth_level				auth_type,
	FOREIGN KEY(inst_id)	REFERENCES		global_institutes(inst_id) ON DELETE CASCADE
);


CREATE	TABLE		global_institute_configurations(
	config_id			SERIAL		PRIMARY KEY,
	config_name		TEXT,
	config_param		JSONB	
);

CREATE	TABLE		global_schools(
	sch_id				SERIAL		PRIMARY KEY,
	sch_name			TEXT,
	sch_city				VARCHAR(50)
);


--Institute Based relations (eg: inst_xxx)--
CREATE 	SCHEMA 	inst_xxx;

SET search_path=instxxx;

-- Store details of registered users activities in the system  (no foreign keys -> preserve data even after an user account deletion)--
CREATE	TABLE		inst_activity_log(
	act_id				SERIAL		PRIMARY KEY,
	user_id				INTEGER,
	act					TEXT
);


-- Store details of all the employees in the institute.Any system user must come from this table--
CREATE	TABLE		inst_employees(
	emp_id				SERIAL			PRIMARY KEY,
	emp_name		TEXT,
	emp_nic			VARCHAR(12),
	emp_mob_phn	VARCHAR(15),
	emp_address		VARCHAR(100)
);

--An employee from above table is given the system access by adding him to the global_useraccounts table
--Reference between that global_useraccounts and employee details is kept in here
CREATE	TABLE		inst_user(
	emp_id				INTEGER	UNIQUE PRIMARY KEY,	
	user_id				INTEGER	UNIQUE,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE,
	FOREIGN KEY(user_id)		REFERENCES		public.global_useraccounts(user_id) ON DELETE CASCADE
);



--Details of students in this particular institute
--Courses that student has enrolled is stored in a JSONB because we need to store the date he got enrolled too
--That jsonb is like {"crs_01":"2015-08-12", "crs_02":"2016-01-23"}
CREATE	TABLE		inst_student_details(
	stud_id									SERIAL			PRIMARY KEY,
	stud_name							TEXT		NOT NULL,
	stud_dob								DATE,
	stud_nic								VARCHAR(12),
	stud_mob_phn						VARCHAR(15),
	stud_address						VARCHAR(100),
	stud_sch_id							INTEGER,
	stud_enrolled_crs					INTEGER[],
	stud_propic							VARCHAR(50),
	stud_guardian_name				TEXT,
	stud_guardian_mob_phn		VARCHAR(15)
);


--Store lecturer specific details--
--When making an employee a lecture we give him the auth_level of lecturer
--At there we add him to this table to keep track of all the lecturers in the institute
--qualifications array is gonna be like {"Bsc. Applied Science, University of Colombo, 2010", "Diploma in Teaching, 2011"}
CREATE	TABLE		inst_lecturer_details(
	emp_id						SERIAL		PRIMARY KEY,
	qualifications				TEXT[]
);


--Store course details
CREATE	TABLE		inst_course_details(
	crs_id						SERIAL		PRIMARY KEY,
	crs_name					TEXT,
	crs_fee_monthly			REAL,
	crs_noof_studs			INTEGER	DEFAULT 0,
	crs_strt_date				DATE,
	crs_end_date				DATE
);
-- Student ID s of those who have enrolled in an course are kept
--Like  {'std_01', "std_05" ........................}
CREATE	TABLE		inst_course_enrolledstudents(
	crs_id						INTEGER		PRIMARY KEY,
	enrolled_studs			INTEGER[],
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE	
);
-- Just how each course is gonna pay for its lecturer
--pay_strategy can have two values either fixed or per head
--If its fixed then pay_amount denotes the amount fixed amount paid to the lecturer monthly
--Or if its per head then pay_amount is the % of commission to the lecturer from each student's fee 
CREATE	TABLE		inst_course_lec_pay(
	crs_id						INTEGER		PRIMARY KEY,
	pay_strategy				pay_strategy,
	pay_amount				REAL
);

--This table assigns lecturers with courses 
--Single course may have several employees(lecturers)
CREATE	TABLE		inst_course_lecturer(
	crs_id						INTEGER,
	emp_id						INTEGER,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE		
);

-- Privileges for officers , By default everything is false--
CREATE	TABLE		inst_officer_privilleges(
	user_id						INTEGER		PRIMARY KEY,
	add_officer				BOOLEAN		DEFAULT		FALSE,
	add_lecturer				BOOLEAN		DEFAULT		FALSE,
	add_course				BOOLEAN		DEFAULT		FALSE,
	add_emp					BOOLEAN		DEFAULT		FALSE,
	collect_fees				BOOLEAN		DEFAULT		FALSE,
	pay_salary				BOOLEAN		DEFAULT		FALSE,
	FOREIGN KEY(user_id)		REFERENCES		inst_user(user_id) ON DELETE CASCADE	
);

--attendace is kept in a json like  {stud_id:attendance}  ==> {'stud_id_01:1', 'stud_id_05:0', 'stud_id_11: 1'}--> 
--1 is for presence 
--At the initialization of attendace recording a new entry is made in the table and when officer saves attendance record 
--JSONB is saved 
CREATE	TABLE		inst_course_attendance(
	crs_id						INTEGER,
	lecture_date				DATE,
	attendace_record		JSONB,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE
);


--json is like {'mon':'2:00 pm', 'sat':'8:00 am'}--
CREATE 	TABLE		inst_course_shedule(
	crs_id				INTEGER		PRIMARY KEY,
	on_days			JSONB,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE
);

--Events are shown in institute calendar.eg An exam is an event.eg: Awrudu Day , An usual class... Made just as reminders. 
CREATE	TABLE		inst_calendar_event(
	event_id		SERIAL		PRIMARY KEY,
	event_desc	TEXT,
	event_date	DATE,
	event_time		VARCHAR(20),
	created_by	INTEGER,
	FOREIGN KEY(created_by)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE
);

CREATE	TABLE		inst_course_fees(
	crs_id			INTEGER		PRIMARY KEY,
	crs_fees			REAL,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE
);

CREATE	TABLE		inst_emp_salary(
	emp_id					INTEGER		PRIMARY KEY,
	monthly_salary		REAL,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE
);

CREATE	TABLE		inst_user_payment_history(
	payment_id			SERIAL			PRIMARY KEY,
	emp_id					INTEGER,
	paid_date				DATE,
	amount					REAL,
	paid_by					INTEGER,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE
);
--- Current account balance for a particular employee 
--- On the first day of the month total_balance becomes brought_balance and other values get zero(by a stored procedure)
CREATE	TABLE		inst_user_payment_balance(
	emp_id									INTEGER		PRIMARY KEY,
	brought_balance					REAL,
	this_month_pay						REAL,
	total_balance							REAL,
	withdrawings						REAL,
	additional								REAL,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE
);



--These are stored for the convenience of managers to see profits, expenses, .....-- 
CREATE	TABLE		inst_incomes(
	income_id							SERIAL		PRIMARY KEY,
	date_of_income					DATE,
	income_amount					REAL	
);

CREATE	TABLE		inst_incomes_coursefees(
	crs_id					INTEGER,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE	
) INHERITS (inst_incomes);

CREATE	TABLE		inst_incomes_other(
	income_desc					TEXT
) INHERITS (inst_incomes);

CREATE	TABLE		inst_expenses(
	expense_id						SERIAL		PRIMARY KEY,
	date_of_expense				DATE,
	expense_amount				REAL
);

CREATE	TABLE		inst_expenses_lecturer_salary(
	crs_id				INTEGER,
	FOREIGN KEY(crs_id)		REFERENCES		inst_course_details(crs_id) ON DELETE CASCADE	
) INHERITS (inst_expenses);

CREATE	TABLE		inst_expenses_emp_salary(
	emp_id				INTEGER,
	FOREIGN KEY(emp_id)		REFERENCES		inst_employees(emp_id) ON DELETE CASCADE	 
) INHERITS (inst_expenses);

CREATE	TABLE		inst_expenses_other(
	expense_desc				TEXT
) INHERITS (inst_expenses);

CREATE	TABLE		inst_net_income_asof(
	net_income_id			SERIAL		PRIMARY KEY,
	first_of_month			DATE,
	net_income				REAL
);

