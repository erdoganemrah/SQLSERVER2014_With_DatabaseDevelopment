/*

[Tablo ve Index Yapýsý]

- Primary File Group'ta tablo tutulmamasý önerilir.
- Primary File Group'ta metadatalar tutulmaktadýr.
- Her Page'in sonunda bir pointer bulunmaktadýr. Bu pointer bir sonraki page'in baþlangýç noktasýný belirler.
- Her Page'in 3'lü adresleme sistemi vardýr. 40:50:1 gibi.
- Table mimarisi Heap ve Clustered Index Table olarak ayrýlýr.
- Çoðul isim verilmemeli. Örneðin, Musteriler. Entity Framework'te Musterilers þeklinde çevrilebilir.
- Tablolarda large object alanlar ayrý bir filegroup'ta regular field'lar ayrý bir filegroup'ta bulunabilir.

- Heap Table:
	- Heap Table olmasýn :)
	- Leaf ve Non-Leaf, Page'ler bulunur.
	- Her kayýt, son kaydýn sonuna eklenir.
	- Adresleme vs. yapmaz.
	- Gelen kayýt sýrasýna göre eklenir, insert performansý yüksektir.
	- Non-leaf bölgede kaydýn hash-code'u tutulur.
	- Tablo sýralý olmadýðý için select, update ve delete performansý düþüktür.
	- Herhangi bir sorgulamada tüm tablo taranýr.

- Clustered Index Table:
	- Bünyesinde Clustered Index bulunan tablodur.
	- Primary Key ve Clustered Index ayný yapý deðildir.
	******************************
	* ID	Adý	Soyadý	Yaþý
	* [CI]
	* [CI]
	* [CI]
	* [CI]
	******************************
	- Clustered Index tanýmlandýðýnda Non-Leaf (MAP)'e belirli aralýklardaki veriler Leaf'teki adreslemeyi tutar.
	- Fiziksel olarak clustered Index bir tabloda en fazla bir tane olabilir. Çünkü bir tablo bir sütuna göre sýralanabilir.
	- Arama yaparken CI'e göre, tüm tabloyu taramadan istenilen kayda ulaþýlabilir.
	- Select, Insert, Update, Delete performansý verimlidir.

[Tablo Tasarým Teknikleri]
RDBMS : Relational Database Management System (Ýliþkili Veri Tabaný Yönetim Sistemi)

- Normalizasyon
	- Neresi sabit, neresi deðiþken belirlenir ve ayrýlýr.
	- Sabit ve deðiþken alanlar ayrý tablolarda tutulur.
	- Sabit ve deðiþken alanlar birbirine ID ya da Key ile baðlanýr.
	- ID'ler 2'ye ayrýlýr.
		- Business ID
			- Bakýldýðýnda anlamlý ifadeler içeren ID'lerdir.
			- Örneðin ürün kodu, müþteri kodu gibi.
			- Sayýsal alanlar daha performanslý sorgulanýr.
			- Arama (Select) performanslarýný düþürebilir.
			- 1-1 ya da 1-N iliþki kurabilir.
			- 1-1 iliþkide bir tablodaki veri bir satýr için 8KB'ý aþýyorsa iliþkili bir tabloda ayrýca tutulmasý gerekebilir.
		- Surragete ID
			- Araþtýr
- Denormalizasyon

- Tablo 4 ana bölümde incelenir.
	- Field Tasarýmý
		- Yer alacak alanlarý isimlendirilmesi ve tasarýmý
			- Sayý ile baþlamayacak
			- Alan isimlerinde Pascal notasyonu kullanýlabilir. Eðer 2 kelimeden oluþuyorsa örneðin AdiSoyadi þeklinde olabilir.
			- Alan isimlerinde reserve keyword kullanmamaya dikkat edilmelidir.
			- Future rezerve keyword'da kullanýlmamalýdýr. Örneðin result.
	- Veri Türleri
		- Saklanacak veri için ilgili veri türünün seçilmesi
		- Data Type'lar 4+1'e ayrýlýr.
			- Sayýsal
				- Tam Sayý
					- tinyit -> byte
					- bit -> true/false (bool)
					- smallint -> short
					- int
					- bigint -> uint
				- Yaklaþýk (Küsüratlý)
					- real
					- float
					- decimal (küsüratlý iþlemlerde decimal kesinlikle tercih edilmeli)
					- numeric (decimal ile aynýdýr, geriye doðru uyum nedeniyle)
					- sql_variant
					- smallmoney (real'in yerine geçer)
					- money (float'un yerine geçer, verimi float ve decimal'dan yüksektir.)
			- Metinsel
				- Metinsel veri türlerinde dikkat etmemiz gereken noktlar:
				- "n" ifadesi
				- "var" ifadesi
				- "size" ifadesi
				- char(10)	: 10 karakterlik yer ayrýlýr, eðer 5 karakterlik bir deðer girilirse eksik girilen karakter kadar boþluk atýlýr.
				- varchar	: (var ifadesi variable->deðiþkenden gelmektedir.). Eksik karakterler için boþluk atanmaz. Atanan deðer kadar yer kaplar.
				- nvarchar	: n -> unicode'un kýsaltmasýdýr. Her karakter 2 byte yer tutar. Veri tanýmlanýrken N prefix eklenmesi gerekmektedir.
				- nvarchar(max) : 2 GB'a kadar veri saklanabilir.
				- xml -> nvarchar(max) ile ayný niteliktedir. 2 GB'a kadar veri saklayabilir. XML þema tanýmlanabilir. SQL Server 2000'de yoktur. .Net entegrasyonu ile gelmektedir.
			- Zamansal
				- 2008 sonrasýnda ciddi anlamda geliþmiþtir.
				- 2008 öncesinde smalldatetime ve datetime veri türleri vardý.
				- smalldatetime	: 1.1.1900 - 6.6.2079, zaman noktasýnda saniyeye kadar inilebiliyor. 4 byte yer kaplar.
				- datetime		: 1.1.1753 - 31.12.2999. Zaman noktasýnda salise hassasiyeti mevcuttur. 8 byte yer kaplamaktadýr.
				- date			: 1.1.1000 - 31.12.2999. 3 byte yer kaplar.
				- time
				- datetimeoffset: GMT'e (UTC) göre veri saklanýr.
			- Geometri
				- Geometrik þekil ve þeklin dünya üzerindeki koordinat bilgisini tutabilmektedir.
			- Ceografik Veri Türleri - Spatial (2008 itibariyle geldi.)
				- 
			- Diðerleri
				- UniqueIdentifier (GUID)
				- NEWID() fonksiyonu ile oluþturulur. Aslýnda sayýsal bir deðerdir. Hexadecimal 16'lýk sayý sistemine göre deðer alýr.
				- Hierarchyid -> Self Reference, Parent-Child Tablolar
				- Binary -> ikili sistem. (Large Object)
					- Kriptolanmýþ verilerin saklanmasý
					- Tabloda ses saklanacaksa varbinary(max) kullanýlabilir. 2 GB'a kadar veri saklanabilir.
					- Eski sürümlerde image veri türü vardýr fakat kullanýlmamasý önerilir.
				- Timestamp -> her deðiþimde zaman damgasý kullanýlýr.
	- Constaint
		- Kýsýtlayýcýlar ve kurallar
	- Tablolar Arasý Ýliþki
		- Relation

*/
