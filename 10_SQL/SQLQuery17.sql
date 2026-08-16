---- min functuin 

select * from dbo.Sales

---- tell the minimun value form the quantuty column

select min(Quantity) [min quanutity]from dbo.Sales


--- minimum value in date column 

select min(SaleDate) [min sale] from dbo.Sales

-- min value fro payement methid column 

select min(PaymentMethod) [min paymethod] from dbo.Sales

--- show min total amount form each of the stored id 

select StoreID , min(TotalAmount) [min total amt ] from dbo.Sales
group by StoreID


