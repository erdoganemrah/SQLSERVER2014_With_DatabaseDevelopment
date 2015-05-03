/*
[Hatýrlat!!!]
- Stored Procedure tarafýnda hatýrlatýlacak.
- Programatik obje anlatýldýðýnda, temp table lar nasýl davranýr hatýrlatýlacak.

[User Defined Type]

* Data Type & Type
- Database düzeyinde tanýmlanýr.
- User-Defined Data Types ve User-Defined Types

* Rule
- Bir data type'a rule verildiði zaman update, insert ve delete iþlemlerinde performans olumsuz etkilenebilir.
* Temp Table
- 2'ye ayrýlmaktadýr.
	- Bellek tabanlý tablolar. (1000 üzerinde kayýtlarda önerilmiyor.)	
	- Temp Table (daha performanslý!!)
		- Local
			- Geçerli session'da geçerlidir.
			- Diðer baðlý olan userlar görüntüleyemez.
			- Session bittiðinde local temp table silinecektir.
		- Global
			- Tüm sessionlar için geçerlidir.
			- Session kapandýðýnda silinecektir.
	- tempdb'ler hýzlý disklerde (SSD, 10K) daha performanslý olacaktýr.
*/

--sp_configure 'clr enabled', 1
--reconfigure

--create rule dbo.Kural1
--as
--@range >= 100 AND @range < 200

--create default dbo.Default1
--as
/*expression*/