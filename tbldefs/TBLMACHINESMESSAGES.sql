CREATE TABLE [TBLMACHINESMESSAGES] (
  [MacMesNumero] AUTOINCREMENT CONSTRAINT [CleMacMesNumero] UNIQUE,
  [MacMesExpNom] VARCHAR (50),
  [MacMesExpUtilisateur] VARCHAR (50),
  [MacMesExpDomaine] VARCHAR (50),
  [MacMesExpDate] DATETIME,
  [MacMesExpHeure] DATETIME,
  [MacMesNom] VARCHAR (50),
  [MacMesUtilisateur] VARCHAR (50),
  [MacMesDomaine] VARCHAR (50),
  [MacMesObject] VARCHAR (100),
  [MacMesSuject] LONGTEXT,
  [MacMesDate] DATETIME,
  [MacMesHeure] DATETIME,
  [MacMesCommande] BYTE,
  [MacMesAgent] BIT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([MacMesExpNom], [MacMesExpUtilisateur], [MacMesExpDomaine], [MacMesExpDate], [MacMesExpHeure])
)
