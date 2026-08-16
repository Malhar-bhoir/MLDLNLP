--- ISNULL and Coalesce function 

use[Profit DB]

select * from Customers

------------ ISNULL
-- if we want to ceck wheather the value is nul and if its we want
--we want to rep;ace it by vale
---- in ISNULL(value it will check ,'replace value if the first is found') 
--- in ISnull() -- null value is beign check ,, --1 st null value -- this is the replacement value

select isnull(null,'1st null value')

select isnull('abx',null) -- here the --abx-- was check if it is present orr not 
--- if it is equal to null , then waht ever we ahve written after value - after "," this 
--- th null will be replace with that

select isnull(null,null) --- the first null is check  


-- coalease function
-- it searces for first non nnull value and returns the first non null value 
-- in thsi we can provide mltiple vlaue in arguments/ --()---

select coalesce('A','B','C')

----
--displayin the data of customerid ,email and phonr number 

select  * from customers

select customerID , email ,phonenumber from customers 
-- some column has null value to deal with them 

select customerID , isnull(email,'NA'),isnull(phonenumber,'NA') from customers

---------coalesce function 
-- we donot want all column 
-- first  we want to return the email but if email i null then return phone number 
-- if both ar not avialabe show NA
select 
select customerID, coalesce(email,phonenumber,'NA') [coalesce]from customers

