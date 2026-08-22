SELECT
  UniSocietesResultats.SocResSocNum,
  UniSocietesResultats.SocResSemNum,
  TBLSEMESTRES.SemLibelle,
  UniSocietesResultats.SocResNbChd,
  UniSocietesResultats.SocResNbISO,
  UniSocietesResultats.SocResNbTHEMA
FROM
  UniSocietesResultats
  INNER JOIN TBLSEMESTRES ON UniSocietesResultats.SocResSemNum = TBLSEMESTRES.SemNum
ORDER BY
  UniSocietesResultats.SocResSocNum,
  UniSocietesResultats.SocResSemNum DESC;
