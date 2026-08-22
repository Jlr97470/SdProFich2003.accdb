CREATE TABLE [TBLSOCIETESQUESTIONNAIRES] (
  [SocQstNum] AUTOINCREMENT,
  [SocQstSocQstTypNum] LONG,
  [SocQstSocNum] LONG,
  [SocQstDateSaisie] DATETIME,
  [SocQstNotes] LONGTEXT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([SocQstSocQstTypNum], [SocQstSocNum])
)
