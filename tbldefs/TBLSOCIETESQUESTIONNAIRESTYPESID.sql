CREATE TABLE [TBLSOCIETESQUESTIONNAIRESTYPESID] (
  [SocQstTypIDNum] AUTOINCREMENT CONSTRAINT [CleSocQstTypIDNum] UNIQUE,
  [SocQstTypIDSocQstTypNum] LONG,
  [SocQstTypID] BYTE,
  [SocQstTypIDTypNum] BYTE,
  [SocQstTypIDLibelle] VARCHAR (255),
  [SocQstTypIDObligatoire] BIT,
  [SocQstTypIDMin] VARCHAR (255),
  [SocQstTypIDMax] VARCHAR (255),
  [SocQstTypIDMessage] LONGTEXT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([SocQstTypIDSocQstTypNum], [SocQstTypID])
)
