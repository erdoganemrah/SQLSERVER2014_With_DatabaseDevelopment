USE AdventureWorks2014
GO

-- Server Side Paging
-- Client Side Paging
-- Microsoft SQL Server 2012 High-Performance T-SQL Using Window Functions (Itzik Ben-Gan)

SELECT 
		ROW_NUMBER() OVER(ORDER BY ListPrice DESC) AS SiraNo
		, ProductID
		, Name
		, Color
		, ListPrice

FROM Production.Product

SELECT 
		ROW_NUMBER() OVER(PARTITION BY Color ORDER BY ListPrice DESC) AS SiraNo
		, ProductID
		, Name
		, Color
		, ListPrice

FROM Production.Product

SELECT 
ProductID
		, Name
		, Color
		, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY

SELECT 
ProductID
		, Name
		, Color
		, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
OFFSET 20 ROWS