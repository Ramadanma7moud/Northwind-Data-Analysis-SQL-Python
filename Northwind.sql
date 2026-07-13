SELECT Employees.City,
       COUNT(DISTINCT Employees.EmployeeID) AS Employees,
       COUNT(DISTINCT Customers.CustomerID) AS Customers
FROM Employees
LEFT JOIN Customers
ON Employees.City = Customers.City
GROUP BY Employees.City; 


SELECT CustomerID,
       COUNT(OrderID) AS TotalOrders
FROM Orders
WHERE OrderDate > '1996-12-31'
GROUP BY CustomerID
HAVING COUNT(OrderID) > 15; 


select * from Orders
where OrderDate = '1997-05-19'; 


select top 10 P.ProductName,SUM(od.quantity)AS TotalQuantity
from Products P join [Order Details] od on P.ProductID = od.ProductID
GROUP BY P.ProductName 
ORDER BY TotalQuantity DESC; 


SELECT Orders.OrderID,
       Employees.FirstName,
       Employees.LastName
FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
WHERE Orders.ShippedDate > Orders.RequiredDate; 