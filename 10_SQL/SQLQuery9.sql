--- AND & OR operators 

select * from dbo.employees
order by Department asc , Salary desc 

--- finding the person having the last name ---davis 
select * from dbo.employees
where LastName = 'Davis'
 --- the string in database are in ''


 --- lastname should be davis and emplyee id should ne qual to 5 
 select * from dbo.employees
where LastName = 'Davis' and EmployeeId = 5

 --AND -- operator isusedwhen we have morethan one condition 
 -- in and the if bot hthe conditon ar truw the the data is shown 

 --OR--- operator is used when the atleast one of the condition is neede to be true 

 --- viewing emplyies whoe are from fianance or marketing fianance department 
 select * from dbo.employees 
 where Department = 'IT' OR Department = 'HR'

 --- using ---AND ---- ---OR---- operator together 
 -- emplyee where the depart is--- IT or fiance and slaray = 50000

 select * from dbo.employees
 where ( Department = 'IT' OR Department = 'HR' )  and Salary = 50000
