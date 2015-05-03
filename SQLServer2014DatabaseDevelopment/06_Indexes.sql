/*

[Clustered Index]

- Primary Key, Clustered Index deðildir. SSMS tarafýndan otomatik oluþturulur.
- Tabloda mutlaka clustered index olmalýdýr.
- Clustered index olmayan tablolar heap tablolardýr.
- Tabloyu fiziksel olarak sýraya sokan, asýl tablonun fiziksel sýrasýný, fiziksel haritasýný belirleyen indextir.
- Tablo tek olduðu için clustered indexte bir tanedir.
- Bir tabloda iki tane clustered index bulunamaz.
- Tablonun kendisini ifade eder. Ayrýca index için tablo barýndýrmaz.
- Primary Key ile karýþtýrýlmasýnýn sebebi, Clustered index olmayan tablo önerilmediði için eðer tabloda CI yoksa primary ya da unique key tanýmlanýrsa primary key olarak belirlenen alana CI tanýmlanýr.
- Hangi alanlara uygulamamýz gerekiyor? Nelere dikkat etmemiz gerekiyor?
- Unique olmasýna gerek yoktur.
- Large object olamaz. (Nvarchar(max), varbinary(max) vb. olamaz.)
- Küçük boyutlu, artan sýrada (ileriye doðru giden) olan bir alan CI olarak seçilmelidir.
- Oluþturulacak non-clustered indexler CI'ý referans alacaðý için CI'in deðiþtirilmesi büyük iþlem yüküne neden olacaktýr.
- Eðer CI deðiþtirilecekse, yeni bir tablo oluþturup eski tablonun yeni tabloya insert edilip eski tablonun silinmesi daha uygun olacaktýr.
- Squence Identifier NEWSEQUENTIALID() ile uniqueidentifier'dan daha performanslýdýr.
- .Net tarafýnda araþtýr!! NEWSEQUENTIALID()

[Non-Clustered Index]

- Clustered index haricinde ihtiyaç duyulan alanlar için tanýmlanan index tipidir.
- Non-Clustered Index, Clustered Index referansýyla arama yapar. Yani non-clustered belirlenen field(lar) ve clustered index field'ý ile arama yapar.
- Fiziksel olarak ayrýca bir tablo oluþturur.


*/