SELECT
  SelSocietesSoldesISOSem.MvtSocNum,
  SelSocietesSoldesISOSem.SemExeNum,
  SelSocietesSoldesISOSem.SemExeSemNum,
  SelSocietesSoldesISOSem.SemLibelle,
  Switch(
    [SemExeSemNum] = 1,
    IIf(
      ([TotalDebit] + [Credit]) < 0,
      - [Credit],
      [TotalDebit]
    ),
    [SemExeSemNum] = 2,
    IIf(
      ([TotalCredit] + [TotalDebit]) < [Credit]
      And [Credit] > 0,
      [TotalCredit] + [TotalDebit] - [Credit],
      0
    )
  ) AS Debit,
  SelSocietesSoldesISOSem.Credit,
  SelSocietesSoldesISOSem.TotalDebit,
  SelSocietesSoldesISOSem.TotalCredit,
  [Credit] + [Debit] AS Solde
FROM
  SelSocietesSoldesISOSem;
