/*

Tool: SQL Prompt -> RedGate

[SQL Server Versiyonlarý]

2005 -> 90 (.Net 2.0)
2008 -> 100 (.Net 3.0)
2008 R2 -> 105 (en yoðun kullanýlan versiyon, .Net 3.0, 3.5)
2012 -> 110 (.Net 4.0)
2014 -> 120 (.Net 4.0, 4.5)

[SQL Server Servis ve Bileþenleri]

* Servisler
- Data Engine
- Agent
- Full Text Search (Contains ve Full Text Fonksiyonlarý)
- SQL Server Browser (Shared)
- Integration Services (özel olarak eðitim alýnacak!, bakým, yönetim gibi iþlemler için gerekli olan servis, Shared)
- Analysis Services
- Reporting Services
- DQS (Data Quality Services)
- MDS (Master Data Services)
- Stream In Site (Yoðun I/O olan sistemlerde kullanýlýr. Turnike, geçiþ sistemleri vb.)

* Bileþenler
- SQL Server Configuration Manager (MMC)
- SQL Server Management Studio (DE -> YGS, AS -> YS, IS -> Y, SSRS -> Y)
- SQL Server Data Tools (Tüm servisler için geliþtme yapýlýr. Eski adý BIDS, Versiyonlama, Þema Takibi)
- Report Builder (SSRS Raporu Geliþtirmek)
- SQL Server Reporting Services Configuration Manager (SSRS -> Y)

SQL Server'a lokalden eriþen uygulamalar ve istemciler Shared Memory'den, dýþarýdan eriþen uygulama ve kullanýcýlar ise TCP/IP üzerinden eriþirler.

[Authentication & Authorization]
- Authentication : SQL Server'a ilgili kullanýcýnýn (giriþ) baðlanýp baðlanamadýðýný kontrol edilmesidir.
- Authorization : Kullanýcýnýn giriþ yaptýktan sonra hangi yetkilerde iþlem yapabileceðinin kontrolüdür.
- SQL Server Auth. yani kullanýcý bilgileri (örn. sa) master veri tabanýnda saklanmaktadýr.

[Database Çeþitleri]
- System Databases
- Resource Database
- UD Database (Kullanýcýlarýn oluþturduðu database'ler)

[System Databases]
- master (SQL Server'a ait kullanýcý yetki ve bilgileri bu veri tabanýnda saklanýr.)
- model (Yeni oluþturulacak veri tabanlarý bu veri tabanýndan kopyalanarak oluþturulur.)
- msdb (SQL Server Agent vs. gibi otomatik iþlemler için kullanýlan veri tabanýdýr.)
- tempdb (SQL Server'ýn sorgulama vb. iþlemler için geçici olarka üzerinde çalýþtýðý veri tabanýdýr.)
 
- SQL Server'da fiziksel olarak veri tutan bileþenler tablo ve indexlerdir.
- Default olarak SQL Server Primary FileGroup oluþturur.

*/
