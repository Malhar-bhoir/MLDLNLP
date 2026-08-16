----- sql ordered by clause 


--slecting the database 
select * from [dbo].[employees]

-- indata the data is not sorted inascending order 
--- to arrangethe m
select * from [dbo].[employees]
order by Salary

--sortingin descending order 
--- desc --- indicates descending 
select * from [dbo].[employees]
order by Salary desc

--- acending of name and descending of salary 
select *from dbo.employees 
order by FirstName asc ,Salary desc


