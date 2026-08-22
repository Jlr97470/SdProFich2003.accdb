SELECT
  AnaSocietesResultatsSemestres.SocResSocNum,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S1,
  AnaSocietesResultatsSemestres.SocResNbChd2002S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S2,
  AnaSocietesResultatsSemestres.SocResNbChd2002S2,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2003S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2003S1RelevesDebut
  ) AS SocResNbISO2003S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2003S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2003S1RelevesDebut
  ) AS SocResNbTHEMA2003S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2003S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2003S1RelevesDebut
  ) AS SocResNbChd2003S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2003S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2003S2RelevesDebut
  ) AS SocResNbISO2003S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2003S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2003S2RelevesDebut
  ) AS SocResNbTHEMA2003S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2003S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2003S2RelevesDebut
  ) AS SocResNbChd2003S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2003S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2003S1RelevesFin
  ) AS SocResNbISO2003S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2003S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2003S1RelevesFin
  ) AS SocResNbTHEMA2003S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2003S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2003S1RelevesFin
  ) AS SocResNbChd2003S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2003S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2003S2RelevesFin
  ) AS SocResNbISO2003S2RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2003S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2003S2RelevesFin
  ) AS SocResNbTHEMA2003S2RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2003S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2003S2RelevesFin
  ) AS SocResNbChd2003S2RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2004S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2004S1RelevesDebut
  ) AS SocResNbISO2004S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2004S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2004S1RelevesDebut
  ) AS SocResNbTHEMA2004S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2004S1RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2004S1RelevesDebut
  ) AS SocResNbChd2004S1RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2004S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbISO2004S2RelevesDebut
  ) AS SocResNbISO2004S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2004S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbTHEMA2004S2RelevesDebut
  ) AS SocResNbTHEMA2004S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2004S2RelevesDebut
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesDebut.SocResNbChd2004S2RelevesDebut
  ) AS SocResNbChd2004S2RelevesDebut,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2004S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2004S1RelevesFin
  ) AS SocResNbISO2004S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2004S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2004S1RelevesFin
  ) AS SocResNbTHEMA2004S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2004S1RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2004S1RelevesFin
  ) AS SocResNbChd2004S1RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2004S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbISO2004S2RelevesFin
  ) AS SocResNbISO2004S2RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2004S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbTHEMA2004S2RelevesFin
  ) AS SocResNbTHEMA2004S2RelevesFin,
  IIf(
    IsNull(
      AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2004S2RelevesFin
    ),
    0,
    AnaSocietesResultatsChdGammesSemestresRelevesFin.SocResNbChd2004S2RelevesFin
  ) AS SocResNbChd2004S2RelevesFin
FROM
  (
    (
      (
        AnaSocietesResultatsSemestres
        LEFT JOIN AnaSocietesResultatsTHEMASemestres ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsTHEMASemestres.SocResSocNum
      )
      LEFT JOIN AnaSocietesResultatsISOSemestres ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsISOSemestres.SocResSocNum
    )
    LEFT JOIN AnaSocietesResultatsChdGammesSemestresRelevesFin ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsChdGammesSemestresRelevesFin.ChdRemSocNum
  )
  LEFT JOIN AnaSocietesResultatsChdGammesSemestresRelevesDebut ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsChdGammesSemestresRelevesDebut.ChdRemSocNum;
