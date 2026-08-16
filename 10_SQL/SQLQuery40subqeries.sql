--- sql sun queries 

use[employee_details]

-- veiwing the table 

select * from Customers

select * from Orders

--- find the custimer from custimers data who have places ab order in month of august
-- it canbe done using sub queries

select * from customers 
where customer_id in (
select distinct Customer_id from Orders where order_date between '2024-08-01'and '2024-08-31'
)

-- the result to the above queries will be shown from the customer via not from oreder table
-- means only customer table is visisble

----------------
----- find the xutomers from customer table who have place the orders in months other tahn august
select * from customers
where customer_id in ( -- as customer_ id --- is commom in both of the table make surethat that i provide the output baseon on customer in inner table or order table 
select distinct customer_id  from orders 
where order_date not between '2024-08-01'and '2024-08-31'
)

--- here the sub query run first 
--- the return the value of distinct ids as per condition 
---  or returns an  list ( 1,3) 
--- then the we check if this ids are therr in customer tavle or outer table
----> using ---> where customer_id in ( values from order table )
--- if founf return the all columns values of that ids 

--- example ----------------------------

-- using old employeestable 
select * from employees

---find the enplyess who have the salary greater than avreage salary 

select * from employees 
where Salary > (
select AVG(Salary) from employees --- this becomes value 

)

 --after we get value the statement look like
 -- select * from employees
 -- where salary > value(avg salary)

 --- this below ode will throw error as the avg is not calaulate before checking the confditon 

 --select * from employees
 --where Salary > AVG(Salary)

 

-- The Shortcut

-- Ask:

-- Does the subquery return a table?

-- Example:

-- SELECT CustomerName, SUM(Price)

-- Multiple columns returned.

-- Then:

-- FROM
-- (
--    ...
-- ) m

-- Use alias.

-- Does the subquery return a single column or single value?

-- Example:

-- SELECT CustomerID

-- or

-- SELECT AVG(Salary)

-- Then use:

-- IN (...)

-- or

-- = (...)

-- or

-- > (...)

-- No alias required.