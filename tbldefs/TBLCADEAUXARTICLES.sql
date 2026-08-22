CREATE TABLE [TBLCADEAUXARTICLES] (
  [CadArtNum] AUTOINCREMENT CONSTRAINT [CleCadArtNum] UNIQUE,
  [CadArtExeNum] BYTE,
  [CadArtRef] VARCHAR (11),
  [CadArtDescription] VARCHAR (70),
  [CadArtPoints] LONG,
  [CadArtGerer] BYTE,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([CadArtExeNum], [CadArtRef])
)
