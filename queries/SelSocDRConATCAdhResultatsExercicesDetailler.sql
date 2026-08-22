SELECT
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.DRSocNum,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConNum,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConCivCode,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConFonCode,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConPrenom,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConInscrit,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbISO2000
  ) AS ATCSocResNbISO2000,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbTHEMA2000
  ) AS ATCSocResNbTHEMA2000,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbChd2000
  ) AS ATCSocResNbChd2000,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbISO2001
  ) AS ATCSocResNbISO2001,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbTHEMA2001
  ) AS ATCSocResNbTHEMA2001,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbChd2001
  ) AS ATCSocResNbChd2001,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbISO2002
  ) AS ATCSocResNbISO2002,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbTHEMA2002
  ) AS ATCSocResNbTHEMA2002,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbChd2002
  ) AS ATCSocResNbChd2002,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbISO2003
  ) AS ATCSocResNbISO2003,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbTHEMA2003
  ) AS ATCSocResNbTHEMA2003,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbChd2003
  ) AS ATCSocResNbChd2003,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbISO2004
  ) AS ATCSocResNbISO2004,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbTHEMA2004
  ) AS ATCSocResNbTHEMA2004,
  Sum(
    SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.SocResNbChd2004
  ) AS ATCSocResNbChd2004
FROM
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler
GROUP BY
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.DRSocNum,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConNum,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConCivCode,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConFonCode,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConPrenom,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConInscrit
ORDER BY
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAInsResultatsExercicesDetailler.ATCConNom;
