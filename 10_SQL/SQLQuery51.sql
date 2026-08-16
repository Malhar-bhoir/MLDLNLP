-- sql questions

use [SQL Basic Question]
select * from Employees 
  
--  1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees 
where department = 'IT' and salary > 75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees
where department = 'HR' or Salary < 60000
-- or 
select * from employees
where department in ('HR') or Salary < 60000


--[3. How do you select employees who do not work in the 'Finance' department?
select * from employees
where department not like 'Finance'


--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from employees
where department in ('Finance') and salary between 60000 and 70000

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from employees 
where department = 'IT' and salary <= 80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from employees 
where  salary > 650000 and department = 'HR' or department = 'Finance' 

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees 
where lastname like 'D%' and department not in ('HR')

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from employees 
where department not in ('IT') and salary > 70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater |than 75,000 or have the first name laura
select * from employees
where department = 'IT' and salary > 75000 or  firstname like 'Laura'

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from employees
where department not in ('HR','IT')
