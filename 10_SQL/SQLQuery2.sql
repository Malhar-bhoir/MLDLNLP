-----sql Slelct Statements 

select * from employees -- "''*''' willl select all the items 

---- only eant to see the first and the last name 
select FirstName,lastName from employees
select FirstName,Salary from employees


--- combining the first and the last name of and also showing the full name 
-- '' is used for space betwenn the  words
select EmployeeID,concat(FirstName,' ',Lastname) from employees
select EmployeeID,concat(FirstName,' ',Lastname) as [FullName] from employees
select EmployeeID,concat(FirstName,' ',Lastname) [FullName] from employees
-- 1. line 11and 13 works same 


