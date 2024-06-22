
CREATE PROCEDURE SelectALLCustomers @City nvarchar(30)
AS
Select * FROM Customers WHERE city = @city