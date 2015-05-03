/*
[Hat�rlat!!!]
- Stored Procedure taraf�nda hat�rlat�lacak.
- Programatik obje anlat�ld���nda, temp table lar nas�l davran�r hat�rlat�lacak.

[User Defined Type]

* Data Type & Type
- Database d�zeyinde tan�mlan�r.
- User-Defined Data Types ve User-Defined Types

* Rule
- Bir data type'a rule verildi�i zaman update, insert ve delete i�lemlerinde performans olumsuz etkilenebilir.
* Temp Table
- 2'ye ayr�lmaktad�r.
	- Bellek tabanl� tablolar. (1000 �zerinde kay�tlarda �nerilmiyor.)	
	- Temp Table (daha performansl�!!)
		- Local
			- Ge�erli session'da ge�erlidir.
			- Di�er ba�l� olan userlar g�r�nt�leyemez.
			- Session bitti�inde local temp table silinecektir.
		- Global
			- T�m sessionlar i�in ge�erlidir.
			- Session kapand���nda silinecektir.
	- tempdb'ler h�zl� disklerde (SSD, 10K) daha performansl� olacakt�r.
*/

--sp_configure 'clr enabled', 1
--reconfigure

--create rule dbo.Kural1
--as
--@range >= 100 AND @range < 200

--create default dbo.Default1
--as
/*expression*/