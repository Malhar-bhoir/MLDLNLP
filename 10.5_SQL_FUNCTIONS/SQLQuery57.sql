--  RANK ,DENSE RANK AND ORW NUMBER WINDOW FUNCTION 2 

use [Student]

select * from Students

--rows numbers have to be assign acc to marks column to each one of record but it has tobe done for each subject
-- we have to make windows for each subject and row nunmber are then to be assign 
-- suppose marks are given to math then for mathematics the row number are to be assign 

--- to create the window for each subject or make partition by each subject we will make 
-- use of partition method --- over(partition by columntobepartition order by marks desc )

select * , ROW_NUMBER() over(partition by subject order by marks desc ) as [ROW Number]  
from students

--- asc -- same just using asc 

--- creating the window base on on students / or their name 

select * , ROW_NUMBER() over(partition by student_name order by marks desc) as [ row ]
from students 


-- finding the ranks for each os the students 

select * , RANK()  over(partition by student_name order by marks desc ) as [rank] 
from students

-- fro sub
select * , RANK()  over(partition by subject order by marks desc ) as [rank] 
from students

------- dense rank
select * , DENSE_RANK()  over(partition by subject order by marks desc ) as [rank] 
from students

select * , DEnSE_RANK()  over(partition by student_name order by marks desc ) as [rank] 
from students

select * , DENSE_RANK()  over(partition by student_name order by marks asc ) as [rank] 
from students


