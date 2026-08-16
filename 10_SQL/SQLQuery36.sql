---- creating tables from martahon  record 

create Table Student_detail (
student_name nvarchar(max) ,
student_age tinyint ,
gender char(1) ,
Event_date date ,
distance decimal(5,2) 
) 

--we initial ccreated this table in  --master DB -- nowwe donot want ther we can drop the table from that 
drop table Student_detail

--- we we cerate an new database and the n we will acreate and store above table in tha databse 
--- create databasre 

create Database Student

-- select that database
use[Student]

--create and store that table in this 

create Table Student_detail (
student_name nvarchar(max) ,
student_age tinyint ,
gender char(1) ,
Event_date date ,
distance decimal(5,2) 
) 66

-- vewing the table 

select * from Student_detail


-- inserting inti created table 
insert into Student_detail(student_name,Student_age,gender,Event_date,distance)
values('raj' ,20 ,'M','2024-08-03',123.11),
('man', 19,'M','2024-09-2',123.10)

select * from Student_detail





