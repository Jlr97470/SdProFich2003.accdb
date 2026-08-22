SELECT
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConPrenom,
  SelSocDRConATCSocSTAAdhConTAIns.SocSTA,
  SelSocDRConATCSocSTAAdhConTAIns.SocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.SocAdresse,
  SelSocDRConATCSocSTAAdhConTAIns.SocVilCodePostal,
  SelSocDRConATCSocSTAAdhConTAIns.SocVilNom,
  SelSocDRConATCSocSTAAdhConTAIns.SocTel1,
  SelSocDRConATCSocSTAAdhConTAIns.SocTel2,
  SelSocDRConATCSocSTAAdhConTAIns.SocFax,
  SelSocDRConATCSocSTAAdhConTAIns.ConNom,
  SelSocDRConATCSocSTAAdhConTAIns.ConPrenom,
  CDP2002RESULTATS.NbISO2002S1,
  CDP2002RESULTATS.NbTHEMA2002S1,
  CDP2002RESULTATS.NbChd2002S1,
  CDP2002RESULTATS.ObjNbChd2002S1,
  CDP2002RESULTATS.ObjBonusMul2002S1,
  CDP2002RESULTATS.Report2002S1,
  CDP2002RESULTATS.TotalReport2002S1,
  CDP2002RESULTATS.ObjPerISO2002S1 / 100 AS ObjPerISO2002S1,
  CDP2002RESULTATS.NbISO2002S2,
  CDP2002RESULTATS.NbTHEMA2002S2,
  CDP2002RESULTATS.NbChd2002S2,
  CDP2002RESULTATS.ObjNbChd2002S2,
  CDP2002RESULTATS.ObjBonusMul2002S2,
  CDP2002RESULTATS.Report2002S2,
  CDP2002RESULTATS.TotalReport2002S2,
  CDP2002RESULTATS.ObjPerISO2002S2 / 100 AS ObjPerISO2002S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2003S1
  ) - IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S1
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S1
  ) AS SocResNbISOSTD2003S1,
  IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S1
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S1
  ) AS SocResNbISOSPLIT2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S1
  ) AS SocResNbTHEMA2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2003S1
  ) AS SocResNbChd2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResPourISO2003S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResPourISO2003S1
  ) AS SocResPourISO2003S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2003S2
  ) - IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S2
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S2
  ) AS SocResISOSTD2003S2,
  IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S2
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2003S2
  ) AS SocResNbISOSPLIT2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S2
  ) AS SocResNbTHEMA2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2003S2
  ) AS SocResNbChd2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResPourISO2003S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResPourISO2003S2
  ) AS SocResPourISO2003S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2004S1
  ) - IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S1
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S1
  ) AS SocResNbISOSTD2004S1,
  IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S1
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S1
  ) AS SocResNbISOSPLIT2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S1
  ) AS SocResNbTHEMA2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2004S1
  ) AS SocResNbChd2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResPourISO2004S1
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResPourISO2004S1
  ) AS SocResPourISO2004S1,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbISO2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbISO2004S2
  ) - IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S2
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S2
  ) AS SocResNbISOSTD2004S2,
  IIf(
    IsNull(
      AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S2
    ),
    0,
    AnaSocietesResultatsISOSPLITSemestres.SocResNbISOSPLIT2004S2
  ) AS SocResNbISOSPLIT2004S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2004S2
  ) AS SocResNbTHEMA2004S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResNbChd2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResNbChd2004S2
  ) AS SocResNbChd2004S2,
  IIf(
    IsNull(
      SelSocietesResultatsSemestresDetailler.SocResPourISO2004S2
    ),
    0,
    SelSocietesResultatsSemestresDetailler.SocResPourISO2004S2
  ) AS SocResPourISO2004S2,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalDebit2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalDebit2001
  ) - [Ann2001] AS TotalDebit2001,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.TotalCredit2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.TotalCredit2001
  ) AS TotalCredit2001,
  IIf(
    IsNull(
      DLookUp(
        "MvtDebit", "TBLMOUVEMENTS", "MvtSocNum=" & SelSocDRConATCSocSTAAdhConTAIns.SocNum & " AND MvtMvtNatNum=1 AND MvtDossier=-1"
      )
    ),
    0,
    DLookUp(
      "MvtDebit", "TBLMOUVEMENTS", "MvtSocNum=" & SelSocDRConATCSocSTAAdhConTAIns.SocNum & " AND MvtMvtNatNum=1 AND MvtDossier=-1"
    )
  ) AS Ann2001,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2001
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2001
  ) + [Ann2001] AS Solde2001,
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
    IsNull([PointsRea2003]),
    0,
    [PointsRea2003]
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
    IsNull([PointsRea2003]),
    0,
    [PointsRea2003]
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
    IsNull([PointsRea2004]),
    0,
    [PointsRea2004]
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
    IsNull([PointsRea2004]),
    0,
    [PointsRea2004]
  ) AS Solde2004,
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
  ) + IIf(
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
  ) AS Solde20032004,
  [Solde20032004] * 0.0184 / 6.55957 AS SoldeVal,
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
  ) AS MvtISO2004Sem2,
  [SoldeVal] + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2001Sem2
  ) + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem1
  ) + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2002Sem2
  ) + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2003Sem2
  ) + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem1
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem1
  ) + IIf(
    IsNull(
      SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem2
    ),
    0,
    SelSocietesSoldesISOSemestresDetailler.MvtISO2004Sem2
  ) AS SoldeISOVal
FROM
  (
    (
      (
        (
          (
            SelSocDRConATCSocSTAAdhConTAIns
            LEFT JOIN SelSocietesResultatsSemestresDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesResultatsSemestresDetailler.SocResSocNum
          )
          LEFT JOIN SelSocietesSoldesExercicesDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesSoldesExercicesDetailler.MvtSocNum
        )
        LEFT JOIN SelSocietesSoldesISOSemestresDetailler ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = SelSocietesSoldesISOSemestresDetailler.MvtSocNum
      )
      LEFT JOIN TBLSOCIETESRESULTATSBONUS ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = TBLSOCIETESRESULTATSBONUS.SocNum
    )
    LEFT JOIN CDP2002RESULTATS ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = CDP2002RESULTATS.SocNum
  )
  LEFT JOIN AnaSocietesResultatsISOSPLITSemestres ON SelSocDRConATCSocSTAAdhConTAIns.SocNum = AnaSocietesResultatsISOSPLITSemestres.ChdRemSocNum
ORDER BY
  SelSocDRConATCSocSTAAdhConTAIns.DRSocRaison,
  SelSocDRConATCSocSTAAdhConTAIns.ATCConNom,
  SelSocDRConATCSocSTAAdhConTAIns.SocRaison;
