SELECT
  AnaSocietesResultatsSemestres.SocResSocNum,
  AnaSocietesResultatsISOSemestres.SocResNbISO2000S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2000S1,
  AnaSocietesResultatsSemestres.SocResNbChd2000S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2000S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2000S2,
  AnaSocietesResultatsSemestres.SocResNbChd2000S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2001S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2001S1,
  AnaSocietesResultatsSemestres.SocResNbChd2001S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2001S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2001S2,
  AnaSocietesResultatsSemestres.SocResNbChd2001S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S1,
  AnaSocietesResultatsSemestres.SocResNbChd2002S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S2,
  AnaSocietesResultatsSemestres.SocResNbChd2002S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2003S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2003S1,
  AnaSocietesResultatsSemestres.SocResNbChd2003S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2003S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2003S2,
  AnaSocietesResultatsSemestres.SocResNbChd2003S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2004S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2004S1,
  AnaSocietesResultatsSemestres.SocResNbChd2004S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2004S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2004S2,
  AnaSocietesResultatsSemestres.SocResNbChd2004S2,
  IIf(
    [SocResNbChd2000S1] = 0, 0, [SocResNbISO2000S1] / [SocResNbChd2000S1]
  ) AS SocResPourISO2000S1,
  IIf(
    [SocResNbChd2000S2] = 0, 0, [SocResNbISO2000S2] / [SocResNbChd2000S2]
  ) AS SocResPourISO2000S2,
  IIf(
    [SocResNbChd2001S1] = 0, 0, [SocResNbISO2001S1] / [SocResNbChd2001S1]
  ) AS SocResPourISO2001S1,
  IIf(
    [SocResNbChd2001S2] = 0, 0, [SocResNbISO2001S2] / [SocResNbChd2001S2]
  ) AS SocResPourISO2001S2,
  IIf(
    [SocResNbChd2002S1] = 0, 0, [SocResNbISO2002S1] / [SocResNbChd2002S1]
  ) AS SocResPourISO2002S1,
  IIf(
    [SocResNbChd2002S2] = 0, 0, [SocResNbISO2002S2] / [SocResNbChd2002S2]
  ) AS SocResPourISO2002S2,
  IIf(
    [SocResNbChd2003S1] = 0, 0, [SocResNbISO2003S1] / [SocResNbChd2003S1]
  ) AS SocResPourISO2003S1,
  IIf(
    [SocResNbChd2003S2] = 0, 0, [SocResNbISO2003S2] / [SocResNbChd2003S2]
  ) AS SocResPourISO2003S2,
  IIf(
    [SocResNbChd2004S1] = 0, 0, [SocResNbISO2004S1] / [SocResNbChd2004S1]
  ) AS SocResPourISO2004S1,
  IIf(
    [SocResNbChd2004S2] = 0, 0, [SocResNbISO2004S2] / [SocResNbChd2004S2]
  ) AS SocResPourISO2004S2
FROM
  (
    AnaSocietesResultatsSemestres
    LEFT JOIN AnaSocietesResultatsISOSemestres ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsISOSemestres.SocResSocNum
  )
  LEFT JOIN AnaSocietesResultatsTHEMASemestres ON AnaSocietesResultatsSemestres.SocResSocNum = AnaSocietesResultatsTHEMASemestres.SocResSocNum
GROUP BY
  AnaSocietesResultatsSemestres.SocResSocNum,
  AnaSocietesResultatsISOSemestres.SocResNbISO2000S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2000S1,
  AnaSocietesResultatsSemestres.SocResNbChd2000S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2000S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2000S2,
  AnaSocietesResultatsSemestres.SocResNbChd2000S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2001S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2001S1,
  AnaSocietesResultatsSemestres.SocResNbChd2001S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2001S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2001S2,
  AnaSocietesResultatsSemestres.SocResNbChd2001S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S1,
  AnaSocietesResultatsSemestres.SocResNbChd2002S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2002S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2002S2,
  AnaSocietesResultatsSemestres.SocResNbChd2002S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2003S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2003S1,
  AnaSocietesResultatsSemestres.SocResNbChd2003S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2003S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2003S2,
  AnaSocietesResultatsSemestres.SocResNbChd2003S2,
  AnaSocietesResultatsISOSemestres.SocResNbISO2004S1,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2004S1,
  AnaSocietesResultatsSemestres.SocResNbChd2004S1,
  AnaSocietesResultatsISOSemestres.SocResNbISO2004S2,
  AnaSocietesResultatsTHEMASemestres.SocResNbTHEMA2004S2,
  AnaSocietesResultatsSemestres.SocResNbChd2004S2,
  IIf(
    [SocResNbChd2000S1] = 0, 0, [SocResNbISO2000S1] / [SocResNbChd2000S1]
  ),
  IIf(
    [SocResNbChd2000S2] = 0, 0, [SocResNbISO2000S2] / [SocResNbChd2000S2]
  ),
  IIf(
    [SocResNbChd2001S1] = 0, 0, [SocResNbISO2001S1] / [SocResNbChd2001S1]
  ),
  IIf(
    [SocResNbChd2001S2] = 0, 0, [SocResNbISO2001S2] / [SocResNbChd2001S2]
  ),
  IIf(
    [SocResNbChd2002S1] = 0, 0, [SocResNbISO2002S1] / [SocResNbChd2002S1]
  ),
  IIf(
    [SocResNbChd2002S2] = 0, 0, [SocResNbISO2002S2] / [SocResNbChd2002S2]
  ),
  IIf(
    [SocResNbChd2003S1] = 0, 0, [SocResNbISO2003S1] / [SocResNbChd2003S1]
  ),
  IIf(
    [SocResNbChd2003S2] = 0, 0, [SocResNbISO2003S2] / [SocResNbChd2003S2]
  ),
  IIf(
    [SocResNbChd2004S1] = 0, 0, [SocResNbISO2004S1] / [SocResNbChd2004S1]
  ),
  IIf(
    [SocResNbChd2004S2] = 0, 0, [SocResNbISO2004S2] / [SocResNbChd2004S2]
  );
