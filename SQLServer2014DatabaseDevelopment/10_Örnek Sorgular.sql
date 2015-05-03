--USE AdventureWorks2014

--DBCC FREEPROCCACHE

--SELECT * FROM Production.Product

--SELECT * FROM sys.dm_exec_cached_plans AS cp
--CROSS APPLY
--sys.dm_exec_sql_text(cp.plan_handle)

--SELECT Color AS Renk, COUNT(*) AS [Ürün Sayýsý]
--FROM Production.Product
--WHERE ListPrice > 500 AND Color <> 'Red'
--GROUP BY Color
--HAVING COUNT(*) > 5
--ORDER BY Renk

--IF 1 = 0
--BEGIN
--	SELECT 1
--END
--ELSE
--BEGIN
--	SELECT 'Not'
--END

--DECLARE @counter int = 0

--WHILE @counter < (SELECT COUNT(*) FROM Production.Product WHERE Color = 'Red')
--BEGIN

--	PRINT 'Color : ' + CAST(@counter + 1 AS NVARCHAR)
--	SET @counter = @counter + 1

--	IF @counter = 15
--	BEGIN
--		BREAK
--	END

--END

