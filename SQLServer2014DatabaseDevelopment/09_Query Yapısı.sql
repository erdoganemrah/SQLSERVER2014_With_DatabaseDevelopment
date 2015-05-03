/*

[Query]

- Parse iþlemi
	- Söz dizimi kontrol ediliyor.

- Object resl.
	- Sorguda kullanýlan nesnelerin varlýðýnýn kontrolü

- Query Optimizer (Engine)
	- Sorgu, SQL Server tarafýnda belirli incelemelerde, performans kriterlerinden geçirilerek en verimli nasýl çalýþtýrýlacaðýnýn planý yapýlýr. 
	- Olasý planlar verilir. (Execution Plan)
	- Join sayýsý kadar örneðin 4 join varsa 4! (faktöriyel) olasý plan vardýr.
	- Verime göre öncelik sýrasý belirlenir.
	- Öncelikle istatistikler incelenir. Tablolardaki verilerin büyüklüðünün vb. saklandýðý tablolar incelenir.
	- Bu adýmlardan sonra en iyi execution plan oluþturulur.
	- Bu execution planý exec plan havuzuna atýyor.
	- Query'nin hash i ile exec plan eþleþtirip Plan Buffer (plan belleði)'ýna atar.

- Compile
	- Seçilen exec plan compile ediliyor.

- Execute
	- Sorgu çalýþtýrýlýyor.

[Önemli]
	- Eðer query daha önce saklanan planlar içerisinde varsa tekrar diðer adýmlar geçilerek execute ediliyor.
	- Execution planlar her restart'ta temizlenir.
	- DMV (Dynamic Management View)
	- SELECT * FROM sys.dm_exec_cached_plans
	- SELECT * FROM sys.dm_exec_cached_plans AS cp
				CROSS APPLY
				sys.dm_exec_sql_text(cp.plan_handle)
	- DBCC FREEPROCCACHE

[Query Çalýþma Sýrasý - Logic Order]
	- From
	- Where
	- Group By
	- Having
	- Select
	- Order By

*/