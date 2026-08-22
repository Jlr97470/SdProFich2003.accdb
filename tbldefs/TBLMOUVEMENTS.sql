CREATE TABLE [TBLMOUVEMENTS] (
  [MvtNum] AUTOINCREMENT CONSTRAINT [CleMvtNum] UNIQUE,
  [MvtSocNum] LONG,
  [MvtExeNum] BYTE,
  [MvtMvtNatNum] BYTE,
  [MvtDossier] LONG,
  [MvtDate] DATETIME,
  [MvtIntitule] VARCHAR (100),
  [MvtDebit] LONG,
  [MvtCredit] LONG,
  [MvtQuantite] LONG,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([MvtSocNum], [MvtExeNum], [MvtMvtNatNum], [MvtDossier])
)
