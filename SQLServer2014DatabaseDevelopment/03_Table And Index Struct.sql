/*

[Tablo ve Index Yap�s�]

- Primary File Group'ta tablo tutulmamas� �nerilir.
- Primary File Group'ta metadatalar tutulmaktad�r.
- Her Page'in sonunda bir pointer bulunmaktad�r. Bu pointer bir sonraki page'in ba�lang�� noktas�n� belirler.
- Her Page'in 3'l� adresleme sistemi vard�r. 40:50:1 gibi.
- Table mimarisi Heap ve Clustered Index Table olarak ayr�l�r.
- �o�ul isim verilmemeli. �rne�in, Musteriler. Entity Framework'te Musterilers �eklinde �evrilebilir.
- Tablolarda large object alanlar ayr� bir filegroup'ta regular field'lar ayr� bir filegroup'ta bulunabilir.

- Heap Table:
	- Heap Table olmas�n :)
	- Leaf ve Non-Leaf, Page'ler bulunur.
	- Her kay�t, son kayd�n sonuna eklenir.
	- Adresleme vs. yapmaz.
	- Gelen kay�t s�ras�na g�re eklenir, insert performans� y�ksektir.
	- Non-leaf b�lgede kayd�n hash-code'u tutulur.
	- Tablo s�ral� olmad��� i�in select, update ve delete performans� d���kt�r.
	- Herhangi bir sorgulamada t�m tablo taran�r.

- Clustered Index Table:
	- B�nyesinde Clustered Index bulunan tablodur.
	- Primary Key ve Clustered Index ayn� yap� de�ildir.
	******************************
	* ID	Ad�	Soyad�	Ya��
	* [CI]
	* [CI]
	* [CI]
	* [CI]
	******************************
	- Clustered Index tan�mland���nda Non-Leaf (MAP)'e belirli aral�klardaki veriler Leaf'teki adreslemeyi tutar.
	- Fiziksel olarak clustered Index bir tabloda en fazla bir tane olabilir. ��nk� bir tablo bir s�tuna g�re s�ralanabilir.
	- Arama yaparken CI'e g�re, t�m tabloyu taramadan istenilen kayda ula��labilir.
	- Select, Insert, Update, Delete performans� verimlidir.

[Tablo Tasar�m Teknikleri]
RDBMS : Relational Database Management System (�li�kili Veri Taban� Y�netim Sistemi)

- Normalizasyon
	- Neresi sabit, neresi de�i�ken belirlenir ve ayr�l�r.
	- Sabit ve de�i�ken alanlar ayr� tablolarda tutulur.
	- Sabit ve de�i�ken alanlar birbirine ID ya da Key ile ba�lan�r.
	- ID'ler 2'ye ayr�l�r.
		- Business ID
			- Bak�ld���nda anlaml� ifadeler i�eren ID'lerdir.
			- �rne�in �r�n kodu, m��teri kodu gibi.
			- Say�sal alanlar daha performansl� sorgulan�r.
			- Arama (Select) performanslar�n� d���rebilir.
			- 1-1 ya da 1-N ili�ki kurabilir.
			- 1-1 ili�kide bir tablodaki veri bir sat�r i�in 8KB'� a��yorsa ili�kili bir tabloda ayr�ca tutulmas� gerekebilir.
		- Surragete ID
			- Ara�t�r
- Denormalizasyon

- Tablo 4 ana b�l�mde incelenir.
	- Field Tasar�m�
		- Yer alacak alanlar� isimlendirilmesi ve tasar�m�
			- Say� ile ba�lamayacak
			- Alan isimlerinde Pascal notasyonu kullan�labilir. E�er 2 kelimeden olu�uyorsa �rne�in AdiSoyadi �eklinde olabilir.
			- Alan isimlerinde reserve keyword kullanmamaya dikkat edilmelidir.
			- Future rezerve keyword'da kullan�lmamal�d�r. �rne�in result.
	- Veri T�rleri
		- Saklanacak veri i�in ilgili veri t�r�n�n se�ilmesi
		- Data Type'lar 4+1'e ayr�l�r.
			- Say�sal
				- Tam Say�
					- tinyit -> byte
					- bit -> true/false (bool)
					- smallint -> short
					- int
					- bigint -> uint
				- Yakla��k (K�s�ratl�)
					- real
					- float
					- decimal (k�s�ratl� i�lemlerde decimal kesinlikle tercih edilmeli)
					- numeric (decimal ile ayn�d�r, geriye do�ru uyum nedeniyle)
					- sql_variant
					- smallmoney (real'in yerine ge�er)
					- money (float'un yerine ge�er, verimi float ve decimal'dan y�ksektir.)
			- Metinsel
				- Metinsel veri t�rlerinde dikkat etmemiz gereken noktlar:
				- "n" ifadesi
				- "var" ifadesi
				- "size" ifadesi
				- char(10)	: 10 karakterlik yer ayr�l�r, e�er 5 karakterlik bir de�er girilirse eksik girilen karakter kadar bo�luk at�l�r.
				- varchar	: (var ifadesi variable->de�i�kenden gelmektedir.). Eksik karakterler i�in bo�luk atanmaz. Atanan de�er kadar yer kaplar.
				- nvarchar	: n -> unicode'un k�saltmas�d�r. Her karakter 2 byte yer tutar. Veri tan�mlan�rken N prefix eklenmesi gerekmektedir.
				- nvarchar(max) : 2 GB'a kadar veri saklanabilir.
				- xml -> nvarchar(max) ile ayn� niteliktedir. 2 GB'a kadar veri saklayabilir. XML �ema tan�mlanabilir. SQL Server 2000'de yoktur. .Net entegrasyonu ile gelmektedir.
			- Zamansal
				- 2008 sonras�nda ciddi anlamda geli�mi�tir.
				- 2008 �ncesinde smalldatetime ve datetime veri t�rleri vard�.
				- smalldatetime	: 1.1.1900 - 6.6.2079, zaman noktas�nda saniyeye kadar inilebiliyor. 4 byte yer kaplar.
				- datetime		: 1.1.1753 - 31.12.2999. Zaman noktas�nda salise hassasiyeti mevcuttur. 8 byte yer kaplamaktad�r.
				- date			: 1.1.1000 - 31.12.2999. 3 byte yer kaplar.
				- time
				- datetimeoffset: GMT'e (UTC) g�re veri saklan�r.
			- Geometri
				- Geometrik �ekil ve �eklin d�nya �zerindeki koordinat bilgisini tutabilmektedir.
			- Ceografik Veri T�rleri - Spatial (2008 itibariyle geldi.)
				- 
			- Di�erleri
				- UniqueIdentifier (GUID)
				- NEWID() fonksiyonu ile olu�turulur. Asl�nda say�sal bir de�erdir. Hexadecimal 16'l�k say� sistemine g�re de�er al�r.
				- Hierarchyid -> Self Reference, Parent-Child Tablolar
				- Binary -> ikili sistem. (Large Object)
					- Kriptolanm�� verilerin saklanmas�
					- Tabloda ses saklanacaksa varbinary(max) kullan�labilir. 2 GB'a kadar veri saklanabilir.
					- Eski s�r�mlerde image veri t�r� vard�r fakat kullan�lmamas� �nerilir.
				- Timestamp -> her de�i�imde zaman damgas� kullan�l�r.
	- Constaint
		- K�s�tlay�c�lar ve kurallar
	- Tablolar Aras� �li�ki
		- Relation

*/
