/*

	Aggregate Window Function
	- 2008'de de mevcut.

*/

/* Eski Yöntem */
SELECT		  SiparisID		= SalesOrderID
			, MusteriID		= CustomerID
			, SiparisTarihi	= OrderDate
			, SiparisTutari = SUM(TotalDue)
			, SiparisOrani	= SUM(TotalDue) / (SELECT SUM(TotalDue)
												FROM Sales.SalesOrderHeader
												WHERE SOH.CustomerID = CustomerID)

FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID IN (29811, 29761, 29489)
GROUP BY SalesOrderID, CustomerID, OrderDate
ORDER BY MusteriID, SiparisID

/* Yeni Yöntem */
SELECT		  SiparisID		= SalesOrderID
			, MusteriID		= CustomerID
			, SiparisTarihi	= OrderDate
			, SiparisTutari = TotalDue
			, SiparisOrani	= TotalDue / SUM(TotalDue) OVER(PARTITION BY CustomerID) * 100

FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID IN (29811, 29761, 29489)
ORDER BY MusteriID, SiparisID

/* Bakiye :) */
-- Benzersiz bir alan olduðunda (SalesOrderID)
SELECT		  SiparisID		= SalesOrderID
			, MusteriID		= CustomerID
			, SiparisTarihi	= CONVERT(VARCHAR,OrderDate,103)
			, SiparisTutari = TotalDue
			, Bakiye		= SUM(TotalDue) OVER (ORDER BY SalesOrderID)

FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID = 11019

-- Benzersiz bir alan yoksa
SELECT		  MusteriID		= CustomerID
			, SiparisTarihi	= CONVERT(VARCHAR,OrderDate,103)
			, SiparisTutari = TotalDue
			, Bakiye		= SUM(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID = 11019

-- Son 3 sipariþe oraný
SELECT		  MusteriID		= CustomerID
			, SiparisTarihi	= CONVERT(VARCHAR,OrderDate,103)
			, SiparisTutari = TotalDue
			, Bakiye		= SUM(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
			, Son3SiparisOran= SUM(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN 3 PRECEDING AND CURRENT ROW)
FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID = 11019

-- 2 Ýleri Satýr
SELECT		  MusteriID		= CustomerID
			, SiparisTarihi	= CONVERT(VARCHAR,OrderDate,103)
			, SiparisTutari = TotalDue
			, Bakiye		= SUM(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
			, Son3SiparisOran= SUM(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN 3 PRECEDING AND 2 FOLLOWING)
FROM Sales.SalesOrderHeader AS SOH
WHERE CustomerID = 11019
