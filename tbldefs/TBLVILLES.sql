CREATE TABLE [TBLVILLES] (
  [VilNum] AUTOINCREMENT CONSTRAINT [CleVilNum] UNIQUE,
  [VilCodePostal] VARCHAR (5),
  [VilNom] VARCHAR (50),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([VilCodePostal], [VilNom])
)
