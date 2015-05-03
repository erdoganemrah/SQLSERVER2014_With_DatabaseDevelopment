/*

[Clustered Index]

- Primary Key, Clustered Index de�ildir. SSMS taraf�ndan otomatik olu�turulur.
- Tabloda mutlaka clustered index olmal�d�r.
- Clustered index olmayan tablolar heap tablolard�r.
- Tabloyu fiziksel olarak s�raya sokan, as�l tablonun fiziksel s�ras�n�, fiziksel haritas�n� belirleyen indextir.
- Tablo tek oldu�u i�in clustered indexte bir tanedir.
- Bir tabloda iki tane clustered index bulunamaz.
- Tablonun kendisini ifade eder. Ayr�ca index i�in tablo bar�nd�rmaz.
- Primary Key ile kar��t�r�lmas�n�n sebebi, Clustered index olmayan tablo �nerilmedi�i i�in e�er tabloda CI yoksa primary ya da unique key tan�mlan�rsa primary key olarak belirlenen alana CI tan�mlan�r.
- Hangi alanlara uygulamam�z gerekiyor? Nelere dikkat etmemiz gerekiyor?
- Unique olmas�na gerek yoktur.
- Large object olamaz. (Nvarchar(max), varbinary(max) vb. olamaz.)
- K���k boyutlu, artan s�rada (ileriye do�ru giden) olan bir alan CI olarak se�ilmelidir.
- Olu�turulacak non-clustered indexler CI'� referans alaca�� i�in CI'in de�i�tirilmesi b�y�k i�lem y�k�ne neden olacakt�r.
- E�er CI de�i�tirilecekse, yeni bir tablo olu�turup eski tablonun yeni tabloya insert edilip eski tablonun silinmesi daha uygun olacakt�r.
- Squence Identifier NEWSEQUENTIALID() ile uniqueidentifier'dan daha performansl�d�r.
- .Net taraf�nda ara�t�r!! NEWSEQUENTIALID()

[Non-Clustered Index]

- Clustered index haricinde ihtiya� duyulan alanlar i�in tan�mlanan index tipidir.
- Non-Clustered Index, Clustered Index referans�yla arama yapar. Yani non-clustered belirlenen field(lar) ve clustered index field'� ile arama yapar.
- Fiziksel olarak ayr�ca bir tablo olu�turur.


*/