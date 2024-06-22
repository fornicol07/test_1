/*QUERY 1 ALIAS, COUNT, Inner, Group BY _ 
Afiseaza nr de produse din fiecare categorie, grupate dupa categoryName*/
Select Categories.CategoryName, COUNT (*) AS ProductsNumber /*COUNT (Products.ProductID) AS ProductsNumber*/
From Products
INNER JOIN Categories on Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName

/*QUERY 2_1 ALIAS, COUNT, HAVING _ 
numarul de clienti din fiecare tara daca numarul
de clienti din tara respectiva este mai mare de 5*/
SELECT Customers.Country, COUNT (Customers.CustomerID) AS NumarClienti
FROM Customers
GROUP BY Customers.Country
HAVING COUNT(customers.CustomerID) > 5
Order BY Customers.Country

/*QUERY 2_2 ALIAS, COUNT, HAVING _ 
numarul de clienti din fiecare tara daca numarul
de clienti din tara respectiva este mai mic de 5*/
SELECT Customers.Country, COUNT (Customers.CustomerID) AS NumarClienti
FROM Customers
GROUP BY Customers.Country
HAVING COUNT(Customers.CustomerID) = 5
Order BY Customers.Country

/*QUERY 2_3 ALIAS, COUNT, HAVING _ 
numarul de clienti din fiecare tara daca numarul
de clienti din tara respectiva este = cu 5*/
SELECT Customers.Country, COUNT (Customers.CustomerID) AS NumarClienti
FROM Customers
GROUP BY Customers.Country
HAVING COUNT(Customers.CustomerID) = 5
Order BY Customers.Country