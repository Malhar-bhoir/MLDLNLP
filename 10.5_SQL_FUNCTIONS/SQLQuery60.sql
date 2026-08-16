--- window function --- lag function 

use[Profit DB]

select  * from ProfitData

-- add the column to show the previousmonths profit fro eac product

select * ,
lag(profit) over(partition by product order by monthnumber asc) as [previsou month profit ]
from ProfitData



-- we donot want the product volumn too be visiblein output but we want 
-- each months total profit to be shown by month number and monthname
-- new is to bt added to show previous months total profit 

select MonthNumber, MonthName ,sum(profit) as [ months profit],
lag(sum(profit)) over(order by monthnumber asc) as  [prev month]
from ProfitData
group by MonthNumber ,MonthName
order by MonthNumber
