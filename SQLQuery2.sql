--Create a Table Employee(EmployeeID, FirstName, DateOfBirth)

Create Table Employee(
EmployeeID Int,
FirstName Varchar(20),
DateOfBirth datetime

)
--Query EMployee Table
Select* from Employee


--Insert Two Records INto EMployee
Insert into Employee(EmployeeId,FirstName,DateOfBirth)
values(1,'Kumar','09/25/1993'),
	(2,'Barath','09/26/1993')
--add a column gender to Employee Table
Alter Table Employee
Add Gender Char(1)
Insert Into Employee(Gender)
Values('M')
--Update The Gender Column

Update Employee
Set Gender='M'
 Where EmployeeId=1

Update Employee
Set Gender='M'
 Where EmployeeId=2

 --Remove Null Record From A TAble
 Delete Employee

--

 --Empty The Table
 Truncate Table Employee
