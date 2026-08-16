---check constraint 
---1. check for ceertain condition if this condition are not followed  / fullfiled we will not be able to insert the records 


-- case 1 : table do not exist 

-- creating table 
create table test_check ( 
EID int ,
firstname varchar(256) ,
age tinyint check(age >= 10 ) 
)

select * from test_check

-- inserting into table 

insert into test_check
values (1,'ram',22)

--- error 
insert into test_check
values(2, 'sham',9)


--- case 2 : table already exist

-- making changes in table

update test_check set EID = 11 where EID = 1


select * from test_check

-- adding check contraint now 
alter table test_check
add check(EID >5 )

-- insering error 

insert into test_check
values (1, 'sham' , 23)
