CREATE TABLE [TBLMENU] (
  [MenuGroupeNum] BYTE,
  [MenuNum] BYTE,
  [MenuLibelle] VARCHAR (100),
  [MenuMacroToRun] VARCHAR (100),
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([MenuGroupeNum], [MenuNum])
)
