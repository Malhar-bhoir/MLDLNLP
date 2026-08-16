------ unique constraint 
-- 1. it ensure that column consist of unique values  


use [constraints]

--case 1 : table donot exist 
create table test_unique (
SID int unique ,
age tinyint not null ,
firstname varchar(256) not null unique ,
lastname varchar(256)
)

select * from test_unique

-- insert into table 

insert into test_unique 
values (1,22,'man','mehra')

--- inserting same value for unique constraint column

insert into test_unique
values (1,22,'rohit','singh')

---- Violation of UNIQUE KEY constraint 'UQ__test_uni__CA1959717FD77CF4'. Cannot insert duplicate key in object 'dbo.test_unique'. The duplicate key value is (1).
---- The statement has been terminated.


 --- insert null value

 insert into test_unique
 values(null,34,'aki','jain') ,
 (null ,35 ,'mit','singh') ---- the nullvlaue cannot be insert again as the column has unique consirt so only one null can be there

 --commmand to empty the table 
 truncate table test_unique

 --- case 2 : table already exist 

 select * from test_unique

 -- making the last colum feild an unique constraint 

 alter table test_unique
 add unique(lastname)

 --inserting in unique column 
 
insert into test_unique
values (1,22,'rohit','singh')

 insert into test_unique
 values(null ,35 ,'mit','singh')


 ----Violation of UNIQUE KEY constraint 'UQ__test_uni__58E25A42867AD4EE'. Cannot insert duplicate key in object 'dbo.test_unique'. The duplicate key value is (singh).
-----The statement has been terminated.


