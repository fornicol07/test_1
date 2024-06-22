/*Query 1*/
select Distinct top 5 ContactName AS 'Customers'
FROM Customers

/*Query 2*/
select PRoductNAme, UnitPrice AS 'Price'
FROM Products
WHERE UnitPrice BETwEEN 10 AND 20

select PRoductNAme, UnitPrice AS 'Price'
FROM Products
WHERE UnitPrice >= 10 AND UnitPrice <= 20