/*

Tool: SQL Prompt -> RedGate

[SQL Server Versiyonlar�]

2005 -> 90 (.Net 2.0)
2008 -> 100 (.Net 3.0)
2008 R2 -> 105 (en yo�un kullan�lan versiyon, .Net 3.0, 3.5)
2012 -> 110 (.Net 4.0)
2014 -> 120 (.Net 4.0, 4.5)

[SQL Server Servis ve Bile�enleri]

* Servisler
- Data Engine
- Agent
- Full Text Search (Contains ve Full Text Fonksiyonlar�)
- SQL Server Browser (Shared)
- Integration Services (�zel olarak e�itim al�nacak!, bak�m, y�netim gibi i�lemler i�in gerekli olan servis, Shared)
- Analysis Services
- Reporting Services
- DQS (Data Quality Services)
- MDS (Master Data Services)
- Stream In Site (Yo�un I/O olan sistemlerde kullan�l�r. Turnike, ge�i� sistemleri vb.)

* Bile�enler
- SQL Server Configuration Manager (MMC)
- SQL Server Management Studio (DE -> YGS, AS -> YS, IS -> Y, SSRS -> Y)
- SQL Server Data Tools (T�m servisler i�in geli�tme yap�l�r. Eski ad� BIDS, Versiyonlama, �ema Takibi)
- Report Builder (SSRS Raporu Geli�tirmek)
- SQL Server Reporting Services Configuration Manager (SSRS -> Y)

SQL Server'a lokalden eri�en uygulamalar ve istemciler Shared Memory'den, d��ar�dan eri�en uygulama ve kullan�c�lar ise TCP/IP �zerinden eri�irler.

[Authentication & Authorization]
- Authentication : SQL Server'a ilgili kullan�c�n�n (giri�) ba�lan�p ba�lanamad���n� kontrol edilmesidir.
- Authorization : Kullan�c�n�n giri� yapt�ktan sonra hangi yetkilerde i�lem yapabilece�inin kontrol�d�r.
- SQL Server Auth. yani kullan�c� bilgileri (�rn. sa) master veri taban�nda saklanmaktad�r.

[Database �e�itleri]
- System Databases
- Resource Database
- UD Database (Kullan�c�lar�n olu�turdu�u database'ler)

[System Databases]
- master (SQL Server'a ait kullan�c� yetki ve bilgileri bu veri taban�nda saklan�r.)
- model (Yeni olu�turulacak veri tabanlar� bu veri taban�ndan kopyalanarak olu�turulur.)
- msdb (SQL Server Agent vs. gibi otomatik i�lemler i�in kullan�lan veri taban�d�r.)
- tempdb (SQL Server'�n sorgulama vb. i�lemler i�in ge�ici olarka �zerinde �al��t��� veri taban�d�r.)
 
- SQL Server'da fiziksel olarak veri tutan bile�enler tablo ve indexlerdir.
- Default olarak SQL Server Primary FileGroup olu�turur.

*/
