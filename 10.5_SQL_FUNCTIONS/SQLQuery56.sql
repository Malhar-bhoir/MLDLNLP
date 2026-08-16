--  RANK ,DENSE RANK AND ORW NUMBER WINDOW FUNCTION 


use [Student]

select * from Students

-- weassign an row number to each one of the records based on marks which  will be sorted in descending oreder 
--- for hihest marks the lowest row record is needed to be assign 
-- EG : marks == 100 , row no. == 1 
-- wit h dense rank  , and row_ number functio we are req to use over() clause

--- synatax 
--  select * , Row_number() over(--requiremnets--) as [alias name]
--  from table_name 

--row number
-- in case of tie the row numbers are assigned randomly 
select * ,ROW_NUMBER() over(order by marks desc) as [row number]
from Students


--ranK
-- in rank function if there is tie net ranks will be skip 
select * ,Rank() over(order by marks desc) as [rank funct]
from Students

-- dense rank
-- here ranks are not skiped if there is tie 
select * ,DENSE_RANK() over(order by marks desc) as [dense rank]
from students


------------ marks has  to be in descdending order 

--row number
-- in case of tie the row numbers are assigned randomly 
select * ,ROW_NUMBER() over(order by marks asc) as [row number]
from Students


--ranK
-- in rank function if there is tie net ranks will be skip 
select * ,Rank() over(order by marks Asc) as [rank funct]
from Students

-- dense rank
-- here ranks are not skiped if there is tie 
select * ,DENSE_RANK() over(order by marks asc) as [dense rank]
from students
