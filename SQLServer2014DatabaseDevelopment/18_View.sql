/*
[View]

Not:
Ctrl + Shift + R -> IntelliSense'i refresh eder.
CREATE iþlemlerinde kendisinden önce bir kod varsa hata verir.
GO'dan önce GO'dan sonra deðiþkenler temizlenir.

- 2 amaç için oluþturulmuþ olabilirler.
	- Karmaþýk sql sorgusunu t-sql ile kullanýma sunmak.
	- Güvenlik amacýyla oluþturulmuþ olabilirler.
	
- Indexed deðil ise bünyelerinde veri bulundurmazlar.
- Update, Delete, Insert edilebilir.
- User Defined View ve System View olarak 2'ye ayrýlýr.
- Genellikle ön ek olarak "v" harfi verilmektedir.
- Tablolarda ve diðer objelerde olduðu gibi þema barýndýrýrlar.
- Viewler ORDER BY desteklemez.
- Ýçeriði kriptolamak için WITH ENCRYPTION söz dizimi kullanýlýr.
- Viewler eðer update, insert (dml) amacýyla kullanmak isteniyorsa
- Eðer çoklu tablo varsa view içerisinde, update edilen alan birden fazla tabloyu etkiliyorsa hata verecektir.
- Indexed View

*/