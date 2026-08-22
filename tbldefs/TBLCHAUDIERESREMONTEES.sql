CREATE TABLE [TBLCHAUDIERESREMONTEES] (
  [ChdRemNum] AUTOINCREMENT CONSTRAINT [CleChdRemNum] UNIQUE,
  [ChdRemSocNum] LONG,
  [ChdRemDate] DATETIME,
  [ChdRemHeure] DATETIME,
  [ChdRemSerie] VARCHAR (10) CONSTRAINT [CleChdRemSerie] UNIQUE,
  [ChdRemChdArtRef] VARCHAR (8),
  [ChdRemSemNum] BYTE,
  [ChdRemSD] DATETIME,
  [ChdRemServ] DATETIME,
  [ChdRemRemp] VARCHAR (50),
  [ChdRemBene] VARCHAR (50),
  [ChdRemDescription] VARCHAR (50),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([ChdRemSocNum], [ChdRemDate], [ChdRemHeure], [ChdRemSerie])
)
