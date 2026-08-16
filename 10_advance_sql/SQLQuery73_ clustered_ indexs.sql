--- clustered index

create database Test_Index

use test_index

drop table if exists students
create table Students ( id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1,'Raj',23,'M'),
(4, 'Nitin',25, 'M'),
(3, 'Priya',21, 'F'),
(2,'Nikita',20,'F'),
(5, 'Monica',20,'F')

select * from Students

---- creatong teh clustered index for this tableI
--- ix1 -- is the name of te clustered index -- students --> is the neame of the table 
--- ( id ) --- is the name of the columnwe have seelcted from the tablr

create clustered index ix1 on students (id )


---- after executing the above statement the data will be sorted in the ascending order of the ids column 
--- because the cluster index determines physical  order of the column 
-- we canaont have more that one cluster indexes in givrn table 

create clustered index ix1 on students (id )

--- the above statment will throw error as cluster index is already created 

-- droping the index
drop index ix1 on students

-- composite cluster index  :indexes made using multiple columns


 create clustered index ix3 on students ( gender desc ,age asc) 


 select * from Students
