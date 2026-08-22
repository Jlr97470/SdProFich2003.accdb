SELECT
  TBLMOUVEMENTS.MvtSocNum,
  IIf(
    TBLCHAUDIERESREMONTEES.ChdRemNum Is Not Null
    And TBLMOUVEMENTS.MvtMvtNatNum = 3,
    TBLCHAUDIERESREMONTEES.ChdRemServ,
    TBLMOUVEMENTS.MvtDate
  ) AS MvtDate,
  TBLMOUVEMENTS.MvtDate AS MvtMvtDate,
  TBLMOUVEMENTSNATURES.MvtNatCode,
  TBLMOUVEMENTS.MvtIntitule,
  Sum(
    IIf(
      [ExeExercice] = 2001, [MvtDebit], 0
    )
  ) AS MvtDebit2001,
  Sum(
    IIf(
      [ExeExercice] = 2002, [MvtDebit], 0
    )
  ) AS MvtDebit2002,
  Sum(
    IIf(
      [ExeExercice] = 2003, [MvtDebit], 0
    )
  ) AS MvtDebit2003,
  Sum(
    IIf(
      [ExeExercice] = 2004, [MvtDebit], 0
    )
  ) AS MvtDebit2004,
  Sum(
    IIf(
      [ExeExercice] = 2001, [MvtCredit],
      0
    )
  ) AS MvtCredit2001,
  Sum(
    IIf(
      [ExeExercice] = 2002, [MvtCredit],
      0
    )
  ) AS MvtCredit2002,
  Sum(
    IIf(
      [ExeExercice] = 2003, [MvtCredit],
      0
    )
  ) AS MvtCredit2003,
  Sum(
    IIf(
      [ExeExercice] = 2004, [MvtCredit],
      0
    )
  ) AS MvtCredit2004,
  Sum(
    IIf(
      [MvtMvtNatNum] = 3
      And [ChdArtGamme] = "ISO",
      3000, 0
    )
  ) AS MvtChdISO,
  Sum(
    IIf(
      [MvtMvtNatNum] = 3
      And (
        (
          Int([MvtCredit] / 1000) * 1000
        ) <> [MvtCredit]
      ),
      100,
      0
    )
  ) AS MvtChdRap,
  Max(TBLMOUVEMENTS.MvtQuantite) AS MvtQuantite,
  Max(TBLMOUVEMENTS.MvtNum) AS MaxDeMvtNum
FROM
  TBLMOUVEMENTSNATURES
  INNER JOIN (
    TBLEXERCICES
    INNER JOIN (
      TBLCHAUDIERESARTICLES
      RIGHT JOIN (
        TBLMOUVEMENTS
        LEFT JOIN TBLCHAUDIERESREMONTEES ON TBLMOUVEMENTS.MvtDossier = TBLCHAUDIERESREMONTEES.ChdRemNum
      ) ON TBLCHAUDIERESARTICLES.ChdArtRef = TBLCHAUDIERESREMONTEES.ChdRemChdArtRef
    ) ON TBLEXERCICES.ExeNum = TBLMOUVEMENTS.MvtExeNum
  ) ON TBLMOUVEMENTSNATURES.MvtNatNum = TBLMOUVEMENTS.MvtMvtNatNum
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtDate) > CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEDEBUT'"
        )
      )
      And (TBLMOUVEMENTS.MvtDate) <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      )
    )
  )
GROUP BY
  TBLMOUVEMENTS.MvtSocNum,
  IIf(
    TBLCHAUDIERESREMONTEES.ChdRemNum Is Not Null
    And TBLMOUVEMENTS.MvtMvtNatNum = 3,
    TBLCHAUDIERESREMONTEES.ChdRemServ,
    TBLMOUVEMENTS.MvtDate
  ),
  TBLMOUVEMENTS.MvtDate,
  TBLMOUVEMENTSNATURES.MvtNatCode,
  TBLMOUVEMENTS.MvtIntitule
ORDER BY
  TBLMOUVEMENTS.MvtSocNum,
  TBLMOUVEMENTSNATURES.MvtNatCode,
  TBLMOUVEMENTS.MvtDate DESC,
  Max(TBLMOUVEMENTS.MvtNum) DESC;
