SELECT
  TBLMOUVEMENTS.MvtSocNum,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2001Sem1,
  [PointISO2001Sem1] - [SoldeISO2001Sem1] AS UtilISO2001Sem1,
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
  ) AS SoldeISO2001Sem1,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2001,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2001Sem2,
  [PointISO2001Sem2] - [SoldeISO2001Sem2] AS UtilISO2001Sem2,
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
  ) AS SoldeISO2001Sem2,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2002Sem1,
  [PointISO2002Sem1] - [SoldeISO2002Sem1] AS UtilISO2002Sem1,
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
  ) AS SoldeISO2002Sem1,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2002,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2002Sem2,
  [PointISO2002Sem2] - [SoldeISO2002Sem2] AS UtilISO2002Sem2,
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
  ) AS SoldeISO2002Sem2,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2003Sem1,
  [PointISO2003Sem1] - [SoldeISO2003Sem1] AS UtilISO2003Sem1,
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
  ) AS SoldeISO2003Sem1,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2003,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2003Sem2,
  [PointISO2003Sem2] - [SoldeISO2003Sem2] AS UtilISO2003Sem2,
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
  ) AS SoldeISO2003Sem2,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "1er") = True
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2004Sem1,
  [PointISO2004Sem1] - [SoldeISO2004Sem1] AS UtilISO2004Sem1,
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
  ) AS SoldeISO2004Sem1,
  IIf(
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    ) < 0,
    0,
    Sum(
      IIf(
        InStr([MvtIntitule], "2nd") = True
        And [ExeExercice] = 2004,
        [MvtQuantite],
        0
      )
    )
  ) AS PointISO2004Sem2,
  [PointISO2004Sem2] - [SoldeISO2004Sem2] AS UtilISO2004Sem2,
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
  ) AS SoldeISO2004Sem2
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
