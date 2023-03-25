SELECT CAST(ProductID AS varchar(4)) + ': ' + Name AS ProductName
FROM Production.Product;

SELECT * FROM SalesLT.Product;

SELECT Name, StandardCost, ListPriceFROM SalesLT.Product;

SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductNameFROM SalesLT.Product; 

SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductNameFROM SalesLT.Product; 

SELECT SellStartDate,   CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,   CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDateFROM SalesLT.Product; 

SELECT Name, TRY_CAST(Size AS Integer) AS NumericSizeFROM SalesLT.Product; 
SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetailsFROM SalesLT.Product;
SELECT Name, NULLIF(Color, 'Multi') AS SingleColorFROM SalesLT.Product;
SELECT Name,    
    CASE        
    WHEN SellEndDate IS NULL THEN 'Currently for sale'        
    ELSE 'No longer available'    
    END AS SalesStatusFROM SalesLT.Product;
SELECT * FROM SalesLT.Customer

SELECT Title,FirstName,MiddleName,LastName,Suffix FROM SalesLT.Customer

SELECT SalesPerson, Title + FirstName AS CustomerName, Phone from SalesLT.Customer

SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;