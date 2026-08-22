SELECT
  TBLMOUVEMENTS.MvtSocNum,
  TBLSEMESTRES.SemExeNum,
  TBLSEMESTRES.SemExeSemNum,
  TBLSEMESTRES.SemLibelle,
  Max(
    IIf(
      [MvtQuantite] > 0
      And (
        (
          [SemExeSemNum] = 1
          And InStr([MvtIntitule], "1er") > 0
        )
        Or (
          [SemExeSemNum] = 2
          And InStr([MvtIntitule], "2nd") > 0
        )
      ),
      [MvtQuantite],
      0
    )
  ) AS Credit,
  Sum(
    IIf(
      [MvtQuantite] < 0, [MvtQuantite], 0
    )
  ) AS TotalDebit,
  Sum(
    IIf(
      [MvtQuantite] > 0, [MvtQuantite], 0
    )
  ) AS TotalCredit
FROM
  (
    TBLEXERCICES
    INNER JOIN TBLMOUVEMENTS ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
  )
  INNER JOIN TBLSEMESTRES ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) = 4
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLSEMESTRES.SemExeNum,
  TBLSEMESTRES.SemExeSemNum,
  TBLSEMESTRES.SemLibelle
ORDER BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLSEMESTRES.SemExeNum;
