SELECT
  TBLMOUVEMENTS.MvtSocNum,
  IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [ExeExercice] = 2001,
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
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    )
  ) AS MvtISO2001Sem1,
  Sum(
    IIf(
      InStr([MvtIntitule], "2nd") = True
      And [ExeExercice] = 2001,
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
        And [ExeExercice] = 2001,
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
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    ),
    0
  ) AS MvtISO2001Sem2,
  IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [ExeExercice] = 2002,
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
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    )
  ) AS MvtISO2002Sem1,
  Sum(
    IIf(
      InStr([MvtIntitule], "2nd") = True
      And [ExeExercice] = 2002,
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
        And [ExeExercice] = 2002,
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
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    ),
    0
  ) AS MvtISO2002Sem2,
  IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [ExeExercice] = 2003,
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
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    )
  ) AS MvtISO2003Sem1,
  Sum(
    IIf(
      InStr([MvtIntitule], "2nd") = True
      And [ExeExercice] = 2003,
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
        And [ExeExercice] = 2003,
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
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    ),
    0
  ) AS MvtISO2003Sem2,
  IIf(
    Sum(
      IIf(
        (
          InStr([MvtIntitule], "1er") = True
          Or InStr([MvtIntitule], "2nd") = False
        )
        And [ExeExercice] = 2004,
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
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    )
  ) AS MvtISO2004Sem1,
  Sum(
    IIf(
      InStr([MvtIntitule], "2nd") = True
      And [ExeExercice] = 2004,
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
        And [ExeExercice] = 2004,
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
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    ),
    0
  ) AS MvtISO2004Sem2
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
  TBLMOUVEMENTS.MvtSocNum;
