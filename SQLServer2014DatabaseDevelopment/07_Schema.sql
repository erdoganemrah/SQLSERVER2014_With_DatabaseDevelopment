/*

[Schema]

- Güvenlik grubudur.
- Login'ler ortak bileþenlerdir. SQL Server'ýn genelinde geçerlidir.
- Master veri tabanýnda tanýmlýdýr.
- Database düzeyinde deðildir.
- Database'lerde users kýsmý mevcuttur. Ýlgili loginin database'de tanýmlý bir karþýlýðý olmalýdýr. Login ile ayný isminde olmayabilir. Login ile user map edilir.
- dbo user'ý dýþarýdan sysadmin rolüyle gelen kullanýcýlarý karþýlamak amacýyla bulunmaktadýr.
- Security Log araþtýr!!!
- Bir kullanýcý bir nesneye ulaþmak istiyorsa ve eðer nesne kullanýcýnýn default schema'sý içerisindeyse schema yazmaya gerek yoktur.
- Ownership Zinciri araþtýr!!! (Ayný þemada olan objelerin birbirleriyle olan iliþkileriyle ilgili bir kavram)

*/