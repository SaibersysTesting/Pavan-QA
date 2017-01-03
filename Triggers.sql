Drop Table orders
Create Table Orders
(
OrderId Int Identity(1,1)
,Customer Varchar(20)
,OrderQty Int
)
Drop Table Audit_Orders

Create Table Audit_Orders
(
OrderId Int 
,Customer Varchar(20)
,OrderQty Int
,ActionType Varchar(20),
CreatedDate Datetime,
CreatedBy Varchar(255)
)

Select * From Orders
Select * From Audit_Orders


--Insert data into orders
Create Trigger Tri_Orders on Orders
For Insert
As
--Send Email
Insert Audit_Orders(OrderId,Customer,OrderQty,ActionType,CreatedBy,CreatedDate)
Select OrderId,Customer,OrderQty,'Insert',SUSER_NAME(),GETDATE()
From Inserted--Magic Table


Insert Orders(Customer,OrderQty)
Values('Sanjay',10)

Insert Orders(Customer,OrderQty)
Values('Raj',20)


Select * From Orders
Select * From Audit_Orders



Delete From Orders where OrderId=1

--Insert data into orders
Create Trigger Trd_Orders on Orders
For Delete
As
--Send Email
Insert Audit_Orders(OrderId,Customer,OrderQty,ActionType,CreatedBy,CreatedDate)
Select OrderId,Customer,OrderQty,'Delete',SUSER_NAME(),GETDATE()
From Deleted--Magic Table

Create Trigger Tru_Orders on Orders
For Update
As
--Send Email
Insert Audit_Orders(OrderId,Customer,OrderQty,ActionType,CreatedBy,CreatedDate)
Select OrderId,Customer,OrderQty,'Before Update',SUSER_NAME(),GETDATE()
From Deleted--Magic Table

Insert Audit_Orders(OrderId,Customer,OrderQty,ActionType,CreatedBy,CreatedDate)
Select OrderId,Customer,OrderQty,'After Update',SUSER_NAME(),GETDATE()
From Inserted--Magic Table


Update Orders
Set OrderQty=24
Where OrderId=2