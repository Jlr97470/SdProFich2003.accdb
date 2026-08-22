SELECT
  AnaSocietesResultatsExercices.SocResSocNum,
  AnaSocietesResultatsISOExercices.SocResNbISO2000,
  AnaSocietesResultatsTHEMAExercices.SocResNbTHEMA2000,
  AnaSocietesResultatsExercices.SocResNbChd2000,
  AnaSocietesResultatsISOExercices.SocResNbISO2001,
  AnaSocietesResultatsTHEMAExercices.SocResNbTHEMA2001,
  AnaSocietesResultatsExercices.SocResNbChd2001,
  AnaSocietesResultatsISOExercices.SocResNbISO2002,
  AnaSocietesResultatsTHEMAExercices.SocResNbTHEMA2002,
  AnaSocietesResultatsExercices.SocResNbChd2002,
  AnaSocietesResultatsISOExercices.SocResNbISO2003,
  AnaSocietesResultatsTHEMAExercices.SocResNbTHEMA2003,
  AnaSocietesResultatsExercices.SocResNbChd2003,
  AnaSocietesResultatsISOExercices.SocResNbISO2004,
  AnaSocietesResultatsTHEMAExercices.SocResNbTHEMA2004,
  AnaSocietesResultatsExercices.SocResNbChd2004,
  AnaSocietesResultatsExercices.SocResNbChdTotal
FROM
  (
    AnaSocietesResultatsExercices
    LEFT JOIN AnaSocietesResultatsTHEMAExercices ON AnaSocietesResultatsExercices.SocResSocNum = AnaSocietesResultatsTHEMAExercices.SocResSocNum
  )
  LEFT JOIN AnaSocietesResultatsISOExercices ON AnaSocietesResultatsExercices.SocResSocNum = AnaSocietesResultatsISOExercices.SocResSocNum;
