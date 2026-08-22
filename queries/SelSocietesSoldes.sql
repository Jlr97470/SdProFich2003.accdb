SELECT
  TBLMOUVEMENTS.MvtSocNum,
  Sum(TBLMOUVEMENTS.MvtDebit) AS TotalDebit,
  Sum(TBLMOUVEMENTS.MvtCredit) AS TotalCredit,
  Sum([MvtCredit] - [MvtDebit]) AS Solde
FROM
  TBLMOUVEMENTS
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) <> 4
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum
ORDER BY
  TBLMOUVEMENTS.MvtSocNum;
