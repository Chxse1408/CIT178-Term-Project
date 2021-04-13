CREATE DATABASE finalProjectMyDatabase;
GO
USE finalProjectMyDatabase;
CREATE TABLE Employees
(
	EmployeeID int NOT NULL,
	FirstName varchar(15) NOT NULL,
	LastName varchar(30) NOT NULL,
	HireDate datetime NOT NULL,
	PRIMARY KEY(EmployeeID)
);
GO
CREATE TABLE Customers
(
	CustomerID int NOT NULL,
	FirstName varchar(15) NOT NULL,
	LastName varchar(30) NOT NULL,
	CallNum varchar(15) NULL,
	Email varchar(30) NULL,
	PRIMARY KEY(CustomerID)
);
GO
CREATE TABLE Orders
(
	OrderID int NOT NULL,
	CustomerID int NOT NULL,
	EmployeeID int NOT NULL,
	OrderDate datetime NOT NULL,
	StoreID int NOT NULL,
	PRIMARY KEY(OrderID)
);
GO
CREATE TABLE OrderDetails
(
	OrderDetailID int NOT NULL,
	OrderID int NOT NULL,
	ProductID int NOT NULL,
	Quantity int NOT NULL,
	PRIMARY KEY(OrderDetailID)
);
GO
CREATE TABLE ProductWarehouse
(
	ProductID int NOT NULL,
	AmountInStock int NOT NULL,
	AmountSold int NOT NULL,
	ProductName varchar(15) NOT NULL,
	PRIMARY KEY(ProductID)
);
GO
CREATE TABLE Stores
(
	StoreID int NOT NULL,
	City varchar(20) NULL,
	Address varchar(30) NOT NULL,
	PRIMARY KEY(StoreID)
);
	