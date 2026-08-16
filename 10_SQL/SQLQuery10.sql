--sql NOT , BETWEEN , IN 

--sql NOT operator 
select * from [dbo].[employees]
-- show data where name is not equal to  " john " 
select * from dbo.EmployeeRecords
where not FirstName = 'john'
--- first should not be jihn asn slary should not be equal to 50000
select * from dbo.EmployeeRecords
where not FirstName = 'john' and not Salary = 60000
--- show data wher the last naem is not miller 
select * from dbo.EmployeeRecords
where not lastName ='Miller'

--last name should not be miller and department should not be HR 
select * from dbo.EmployeeRecords
where not LastName = 'Miller' or not Department = 'HR'

---BETWEEEN operator ---
select * from dbo.EmployeeRecords

---show record where the salry is grater or equalt o 75000
select * from dbo.EmployeeRecords
where Salary between 75000 and 85000


-- another way tto right hte same operation is 
select * from dbo.EmployeeRecords
where salary >= 75000 and salary <=85000

--- show data where salry is not btw 75000 adn 85000
select * from dbo.EmployeeRecords
where Salary not between  75000 and 85000

--- can also we bw written as 
select * from dbo.EmployeeRecords
where  not Salary between  75000 and 85000


------ IN operator ---- 
select * from dbo.EmployeeRecords
-- show data weher the deaprtment is either HR or IT 
select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'

 -- veiw the above data usign the IN opeator aswell 
select * from dbo.EmployeeRecords
where Department in ('HR','IT')

--- sinf IN adn NOt operator together 

select * from dbo.EmployeeRecords
where Department not in ('HR' ,'IT')


