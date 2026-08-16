-- window function --lastvalue()

use[window function ]

select * from EmployeeSalaries

-- add the new column showing the lowest salary of the emlployee and it name 

--LAST_VALUE(EmployeeName)

--means:

--Give me the employee name from the last row of the window.

-- as we want ot show emplyee name inside last value function we will write the employeename

select *, 
LAST_VALUE(EmployeeName) over(order by salary desc) as [emp with lowest salary ]
from EmployeeSalaries

--here the above order  is improper as the employe name is same as the -- emp with the lowest salary 
-- this was not hteissue with the FIRST_value 

-- UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING you are telling SQL:
-- "Look at the entire table from first row to last row."

select *,
LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following ) [emp with less salary) ]
from EmployeeSalaries




--- adding the name of the emlyee with lower salary 

select *,

LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following ) [emp with less salary) ],
LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following ) [ less salary) ]
from EmployeeSalaries

---------
---- show department  wise the name of the empwith lowest salary and department wise lowest salary to be presente 
select * ,
LAST_VALUE(EmployeeName) over(partition by department  order by salary desc rows between unbounded preceding and unbounded following ) [emp with less salary) ] ,
LAST_VALUE(Salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following ) [ less salary of each department) ]

from employeesalaries


-- frohighest salary : replace desc with asc 