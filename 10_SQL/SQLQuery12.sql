---sql NULL OPERATOR -----

select * from employees

--- inseting into the table
insert into dbo.employees
values(9,'ray','','IT',73000,'2022-04-04')
---here in above the nulll vlaues is not indicated in data

---- inserting value 
insert into dbo.employees
values(10,'may','Moron','0',73000,'2022-04-04')

--- find record where the depart is null
select * from dbo.employees where Department = null
--- selecting thr specific things from the dataset 
select * from dbo.employees where department is null

--- vewing hte  data where department is not null 
select * from dbo.employees where department is not null





