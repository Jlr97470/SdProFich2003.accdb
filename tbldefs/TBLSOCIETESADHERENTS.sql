CREATE TABLE [TBLSOCIETESADHERENTS] (
  [SocAdhNum] AUTOINCREMENT,
  [SocAdhSocNum] LONG,
  [SocAdhExeNum] BYTE,
  [SocAdhDate] DATETIME,
  [SocAdhEtat] BIT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([SocAdhSocNum], [SocAdhExeNum], [SocAdhDate])
)
