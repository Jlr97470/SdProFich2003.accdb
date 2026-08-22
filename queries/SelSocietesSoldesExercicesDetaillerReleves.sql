SELECT
  TBLMOUVEMENTS.MvtSocNum,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2002
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2002RelevesDebut,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2002
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2002RelevesDebut,
  [TotalCredit2002RelevesDebut] - [TotalDebit2002RelevesDebut] AS Solde2002RelevesDebut,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2002
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2002RelevesFin,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2002
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2002RelevesFin,
  [TotalCredit2002RelevesFin] - [TotalDebit2002RelevesFin] AS Solde2002RelevesFin,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2003
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2003RelevesDebut,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2003
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2003RelevesDebut,
  [TotalCredit2003RelevesDebut] - [TotalDebit2003RelevesDebut] AS Solde2003RelevesDebut,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2003
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2003RelevesFin,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2003
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2003RelevesFin,
  [TotalCredit2003RelevesFin] - [TotalDebit2003RelevesFin] AS Solde2003RelevesFin,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2004
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2004RelevesDebut,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2004
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2004RelevesDebut,
  [TotalCredit2004RelevesDebut] - [TotalDebit2004RelevesDebut] AS Solde2004RelevesDebut,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [ExeExercice] = 2004
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebit2004RelevesFin,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [ExeExercice] = 2004
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCredit2004RelevesFin,
  [TotalCredit2004RelevesFin] - [TotalDebit2004RelevesFin] AS Solde2004RelevesFin,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebitRelevesDebut,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCreditRelevesDebut,
  [TotalCreditRelevesDebut] - [TotalDebitRelevesDebut] AS SoldeRelevesDebut,
  Sum(
    IIf(
      [MvtDebit] Is Not Null
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtDebit],
      0
    )
  ) AS TotalDebitRelevesFin,
  Sum(
    IIf(
      [MvtCredit] Is Not Null
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERALS",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtCredit],
      0
    )
  ) AS TotalCreditRelevesFin,
  [TotalCreditRelevesFin] - [TotalDebitRelevesFin] AS SoldeRelevesFin
FROM
  TBLEXERCICES
  RIGHT JOIN TBLMOUVEMENTS ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) <> 4
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum;
