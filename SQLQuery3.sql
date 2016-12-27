Create Table A(

Id int
)
Create Table B(
Id Int
)
Insert Into A(Id)
Values(1), (2), (3),( 4)

Insert Into B(Id)
Values(3), (4), (5),(6)

Select * from A
Select * from B

Select * from A
Except
Select * from B


-- WAQ To Display In Table B Which Are Not present In Table A

Select * From A 
Where Id in (Select Id From B)


Select * from B
Except
Select * from A

--WAQ To Display Which Records are common Between A and B
Select * From A 
Where Id in (Select Id From B)

Select * From A 
Where Exists (Select Id From B)
Select * from B
Intersect
Select * from A

--WAQ to fetch The Result set (1,2,3,4,5,6,7,8)
Select * From A  Where Exists (Select Id From B)
Union
Select * From B  Where Exists (Select Id From A)

Select * From A  Where Exists (Select Id From B)
Union All
Select * From B  Where Exists (Select Id From A)

