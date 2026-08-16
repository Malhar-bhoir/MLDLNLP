
--- sql ordered by where class 

--- slecting hte table 
select * from [dbo].[employees]

--- filtering the data of empluee with the ID 2 
select * from [dbo].[employees]
where EmployeeId = 2 

-- vewing only specific column 
select Salary, FirstName from [dbo].[employees]
where EmployeeId = 2 

--- viewing where the salary is graeater or equla to 750000
select * from [dbo].[employees]
where Salary >= 75000

--viewing the the distinct (unique ) where the salary is less than 7500
select distinct * from dbo.employees where salary >= 75000


--slecting with name and so only one name apper 
select FirstName , LastName , Salary from dbo.employees where Salary >= 75000

