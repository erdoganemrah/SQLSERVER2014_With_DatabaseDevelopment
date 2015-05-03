/*

[MDF Dosyas�n�n Yap�s�]

MDF dosyalar Page'lerden olu�ur.
Page dosyalar�n boyutu [8KB]'d�r ve de�i�tirilemez.

�nemli!!!
- 8 KB'l�k alanda 1000 sat�r varsa ve e�er buradan 1 sat�r bile al�nacaksa mutlaka 1000 sat�r okunacak/taranacakt�r.
- 1 sat�r 2 Page'e b�l�nemez. Sat�r page'e s��mak zorunda.
- 1 sat�r (sat�r ve s�tun) veri 8KB'dan b�y�k olamaz.
- NVARCHAR(MAX) gibi de�i�kenler 2gb'a kadar veri saklayabilirler. Fakat 2gb 1 page i a�aca�� i�in yaln�zca adresi tutulmaktad�r. Bu de�i�ken (nvarchar) heap'te tutulur.
- 8KB'n�n i�erisi adreslenemez. Yani bu page deki �u adresi teslim et gibi bir durum s�z konusu de�ildir.
- Tablo page'lerin toplam�ndan olu�maktad�r.
- Page'ler 2 mant�ksal b�lgeden olu�ur:
	- Non-Leaf
		- Adresleme b�lgesidir.
	- Leaf
		- Ger�ek verilerin (sat�r-sat�r) tutuldu�u b�lge leaf'tir

- MDF dosyas�n�n kapasitesi doldu�unda Auto Growth ya mb cinsinden ya da oran cinsinden verilerek b�y�me sa�lanabilir.
- Default'ta dosya b�y�me boyutu 1mb't�r.
- MDF, NDF, LDF dosyalar her b�y�mede diskte bo� olan s�ral� ilk alana yazacakt�r. Ve her b�y�mede en son alan neresiyse oradan depolamaya devam edecektir. Bu y�zden par�alanmalar ya�anabilir ve performans d��er
- MDF, NDF, LDF disk �zerinden birden fazla alanlarda saklanabilir.

[�neri]
- Data File'lar�n 40 GB'� a�mamas� �nerilir.

*/