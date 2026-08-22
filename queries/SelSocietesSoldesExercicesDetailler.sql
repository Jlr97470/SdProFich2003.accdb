SELECT
  TBLMOUVEMENTS.MvtSocNum,
  Sum(
    IIf(
      [ExeExercice] = 2001, [MvtDebit], 0
    )
  ) AS TotalDebit2001,
  Sum(
    IIf(
      [ExeExercice] = 2001, [MvtCredit],
      0
    )
  ) AS TotalCredit2001,
  [TotalCredit2001] - [TotalDebit2001] AS Solde2001,
  Sum(
    IIf(
      [ExeExercice] = 2002, [MvtDebit], 0
    )
  ) AS TotalDebit2002,
  Sum(
    IIf(
      [ExeExercice] = 2002, [MvtCredit],
      0
    )
  ) AS TotalCredit2002,
  [TotalCredit2002] - [TotalDebit2002] AS Solde2002,
  Sum(
    IIf(
      [ExeExercice] = 2003, [MvtDebit], 0
    )
  ) AS TotalDebit2003,
  Sum(
    IIf(
      [ExeExercice] = 2003, [MvtCredit],
      0
    )
  ) AS TotalCredit2003,
  [TotalCredit2003] - [TotalDebit2003] AS Solde2003,
  Sum(
    IIf(
      [ExeExercice] = 2004, [MvtDebit], 0
    )
  ) AS TotalDebit2004,
  Sum(
    IIf(
      [ExeExercice] = 2004, [MvtCredit],
      0
    )
  ) AS TotalCredit2004,
  [TotalCredit2004] - [TotalDebit2004] AS Solde2004
FROM
  TBLEXERCICES
  INNER JOIN TBLMOUVEMENTS ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) <> 4
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum;
