---coplyind data from one table to another 
--or 
-- copying the table from existing totable to new table 
-- case 1 : the new table does not exist  / the steucture of the table doesnot exist 

-- case 2 : the new table structre / New table may exist 

-- case1 
use[Sales Database]

select * from dbo.Sales
 
-- from thi table we want to copy the data from this table t o hte table that doesnot exist 


-- this  statement wil result in th creation of the new table whic has same of
--s trucute and record as that of Dbo.sales 
select * into New_table1 from dbo.Sales



--- copy only the certian column ( only  2 to 3 column)

drop table New_table1

-- 
select * from dbo.Sales

select ProductID,Quantity into New_table1 from dbo.Sales

select * from New_table1


--- case 2 
-- here tble structure already exist 

-- creating the new table structure from exisitng for this 

select top 0 * into New_table2 from dbo.Sales


-- vewing the table 
select * from New_table2

-- insert

insert into New_table2 select * from dbo.Sales


-- copying certain columns 

-- creating th structure 
select top 0 * into New_table3 from dbo.Sales

select * from New_table3

insert into New_table3 (ProductID,SaleDate)  select ProductID,SaleDate from dbo.Sales


---- inseritgn the specific column values in newtabe l


select top 0  * from dbo.Sales

insert into New_table3 (ProductID,SaleDate) select ProductID,SaleDate from dbo.Sales

select * from New_table3
