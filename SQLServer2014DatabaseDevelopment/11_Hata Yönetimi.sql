/*

[Hata Y�netimi]

- Design Time Hatas�
- Run-Time Hatas�

- RAISEERROR
	- Var olan hata mesajlar� i�in kullan�l�r.
	- @@ERROR, ERROR_NUMBER(), ERROR_MESSAGE(), ERROR_SEVERITY(), ERROR_STATE()
- THROW
- Custom hata kodlar� 51.000'den ba�lamaktad�r.

*/

BEGIN TRY
	SELECT 10/10
	SELECT 20/10
	SELECT 10/30
	SELECT 10/0
END TRY

BEGIN CATCH
	SELECT 'HATA', ERROR_NUMBER(), ERROR_MESSAGE(), ERROR_SEVERITY(), ERROR_STATE();
	THROW 51000,'S�f�ra b�l�nme hatas�!',1
END CATCH

SELECT * FROM sys.messages

RAISERROR(14002,10,1,600)