/*

[MDF Dosyasýnýn Yapýsý]

MDF dosyalar Page'lerden oluþur.
Page dosyalarýn boyutu [8KB]'dýr ve deðiþtirilemez.

Önemli!!!
- 8 KB'lýk alanda 1000 satýr varsa ve eðer buradan 1 satýr bile alýnacaksa mutlaka 1000 satýr okunacak/taranacaktýr.
- 1 satýr 2 Page'e bölünemez. Satýr page'e sýðmak zorunda.
- 1 satýr (satýr ve sütun) veri 8KB'dan büyük olamaz.
- NVARCHAR(MAX) gibi deðiþkenler 2gb'a kadar veri saklayabilirler. Fakat 2gb 1 page i aþacaðý için yalnýzca adresi tutulmaktadýr. Bu deðiþken (nvarchar) heap'te tutulur.
- 8KB'nýn içerisi adreslenemez. Yani bu page deki þu adresi teslim et gibi bir durum söz konusu deðildir.
- Tablo page'lerin toplamýndan oluþmaktadýr.
- Page'ler 2 mantýksal bölgeden oluþur:
	- Non-Leaf
		- Adresleme bölgesidir.
	- Leaf
		- Gerçek verilerin (satýr-satýr) tutulduðu bölge leaf'tir

- MDF dosyasýnýn kapasitesi dolduðunda Auto Growth ya mb cinsinden ya da oran cinsinden verilerek büyüme saðlanabilir.
- Default'ta dosya büyüme boyutu 1mb'týr.
- MDF, NDF, LDF dosyalar her büyümede diskte boþ olan sýralý ilk alana yazacaktýr. Ve her büyümede en son alan neresiyse oradan depolamaya devam edecektir. Bu yüzden parçalanmalar yaþanabilir ve performans düþer
- MDF, NDF, LDF disk üzerinden birden fazla alanlarda saklanabilir.

[Öneri]
- Data File'larýn 40 GB'ý aþmamasý önerilir.

*/