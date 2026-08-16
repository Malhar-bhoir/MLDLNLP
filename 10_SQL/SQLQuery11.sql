-- sql insert into statement 
 select * from dbo.employees
 

 ---inser tintti ansexisitng table 

 insert into dbo.employees ( EmployeeId, FirstName , LastName , Department , Salary , HireDate) 
 values (6,'ron','mon','IT',100000,'2023-04-02')


 ---entering values only in specific colums 
 insert into dbo.employees (EmployeeId,FirstName,LastName)
 values (7,'mon','mehra')

 --- iserting the values in dataset without writirnthe columns nae 
 --- this can be used if weare inserting the values in wholde datset / all column

 insert into dbo.employees
 values (8,'rohan','moneu','IT',100000,'2023-06-02')

 select * from dbo.employees

 --- to wnterthe values in above format we need to llok which value hwere to insert or order of the values 
 --- forthat we nned to use 
 --- here '''dbo.employees'''' ---dbo is schema and ,,, employee is name ...
 select * from INFORMATION_SCHEMA.COLUMNS
 where table_name = 'employees'

