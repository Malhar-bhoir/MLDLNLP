--- ql question s --- joins 

use[SQL Questions]

select * from  customers

select * from Orders

select * from Products
--- 
-- 1) Identify pairs of customers who live in the same country
-- here the probem occur that the customer id of two table joins together causing the ids t obe repeated
-- to avoide this we canuse x.customerID <> y.customer ID --> Avoid Matching a Customer with Himself
-- as we donot want the record to join to therir own self 
-- iin borh name the custoemr have different customer  id so it will show same customer wit hdiff id 
-- so we wipp apply condition such that display that record where any one of them is having greater id
-- usinf x.customerID >  y.customerID -- Avoid Duplicate Pairs

--c.Country = c2.Country
-- Ensures both customers belong to the same country.


select * from Customers c
join Customers c2
ON c.Country = c2.Country and c.CustomerID <> c2.CustomerID and c.CustomerID > c2.CustomerID 


-- 2) Find the customer who has spent the most on their orders

select CustomerName , sum(price) from customers c
inner join orders o 
ON c.CustomerID = o.CustomerID 
inner join Products p
ON o.ProductID = p.ProductID
group by customername

-- ther can be case that 2 customer has spend smae amount and that will be igher 
-- so we will use dense funstion 

select CustomerName , sum(price) [price] ,Dense_rank() over(order by sum(price) desc ) [Dr]
from customers c
inner join orders o 
ON c.CustomerID = o.CustomerID 
inner join Products p
ON o.ProductID = p.ProductID
group by customername

--- -- 1 -- indicate the maximum value spend 
-- we can add this above query in sub query and fin the output fro DR = 1 
select customerNAME from
(select CustomerName , sum(price) [price] ,Dense_rank() over(order by sum(price) desc ) [Dr]
from customers c
inner join orders o 
ON c.CustomerID = o.CustomerID 
inner join Products p
ON o.ProductID = p.ProductID
group by customername) m where Dr = 1

-- 3) Find customers who have ordered more than one type of products
select CustomerName, count(productId) from customers c
inner join orders o 
ON c.CustomerID = o.CustomerID 
group by CustomerName
having count(productID) > 1  --- this line whill onlt show the customer getting more than one product 

-- 4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.
select ProductName , p.ProductID,OrderID from orders o
right join products p
ON o.ProductID = p.ProductID

-- 5) Retrieve all orders placed by customers from the USA.
select OrderID from Customers c
inner join orders o 
ON c.CustomerID = o.CustomerID
where Country = 'USA' 


-- 6) Find the names of customers who have ordered a product priced above $500.
select CustomerName ,sum(price) from Customers c 
inner join Orders o
ON c.CustomerID = o.CustomerID
inner join Products p
ON o.ProductID = p.ProductID
group by Customername
having sum(price)> 500

--- or 
select distinct CustomerName from Customers c 
inner join Orders o
ON c.CustomerID = o.CustomerID
inner join Products p
ON o.ProductID = p.ProductID
where Price > 500

-- 7) Find customers who have ordered the same product more than once.
select c.CustomerID ,productID , count(orderID) from Customers c 
inner join Orders o
ON c.CustomerID = o.CustomerID
group by c.CustomerID , ProductID
having count(orderID) > 1  

--- to get the name of specific customer or the only customer -- we use sub queries 
select distinct m.Customername  from 
(select c.CustomerID ,productID , count(orderID) from Customers c 
inner join Orders o
ON c.CustomerID = o.CustomerID
group by c.CustomerID , ProductID
having count(orderID) > 1  ) m  



--tips for subqueries
--Subquery returns TABLE
--→ FROM (subquery) m

--Subquery returns LIST
--→ IN (subquery)

--Subquery returns SINGLE VALUE
--→ = (subquery)
--   > (subquery)
--   < (subquery)

--The Shortcut

--Ask:

--Does the subquery return a table?

--Example:

--SELECT CustomerName, SUM(Price)

--Multiple columns returned.

--Then:

--FROM
--(
--   ...
--) m

--Use alias.

--Does the subquery return a single column or single value?

--Example:

--SELECT CustomerID

--or

--SELECT AVG(Salary)

--Then use:

--IN (...)

--or

--= (...)

--or

--> (...)

--No alias required.