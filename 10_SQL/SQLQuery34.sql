-- nested case Statement 

-- vewing the table 
select * from products

----exmaple 1 weneed to grp the data based on column category and price in diff categories that is affordable and premium 
--- we are needed to added to new column sp

select 
*,
case 
	when category = 'Electronics' then 
		case
		when price >= 300 then 'premium'
		else ' affordable'
		end
	when category = 'Furniture' then
		case
		when price >= 250 then 'premium'
		else ' affordable'
		end
	
else
		
		case
		when price >= 25 then 'premium'
		else ' affordable'
		end
end as [grp] 
from products 


---- or 
select 
*,
case 
	when category = 'Electronics' then 
		case
		when price >= 300 then 'premium'
		else ' affordable'
		end
	when category = 'Furniture' then
		case
		when price >= 250 then 'premium'
		else ' affordable'
		end
	
	when category = 'Accessories' then
		
		case
		when price >= 25 then 'premium'
		else ' affordable'
		end
end as [grp] 
from products 

--- first checks for category then for price 




-- practice 

select 
*,
case 
	when category = 'Electronics' then
		case
		when price >= 300 then 'premuim'
		else 'affordable'
		end
else 
		
		
		case
		when price >= 25 then 'p'
		else 'a'
		end

end


from products


