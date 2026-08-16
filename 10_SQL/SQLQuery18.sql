--- sum avg  count and grp by 

select * from dbo.Sales

--- find sum of the quantity column 

--- the name wriiten  inthe [] is the name of the column 
select sum(Quantity) [sum of quantity ] from dbo.Sales 

 --to find the tolat of quantity colun and toatalamount columns both 

 select sum(quantity) [total quantity] , sum(TotalAmount) [sum of total amt] from dbo.Sales 


 ---- avg of the quantity  column 
 select avg(quantity) [avg] from dbo.Sales 

 -- for multiple column 

  select avg(quantity) [total quantity] , sum(TotalAmount) [sum of total amt] from dbo.Sales 


  -- do sum , avg of quantity column and sum of total amount for distinct produt
  -- distinct ... unique
  --- cna be done uisn the grp by clause 

  --- using normal approcj 
  -- this approch will throw an error 

  select * from dbo.sales

  select 
  ProductID ,
  sum(Quantity) [total amt] ,
  sum(TotalAmount) [avg amt],
  avg(Quantity) [avg quantuty], 
  avg(TotalAmount) [ avg tota amt]
  from dbo.Sales

  -- fix 

  
  select 
  ProductID ,
  sum(Quantity) [total amt] ,
  sum(TotalAmount) [avg amt],
  avg(Quantity) [avg quantuty], 
  avg(TotalAmount) [ avg tota amt]
  from dbo.Sales
  group by ProductID

  --- in min , avg the null values are ignored 
  ---- ex 2  

    -- do sum , avg of quantity column and sum of total amount for distinct comnbination of produtId and store ID 

select * from dbo.sales

  select 
  ProductID , StoreID ,
  sum(Quantity) [total amt] ,
  sum(TotalAmount) [avg amt],
  avg(Quantity) [avg quantuty], 
  avg(TotalAmount) [ avg tota amt]
  from dbo.Sales
  group by ProductID , StoreID

  ---count function 

  select * from dbo.Sales

  select count(*) [number of roes] from dbo.Sales


  --- the null values nit counted 
  select * from dbo.sales

  select count(paymentmethod) [ no. of refrence ] from dbo.Sales

  --- is  8 as the two null rows are excluded

  --- counitng the distinct values from the columns
  ---counting distict product ids
  select * from dbo.sales

  select count(distinct ProductID) [pro ids ] from dbo.Sales 

  --- making sure the null values were ignored and then the distinct values were shown 

  ---- in below line at one place we did not make useo f aggregrate so we mad use of group by clause 

  select PaymentMethod,count(distinct PaymentMethod) [distinct methods ] from dbo.Sales 
  group by PaymentMethod ---as  the agrigaiton was not wiritten with this 
   
   
   -- only the coiunt nit the distinct ones 
  select PaymentMethod,count(PaymentMethod) [distinct methods ] from dbo.Sales 
  group by PaymentMethod ---as  the agrigaiton was not wiritten with this 
  

  --- making use of "*"
  select PaymentMethod,count(*) [distinct methods ] from dbo.Sales 
  group by PaymentMethod ---as  the agrigaiton was not wiritten with this 
  