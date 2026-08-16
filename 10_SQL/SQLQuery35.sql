---- sql data types 

-- string datatypes 
-- : char ,varchar , nchar ,nvarchar 

--1. fro : M or F ---> char(1) --- the value can be only one Male or frmal in case of gender
--2.  column to stored sudents names it can be of variable lengths -- > varchar(256)
--3  for gender column we can also make use of ncahr(1) -- it als osuports unicode characters 
-- unicode char are Character	Unicode
--A	U+0041
--a	U+0061
--₹	U+20B9
--😀	U+1F600
--अ	U+0905
--4.  nvarchar( similar to varchar it also suppots unicode characters 

-----------------------------------------2
-- Number type : 
---> int , bigint , tinyint , decimal(p,s) -- for decimal we have dertermin -- p --> that is precison and -s-----> scale  ,samll int

--  column age of the students has to be store ,tinyint()-- it only requires 1 byte of memory
-- age of treeee --> smallint --> 2 byte meemory 
-- decimal(p,s_ , p --> totqal digits , s --> numuber of digit we have after decimal (point)

-- to store the value suppose race record  and limit iss 999.99 , decimal(5,2) can be use 

-----------------------------------------3
----- DATE datatype ,time data type , datetime datatype 

