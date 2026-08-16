--- veving the previouls created table 

select * from table1

select * from table2

--- inner joint opertaon 

select * from table1 inner join table2
ON table1.C1 = table2.C1

--- joint operation and veiwing only specific operation 
Select table1.C1 , table1.C2 , table2.C3 from table1
inner join table2 
ON table1.C1 = table2.C1

-- providing alias name for table 1 and table 2 
 select * from table1 a
 inner join table2 b
 ON a.C1 = b.C1

 --- joinoperation usinf alias 

 select a.C1 , a.C2 , b.C3 From table1 a
 inner join table2 b 
 ON a.C1 = b.C1