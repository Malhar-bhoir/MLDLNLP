---- Not NUll Constraint 

---constraints 
-- 1. this are certain conditoon that are tob e applied on certain column of the table
--    as per we ahve define 
-- 2 .this conditon are  2 be followed when inserting record intot table 


--------NOT NULL constraint ------------------
--- creating new database 

create database constraints 

use[constraints]

-- case 1 we have to create the new table 

----- not NULL -- indicate the column could not have NUll value 
create table test_not_null ( 
EID int not NULL,
age tinyint,
name varchar(256)
)

--- to insert into table first we will check the the details of table 

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME like 'test_not_null'

-- inserting into table 

insert into test_not_null
values (1,23,'Mayan')

select * from test_not_null

-- case 2 ; THE  table alreay exist 
-- we want to make firsnt_name column NULL able 

select * from test_not_null

alter table test_not_null
alter column name varchar(256) not null

insert into test_not_null
values(21,34,null)


-- making the age column nullable 
 alter table test_not_null
 alter column age tinyint not null

 -- if the colum has the null value we cannot modify that column to be not null 

