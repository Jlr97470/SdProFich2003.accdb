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
  "SocResNbTHEMA" & [ExeExercice] & "S" & [SemExeSemNum] In (
    "SocResNbTHEMA2000S1", "SocResNbTHEMA2000S2",
    "SocResNbTHEMA2001S1", "SocResNbTHEMA2001S2",
    "SocResNbTHEMA2002S1", "SocResNbTHEMA2002S2",
    "SocResNbTHEMA2003S1", "SocResNbTHEMA2003S2",
    "SocResNbTHEMA2004S1", "SocResNbTHEMA2004S2"
  );
