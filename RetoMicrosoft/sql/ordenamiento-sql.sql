SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
ORDER BY Category ASC, Price DESC;

/* para recuperar solo los 10 productos más costosos de la tabla Production.Product*/
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

/* para recuperar solo los 10 productos más costosos de la tabla Production.Product, se acepta repetidos*/
SELECT TOP 10 WITH TIES Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT ProductID, ProductName, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC 
OFFSET 10 ROWS --Skip 10 rows
FETCH NEXT 10 ROWS ONLY; --Get the next 10

SELECT DISTINCT City, CountryRegion
FROM Production.Supplier
ORDER BY CountryRegion, City;

/*Filtrado de datos*/

SELECT DISTINCT City, CountryRegion
FROM Production.Supplier
ORDER BY CountryRegion, City;


SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID = 2
    OR ProductCategoryID = 3
    OR ProductCategoryID = 4;


/* esto es igual que:*/

SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ProductCategoryID IN (2, 3, 4);



SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ListPrice >= 1.00
    AND ListPrice <= 10.00;

/*esto es igual que*/
SELECT ProductCategoryID AS Category, ProductName
FROM Production.Product
WHERE ListPrice BETWEEN 1.00 AND 10.00;


SELECT Name, ListPrice
FROM SalesLT.Product
WHERE Name LIKE '%mountain%';

/*el comidin _ indica que si debe ser desde el inicio*/
SELECT ProductName, ListPrice
FROM SalesLT.Product
WHERE ProductName LIKE 'Mountain Bike Socks, _';