SELECT
  TBLMOUVEMENTS.MvtSocNum,
  TBLEXERCICES.ExeLibelle,
  IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [MvtDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [MvtDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        [MvtQuantite],
        0
      )
    )
  ) AS MvtISOSem1,
  Sum(
    IIf(
      InStr([MvtIntitule], "2nd") = True
      And [MvtDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      [MvtQuantite],
      0
    )
  ) + IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [MvtDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        [MvtQuantite],
        0
      )
    ) < 0,
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [MvtDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        [MvtQuantite],
        0
      )
    ),
    0
  ) AS MvtISOSem2
FROM
  TBLEXERCICES
  INNER JOIN TBLMOUVEMENTS ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) = 4
    )
    AND (
      (TBLEXERCICES.ExeNum) > 2
    )
    AND (
      (TBLMOUVEMENTS.MvtDate) <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      )
    )
  )
  OR (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) = 4
    )
    AND (
      (TBLEXERCICES.ExeNum) > 2
    )
    AND (
      (TBLMOUVEMENTS.MvtDate) <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      )
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLEXERCICES.ExeLibelle
HAVING
  (
    (
      (
        IIf(
          Sum(
            IIf(
              (
                InStr([MvtIntitule], "1er") = True
                Or InStr([MvtIntitule], "2nd") = False
              )
              And [MvtDate] <= CVDate(
                DLookUp(
                  "ParValeur", "TBLPARAMETRESGENERAUX",
                  "ParType='RELEVE' AND ParCode='DATEFIN'"
                )
              ),
              [MvtQuantite],
              0
            )
          ) < 0,
          0,
          Sum(
            IIf(
              (
                InStr([MvtIntitule], "1er") = True
                Or InStr([MvtIntitule], "2nd") = False
              )
              And [MvtDate] <= CVDate(
                DLookUp(
                  "ParValeur", "TBLPARAMETRESGENERAUX",
                  "ParType='RELEVE' AND ParCode='DATEFIN'"
                )
              ),
              [MvtQuantite],
              0
            )
          )
        )
      ) > 0
    )
  )
  OR (
    (
      (
        Sum(
          IIf(
            InStr([MvtIntitule], "2nd") = True
            And [MvtDate] <= CVDate(
              DLookUp(
                "ParValeur", "TBLPARAMETRESGENERAUX",
                "ParType='RELEVE' AND ParCode='DATEFIN'"
              )
            ),
            [MvtQuantite],
            0
          )
        ) + IIf(
          Sum(
            IIf(
              (
                InStr([MvtIntitule], "1er") = True
                Or InStr([MvtIntitule], "2nd") = False
              )
              And [MvtDate] <= CVDate(
                DLookUp(
                  "ParValeur", "TBLPARAMETRESGENERAUX",
                  "ParType='RELEVE' AND ParCode='DATEFIN'"
                )
              ),
              [MvtQuantite],
              0
            )
          ) < 0,
          Sum(
            IIf(
              (
                InStr([MvtIntitule], "1er") = True
                Or InStr([MvtIntitule], "2nd") = False
              )
              And [MvtDate] <= CVDate(
                DLookUp(
                  "ParValeur", "TBLPARAMETRESGENERAUX",
                  "ParType='RELEVE' AND ParCode='DATEFIN'"
                )
              ),
              [MvtQuantite],
              0
            )
          ),
          0
        )
      ) > 0
    )
  );
