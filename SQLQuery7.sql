CREATE PROCEDURE USP_LoadEmployeeDestination AS
BEGIN
SELECT E.EmployeeID,P.FirstName,P.LastName,PA.City,E.ModifiedDate
FROM AdventureWorks.[HumanResources].[Employee] E 
JOIN AdventureWorks.[Person].[Contact] P on E.ContactID=P.ContactID
JOIN AdventureWorks.[HumanResources].[EmployeeAddress] EA on E.EmployeeID=EA.EmployeeID
JOIN AdventureWorks.[Person].[Address] PA on EA.AddressID=PA.AddressID
LEFT JOIN Employee_Destination ED on E.EmployeeID=ED.EmployeeID 
WHERE ED.EmployeeID IS NULL
END