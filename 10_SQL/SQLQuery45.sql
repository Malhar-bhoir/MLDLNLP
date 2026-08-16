-- primary key constraint 
 use [constraints]

 --case 1 : when new table is to created 

 -- create the table 
 create table test_pk_1 (
 eid int primary key ,
 gender char(1) ,
 age tinyint,
 firstname varchar(256)
 )

 -- insert into table 
 insert into test_pk_1
 values(1,'m', 23 ,'man')


 select * from test_pk_1

 -- error 
 insert into test_pk_1
 values(1,'F',20,'pri')

 -- empty the table 
 truncate table test_pk_1

--- case 2 " table already exist 
-- if we ant to define an colum or grp of colmn as primary key 

alter table test_pk_1
add primary key (age)

-- lets create the table in whic primary key is not there an then do the abppve process

create table test_pk_2(
SID int ,
fristname varchar(256) ,
age tinyint

)

-- DEFINING THE COMBINATION OF TWO COLUMN AS PRIMARY KEY	
alter table test_pk_2
add primary key(SID,age)

-- the above one will throw erro as we have not defin the age and SID as not null clumn
-- drop the table 

drop table test_pk_2
-- crateteh table


create table test_pk_2(
SID int not null unique  ,
fristname varchar(256) ,
age tinyint not null

)

alter table test_pk_2
add primary key(SID,age)