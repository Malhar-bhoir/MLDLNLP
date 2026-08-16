---- full outer joint 


use[Sales Database]
-- viewing the table 

select * from table1

select * from table2 

--- full outer join query 
select * from table1
full outer join table2
ON table1.C1 = table2.C1


-- usinf alsias 
select a.C1 , a.C2 , b.C3 from table1 as  a
full outer join table2 as b 
ON a.C1 = b.C1

