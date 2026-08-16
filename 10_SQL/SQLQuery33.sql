

--- sql Case in select statement and  order by clause 

-- vewing the table 
select * From products

---exmple1  add a column to categorize each product into categories high , meduim .low

-- using case method ot addd new column to the table 
select
* ,
case
when price > 500 then 'high'
when price <= 500 and price >= 200 then 'med'
else 'low'
end as [high,medium,low] --- in this [] bracket we give the a;ias name to the column 
 -- this are similar to if else in prog

from products
 --- if else conditon if not written then the NULL values occurs 
 --- EXampel
select
* ,
case
when price > 500 then 'high'
when price <= 500 and price >= 200 then 'med'

end as [high,medium,low] --- in this [] bracket we give the a;ias name to the column 
 -- this are similar to if else in prog

from products


-- example 2 : provide priority to each category & sort t=he data according to that priority 
---we have diffcategory in table as : furniture ,accesories electronics we want to sort the data as the that 
-- using case and order by clause

select * from products 
order by 
case 
	when category = 'Electronics' then 1 
	when category = 'Furniture'then 2
	else 3 
end 


--- thiabove one can also be written as 

select * from products 
order by 
case 
	when category in ('Electronics') then 1 
	when category in ('Furniture')then 2
	else 3 
end 

