--- first value window function 

--- first value[] check for minumum value fromm dataset 


use[window function ]

select * from EmployeeSalaries

-- wewant to add new column what will show min salary in dataset
-- as we want min value from salary we will mention slaryy inside --()--
select *,
FIRST_VALUE(Salary) over(order by Salary asc) [min salary]
from EmployeeSalaries

-- we want name of the wmp having minimum slaryalong woth minimum salary 
select *,
FIRST_VALUE(EmployeeName) over(order by salary asc) as [emp with minimumslary]  ,
FIRST_VALUE(Salary) over(order by salary asc) as [min salary]

from EmployeeSalaries

-------------------------------------------
--- usinf firstvalue() function with partition calsue 
--- creating the window for each department and shoing theloswest salary foro each deparment 
-- as we use employeeID inside teh firstvalue(empID) it show us the emplyees ids  havinf less salary value
-- 
select * ,
FIRST_VALUE(EmployeeID) over(partition by department order by salary) as [firstvalue]
from EmployeeSalaries

-- to find the highest salarry of the employee as per department 
select * ,
FIRST_VALUE(EmployeeID) over(partition by department order by salary desc ) as [firstvalue]
from EmployeeSalaries

-- vewing te name of the employees als o
select *,
FIRST_VALUE(EmployeeID) over(partition by department order by salary asc) ,
FIRST_VALUE(EmployeeName) over(partition by department order by salary asc)
from EmployeeSalaries
