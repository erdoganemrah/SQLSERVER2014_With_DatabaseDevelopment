USE AdventureWorks2014
GO

/* SQL Server 2012 Lead ve Lag Fonksiyonlar� */
/*
[LEAD]

- �leri Do�ru kendinden bir sonraki kayd�n listelenmesini sa�lar.

[LAG]

- Geri Do�ru kendinden bir �nceki kayd�n listelenmesini sa�lar.

*/
/* Eski Y�ntem */
--SELECT YEAR(SOH.OrderDate) AS Y�l
--, SUM(SOH.TotalDue) AS Ciro
--, (SELECT SUM(TotalDue) FROM Sales.SalesOrderHeader WHERE YEAR(OrderDate) = YEAR(SOH.OrderDate) - 1) AS GecenYilCiro
--FROM Sales.SalesOrderHeader AS SOH
--GROUP BY YEAR(SOH.OrderDate)
--ORDER BY Y�l

/* Yeni Y�ntem */
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
	  Y�l			= YEAR(SOH.OrderDate)
	, Ay			= MONTH(SOH.OrderDate)
	, Ciro			= SUM(SOH.TotalDue)
	, GecenYilCiro	= LAG(SUM(SOH.TotalDue),1,0) OVER(PARTITION BY YEAR(SOH.OrderDate) ORDER BY YEAR(SOH.OrderDate), MONTH(SOH.OrderDate))

FROM Sales.SalesOrderHeader AS SOH
GROUP BY YEAR(SOH.OrderDate), MONTH(SOH.OrderDate)