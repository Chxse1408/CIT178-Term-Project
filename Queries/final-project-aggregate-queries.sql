/*USE finalProjectMyDatabase;


/*Shows the hire date of the oldest employee and the newest employee.*/

SELECT MAX(HireDAte) AS [Newest Employee], MIN(HireDate) AS [Oldest Employee]
FROM Employees;

/*Shows the sum of all of the stock and the sum of all orders.*/

SELECT SUM(AmountInStock), SUM(AmountSold)
FROM ProductWarehouse;

/*Shows number of orders from each state*/

SELECT Stores.City, SUM(OrderDetails.Quantity) AS [Number of orders]
FROM Orders JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Stores ON Stores.StoreID = Orders.StoreID
GROUP BY Stores.City;

/* Shows average amount bought of each product.*/

SELECT ProductWarehouse.ProductName, AVG(OrderDetails.Quantity) AS [Average amount bought]
FROM OrderDetails JOIN ProductWarehouse ON ProductWarehouse.ProductID = OrderDetails.ProductID
GROUP BY ProductWarehouse.ProductName;*/
