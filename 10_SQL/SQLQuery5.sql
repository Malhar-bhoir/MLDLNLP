--- sql tempory table 
--- creating an temporAY COPY OF AN EXISTING TABLE 

select * into #temp1 
from[dbo].[employees]

select * from #temp1 
-- this #temp1 willl be only recognisiese in this query windows as it was created here 
--- #tmp1 will not wor in the other query windows there we are neede to create the new temp of the datset as we have done here 

select * from dbo.employees


---- creating hash of another dataset 
select * into ##temp2
from [dbo].[employees]

select * from ##temp2
