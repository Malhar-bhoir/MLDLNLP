-- window function  ----lead function 

use[Profit DB]

select * from ProfitData


---to add new column that shows next months profir for each product  
--- lead() -- in() --  as  we have to show next months profit we will use the profit column here
--- as we have t0 show the profit by product we will make partition by producr 
--- the order will be by -- mintnumer as we want the montly profit we want the monthn to be in ascending order


select * , lead(profit) over(partition by product order by monthname) as [next month profit]
from ProfitData

-- we donot want the product volumn too be visiblein output but we want 
-- each months total profit to be shown by month number and monthname
-- new is to bt added to show next months total profit 


--- in lead col wewill add th sum(profit) column which was made to show the total profit fro each month and used to find sum of next months profit 
select MonthNumber,MonthName ,sum(profit) as [total profit] ,
lead(sum(profit)) over(order by monthnumber asc) as [next months total profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber

