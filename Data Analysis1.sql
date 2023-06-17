--DATA Analysis 

--List the employee number, last name, first name, sex, and salary of each employee

  Select employees.employee_no, 
         employees.last_name, 
	     employees.first_name, 
	     employees.sex, 
	     salaries.salary 
  From employees
  Inner join Salaries  
  On employees.employee_no = Salaries.employee_no;


--List the first name, last name, and hire date for the employees who were hired in 1986 
  Select employees.first_name,
         employees.last_name, 
	     employees.hire_date
  From employees
  Where hire_date between '1986-01-01' AND '1987-01-01';

--List the manager of each department along with their department number, department name, employee number, last name, and first name 

  Select department.dept_no, 
         department.dept_name, 
         employees.employee_no, 
         employees.last_name, 
	     employees.first_name
  From department 
  Inner join department_managers 
  On department.dept_no = department_managers.dept_no
  Inner join employees 
  On department_managers.employee_no = employees.employee_no;	   

--List the department number for each employee along with that employee’s employee number, last name, first name, and department

  Select employees.employee_no, 
	     employees.last_name, 
	     employees.first_name,
	     department.dept_name
   From employees
   Inner join department_managers 
   On employees.employee_no = department_managers.employee_no
   Inner join department 
   On department_managers.dept_no = department.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
   Select first_name, 
          last_name
   From employees 
   Where first_name = 'Hercules' and last_name like 'B%';
	   
	   
	 --List each employee in the Sales department, including their employee number, last name, and first name
   Select department_employees.employee_no,
	      employees.employee_no,
		  employees.last_name, 
	      employees.first_name, 
		  department.dept_name
   From department_employees
   Inner join employees
   On department_employees.employee_no = employees.employee_no
   Inner join department
   On department_employees.dept_no = department.dept_no
   Where department.dept_name ='Sales'
   Or department.dept_name ='Development';
	 
	 --List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
	Select last_name,
	Count(last_name)from employees
	Group by last_name 
	Order by count(last_name) desc;
	 