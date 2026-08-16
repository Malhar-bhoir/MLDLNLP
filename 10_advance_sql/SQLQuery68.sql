--- recursive CTE
--- it is an common tableexpression that refers to it own self 
--- factorial of given number 

use[employee_details]

with [R CTE] as (
--- anchor query 
select 1 as n

union all

--- recursive query

select n+1 from [R CTE] where n<=4 


)

select * from [R CTE]

-- anchro query srvesas input to recursivequery 
--- ex n== 1 is an input t orecursive query 
-- then as per query the condtion will be checked
--- if he n<= 4 it is accepted and then -- n+1--- execute we get o/p as 2 
-- then this o/p isagin given asan input to recursice query


--- factorial of numbwr
-- as it requires multiplication we can use of log function 

with [r cte ] as (
-- anchor function
select  1 as n 


union all

-- recurcive function 
select n+1 from [r cte] where n< =4
)

select exp(sum(log(n))) from [r cte]

--- suppose we want to find the factorial of n the we will subtract the n-1 from it and
-- pass it in the recursive querry


----