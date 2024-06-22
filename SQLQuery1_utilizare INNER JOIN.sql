/*SQL Query inner joi*//*Afisati toti clientii care au plasat comenzi*/
SELECT customers.ContactName
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
Group BY Customers.ContactName;

/*SQL Query 2*//*Afisati id-ul clientului (CustomerID) si 
numarul de produse comandate intre 1998-03-01 si 1998-03-31 pe o coloana denumita
OrdersNumber. Ordonati datele dupa CustomerID*/
select Orders.CustomerID, COUNT(*) AS OrderNumber
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN dbo.[Order Details] ON dbo.[Order Details].OrderID = dbo.Orders.OrderID
WHERE Orders.OrderDate >='1995-01-20 00:00:00.000' AND Orders.OrderDate <='1998-01-31 00:00:00.000'
GROUP BY Orders.CustomerID


