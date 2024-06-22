/*SQL Query 1*/
SELECT ProductName, QuantityPerUnit, UnitPrice
FROM dbo.Products
ORDER BY ProductName DESC;

/*SQL Query 2*/
SELECT ProductName, QuantityPerUnit, UnitPrice
FROM dbo.Products
Where UnitsInStock>=10 and UnitPrice<30
ORDER BY ProductName, UnitPrice;

/*SQL Query 3*/
SELECT LastName, FirstName, BirthDate
FROM Employees
Where BirthDate = (Select max (BirthDate) FROM Employees);

/*SQL Query 4  */
SELECT LastName, FirstName, Title
FROM dbo.Employees
Where title = 'Sales Representative' OR title ='Sales Manager'

/*SQL Query 5  */
SELECT LastName, FirstName, Title
FROM dbo.Employees
Where city <> 'London'
Order by title,  FirstName desc;

/*SQL Query 3 bis*/
SELECT LastName, FirstName, BirthDate
FROM dbo.Employees
Where BirthDate = (Select min (BirthDate) FROM Employees);

/*Query 6*/
SELECT City, CompanyName, ContactName
FROM Customers
Where City LIKE 'A%' or City like 'B%'
ORder BY ContactName DESC;

/*Query 7*/
SELECT FirstName, LastName
FROM Employees
WHERE LastName lIKE '[j-m]%'