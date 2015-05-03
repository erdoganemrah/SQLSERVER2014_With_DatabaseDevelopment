/*

[Constraint - K�s�tlar]

- Primary Key Constraint
Bir alan� primary key olarak elde etmeye �al��t���m�z faydalar �unlard�r:
	- O alana benzeri veri bir daha girilemez.
	- O alan�n bo� b�rak�lamamas�.
	- Primary Key olu�turmak tablonun fiziksel yap�s�n� etkilemez.
	- �ki alan� kapsayan primary key olabilir.
	- Primary key alanlar�n otomatik say� olmas� �nerilir.

- Unique Key Constraint
Primary Key ile �ok benze�ir. Tek fark� unique yine benzer veri girilemez. Bir sefer null girilebilir.

- Check Constraint
Bir alana kontrol ifadesi yaz�lmas�yla olu�turulur. Bu y�zden her veri giri�inde (insert, update, delete) performans� olumsuz etkiler.

- Default Constraint
Bir alana veri insert edilirken de�er girilmezse yerine belirlenen varsay�lan de�er girilir.

- Foreign Key Constraint
* Foreign Key
	- �ki tablo aras�ndaki ili�ki oldu�unu s�ylemektir.
	- Foreign Key, ili�kinin �ok taraf�ndaki tabloda olmal�d�r.
	- 1-1 ili�kide daha az �nemli olan tabloda yer almal�d�r.
	- �o�unlukla, Foreign Key kar��l���nda Primary ya da Unique Key yer almaktad�r. Fakat olmak zorunda da de�ildir.


*/