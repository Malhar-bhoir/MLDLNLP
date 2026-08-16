--- SQL like operator 
use[Sales Database]


-- vewing teh table 

select * from employees_US

--- SQL like operator are generally used with 
--- Two wildcards 
--- 1 . --- % ---  it may represent 0 ,1 or multiple character 
--- 2.  --- _ ---  it exacrly represent only 1 character 


-- usecase of like operator 

--1) Find Employees whose Last Name starts with 'S'.
select * from Employees_us
where Lastname like 's%' 
---  's%' indiacte the that after S ther can any nuumber or letter 



--2) Find Employees whose First Name ends with 'a'.
select * from Employees_us 
where Firstname  like '%a'



--3) Find Employees whose Department contains 'Eng'.
-- eng -- can be present in the start , end ,middle so for that
Select * from Employees_US 
where Department like '%eng%' -- if eng is at the start the % acts as 0 same if eng is at the end else can % can be 1 

--4) Find Employees whose Last Name is exactly 5 characters long.
select * from Employees_US 
where Lastname like '_____' 
-- as ---_--- represent the one character



--5) Find Employees whose First Name starts with 'C' or 'D'.

select * from Employees_US
where Firstname like '[CD]%'
--- afert --C OR D --- the can 0 ,1 etc 

--6) Find Employees whose Last Name contains 'son'.
select * from Employees_US 
where Lastname like '%son%'


--7) Find Employees whose First Name contains the letter 'i' as the second character.
select * from employees_us 
where Firstname like '_i%'
-- as the first character can be any thing and second in i and after it can be 0,1 etc


--8) Find Employees whose Last Name starts with any letter between 'A' and 'L'.
select * from Employees_us 
where Lastname like '[a-l]%'


--9) Find Employees whose First Name does not contain 'o'.
select* from Employees_us 
where Firstname not like '%o%' 
--- as  " O " can be between , end or at start 


--10) Find Employees whose Last Name ends with 'a' and is exactly 5 characters long.
select * from Employees_us 
where Lastname like '____A'


--11) Find Employees whose Department starts with 'Mar' and ends with 'ing'.
select* from Employees_us
where Department like 'mar%ing'


--12) Find Employees whose First Name has an 'a' in the third position.
select *from employees_us
where Firstname like '__A%'

--13) Find Employees whose Last Name starts with 'Br' or 'Bl'.
select *from employees_us
where Lastname like 'Br%' or Lastname like 'Br%'

--14) Find Employees whose First Name starts with a vowel.
select * from employees_us
where Firstname like '[aeiou]%'

--15) Find Employees whose First Name does not start with a consonant.
select * from Employees_us
where Firstname not like '[^aeiou%]' 
-- consonat -- are the words excluding aeiou 


--16) Find Employees whose First Name starts with a consonant.
select * from employees_US
where Firstname like '[^aeiou]'
