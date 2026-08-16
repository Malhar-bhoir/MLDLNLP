-- foreign key constraint 

use [constraints]

-- case1 : new table has to be created 

-- creating praimary key table 
create table test_pk (
ID int primary key ,
name varchar(256)
)

-- inserting 
insert into test_pk
values(1,'Mayank'),(2,'Raj'),(3,'Jayant')


select * from test_pk

--- creating foreign key table 
create table test_fk(
ID int foreign key references test_pk(ID) ,
course varchar(256)
)
 -- inserting 
 insert into test_fk
 values ( 1, 'A')

 select * from test_fk
 
 --- inseritng nukk vaalue in FK

 insert into test_fk
 values ( null, 'B')


 -- error 
 insert into test_fk
 values ( 5, 'C')


 -- case 2 : table exist the FK constrains are not define or the FK col is not define

 create table test_fk_2 (
 ID int ,
 course varchar(256)

 )

 -- let assume the above table was created and foreign key was not there in table 
 alter table test_fk_2
 add foreign key (ID) references test_pk (ID)


