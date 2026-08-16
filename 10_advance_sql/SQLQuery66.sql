---  COMMON TABLE EXPRESSION -1 (cte )
--- it is a temporary result state taht we can refer to wit h
---		 SELECT STATEMENT , UPDATE STATEMETN , DELETE STATEMENT \
--- CTE are define using the WITH keyword , simply if we want to use it we are to use it 'WITH' keyword
-- it makr the code / queries easeir to understand or writeand maintian by breaking inti simole aprts 

use[employee_details]

select * from employees


-- as we are teo perfrom the oepration as deleteupdate etc
-- we donnot want to makle changes in main table so we will create a hash table 

-- hash table
select * into #temp1 from employees

select * from #temp1

-------------
---- example 1 : CTE

with CTE AS (
select * from #temp1
)

select * from CTE 

--- as in CTE we use select  * from # temp1 - so we will simoly see the content of temp1 or what is written inside CTE
--- when using the select , udpate etc tahta are refering to common table expression 
-- that part should after w eahve define CTE as seen in above examplee
--- to execute we have to select both the the part wehere we have define CTE and the refrence to CTE on 

--- example 2 : vewing only 2 columns and for pnly w emplloyee taht are emp 2 , 4 

WIth test_CTE as (
select employeeiD , FirstName from #temp1 where EmployeeId in (2,4)
)

select * from test_CTE

-- example : insering the data into teh table that does not exist

with testcte as (
select * from #temp1 where EmployeeId in (1,2)
)

select * into #temp2 from testcte

-- the # table was created usin CTE
select * from #temp2

--- example 4
--- we want to  upadate the #temp1 table wher the empid is 2,4,6 etc

with cte1 as (
select * from #temp1 where EmployeeId in (2,4)
)

update #temp1 set EmployeeId = 101 where EmployeeId in (select EmployeeId from cte1)

--- or 
-- we can make use of distinct 
with cte1 as (
select * from #temp1 where EmployeeId in (2,4)
)

update #temp1 set EmployeeId = 101 where EmployeeId in (select distinct EmployeeId  from cte1 ) 

select * from #temp1

--- where EmployeeId in (select distinct EmployeeId  from cte1 -- this part is aaddd to made changes in proerp column


--------------example 5

--- using DELETE statrment with CTE

with cte2 as (
select * from employees where EmployeeId = 1
)

delete from #temp1 where EmployeeId in ( select distinct EmployeeId from cte2)

select * from #temp1

--- example 6 

-- insert int to table using cte - we want to inserrt where employeesID = 101

WITH CTE3 as (
select * from #temp1 where EmployeeId = 101
)
insert into #temp1 select * from cte3


select * from #temp1

--- we a=inserted the emplyess detail with employee ID 101 agin in #temp table
