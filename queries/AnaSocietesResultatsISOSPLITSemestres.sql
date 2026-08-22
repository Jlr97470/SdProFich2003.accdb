TRANSFORM
  IIf(
    Sum(
      IIf(
        Left([ChdArtLibelle], 8) = "ISOSPLIT"
        And [ChdRemRemp] Is Not Null,
        1,
        0
      )
    ) Is Null,
    0,
    Sum(
      IIf(
        Left([ChdArtLibelle], 8) = "ISOSPLIT"
        And [ChdRemRemp] Is Not Null,
        1,
        0
      )
    )
  ) AS NbISOSPLIT
SELECT
  TBLCHAUDIERESREMONTEES.ChdRemSocNum,
  IIf(
    Sum(
      IIf(
        Left([ChdArtLibelle], 8) = "ISOSPLIT"
        And [ChdRemRemp] Is Not Null,
        1,
        0
      )
    ) Is Null,
    0,
    Sum(
      IIf(
        Left([ChdArtLibelle], 8) = "ISOSPLIT"
        And [ChdRemRemp] Is Not Null,
        1,
        0
      )
    )
  ) AS SocResNbISOSPLITTotal
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
  "SocResNbISOSPLIT" & [ExeExercice] & "S" & [SemExeSemNum] In (
    "SocResNbISOSPLIT2001S1", "SocResNbISOSPLIT2001S2",
    "SocResNbISOSPLIT2002S1", "SocResNbISOSPLIT2002S2",
    "SocResNbISOSPLIT2003S1", "SocResNbISOSPLIT2003S2",
    "SocResNbISOSPLIT2004S1", "SocResNbISOSPLIT2004S2"
  );
