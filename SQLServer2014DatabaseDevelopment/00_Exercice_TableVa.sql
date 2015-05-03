
DECLARE @MusteriTable TABLE
(
	MusteriID int,
	Ad nvarchar(20),
	Soyad nvarchar(20)
)

insert into @MusteriTable values(1,'Emrah','Erdoðan')
,(2,'Süleyman','Toktaþ')
,(3,'Nadir','Gökbakan')

select * from @MusteriTable

update @MusteriTable
set Ad = 'Gökhan' where MusteriID = 2

select * from @MusteriTable