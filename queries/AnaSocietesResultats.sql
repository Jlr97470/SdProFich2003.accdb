TRANSFORM
  CLng(
    IIf(
      IsNull(
        Count([ChdRemChdArtRef])
      ),
      0,
      Count([ChdRemChdArtRef])
    )
  ) AS NbChdGam
SELECT
  TBLCHAUDIERESREMONTEES.ChdRemSocNum AS SocResSocNum,
  TBLCHAUDIERESREMONTEES.ChdRemSemNum AS SocResSemNum,
  Count(
    TBLCHAUDIERESREMONTEES.ChdRemNum
  ) AS SocResNbChd
FROM
  TBLCHAUDIERESARTICLES
  INNER JOIN TBLCHAUDIERESREMONTEES ON TBLCHAUDIERESARTICLES.ChdArtRef = TBLCHAUDIERESREMONTEES.ChdRemChdArtRef
WHERE
  (
    (
      (
        TBLCHAUDIERESREMONTEES.ChdRemRemp
      ) Is Not Null
    )
  )
GROUP BY
  TBLCHAUDIERESREMONTEES.ChdRemSocNum,
  TBLCHAUDIERESREMONTEES.ChdRemSemNum
PIVOT
  IIf(
    [ChdArtGamme] = "ISO",
    "SocResNbISO",
    IIf(
      [ChdArtGamme] = "THEMA", "SocResNbTHEMA",
      Null
    )
  ) In ("SocResNbISO", "SocResNbTHEMA");
