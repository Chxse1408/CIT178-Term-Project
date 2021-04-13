USE finalProjectMyDatabase;
GO
CREATE INDEX idx_Customer ON Orders(CustomerID);
GO
CREATE INDEX idx_Employee ON Orders(EmployeeID);
GO 
CREATE INDEX idx_OrderID ON OrderDetails(OrderID);
GO
CREATE INDEX idx_ProductID ON OrderDetails(ProductID);