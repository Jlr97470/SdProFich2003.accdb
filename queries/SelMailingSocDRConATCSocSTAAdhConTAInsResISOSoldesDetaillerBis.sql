SELECT
  SelSocDRConATCSocSTAAdhConTAIns.DRSocNum,
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNum,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConPrenom,
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
      SelSocietesSoldesExercicesDetailler.TotalDebit2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalDebit2001
  ) AS TotalDebit2001,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalCredit2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalCredit2001
  ) AS TotalCredit2001,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2001
  ) AS Solde2001,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalDebit2002
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalDebit2002
  ) AS TotalDebit2002,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalCredit2002
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalCredit2002
  ) AS TotalCredit2002,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2002
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2002
  ) AS Solde2002,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalDebit2003
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalDebit2003
  ) AS TotalDebit2003,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalCredit2003
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalCredit2003
  ) + IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2003
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2003
  ) AS TotalCredit2003,
  IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.BonusRea2003
    ),
    1,
    TBLSOCIETESRESULTATSBONUS.BonusRea2003
  ) AS BonusRea2003,
  IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2003
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2003
  ) AS PointsRea2003,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2003
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2003
  ) + IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2003
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2003
  ) AS Solde2003,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalDebit2004
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalDebit2004
  ) AS TotalDebit2004,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalCredit2004
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalCredit2004
  ) + IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2004
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2004
  ) AS TotalCredit2004,
  IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.BonusRea2004
    ),
    1,
    TBLSOCIETESRESULTATSBONUS.BonusRea2004
  ) AS BonusRea2004,
  IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2004
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2004
  ) AS PointsRea2004,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2004
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2004
  ) + IIf(
    IsNull(
      TBLSOCIETESRESULTATSBONUS.PointsRea2004
    ),
    0,
    TBLSOCIETESRESULTATSBONUS.PointsRea2004
  ) AS Solde2004,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem1
  ) AS MvtISO2001Sem1,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem2
  ) AS MvtISO2001Sem2,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem1
  ) AS MvtISO2002Sem1,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem2
  ) AS MvtISO2002Sem2,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem1
  ) AS MvtISO2003Sem1,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem2
  ) AS MvtISO2003Sem2,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem1
  ) AS MvtISO2004Sem1,
  IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem2
  ) AS MvtISO2004Sem2
FROM
  (
    (
      SelSocDRConATCSocSTAAdhConTAIns
      LEFT JOIN SelSocietesSoldesISOSemestresDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesSoldesISOSemestresDetailler.MvtSocNum
    )
    LEFT JOIN SelSocietesSoldesExercicesDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesSoldesExercicesDetailler.MvtSocNum
  )
  LEFT JOIN TBLSOCIETESRESULTATSBONUS ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = TBLSOCIETESRESULTATSBONUS.SocNum
ORDER BY
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.SocRaison;
