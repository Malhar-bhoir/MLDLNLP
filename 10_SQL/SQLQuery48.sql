-- order of executin in SQl Microsoft 

 use [employee_details]

 select * from employeesalaries

 --- finding avg salary fro each department only for record where salary is greater tahn 50,000 and akso gep record where avg salaray is greater than 
 --- 55000 and in ascednig order of deaprtment column 

 select Department,AVG(Salary)  from employeesalaries
 where Salary > 50000
 group by Department
 having AVG(Salary) > 55000
 order by Department 

 -- vewing only top 1 record 

 select distinct top 1  Department,AVG(Salary) [avg salary]  from employeesalaries
 where Salary > 50000
 group by Department
 having AVG(Salary) > 55000
 order by Department 

 --- order of exe 
 --- from & join are executed at first place ---1 
---- where 2 
-----grp y --3
---- having ---
--   select 
--   distinct
--   order by
--   top 
--- suppose maing use of alais name at having 
select distinct top 1  Department,AVG(Salary) [avg salary]  from employeesalaries
 where Salary > 50000
 group by Department
 having [avg salary] > 55000
 order by Department 

 -- this throws error as having is executed berfore --select-- statement 

