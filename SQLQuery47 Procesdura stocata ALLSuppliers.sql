Create Procedure SelectALLSuppliers @City nvarchar(30)
AS
SELECT * FROM Suppliers Where City = @City