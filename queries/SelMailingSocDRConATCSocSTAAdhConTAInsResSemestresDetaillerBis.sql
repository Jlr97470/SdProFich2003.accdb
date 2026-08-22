SELECT
  SelSocDRConATCSocSTAAdhConTAIns.DRSocNum,
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNum,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConCivCode,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConFonCode,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConPrenom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConInscrit,
  SelSocDRConATCSocSTAAdhConTAIns.SocNum,
  SelSocDRConATCSocSTAAdhConTAIns.SocSTA,
  SelSocDRConATCSocSTAAdhConTAIns.SocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.SocAdresse,
  SelSocDRConATCSocSTAAdhConTAIns.SocVilCodePostal,
  SelSocDRConATCSocSTAAdhConTAIns.SocVilNom,
  SelSocDRConATCSocSTAAdhConTAIns.SocTel1,
  SelSocDRConATCSocSTAAdhConTAIns.SocTel2,
  SelSocDRConATCSocSTAAdhConTAIns.SocFax,
  SelSocDRConATCSocSTAAdhConTAIns.ConFonCode,
  SelSocDRConATCSocSTAAdhConTAIns.ConCivCode,
  SelSocDRConATCSocSTAAdhConTAIns.ConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ConPrenom,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2000S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2000S1
  ) AS SocResNbISO2000S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2000S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2000S2
  ) AS SocResNbISO2000S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2000S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2000S1
  ) AS SocResNbTHEMA2000S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2000S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2000S2
  ) AS SocResNbTHEMA2000S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2000S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2000S1
  ) AS SocResNbChd2000S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2000S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2000S2
  ) AS SocResNbChd2000S2,
  IIf(
    [SocResNbChd2000S1] = 0, 0, [SocResNbISO2000S1] / [SocResNbChd2000S1]
  ) AS SocResPourISO2000S1,
  IIf(
    [SocResNbChd2000S2] = 0, 0, [SocResNbISO2000S2] / [SocResNbChd2000S2]
  ) AS SocResPourISO2000S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2001S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2001S1
  ) AS SocResNbISO2001S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2001S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2001S2
  ) AS SocResNbISO2001S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2001S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2001S1
  ) AS SocResNbTHEMA2001S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2001S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2001S2
  ) AS SocResNbTHEMA2001S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2001S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2001S1
  ) AS SocResNbChd2001S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2001S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2001S2
  ) AS SocResNbChd2001S2,
  IIf(
    [SocResNbChd2001S1] = 0, 0, [SocResNbISO2001S1] / [SocResNbChd2001S1]
  ) AS SocResPourISO2001S1,
  IIf(
    [SocResNbChd2001S2] = 0, 0, [SocResNbISO2001S2] / [SocResNbChd2001S2]
  ) AS SocResPourISO2001S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2002S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2002S1
  ) AS SocResNbISO2002S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2002S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2002S2
  ) AS SocResNbISO2002S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S1
  ) AS SocResNbTHEMA2002S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S2
  ) AS SocResNbTHEMA2002S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2002S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2002S1
  ) AS SocResNbChd2002S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2002S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2002S2
  ) AS SocResNbChd2002S2,
  IIf(
    [SocResNbChd2002S1] = 0, 0, [SocResNbISO2002S1] / [SocResNbChd2002S1]
  ) AS SocResPourISO2002S1,
  IIf(
    [SocResNbChd2002S2] = 0, 0, [SocResNbISO2002S2] / [SocResNbChd2002S2]
  ) AS SocResPourISO2002S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2003S1
  ) AS SocResNbISO2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2003S2
  ) AS SocResNbISO2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S1
  ) AS SocResNbTHEMA2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S2
  ) AS SocResNbTHEMA2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2003S1
  ) AS SocResNbChd2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2003S2
  ) AS SocResNbChd2003S2,
  IIf(
    [SocResNbChd2003S1] = 0, 0, [SocResNbISO2003S1] / [SocResNbChd2003S1]
  ) AS SocResPourISO2003S1,
  IIf(
    [SocResNbChd2003S2] = 0, 0, [SocResNbISO2003S2] / [SocResNbChd2003S2]
  ) AS SocResPourISO2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2004S1
  ) AS SocResNbISO2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2004S2
  ) AS SocResNbISO2004S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S1
  ) AS SocResNbTHEMA2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S2
  ) AS SocResNbTHEMA2004S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2004S1
  ) AS SocResNbChd2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2004S2
  ) AS SocResNbChd2004S2,
  IIf(
    [SocResNbChd2004S1] = 0, 0, [SocResNbISO2004S1] / [SocResNbChd2004S1]
  ) AS SocResPourISO2004S1,
  IIf(
    [SocResNbChd2004S2] = 0, 0, [SocResNbISO2004S2] / [SocResNbChd2004S2]
  ) AS SocResPourISO2004S2
FROM
  SelSocDRConATCSocSTAAdhConTAIns
  LEFT JOIN SelSocietesResultatsSemestresDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesResultatsSemestresDetailler.SocResSocNum
ORDER BY
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.SocRaison;
