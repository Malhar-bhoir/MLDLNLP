-- non clustred indexes
--- we can create multiple non clustered index  that are stored in diffrent places for same table
--- or simply they are stores separately 
select* from Students


--creating non clustered indexes 

create nonclustered index ix2 on students (id)

--second one 

create nonclustered index ix3 on students ( gender desc , age asc)

drop index ix2 on students