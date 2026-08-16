----- default constraint 
----- 1. this constraint is use to provide default value  to the colum 
-- consider there is table where we want tot inser the record  
-- and we donot mention particular vaalue for the column so instead of null , default value will be inserted ther 



-- case 1 table does nit exist 

-- create tabel
create table test_default(
EID int default 5 ,
firstname varchar(256) default 'ram' ,
lastname varchar(256) ,
age tinyint
)

select * from test_default

-- isnert the value 
insert into test_default
values ( 1 ,'nitin','jain',23)

insert into test_default(lastname,age)
values('sighn',20)

insert into test_default(lastname)
values('jain')


--case 2 table already exist 

-- add the default constraint fro age column
alter table test_default
add default 25 for age

--inserting 
insert into test_default(lastname)
values('ram')

