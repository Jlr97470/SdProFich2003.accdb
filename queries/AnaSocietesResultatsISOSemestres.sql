TRANSFORM
  IIf(
    IsNull(
      Sum([SocResNbISO])
    ),
    0,
    Sum([SocResNbISO])
  ) AS NbISO
SELECT
  UniSocietesResultats.SocResSocNum,
  Sum(
    IIf(
      IsNull([SocResNbISO]),
      0,
      [SocResNbISO]
    )
  ) AS SocResNbISOTotal
FROM
  TBLEXERCICES
  RIGHT JOIN (
    UniSocietesResultats
    LEFT JOIN TBLSEMESTRES ON UniSocietesResultats.SocResSemNum = TBLSEMESTRES.SemNum
  ) ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
GROUP BY
  UniSocietesResultats.SocResSocNum
PIVOT
  "SocResNbISO" & [ExeExercice] & "S" & [SemExeSemNum] In (
    "SocResNbISO2000S1", "SocResNbISO2000S2",
    "SocResNbISO2001S1", "SocResNbISO2001S2",
    "SocResNbISO2002S1", "SocResNbISO2002S2",
    "SocResNbISO2003S1", "SocResNbISO2003S2",
    "SocResNbISO2004S1", "SocResNbISO2004S2"
  );
