-- stored procedure

use[testDb]


select * from Employees

-- the storeprocedure canbe use for the same above purpsoe as we have use above statement
-- 1. first we create the store procedure 
-- 2. thn we call the created procedur 
---3 .call be made using the the name used wile creating



-- create procedure

create procedure sptest
as 
begin
	select * from Employees
end

-- calling the procedure

sptest
--- or 
execute sptest


--- suppose we want to make the changes to the store procedure that we have created

--- we do not first and last naem to be shown we want the employee id to be there

alter procedure sptest
as
begin
	select EmployeeID,FirstName, lastname from Employees
end
--
sptest
