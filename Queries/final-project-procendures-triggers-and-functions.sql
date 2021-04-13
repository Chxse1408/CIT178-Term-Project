/*Final Project Procedure

USE finalProjectMyDatabase;
GO
CREATE PROC CustomerEmployeeNames
AS
SELECT FirstName, LastName
FROM Customers
UNION
SELECT FirstName, LastName
FROM Employees;
GO
EXEC CustomerEmployeeNames;

CREATE PROC spFindStore
	@City nvarchar(40) = '%'
AS
BEGIN
	SELECT StoreID, City, Address
	FROM Stores
	WHERE City LIKE @City;
END
GO

ALTER PROC  spCountOrdersFromEmployees
	@EmpName varchar(40) = '%'
AS
DECLARE @SalesCount int;
SELECT @SalesCount = @@ROWCOUNT
FROM Orders Join Employees 
ON orders.EmployeeID = Employees.EmployeeID
WHERE FirstName LIKE @EmpName;
RETURN @SalesCount;

CREATE PROC spTotalQtySold
	@productName varchar(40) = "%",
	@qtySold int OUTPUT
AS
BEGIN
	SELECT ProductName
	FROM ProductWarehouse JOIN OrderDetails
	ON ProductWarehouse.ProductID = OrderDetails.ProductID
	WHERE ProductWarehouse.ProductName LIKE @productName
	select @qtySold = @@ROWCOUNT
END;

exec spTotalQtySold @qtysold=3;

Final Project User Defined Functions 


CREATE FUNCTION fnProductID
    (@ProductName varchar(50))
    RETURNS int
BEGIN
    RETURN (SELECT ProductID FROM ProductWarehouse WHERE ProductName = @ProductName);
END;

SELECT AmountInStock, AmountSold
FROM ProductWarehouse
WHERE ProductID = dbo.fnProductID('Hand Soap');

GO
CREATE FUNCTION fnProducts
	(@productID int)
	RETURNS table
RETURN
		(SELECT * FROM ProductWarehouse WHERE @productID = ProductWarehouse.ProductID);
GO
SELECT * FROM dbo.fnProducts(2);

Final Project Triggers

CREATE TRIGGER Employees_DELETE ON Employees
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @EmployeeID nchar(5)
	SELECT @EmployeeID = DELETED.EmployeeID
	FROM DELETED

	INSERT INTO EmployeeLogs
	VALUES(@EmployeeID,'Deleted')
END;

CREATE TRIGGER Customers_INSERT ON Customers
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @CustomerID nchar(5)
	SELECT @CustomerID = INSERTED.CustomerID
	FROM INSERTED

	INSERT INTO CustomerLogs
	VALUES(@CustomerID,'Inserted')
END;

CREATE TRIGGER Products_UPDATE ON ProductWarehouse
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ProductID nchar(5)

	DECLARE @Action varchar(50)
	SELECT @ProductID = INSERTED.ProductID
	FROM INSERTED

	IF UPDATE(AmountInStock)
		SET @Action = 'Updated Stock'
	IF UPDATE(AmountSold)
		SET @Action = 'Updated amount sold'
	IF UPDATE(ProductName)
		SET @Action = 'Updated Name'
	INSERT INTO ProductLogs
	VALUES(@ProductID,@Action)
END*/