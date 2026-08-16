---- delete drop turnicate 

-- creaitngthetmporyt table using hash methood 

select * into #4 from dbo.employees

--- vieinwing the data 
select * from #4


-- deleting the record from thet table where department is 0 andlast name i  s also blank

delete from #4 
where  LastName = '' or  Department = '0' 


 select * from #4

 --- truncateteh deelted teh record but the structure remains the same 
 select * into #5 from dbo.employees
 truncate table #5

 select * from #5


 --- drop all record wwill be deleted ans strucutre of thetable is also removes 



