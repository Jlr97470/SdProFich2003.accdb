CREATE TABLE [TBLMACHINES] (
  [MacNum] AUTOINCREMENT CONSTRAINT [CleMacNum] UNIQUE,
  [MacNom] VARCHAR (50) CONSTRAINT [CleMacNom] UNIQUE,
  [MacUtilisateur] VARCHAR (50),
  [MacDomaine] VARCHAR (50),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([MacNom], [MacUtilisateur], [MacDomaine])
)
