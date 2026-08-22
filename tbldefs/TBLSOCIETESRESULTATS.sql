CREATE TABLE [TBLSOCIETESRESULTATS] (
  [SocResSocNum] LONG,
  [SocResSemNum] BYTE,
  [SocResNbChd] SHORT,
  [SocResNbISO] SHORT,
  [SocResNbTHEMA] SHORT,
  [SocResRempNbChd] SHORT,
  [SocResRempNbISO] SHORT,
  [SocResRempNbTHEMA] SHORT,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([SocResSocNum], [SocResSemNum])
)
