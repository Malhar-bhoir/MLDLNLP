------sql practice
use [SQL Questions]

select * from Customers

select * from Orders

select * from Products
--




--- showing the customer als owho have not order 
-- here mostly we will use left join 
-- Write an SQL query to find the names of customers who have placed an order.
select customername from Customers
inner join orders
ON customers.customerID = Orders.CustomerID

-- Find the list of customers who have not placed any orders.
select customername  from Customers
left join  orders
ON customers.customerID = Orders.CustomerID
where Orders.CustomerID is  NULL

-- List all orders along with the product name and price.
select  distinct productname , price from Orders
inner join Products
ON orders.ProductID = Products.ProductID


-- Find the names of customers and their orders, including customers who haven't placed any orders.
select * from Customers c
left join orders o
ON c.CustomerID = o.CustomerID



-- Retrieve a list of products that have never been ordered.

select * from Products p
left join Orders o
ON p.ProductID = o.ProductID
where o.ProductID is null

-- Find the total number of orders placed by each customer.
select Customername , count(orderid) [order] from Customers c
inner join  Orders o
ON c.CustomerID = o.CustomerID
group by CustomerName
---or
select CustomerName,count(orderid) from Orders
inner join customers
ON orders.CustomerID = customers.CustomerID
group by CustomerName

-- to show all custoemr name ( david also )
select Customername , count(orderid) [order] from Customers c
left join  Orders o
ON c.CustomerID = o.CustomerID
group by CustomerName

-- Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.

-- join bte three table 
select CustomerName , ProductName ,orderdate from customers c
left join orders o -- we use here orders table first as customers tabl si connected to product table via orders table
ON c.CustomerID = o.CustomerID
left join Products p
ON o.ProductID = p.ProductID



--Rule 2:

--Question contains:

--including
--also show
--even if not

--→ Use:

--LEFT JOIN



--Short version you can write:

--> To decide LEFT or RIGHT table, first identify **which table’s complete data must appear in the output**. That table becomes the LEFT table in LEFT JOIN. If the question says **show all customers/products/orders including those with no matching records**, place that table on the left side.

--Example:

--```sql
--Products LEFT JOIN Orders
--```

--Meaning:

--> Show all products, even products that were not ordered.

--Rule:

--```text
--Show ALL ___ → that table becomes LEFT
--```
