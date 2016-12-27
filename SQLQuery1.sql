

--Test
--Create Table Student(StudentId.FirstName,DOB)
Create Table Student(

StudentId Int, 
FirstName VarChar(20),
DateOfBirth DateTime
)
--Query The Table
Select * from Student
--Insert a Record Into The Table
Insert into Student(
StudentId,FirstName,DateOfBirth)
Values(1,'Pavan','11/28/1993')