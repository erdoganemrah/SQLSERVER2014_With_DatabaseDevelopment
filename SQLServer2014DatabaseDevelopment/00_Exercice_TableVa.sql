
DECLARE @MusteriTable TABLE
(
	MusteriID int,
	Ad nvarchar(20),
	Soyad nvarchar(20)
)

insert into @MusteriTable values(1,'Emrah','Erdo�an')
,(2,'S�leyman','Tokta�')
,(3,'Nadir','G�kbakan')

select * from @MusteriTable

update @MusteriTable
set Ad = 'G�khan' where MusteriID = 2

select * from @MusteriTable