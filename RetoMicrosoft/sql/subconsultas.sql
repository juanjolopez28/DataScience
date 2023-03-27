SELECT SalesOrderID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID = 
   (SELECT MAX(SalesOrderID)
    FROM Sales.SalesOrderHeader);

SELECT SalesOrderID, ProductID, OrderQty,
    (SELECT AVG(OrderQty)
     FROM SalesLT.SalesOrderDetail) AS AvgQty
FROM SalesLT.SalesOrderDetail
WHERE SalesOrderID = 
    (SELECT MAX(SalesOrderID)
     FROM SalesLT.SalesOrderHeader);


SELECT CustomerID, SalesOrderID
FROM Sales.SalesOrderHeader
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.Customer
    WHERE CountryRegion = 'Canada');

SELECT c.CustomerID, o.SalesOrderID
FROM Sales.Customer AS c
JOIN Sales.SalesOrderHeader AS o
    ON c.CustomerID = o.CustomerID
WHERE c. CountryRegion = 'Canada';


/*Una restricción que debe tener en cuenta es que cuando se usa una consulta anidada, los resultados 
devueltos al cliente solo pueden incluir columnas de la consulta externa.*/


/*CORRELACIONADAS*/
SELECT SalesOrderID, CustomerID, OrderDate
FROM SalesLT.SalesOrderHeader AS o1
WHERE SalesOrderID =
    (SELECT MAX(SalesOrderID)
     FROM SalesLT.SalesOrderHeader AS o2
     WHERE o2.CustomerID = o1.CustomerID)
ORDER BY CustomerID, OrderDate;


SELECT CustomerID, CompanyName, EmailAddress 
FROM Sales.Customer AS c 
WHERE EXISTS
(SELECT * 
  FROM Sales.SalesOrderHeader AS o
  WHERE o.CustomerID = c.CustomerID);


SELECT CustomerID, CompanyName, EmailAddress 
FROM SalesLT.Customer AS c 
WHERE NOT EXISTS
  (SELECT * 
   FROM SalesLT.SalesOrderHeader AS o
   WHERE o.CustomerID = c.CustomerID); 


/* LABORATORIO*/
SELECT MAX(UnitPrice)FROM SalesLT.SalesOrderDetail;
SELECT Name, ListPriceFROM SalesLT.Product
WHERE ListPrice >    
(SELECT MAX(UnitPrice)     FROM SalesLT.SalesOrderDetail);

SELECT DISTINCT ProductIDFROM SalesLT.SalesOrderDetail
WHERE OrderQty >= 20;

SELECT Name FROM SalesLT.Product
WHERE ProductID IN    
(SELECT DISTINCT ProductID     
FROM SalesLT.SalesOrderDetail     
WHERE OrderQty >= 20);

/*ESTO HACE LO MISMO*/
SELECT DISTINCT Name
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS o
    ON p.ProductID = o.ProductID
WHERE OrderQty >= 20;

/*CORRELACIONADAS*/

SELECT od.SalesOrderID, od.ProductID, od.OrderQtyFROM SalesLT.SalesOrderDetail AS od
WHERE od.OrderQty =    
(SELECT MAX(OrderQty)     FROM SalesLT.SalesOrderDetail AS d     
WHERE od.ProductID = d.ProductID)ORDER BY od.ProductID;

/*LABORATORIO*/
SELECT ProductID,Name,ListPrice FROM SalesLT.Product
WHERE ListPrice> 
(SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail)

/*CORRELACIONADAS*/
SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice,
    (SELECT AVG(o.UnitPrice)
     FROM SalesLT.SalesOrderDetail AS o
     WHERE p.ProductID = o.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS p
ORDER BY p.ProductID;

