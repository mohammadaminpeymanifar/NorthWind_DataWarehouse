--Create database NorthWindDW
--use NorthWindDW


create table DimEmployee(
EmployeeSK int identity primary key,
EmployeeID int,
BirthDate  DateTime,
HireDate   DateTime,
City       Nvarchar(50),
Region     Nvarchar(50),
Country    Nvarchar(50),
Titlle     Nvarchar(50),
FullName   Nvarchar(50))

truncate table DimEmployee



create table DimShippers(
ShipperSK int identity primary key,
ShipperID int ,
CompanyName nvarchar(50),
Phone     int)

Truncate table DimShippers



Create table DimCustomer(
CustomerSk int identity primary key,
CustomerID    Nvarchar(50),
CompanyName   Nvarchar(50),
ContactName   Nvarchar(50),
ContactTitle  Nvarchar(50),
City          Nvarchar(50),
Region        Nvarchar(50),
Country       Nvarchar(50))

Truncate Table DimCustomer



Create Table DimSuppliers(
SupplierSK    int identity primary key,
SupplierID    int,
CompanyName   Nvarchar(50),
ContactName   Nvarchar(50),
ContactTitle  Nvarchar(50),
City          Nvarchar(50),
Region        Nvarchar(50),
Country       Nvarchar(50))

Truncate Table DimSuppliers



Create Table DimProduct(
ProductSK int identity Primary Key,
ProductID    int,
ProductName  Nvarchar(50),
Discontinued int,
CategoryID   int,
CategoryName NVarchar(50),
Discription  NVarchar(50),
SupplierSk   int)

Truncate Table DimProduct



--DimDate
use NORTHWND
Select * from orders
Select MIN(YEAR(ORDERDATE)) , MAX(YEAR(ORDERDATE)) from Orders



Create Table FactOrder(
Freight          numeric(25,4),
TotalSales       int,
OrderDateKey     int,
ShipDateKek      int,
RequiredDateKey  int,
CustomerSK       int,
ShipperSK        int,
EmployeeSK       int,
ProductSK        int )

Truncate Table FactOrder
