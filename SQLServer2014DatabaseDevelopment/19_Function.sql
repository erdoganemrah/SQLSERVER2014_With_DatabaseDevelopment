/*

[Function]

Not: Genellikle ufn/udf ile baþlamasý tercih edilir.
Template Explorer -> Ctrl + Shift + M
Ýlk çalýþtýrýldýklarýnda denetlenirler. Oluþturulduklarýnda kontrol edilmezler.

* Built-in
* System Function
* User Defined Function

[User Defined Function]
- Scalar
	- Select söz dizimiyle birlikte kullanýlabilir.
	- Geriye bir hücrelik deðer döndürür.
	- Parametre zorunlu deðildir.
	- T-SQL ile yazýlabilir.
	- Yalnýzca deðiþken tipi temp table'a UPDATE, INSERT, DELETE yapýlabilir.

- Aggregate
	- MAX, MIN, SUM, AVG gibi functionlardýr.
	- T-SQL ile yazýlamazlar.
	- .NET tarafýnda yazýlabilir.

- Table Valued
	- 2'ye ayrýlýr.
		- Inline
			- SELECT cümlesi yazýlýr.
			- INSERT, UPDATE, DELETE gibi DML iþlemler yapýlabilir.
			- Geriye tablo döner.
			- *** CROSS APPLY ve OUTER APPLY kullanýlmasý önemlidir.
		- Multi-Line
			- INSERT, UPDATE, DELETE gibi DML iþlemler yapýlabilir.
			- DDL iþlemler yapýlamaz.
			- Table Valued functionlar arka planda deðiþken tipi temp table kullanýr. Bu yüzden oldukça yavaþtýr.

*/