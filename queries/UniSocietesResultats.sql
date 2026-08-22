SELECT
  TBLSOCIETESRESULTATS.SocResSocNum,
  TBLSOCIETESRESULTATS.SocResSemNum,
  TBLSOCIETESRESULTATS.SocResRempNbISO As SocResNbISO,
  TBLSOCIETESRESULTATS.SocResRempNbTHEMA As SocResNbTHEMA,
  TBLSOCIETESRESULTATS.SocResRempNbChd As SocResNbChd
FROM
  TBLSOCIETESRESULTATS
WHERE
  TBLSOCIETESRESULTATS.SocResRempNbChd > 0
UNION
SELECT
  AnaSocietesResultats.SocResSocNum,
  AnaSocietesResultats.SocResSemNum,
  AnaSocietesResultats.SocResNbISO As SocResNbISO,
  AnaSocietesResultats.SocResNbTHEMA As SocResNbTHEMA,
  AnaSocietesResultats.SocResNbChd As SocResNbChd
FROM
  AnaSocietesResultats;
