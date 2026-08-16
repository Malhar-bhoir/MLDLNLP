--diff btw having calsue and where clause

-- filter the record form the table wher the 
--totalamot value is moret than 160 

select * from dbo.Sales
where TotalAmount >= 161 

-- find total sales for each product id  and show the product ids which have sles less than  700 

select * from dbo.Sales

select ProductID , sum(TotalAmount) [sum of sales ] from dbo.sales 
group by ProductID
having sum(TotalAmount)<=700


--- find total sales fro diff product ids where total amount is gretart than 121 
-- also fin the ids which have sales greater and equal to 250
select * from dbo.Sales

select ProductID , sum(TotalAmount) [sum of sales ] from dbo.sales 
where TotalAmount>=161 --- we apply the the filter on table itslef ( not on aggregate one)
group by ProductID ---as we ahve to show for distinct product id so we have to use this
having sum(TotalAmount)>=250

--- ordeing the abve out in decending order of ids 
select ProductID , sum(TotalAmount) [sum of sales ] from dbo.sales 
where TotalAmount>=161 --- we apply the the filter on table itslef ( not on aggregate one)
group by ProductID ---as we ahve to show for distinct product id so we have to use this
having sum(TotalAmount)>=250
order by ProductID Desc

--- showing the result in sacending order of ssum of slaes column 
select ProductID , sum(TotalAmount) [sum of sales ] from dbo.sales 
where TotalAmount>=161 --- we apply the the filter on table itslef ( not on aggregate one)
group by ProductID ---as we ahve to show for distinct product id so we have to use this
having sum(TotalAmount)>=250
order by sum(TotalAmount) asc

