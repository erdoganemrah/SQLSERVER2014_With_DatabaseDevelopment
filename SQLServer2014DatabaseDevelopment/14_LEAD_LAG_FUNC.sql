USE AdventureWorks2014
GO

/* SQL Server 2012 Lead ve Lag Fonksiyonlarý */
/*
[LEAD]

- Ýleri Doðru kendinden bir sonraki kaydýn listelenmesini saðlar.

[LAG]

- Geri Doðru kendinden bir önceki kaydýn listelenmesini saðlar.

*/
/* Eski Yöntem */
--SELECT YEAR(SOH.OrderDate) AS Yýl
--, SUM(SOH.TotalDue) AS Ciro
--, (SELECT SUM(TotalDue) FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = YEAR(SOH.OrderDate) - 1) AS GecenYilCiro
--FROM Sales.SalesOrderHeader AS SOH
--GROUP BY YEAR(SOH.OrderDate)
--ORDER BY Yýl

/* Yeni Yöntem */
-- LEAD
SELECT SalesOrderID, OrderDate, CustomerID, TotalDue,
LEAD(TotalDue,1,0) OVER (ORDER BY OrderDate) AS SonrakiKayit
FROM Sales.SalesOrderHeader
WHERE CustomerID = 29992

--LAG
SELECT SalesOrderID, OrderDate, CustomerID, TotalDue,
LAG(TotalDue,1,0) OVER (ORDER BY OrderDate) AS OncekiKayit
FROM Sales.SalesOrderHeader
WHERE CustomerID = 29992

SELECT 
	  Yýl			= YEAR(SOH.OrderDate)
	, Ay			= MONTH(SOH.OrderDate)
	, Ciro			= SUM(SOH.TotalDue)
	, GecenYilCiro	= LAG(SUM(SOH.TotalDue),1,0) OVER(PARTITION BY YEAR(SOH.OrderDate) ORDER BY YEAR(SOH.OrderDate), MONTH(SOH.OrderDate))

FROM Sales.SalesOrderHeader AS SOH
GROUP BY YEAR(SOH.OrderDate), MONTH(SOH.OrderDate)