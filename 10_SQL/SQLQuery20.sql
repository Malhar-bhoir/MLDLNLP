--- having clause , used generly with hte grp by clause 

---- find total qunatuty total sales , avg quantnuty  , avg sales for distinct product ids 


select * from Dbo.Sales

select ProductID , sum(TotalAmount) [sum of sales ] ,sum(Quantity) [sum if quantuty], avg(TotalAmount) [ svg of sales ] , avg(Quantity) [avg quantity] from dbo.Sales
group by ProductID

-- if the condition are told to show the data less having sales value les than 700 
-- and total quantity soald is equal to 21 



select * from Dbo.Sales

select ProductID , sum(TotalAmount) [sum of sales ] ,sum(Quantity) [sum if quantuty], avg(TotalAmount) [ svg of sales ] , avg(Quantity) [avg quantity] from dbo.Sales
group by ProductID
having sum(TotalAmount)<700 and sum(Quantity) = 21



