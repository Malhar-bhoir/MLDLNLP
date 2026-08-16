-- group by clause 

select * from dbo.Sales

--- find the total sales value for each paymrny methid 
select PaymentMethod , sum(TotalAmount) [sum of sales ] from dbo.Sales
group by PaymentMethod

--- for each combination of product id and paymentmehtid we have to find thetotal sales 
select * from dbo.Sales

select ProductID , PaymentMethod , sum(TotalAmount) [sum of sales] from DBo.Sales
group by  ProductID , PaymentMethod
order by  ProductID