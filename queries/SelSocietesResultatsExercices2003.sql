SELECT
  UniSocietesResultats.SocResSocNum,
  TBLEXERCICES.ExeNum,
  TBLEXERCICES.ExeExercice,
  Sum(
    UniSocietesResultats.SocResNbChd
  ) AS SocResNbChd,
  Sum(
    UniSocietesResultats.SocResNbISO
  ) AS SocResNbISO,
  Sum(
    UniSocietesResultats.SocResNbTHEMA
  ) AS SocResNbTHEMA
FROM
  TBLEXERCICES
  INNER JOIN (
    UniSocietesResultats
    INNER JOIN TBLSEMESTRES ON UniSocietesResultats.SocResSemNum = TBLSEMESTRES.SemNum
  ) ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
WHERE
  (
    (
      (TBLEXERCICES.ExeExercice) = 2003
    )
  )
GROUP BY
  UniSocietesResultats.SocResSocNum,
  TBLEXERCICES.ExeNum,
  TBLEXERCICES.ExeExercice;
