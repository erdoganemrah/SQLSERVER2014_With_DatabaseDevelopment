/*

[Schema]

- G�venlik grubudur.
- Login'ler ortak bile�enlerdir. SQL Server'�n genelinde ge�erlidir.
- Master veri taban�nda tan�ml�d�r.
- Database d�zeyinde de�ildir.
- Database'lerde users k�sm� mevcuttur. �lgili loginin database'de tan�ml� bir kar��l��� olmal�d�r. Login ile ayn� isminde olmayabilir. Login ile user map edilir.
- dbo user'� d��ar�dan sysadmin rol�yle gelen kullan�c�lar� kar��lamak amac�yla bulunmaktad�r.
- Security Log ara�t�r!!!
- Bir kullan�c� bir nesneye ula�mak istiyorsa ve e�er nesne kullan�c�n�n default schema's� i�erisindeyse schema yazmaya gerek yoktur.
- Ownership Zinciri ara�t�r!!! (Ayn� �emada olan objelerin birbirleriyle olan ili�kileriyle ilgili bir kavram)

*/