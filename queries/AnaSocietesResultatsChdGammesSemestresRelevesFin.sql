TRANSFORM
  IIf(
    Sum(
      IIf(
        [ChdRemRemp] Is Not Null
        And [ChdRemDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        1,
        0
      )
    ) Is Null,
    0,
    Sum(
      IIf(
        [ChdRemRemp] Is Not Null
        And [ChdRemDate] <= CVDate(
          DLookUp(
            "ParValeur", "TBLPARAMETRESGENERAUX",
            "ParType='RELEVE' AND ParCode='DATEFIN'"
          )
        ),
        1,
        0
      )
    )
  ) AS NbChdGammme
SELECT
  TBLCHAUDIERESREMONTEES.ChdRemSocNum,
  Sum(
    IIf(
      [ChdRemRemp] Is Not Null
      And Year([ChdRemServ]) = 2003
      And Month([ChdRemServ]) <= 6
      And [ChdRemDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      1,
      0
    )
  ) AS SocResNbChd2003S1RelevesFin,
  Sum(
    IIf(
      [ChdRemRemp] Is Not Null
      And Year([ChdRemServ]) = 2003
      And Month([ChdRemServ]) > 6
      And [ChdRemDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      1,
      0
    )
  ) AS SocResNbChd2003S2RelevesFin,
  Sum(
    IIf(
      [ChdRemRemp] Is Not Null
      And Year([ChdRemServ]) = 2004
      And Month([ChdRemServ]) <= 6
      And [ChdRemDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      1,
      0
    )
  ) AS SocResNbChd2004S1RelevesFin,
  Sum(
    IIf(
      [ChdRemRemp] Is Not Null
      And Year([ChdRemServ]) = 2004
      And Month([ChdRemServ]) > 6
      And [ChdRemDate] <= CVDate(
        DLookUp(
          "ParValeur", "TBLPARAMETRESGENERAUX",
          "ParType='RELEVE' AND ParCode='DATEFIN'"
        )
      ),
      1,
      0
    )
  ) AS SocResNbChd2004S2RelevesFin
FROM
  (
    TBLEXERCICES
    RIGHT JOIN TBLSEMESTRES ON TBLEXERCICES.ExeNum = TBLSEMESTRES.SemExeNum
  )
  RIGHT JOIN (
    TBLCHAUDIERESARTICLES
    RIGHT JOIN TBLCHAUDIERESREMONTEES ON TBLCHAUDIERESARTICLES.ChdArtRef = TBLCHAUDIERESREMONTEES.ChdRemChdArtRef
  ) ON TBLSEMESTRES.SemNum = TBLCHAUDIERESREMONTEES.ChdRemSemNum
GROUP BY
  TBLCHAUDIERESREMONTEES.ChdRemSocNum
PIVOT
  "SocResNb" & [ChdArtGamme] & [ExeExercice] & "S" & [SemExeSemNum] & "RelevesFin" In (
    "SocResNbISO2003S1RelevesFin", "SocResNbTHEMA2003S1RelevesFin",
    "SocResNbISO2003S2RelevesFin",
    "SocResNbTHEMA2003S2RelevesFin",
    "SocResNbISO2004S1RelevesFin",
    "SocResNbTHEMA2004S1RelevesFin",
    "SocResNbISO2004S2RelevesFin",
    "SocResNbTHEMA2004S2RelevesFin"
  );
