--- inserting record in all column of table 

select * from Student_detail


-- to insert we need to get the order 
-- to get the order we ordinal position 
---to get ordinal position 

select * from  INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'Student_detail'

insert into Student_detail 
values('Ram',20,'M','2024-02-03',344.66) ,
('sham',21,'F','2026-07-08',350.55)
select * from Student_detail


--- inserting into specific columns 

insert into Student_detail(student_name,gender)
values('aam','M') ,
('priya','F') 

select * from student_detail

--------------
--- datatype of column is tinyint 

--- to find out the data typr of age colm if we donot know it 

select * from INFORMATION_SCHEMA.COLUMNS  where TABLE_NAME like 'Student_detail'

--- ifwe try to insert the value into the age feild which is tinint tha is 250 character 
-- we will see what happenwe try to enter the value higher than 250

insert into student_detail(Student_age)
values(256)
-- Msg 220, Level 16, State 2, Line 36
---Arithmetic overflow error for data type tinyint, value = 256 --