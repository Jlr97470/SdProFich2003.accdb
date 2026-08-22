CREATE TABLE [TBLMACHINESCONNEXIONS] (
  [ConNum] AUTOINCREMENT CONSTRAINT [CleConNum] UNIQUE,
  [ConMacNum] LONG,
  [ConIP] VARCHAR (15),
  [ConDate] DATETIME,
  [ConHeure] DATETIME,
  [ConDateFin] DATETIME,
  [ConHeureFin] DATETIME,
  [ConInterface] VARCHAR (200),
  [ConRefere] VARCHAR (200),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([ConDate], [ConHeure], [ConIP])
)
