Create Procedure SelectALLCust @Country nvarchar(30)
AS
SELECT * FROM Customers Where Country = @Country
