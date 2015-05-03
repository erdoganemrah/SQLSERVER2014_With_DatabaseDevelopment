/*

[Constraint - Kýsýtlar]

- Primary Key Constraint
Bir alaný primary key olarak elde etmeye çalýþtýðýmýz faydalar þunlardýr:
	- O alana benzeri veri bir daha girilemez.
	- O alanýn boþ býrakýlamamasý.
	- Primary Key oluþturmak tablonun fiziksel yapýsýný etkilemez.
	- Ýki alaný kapsayan primary key olabilir.
	- Primary key alanlarýn otomatik sayý olmasý önerilir.

- Unique Key Constraint
Primary Key ile çok benzeþir. Tek farký unique yine benzer veri girilemez. Bir sefer null girilebilir.

- Check Constraint
Bir alana kontrol ifadesi yazýlmasýyla oluþturulur. Bu yüzden her veri giriþinde (insert, update, delete) performansý olumsuz etkiler.

- Default Constraint
Bir alana veri insert edilirken deðer girilmezse yerine belirlenen varsayýlan deðer girilir.

- Foreign Key Constraint
* Foreign Key
	- Ýki tablo arasýndaki iliþki olduðunu söylemektir.
	- Foreign Key, iliþkinin çok tarafýndaki tabloda olmalýdýr.
	- 1-1 iliþkide daha az önemli olan tabloda yer almalýdýr.
	- Çoðunlukla, Foreign Key karþýlýðýnda Primary ya da Unique Key yer almaktadýr. Fakat olmak zorunda da deðildir.


*/