/*

[Query]

- Parse i�lemi
	- S�z dizimi kontrol ediliyor.

- Object resl.
	- Sorguda kullan�lan nesnelerin varl���n�n kontrol�

- Query Optimizer (Engine)
	- Sorgu, SQL Server taraf�nda belirli incelemelerde, performans kriterlerinden ge�irilerek en verimli nas�l �al��t�r�laca��n�n plan� yap�l�r. 
	- Olas� planlar verilir. (Execution Plan)
	- Join say�s� kadar �rne�in 4 join varsa 4! (fakt�riyel) olas� plan vard�r.
	- Verime g�re �ncelik s�ras� belirlenir.
	- �ncelikle istatistikler incelenir. Tablolardaki verilerin b�y�kl���n�n vb. sakland��� tablolar incelenir.
	- Bu ad�mlardan sonra en iyi execution plan olu�turulur.
	- Bu execution plan� exec plan havuzuna at�yor.
	- Query'nin hash i ile exec plan e�le�tirip Plan Buffer (plan belle�i)'�na atar.

- Compile
	- Se�ilen exec plan compile ediliyor.

- Execute
	- Sorgu �al��t�r�l�yor.

[�nemli]
	- E�er query daha �nce saklanan planlar i�erisinde varsa tekrar di�er ad�mlar ge�ilerek execute ediliyor.
	- Execution planlar her restart'ta temizlenir.
	- DMV (Dynamic Management View)
	- SELECT * FROM sys.dm_exec_cached_plans
	- SELECT * FROM sys.dm_exec_cached_plans AS cp
				CROSS APPLY
				sys.dm_exec_sql_text(cp.plan_handle)
	- DBCC FREEPROCCACHE

[Query �al��ma S�ras� - Logic Order]
	- From
	- Where
	- Group By
	- Having
	- Select
	- Order By

*/