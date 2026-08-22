SELECT
  TBLMOUVEMENTS.MvtSocNum,
  TBLMOUVEMENTS.MvtExeNum,
  TBLEXERCICES.ExeLibelle,
  Sum(
    IIf(
      [MvtQuantite] < 0, [MvtQuantite], 0
    )
  ) AS TotalDebit,
  Sum(
    IIf(
      [MvtQuantite] > 0, [MvtQuantite], 0
    )
  ) AS TotalCredit,
  Sum(TBLMOUVEMENTS.MvtQuantite) AS Solde
FROM
  TBLEXERCICES
  INNER JOIN TBLMOUVEMENTS ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) = 4
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLMOUVEMENTS.MvtExeNum,
  TBLEXERCICES.ExeLibelle
ORDER BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLMOUVEMENTS.MvtExeNum;
