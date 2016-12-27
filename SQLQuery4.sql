--WAQ EMPLOYEE table
Select * From HumanResources.Employee

--WAQ To Display Count of Employees By Gender
Select Gender, count(EmployeeID) AS EmployeeCount
From HumanResources.Employee
Group By Gender

--WAQ To Display Count of Employees By MaritalStatus
Select MaritalStatus, count(EmployeeID) AS EmployeeCount
From HumanResources.Employee
Group By MaritalStatus
--WAQ to display Employee Count by BirthYear (How Many employees are born in each year
Select Year(BirthDate), count(Year(BirthDate)) AS EmployeeCount
From HumanResources.Employee
Group By Year(BirthDate)
--WAQ to display Employee Count by MonthOfyear (How Many employees are born in each Month)
Select Month(BirthDate), count(Month(BirthDate)) AS EmployeeCount
From HumanResources.Employee
Group By Month(BirthDate)
--WAQ to display Employee Count by ManagerrID (How Many employees report to Each Manager)
Select ManagerID, count(EmployeeID) AS EmployeeCount
From HumanResources.Employee 
Group By ManagerID
--WAQ to display Employeeid ,ManagerId,title for employees who are not managers (Example if a Persons Employeeid is present in ManagerID column
Select EmployeeID,ManagerID, Title
 From  HumanResources.Employee
 Where EmployeeID not in(
 Select ManagerID From HumanResources.Employee
 Where ManagerID is not NULL
 )
--WAQ to display Employeeid ,ManagerId,title for employees who are  managers 
Select EmployeeID,ManagerID, Title
 From  HumanResources.Employee
 Where EmployeeID  in(
 Select ManagerID From HumanResources.Employee
 Where ManagerID is not NULL
 )

6)WAQ to display employeeid ,managerid,hiredate,yearsofexperience(DerivedColumn is calcualted based on his hiredate)

Select EmployeeID, ManagerID, HireDate, 
YearsOfExperience=DateDiff(yy,HireDate,GetDate()) 
 From    HumanResources.Employee
