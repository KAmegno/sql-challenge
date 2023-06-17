__Data Modeling 

 Create Table Department( 
  dept_no VARCHAR NOT NULL,
  dept_name VARCHAR NOT NULL,
	 PRIMARY KEY(dept_no)
	 );
 select * from Department;

  Create Table Titles(
   title_id VARCHAR NOT NULL,
   title VARCHAR NOT NULL, 
	 Primary key (title_id)
 );
 Select * from Titles 
 

 Create Table Employees (
   employee_no INT NOT NULL,
   employee_title_id VARCHAR NOT NULL,
   birth_date date NOT NULL, 
   first_name VARCHAR NOT NULL, 
   last_name VARCHAR NOT NULL, 
   sex VARCHAR NOT NULL,
   hire_date date NOT NULL,
	 primary key (employee_no),
	 Foreign Key (employee_title_id)references Titles (title_id)
 );  
 select * from Employees;
 
 Create Table Salaries(
   employee_no INT NOT NULL,
   salary INT NOT NULL, 
	 Foreign key (employee_no)references Employees (employee_no)
 ); 
 select * from Salaries;
 
 Create Table Department_Employees (
   employee_no INT NOT NULL,
   dept_no VARCHAR NOT NULL, 
	 Foreign Key (employee_no) references Employees (employee_no),
	 Foreign Key (dept_no) references Department (dept_no)
 ); 
 Select from Department_Employees; 

 
 Create Table Department_Managers(
   dept_no VARCHAR NOT NULL,
   employee_no INT NOT NULL,
	  Foreign Key (dept_no)references Department (dept_no),
	  Foreign Key (employee_no) references Employees (employee_no)
 ); 
 select * from Department_Managers; 
 
 
