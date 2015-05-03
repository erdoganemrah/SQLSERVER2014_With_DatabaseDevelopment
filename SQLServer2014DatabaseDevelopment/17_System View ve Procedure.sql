/*

System View ve Procedure
- DM : Dynamic Management
- Metadata bileþenleri

*/

SELECT * FROM sys.servers
SELECT * FROM sys.databases

SELECT T.object_id, S.name, T.name FROM sys.tables AS T
INNER JOIN sys.schemas AS S
ON T.schema_id = S.schema_id
ORDER BY 1, 2

SELECT * FROM sys.all_objects

sp_help 'Production.Product'

sp_who
sp_who2