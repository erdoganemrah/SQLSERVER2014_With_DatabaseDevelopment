USE BTAkademiDB
GO

--UPDATE Persons.Musteri
--SET Yasi = Yasi + 1
--WHERE Yasi IN (SELECT TOP 2 Yasi FROM Persons.Musteri ORDER BY Yasi DESC)

-- From'lu kullanýmý

--UPDATE M
--SET Yasi = Yasi + 1
--FROM (SELECT TOP 2 * FROM Persons.Musteri ORDER BY Yasi Desc) AS M

INSERT INTO Persons.Musteri(TCNo,Adi,Soyadi,Yasi)
OUTPUT inserted.MusteriID
VALUES('85965','Osman','Buran',36)

SELECT SCOPE_IDENTITY(), @@IDENTITY

SELECT * FROM Persons.Musteri

UPDATE Persons.Musteri
SET Yasi = Yasi + 3
OUTPUT inserted.MusteriID, inserted.Adi, deleted.Yasi AS EskiYasi, inserted.Yasi AS YeniYasi
WHERE Yasi < 55