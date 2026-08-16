--- views in sql

use[testDb]

select * from Employees


--- takin the backup of the table
select * into empbkup from Employees

select * from Employees

-- as view i an virtual table 
-- it does not occupy the the pysical meemory
-- it helps in reducing the comploxesity of code 
-- hlps in impleenting the security 

--  creating the view

create view view1 as (
               
)

select * from view1


 --- if we want to sare thsi table hinding certain data as salary data
 --- for this we canimplement the security


 ---------1

 create view  view2 as (
 select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from Employees
 )

 select  * from view2


 -- if we want t ojointhe table-- orwant to append multiple queris and tehnwe want t ose the result 
 -- in those caseese the complexity of the code can be increases


 --- update into views table 
 -- update / changes done in view table will always made an impact on the the base table
 -- base table arethe table from which the view are created 
 select * from view1

 update view1
 set EmployeeID = 100

 -- droping the view

 drop view view2
