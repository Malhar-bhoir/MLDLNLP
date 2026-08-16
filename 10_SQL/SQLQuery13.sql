---- sql update statement --- 

---1 viewing the table---
select * from dbo.employees 

--- we will not make cahnges in the original table we will make an  hash tabke 
--- creating an temporary hash table
select * into #1 from dbo.employees
select * from #1

----updating the stement ehrethe deoartment is == to null and chaning the calue to hr 
--1 1. for update statment there iwll always be an where condition to that
--- 2. without where clause entire table will beupdated 
--3. update name of the table
update #1
set Department = 'HR'
where Department is null

select * from #1

--- updatingthe calus of more than one column 
update #1
set Salary = 89000,HireDate = '2020-01-15'
where EmployeeId = 7

select * from #1


-- what happens when we donot make useo fthe where caluse wit hte updatestatemet 

select * into #2 from dbo.employees

select * from #2

update #2
set Department = 'finance'

select * from #2
