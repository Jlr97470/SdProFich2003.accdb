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
  "SocResNbISO" & [ExeExercice] In (
    "SocResNbISO2000", "SocResNbISO2001",
    "SocResNbISO2002", "SocResNbISO2003",
    "SocResNbISO2004"
  );
