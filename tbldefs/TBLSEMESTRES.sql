CREATE TABLE [TBLSEMESTRES] (
  [SemNum] BYTE CONSTRAINT [CleSemNum] UNIQUE,
  [SemExeNum] BYTE,
  [SemExeSemNum] BYTE,
  [SemDebut] DATETIME,
  [SemFin] DATETIME,
  [SemLibelle] VARCHAR (50),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([SemExeNum], [SemExeSemNum])
)
