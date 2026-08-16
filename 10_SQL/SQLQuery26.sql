use[Sales Database]

-- vewing the table 
select * from table1

select * from table2 

-- left anti join 
select * from table1
left join table2 
ON table1.C1 =table2.C1
where table2.C1 is NULL



-- right anti join 
select * from table1
right join table2
ON table1.C1 = table2.C1
where table1.C1 is NULL