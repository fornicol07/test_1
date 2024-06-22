/*Query 1 TEma Returnați toate numele companiilor și numele de contact pentru care 
Clienții se află în Buenos Aires.*/
SELECT CompanyName, ContactNAme, City
FROM Customers
WHERE City = 'Buenos Aires';

/*Query 2 Tema*/
/*Returnați data comenzii, 
data expedierii, ID-ul clientului și Shipped Date, plasate pe 19 mai 1997*/
SELECT OrderDate, RequiredDate, CustomerID, ShippedDate
FROM Orders
WHERE OrderDate = '1997/05/19';

/*QUERY 3*//*Returnați numele, prenumele și țara 
tuturor angajaților care nu se află în Statele Unite.*/
SELECT LastName, FirstName, Country
FROM Employees
WHERE Country <> 'USA';


/*QUERY 4*/ /*Returnați ID-ul angajatului, ID-ul comenzii, ID-ul clientului, Required Date si Shipped Date, 
a tuturor comenzilor care au fost expediate mai târziu decât au fost solicitate (Shipped Date > Required Date).*/
SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
FROM  Orders
WHERE ShippedDate > RequiredDate;


/*QUERY 5*/ /*Returnați orașul, numele companiei și numele de contact al tuturor
clienților care se află în orașe care încep cu „A” sau „B*/
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' Or City LIKE 'B%';


/*QUERY 6*//*Returnați toate comenzile care au un cost de transport
mai mare de 500 USD.*/
SELECT *
FROM orders
WHERE Freight > 500;

/*QUERY 7*//*Returnați numele produsului, unitățile în stoc (UnitsInStock), unitățile pe comandă (UnitsOnOrder) și 
ReorderLevel a tuturor produselor care sunt disponibile pentru recomandă.*/
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM Products
WHERE ReorderLevel <> 0;
sau
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM dbo.Products
WHERE ReorderLevel > 0

/*QUERY 8*//*Returnați numele companiei, numele de contact și numărul de fax al
tuturor clienților care au un număr de fax.*/
SELECT CompanyName, ContactName, Fax
FROM customers
WHERE Fax IS NOT NULL;


/*QUERY 9*//*Returnați numele și prenumele tuturor angajaților 
care nu raportează nimănui (ReportsTo).*/
SELECT LastName,FirstName, ReportsTo
FROM Employees
WHERE ReportsTo IS NULL;

/*QUERY 10*//*Returnați numele companiei, numele contactului și numărul de fax al
tuturor clienților care au un număr de fax;  sortați după numele companiei.*/
SELECT CompanyName, ContactName, Fax
FROM customers
WHERE Fax IS NOT NULL
ORDER BY CompanyName;

/*QUERY 11*//*Returnați orașul, numele companiei și numele de contact ale tuturor clienților care se află în 
orașe care încep cu „A” sau „B”; sortați după numele contactului descendent.*/
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' Or City LIKE 'B%'
Order BY ContactName DESC;

/*QUERY 12*//*Returnați numele și prenumele tuturor angajaților 
ale căror nume încep cu o literă între „J” și „M”.*/
SELECT LastName, FirstName
FROM Employees
WHERE LastName LIKE '[J-M]%';
