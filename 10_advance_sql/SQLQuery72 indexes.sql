-- INDEXES in sql

--- eg -- finding the particular page from the book of 500 pages
---- but the toc -- or indexes are not avalialbe

--- to retrive the data form the table -- sql has to perfrom scan it can increase the exec time


-- 1. indexes can be define on the certain number of column or an singel column


use[testDb]

select * from Employees


 --creating the index for salary column 
--- inside of ()  we  are to define the column name and its order


 create index IX1 on employees(salary desc) 


 create index IX2 on employees(firstname,lastname)

 -- drop the indec

 drop index employees.IX1
