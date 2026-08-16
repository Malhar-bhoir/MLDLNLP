--- selecting the previous created tqble 

select * from Dbo.Sales
--- teh goal is to find the maximunm value fromthe total amount column 

select max(TotalAmount) from dbo.Sales
--- toname this column as above one shows with no column name 
select max(TotalAmount) [MaX Amount] from dbo.Sales


---- to getto know the maximum sales daate / day

select max(SaleDate) [MaxDate] from dbo.Sales

--- using max function on tectual cloumn

select max(PaymentMethod) [max payment method ] from dbo.sales


---- finout themaximum quantity sold for each product id
select ProductID , max(Quantity) from dbo.sales 
--- he error occurs as the " Product id " is not with the aggregrate(max min , avg etc ) function or alon with group by 
-- group by create an distinct product id the group willbe created then  fir each --product id --maximum quantity willbe shown 
--- thisabovr statement will throw error as 

select ProductID , max(Quantity) [max quantiy ] from dbo.sales 
group by ProductID

-- show maximum total amount values for the unique dates 

select SaleDate , max(TotalAmount) [max totalamt] from dbo.sales
group by SaleDate





