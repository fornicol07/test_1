/*1. Query Afiseaza numele p-rodusului si pretul, pentru produsul cu cel mai mare 
pret de lista vandut dupa 1995-04-01 (inclusiv această dată).*/
select dbo.Products.ProductName, [Order Details].UnitPrice, Orders.OrderDate, orders.orderID
FROM Orders
INNER JOIN dbo.[Order Details] ON Orders.OrderID = dbo.[Order Details].OrderID and Orders.OrderDate >= '1995-04-01'
INNER JOIN Products ON Products.ProductID=dbo.[Order Details].ProductID
where [Order Details].UnitPrice= (select MAX (UnitPrice) From [Order Details]) 

/*2. QUERY Afiseaza pentru fiecare client, numărul de comenzi plasate în martie 1995.
Ordoneaza dupa CustomerID.*/
SELECT /*DISTINCT*/ Customers.CompanyName, Customers.CustomerID, count (Orders.OrderDate) AS NumarulDEComenzi
FROM Customers
INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderDate >= '1995-03-01' and Orders.OrderDate <= '1995-03-31'
GROUP BY Customers.CompanyName, Customers.CustomerID
ORDER BY Customers.CustomerID

/*3. QUERY Afiseaza produsele care nu au fost comandate.*/
/*rezultatul e toate produsele au fost comandate pentru ca nu apare nicio inregistrare cu NULL sau zero*/

SELECT distinct Products.ProductName, COUNT(Orders.OrderID) AS NUMARCOMENZI
FROM Products
LEFT JOIN dbo.[Order details] ON dbo.[Order Details].ProductID = Products.ProductID
INNER JOIN Orders ON Orders.OrderID=dbo.[Order Details].OrderID
GROUP BY ProductName
sau
/*3. QUERY Afiseaza produsele care nu au fost comandate.*/
/*rezultatul e zero intrucat toate produsele au fost comandate*/
select products.ProductID, products.ProductName from Products
where ProductID not in (

SELECT Products.Productid
FROM Products
LEFT JOIN dbo.[Order details] ON dbo.[Order Details].ProductID = Products.ProductID
INNER JOIN Orders ON Orders.OrderID=dbo.[Order Details].OrderID
)


