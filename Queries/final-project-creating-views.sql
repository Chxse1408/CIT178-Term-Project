/* Final Project Views */\

USE finalProjectMyDatabase;
GO

/* Creating Updatable View*/

CREATE VIEW CurrentProducts
AS
SELECT ProductID, AmountInStock, AmountSold, ProductName
FROM ProductWareHouse;
GO

/*Getting Data*/

SELECT * FROM CurrentProducts;
GO

/*Updating Amount Sold*/

UPDATE CurrentProducts
SET AmountSold = 400
WHERE ProductID = 3;
GO

/*Displaying New Data*/

SELECT * FROM CurrentProducts;
GO

/*Creating View 2*/

CREATE VIEW [Order Information]
AS
SELECT  CustomerID, ProductName, Quantity, OrderDate
FROM Orders JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN ProductWarehouse ON OrderDetails.ProductID = ProductWarehouse.ProductID;
GO

/*Showing View 2*/

SELECT * FROM [Order Information];
GO

/*Creating View 3*/

CREATE VIEW [Stores in Chicago]
AS
SELECT storeid, city, address
FROM Stores
WHERE City = 'Chicago'
GO

/*Showing View 3*/

SELECT * FROM [Stores in Chicago];
GO

/*Creating View 4*/

CREATE VIEW [Hired after 2000]
AS
SELECT employeeID, FirstName, LastName
FROM Employees
WHERE HireDate > '01-01-2000';
GO

/*Showing View 3*/

SELECT *  FROM [Hired after 2000];
