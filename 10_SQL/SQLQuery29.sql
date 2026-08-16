-- union and uunion all 
use[Sales Database]
-- vewing the table 
-- impoerting thing about the dataset that the seconf row is same for both of the table 
select * from append1

select * from append2


--- we have do a thing as we have 
-- the unique values or output from both table should be should in single combined table 

--- using the union all  method 

select C1,C2,C3 from append1
union all
Select C1,C2,C3 from append2 

-- combinf the tablein such a way so that no duplicate record appear in that / combined table  
 select C1 , C2 ,C3 from append1
 union 
 select C1 , C2 ,C3 from append2

 -- using above method the duplicate values is only shown  only once 
 --- this both method can be used to combined multipe select statement 
 ---2. the number of column in the select list or all the slected table must be same 
 ---3. the datatype(int ,nvarcahr) of the column has to be same 
----4. the order in which columns are written has to be same eg : C1 ,c2,c3 


--- example of 2 

select C1 , C2 , C3 from append1
union
select C1 , C2  from append2 

--example 2 , 3 
select C1,C2,C3 from append1 -- C1 is int, C2 is nvarchar, C3 is int
union
select C1,C3,C2 from append2


-- making use of alias 
-- the alias name which are specified in 1st select statement will be assined to the column

select C1 [column1] ,C2 [column2],C3 [column3] from append1 -- first select statement 
union
select C1 [col1] ,C2 [col2] ,C3 [col3] from append2

