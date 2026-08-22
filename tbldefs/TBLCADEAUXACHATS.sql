CREATE TABLE [TBLCADEAUXACHATS] (
  [CadAchNum] AUTOINCREMENT CONSTRAINT [CleCadAchNum] UNIQUE,
  [CadAchSocNum] LONG,
  [CadAchDateSaisie] DATETIME,
  [CadAchHeureSaisie] DATETIME,
  [CadAchCadArtNum] LONG,
  [CadAchDate] DATETIME,
  [CadAchEtat] VARCHAR (8),
  [CadAchQuantite] LONG,
  [CadAchPoints] LONG,
  [CadAchAdrPerso] BIT,
  [CadAchDescription] VARCHAR (50),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([CadAchSocNum], [CadAchDateSaisie], [CadAchHeureSaisie], [CadAchCadArtNum])
)
