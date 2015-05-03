/*

[Function]

Not: Genellikle ufn/udf ile ba�lamas� tercih edilir.
Template Explorer -> Ctrl + Shift + M
�lk �al��t�r�ld�klar�nda denetlenirler. Olu�turulduklar�nda kontrol edilmezler.

* Built-in
* System Function
* User Defined Function

[User Defined Function]
- Scalar
	- Select s�z dizimiyle birlikte kullan�labilir.
	- Geriye bir h�crelik de�er d�nd�r�r.
	- Parametre zorunlu de�ildir.
	- T-SQL ile yaz�labilir.
	- Yaln�zca de�i�ken tipi temp table'a UPDATE, INSERT, DELETE yap�labilir.

- Aggregate
	- MAX, MIN, SUM, AVG gibi functionlard�r.
	- T-SQL ile yaz�lamazlar.
	- .NET taraf�nda yaz�labilir.

- Table Valued
	- 2'ye ayr�l�r.
		- Inline
			- SELECT c�mlesi yaz�l�r.
			- INSERT, UPDATE, DELETE gibi DML i�lemler yap�labilir.
			- Geriye tablo d�ner.
			- *** CROSS APPLY ve OUTER APPLY kullan�lmas� �nemlidir.
		- Multi-Line
			- INSERT, UPDATE, DELETE gibi DML i�lemler yap�labilir.
			- DDL i�lemler yap�lamaz.
			- Table Valued functionlar arka planda de�i�ken tipi temp table kullan�r. Bu y�zden olduk�a yava�t�r.

*/