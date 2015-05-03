/*

[Hata Yönetimi]

- Design Time Hatasý
- Run-Time Hatasý

- RAISEERROR
	- Var olan hata mesajlarý için kullanýlýr.
	- @@ERROR, ERROR_NUMBER(), ERROR_MESSAGE(), ERROR_SEVERITY(), ERROR_STATE()
- THROW
- Custom hata kodlarý 51.000'den baþlamaktadýr.

*/

BEGIN TRY
	SELECT 10/10
	SELECT 20/10
	SELECT 10/30
	SELECT 10/0
END TRY

BEGIN CATCH
	SELECT 'HATA', ERROR_NUMBER(), ERROR_MESSAGE(), ERROR_SEVERITY(), ERROR_STATE();
	THROW 51000,'Sýfýra bölünme hatasý!',1
END CATCH

SELECT * FROM sys.messages

RAISERROR(14002,10,1,600)