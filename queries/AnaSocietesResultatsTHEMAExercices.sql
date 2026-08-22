TRANSFORM
  IIf(
    IsNull(
      Sum([SocResNbTHEMA])
    ),
    0,
    Sum([SocResNbTHEMA])
  ) AS NbTHEMA
SELECT
  UniSocietesResultats.SocResSocNum,
  Sum(
    IIf(
      IsNull([SocResNbTHEMA]),
      0,
      [SocResNbTHEMA]
    )
  ) AS SocResNbTHEMATotal
FROM
  TBLEXERCICES
  RIGHT JOIN (
    UniSocietesResultats
    LEFT JOIN TBLSEMESTRES ON UniSocietesResultats.SocResSemNum = TBLSEMESTRES.SemNum
  ) ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
GROUP BY
  UniSocietesResultats.SocResSocNum
PIVOT
  "SocResNbTHEMA" & [ExeExercice] In (
    "SocResNbTHEMA2000", "SocResNbTHEMA2001",
    "SocResNbTHEMA2002", "SocResNbTHEMA2003",
    "SocResNbTHEMA2004"
  );
