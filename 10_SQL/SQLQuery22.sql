--- innner joint 

-- creating the database 

use[Sales Database]

-- creating thr table 

--VARCHAR → stores non-Unicode characters
--NVARCHAR → stores Unicode characters

--That means NVARCHAR can store multiple languages properly (Hindi, Japanese, emojis, etc.).
create table table1 (C1 int , C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

-- Creating Table2 & inserting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1, 'XA'),
(2, 'MB'),
(2, 'NX'),
(NULL,'MO'),
(4, 'XY'),
(5,'TF')

---

--- veving the table 

select * from table1
Select * from table2 
