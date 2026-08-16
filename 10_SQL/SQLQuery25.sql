-- right outer jin / right join 
use[Sales Database]
-- veving the tables 
select * from table1


select * from table2


-- right join 

select * from table1
right outer join table2
ON table1.C1 = table2.C1

--using alsias and also vewing only the required data (column)

select a.C1 , a.C2 , b.C3 from table1 a
right outer join table2 b 
ON a.C1 = b.C1

