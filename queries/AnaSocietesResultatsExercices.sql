TRANSFORM
  IIf(
    IsNull(
      Sum([SocResNbChd])
    ),
    0,
    Sum([SocResNbChd])
  ) AS NbChd
SELECT
  UniSocietesResultats.SocResSocNum,
  Sum(
    IIf(
      IsNull([SocResNbChd]),
      0,
      [SocResNbChd]
    )
  ) AS SocResNbChdTotal
FROM
  TBLEXERCICES
  RIGHT JOIN (
    UniSocietesResultats
    LEFT JOIN TBLSEMESTRES ON UniSocietesResultats.SocResSemNum = TBLSEMESTRES.SemNum
  ) ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
GROUP BY
  UniSocietesResultats.SocResSocNum
PIVOT
  "SocResNbChd" & [ExeExercice] In (
    "SocResNbChd2000", "SocResNbChd2001",
    "SocResNbChd2002", "SocResNbChd2003",
    "SocResNbChd2004"
  );
