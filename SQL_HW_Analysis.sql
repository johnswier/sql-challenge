-- Analysis 

-- 1.

select employee.emp_no, employee.last_name, employee.first_name, 
		employee.sex, salary.salary 
from employee join salary on employee.emp_no = salary.emp_no;

-- 2.

select first_name, last_name, hire_date
from employee
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. 

select dept_manager.emp_no, employee.first_name, employee.last_name,
		department.dept_name, department.dept_no
from dept_manager
join employee 
on employee.emp_no = dept_manager.emp_no
join department
on dept_manager.dept_no = department.dept_no;

-- 4.

create view employees_depts as 
select dept_employee.emp_no, employee.last_name, employee.first_name,
		department.dept_name
from dept_employee join department
on department.dept_no = dept_employee.dept_no
join employee
on employee.emp_no = dept_employee.emp_no;

-- 5.

select first_name, last_name, sex from employee
where first_name = 'Hercules' and last_name like 'B%'; 

-- 6. 

select * from employees_depts
where dept_name = 'Sales';

-- 7.

select * from employees_depts
where dept_name = 'Sales' or dept_name = 'Development';

-- 8.

select last_name, count(*) from employee
group by last_name
order by count(*) desc;
