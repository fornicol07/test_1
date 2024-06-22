/*QUERY 1-3 Afiseaza ID-ul comenzii si numele angajatului care a procesat comanda folosind 
1 - RiGHT JOIN, 2 - Left Join, 3 - FULL JOIN*/
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
Order BY Customers.CustomerID

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
Order BY Customers.CustomerID

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
Order BY Customers.CustomerID