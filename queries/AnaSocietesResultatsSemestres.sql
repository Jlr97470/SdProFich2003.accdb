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
  "SocResNbChd" & [ExeExercice] & "S" & [SemExeSemNum] In (
    "SocResNbChd2000S1", "SocResNbChd2000S2",
    "SocResNbChd2001S1", "SocResNbChd2001S2",
    "SocResNbChd2002S1", "SocResNbChd2002S2",
    "SocResNbChd2003S1", "SocResNbChd2003S2",
    "SocResNbChd2004S1", "SocResNbChd2004S2"
  );
