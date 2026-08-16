--- CTE ( Common table expresiion) 2 

use[employee_details]

--- defining multiple common expresiion(delte update etc ) with singel with key wwords 

select * from employees

select * into #temp1 from employees


select * from #temp1


-- example 1 
-- multiple CTE expression can be define while using --with--- only once 

--- show only operation define in each CTE's
--combined and show row 1 ,2 from table to row 3,4 from table2
with cte1 as (
select * from #temp1 where EmployeeId in (1,2)
),
cte2 as (
select * from #temp1 where EmployeeId in (3,4)
)

select *from cte1
union all
select * from cte2

------- inseriing datainto non existing table or nwe table 
----- example 2  : we want to isnert an combined table into new twmporary table --#temp2
-----: combined table to be created by taking any of two row ffrommpreviously known table


with CTE1 as (
select EmployeeId, FirstName from #temp1 where EmployeeId = 1
),
cte2 as(
select EmployeeId, FirstName from #temp1 where employeeID = 2
)

select * into #temp2 from (
select * from CTE1
union
select * from cte2
) x -- here in place if X  anything can be written 

select * from #temp2




 ---------------
-- inserting data into exsing table
with cte3 as (
select EmployeeId,FirstName from #temp1 where EmployeeId = 1
),
cte4 as (
select EmployeeId,FirstName from #temp1 where EmployeeId in  (3)
)

insert into #temp1 select * from (
select * from cte3
union all
select * from cte4
) x

select * from #temp2


--- eaxample 4 -- delteing the record from # table where the eployee belongd to cte1 and cte2

with cte1 as (
select EmployeeId,FirstName,Salary from #temp1 where employeeID =2 
),
cte2 as (
select EmployeeId,FirstName,Salary from #temp1 where EmployeeId in (4 ) 
)

delete from #temp1 where EmployeeId in (select distinct EmployeeId from cte1
union all
select distinct employeeID from cte2
)

select * from #temp1


---usinf th update satement

--- eaxample 5 

with cte1 as (
select EmployeeId,FirstName,Salary from #temp1 where employeeID = 3
),
cte2 as (
select EmployeeId,FirstName,Salary from #temp1 where EmployeeId in (5 ) 
)

update #temp1 set EmployeeId = 100 where EmployeeId not in (select distinct EmployeeId from cte1
union all
select distinct employeeID from cte2
)

select * from #temp1
