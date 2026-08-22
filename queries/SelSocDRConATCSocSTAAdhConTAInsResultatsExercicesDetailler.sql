SELECT
  SelSocDRConATCSocSTAAdhConTAIns.DRSocNum,
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNum,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConCivCode,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConFonCode,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConPrenom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConInscrit,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConTelPort,
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
      SelSocietesResultatsExercicesDetailler.SocResNbISO2000
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbISO2000
  ) AS SocResNbISO2000,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2000
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2000
  ) AS SocResNbTHEMA2000,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChd2000
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChd2000
  ) AS SocResNbChd2000,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbISO2001
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbISO2001
  ) AS SocResNbISO2001,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2001
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2001
  ) AS SocResNbTHEMA2001,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChd2001
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChd2001
  ) AS SocResNbChd2001,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbISO2002
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbISO2002
  ) AS SocResNbISO2002,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2002
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2002
  ) AS SocResNbTHEMA2002,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChd2002
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChd2002
  ) AS SocResNbChd2002,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbISO2003
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbISO2003
  ) AS SocResNbISO2003,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2003
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2003
  ) AS SocResNbTHEMA2003,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChd2003
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChd2003
  ) AS SocResNbChd2003,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbISO2004
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbISO2004
  ) AS SocResNbISO2004,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2004
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbTHEMA2004
  ) AS SocResNbTHEMA2004,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChd2004
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChd2004
  ) AS SocResNbChd2004,
  IIf(
    IsNull(
      SelSocietesResultatsExercicesDetailler.SocResNbChdTotal
    ),
    0,
    SelSocietesResultatsExercicesDetailler.SocResNbChdTotal
  ) AS SocResNbChdTotal
FROM
  SelSocDRConATCSocSTAAdhConTAIns
  LEFT JOIN SelSocietesResultatsExercicesDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesResultatsExercicesDetailler.SocResSocNum;
