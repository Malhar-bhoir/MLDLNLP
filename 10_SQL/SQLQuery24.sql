-- veving the table 
select * from table1

select * from table2

-- left outer join  operation  

select * from table1
left join table2
ON table1.C1 = table2.C1

-- assing and using the alis and vewng the specific column only 
select a.C1 , a.C2 , b.C3 from table1 a
left outer join table2 b 
ON a.C1 = b.C1

