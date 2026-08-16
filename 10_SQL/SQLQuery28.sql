use[Sales Database]

--- vewing the table 
select* from table1 

select * from table2 

-- self join 
select* from table1 as a 
inner join table1 as b 
ON a.C1 = b.C1

--- vwing hte certaain colnn from the table 

select a.C1 , b.C2 from table1 as a
inner join table1 as b  
ON a.C1 = b.C1

-- can also we done using the -- join --- im place of inner join 

select a.C1 , b.C2 from table1 as a
join table1 as b  
ON a.C1 = b.C1
