USE finalProjectMyDatabase;
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
ON UPDATE CASCADE;
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
ON UPDATE CASCADE;
GO
ALTER TABLE Orders WITH CHECK
ADD CONSTRAINT FK_StoreID FOREIGN KEY(StoreID) REFERENCES Stores(StoreID)
ON UPDATE CASCADE;
GO
ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_OrderID FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
ON UPDATE CASCADE;
GO
ALTER TABLE OrderDetails WITH CHECK
ADD CONSTRAINT FK_ProductID FOREIGN KEY(ProductID) REFERENCES ProductWarehouse(ProductID)
ON UPDATE CASCADE;
GO