SELECT
  SelSocietesResultatsSemestresDetailler.SocResSocNum,
  SelSocietesResultatsSemestresDetailler.SocResNbISO2002S1,
  SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S1,
  SelSocietesResultatsSemestresDetailler.SocResNbChd2002S1,
  SelSocietesResultatsSemestresDetailler.SocResNbISO2002S2,
  SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2002S2,
  SelSocietesResultatsSemestresDetailler.SocResNbChd2002S2,
  SelSocietesResultatsSemestresDetailler.SocResNbISO2003S1,
  SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S1,
  SelSocietesResultatsSemestresDetailler.SocResNbChd2003S1,
  SelSocietesResultatsSemestresDetailler.SocResNbISO2003S2,
  SelSocietesResultatsSemestresDetailler.SocResNbTHEMA2003S2,
  SelSocietesResultatsSemestresDetailler.SocResNbChd2003S2,
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
  ) AS TotalCredit2003,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2003
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2003
  ) AS Solde2003,
  IIf(
    (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0
    And (
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    ) > 0,
    IIf(
      (
        [SocResNbChd2003S1] + [SocResNbChd2003S2]
      ) >= [SocResNbChd2002S1] + [SocResNbChd2002S2],
      1.2,
      1
    ),
    1
  ) AS BonusRea2003,
  Round(
    (
      [TotalCredit2003] * [BonusRea2003]
    ) -([TotalCredit2003]),
    0
  ) AS PointsRea2003,
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
  ) AS TotalCredit2004,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetailler.Solde2004
    ),
    0,
    SelSocietesSoldesExercicesDetailler.Solde2004
  ) AS Solde2004,
  IIf(
    (
      [SocResNbChd2004S1] + [SocResNbChd2004S2]
    ) > 0
    And (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0,
    IIf(
      (
        [SocResNbChd2004S1] + [SocResNbChd2004S2]
      ) >= [SocResNbChd2003S1] + [SocResNbChd2003S2],
      1.2,
      1
    ),
    1
  ) AS BonusRea2004,
  Round(
    (
      [TotalCredit2004] * [BonusRea2004]
    ) -([TotalCredit2004]),
    0
  ) AS PointsRea2004,
  [Solde2002] + [Solde2003] + [PointsRea2003] + [Solde2004] + [PointsRea2004] AS Solde,
  IIf(
    [SocResNbChd2003S1] >= [SocResNbChd2002S1],
    1, 0
  ) * IIf(
    [SocResNbChd2003S1] > 0,
    IIf(
      (
        [SocResNbISO2003S1] / [SocResNbChd2003S1] * 100
      ) >= 25,
      1,
      0
    ),
    0
  ) * IIf(
    [SocResNbISO2003S1] >= 10
    And [SocResNbISO2003S1] < 20,
    305,
    IIf(
      [SocResNbISO2003S1] >= 20
      And [SocResNbISO2003S1] < 30,
      762,
      IIf([SocResNbISO2003S1] >= 30, 1220, 0)
    )
  ) AS BonusISO2003S1,
  IIf(
    [SocResNbChd2003S2] >= [SocResNbChd2002S2],
    1, 0
  ) * IIf(
    [SocResNbChd2003S2] > 0,
    IIf(
      (
        [SocResNbISO2003S2] / [SocResNbChd2003S2] * 100
      ) >= 25,
      1,
      0
    ),
    0
  ) * IIf(
    [SocResNbISO2003S2] >= 10
    And [SocResNbISO2003S2] < 20,
    305,
    IIf(
      [SocResNbISO2003S2] >= 20
      And [SocResNbISO2003S2] < 30,
      762,
      IIf([SocResNbISO2003S2] >= 30, 1220, 0)
    )
  ) AS BonusISO2003S2,
  IIf(
    (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) >=(
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    )
    And (
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    ) > 0
    And (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0,
    1,
    0
  ) * IIf(
    [SocResNbChd2003S1] < [SocResNbChd2002S1]
    And [SocResNbChd2003S1] > 0,
    IIf(
      (
        [SocResNbISO2003S1] / [SocResNbChd2003S1] * 100
      ) >= 25,
      1,
      0
    ) * IIf(
      [SocResNbISO2003S1] >= 10
      And [SocResNbISO2003S1] < 20,
      305,
      IIf(
        [SocResNbISO2003S1] >= 20
        And [SocResNbISO2003S1] < 30,
        762,
        IIf([SocResNbISO2003S1] >= 30, 1220, 0)
      )
    ),
    0
  ) AS BonusISO2003S1Ann,
  IIf(
    (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) >=(
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    )
    And (
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    ) > 0
    And (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0,
    1,
    0
  ) * IIf(
    [SocResNbChd2003S2] < [SocResNbChd2002S2]
    And [SocResNbChd2003S2],
    IIf(
      (
        [SocResNbISO2003S2] / [SocResNbChd2003S2] * 100
      ) >= 25,
      1,
      0
    ) * IIf(
      [SocResNbISO2003S2] >= 10
      And [SocResNbISO2003S2] < 20,
      305,
      IIf(
        [SocResNbISO2003S2] >= 20
        And [SocResNbISO2003S2] < 30,
        762,
        IIf([SocResNbISO2003S2] >= 30, 1220, 0)
      )
    ),
    0
  ) AS BonusISO2003S2Ann,
  IIf(
    [SocResNbChd2004S1] >= [SocResNbChd2004S1],
    1, 0
  ) * IIf(
    [SocResNbChd2004S1] > 0,
    IIf(
      (
        [SocResNbISO2004S1] / [SocResNbChd2004S1] * 100
      ) >= 25,
      1,
      0
    ),
    0
  ) * IIf(
    [SocResNbISO2004S1] >= 10
    And [SocResNbISO2004S1] < 20,
    305,
    IIf(
      [SocResNbISO2004S1] >= 20
      And [SocResNbISO2004S1] < 30,
      762,
      IIf([SocResNbISO2004S1] >= 30, 1220, 0)
    )
  ) AS BonusISO2004S1,
  IIf(
    [SocResNbChd2004S2] >= [SocResNbChd2003S2],
    1, 0
  ) * IIf(
    [SocResNbChd2004S2] > 0,
    IIf(
      (
        [SocResNbISO2004S2] / [SocResNbChd2004S2] * 100
      ) >= 25,
      1,
      0
    ),
    0
  ) * IIf(
    [SocResNbISO2004S2] >= 10
    And [SocResNbISO2004S2] < 20,
    305,
    IIf(
      [SocResNbISO2004S2] >= 20
      And [SocResNbISO2004S2] < 30,
      762,
      IIf([SocResNbISO2004S2] >= 30, 1220, 0)
    )
  ) AS BonusISO2004S2,
  IIf(
    (
      [SocResNbChd2004S1] + [SocResNbChd2004S2]
    ) >=(
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    )
    And (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0
    And (
      [SocResNbChd2004S1] + [SocResNbChd2004S2]
    ) > 0,
    1,
    0
  ) * IIf(
    [SocResNbChd2004S1] < [SocResNbChd2003S1]
    And [SocResNbChd2004S1] > 0,
    IIf(
      (
        [SocResNbISO2004S1] / [SocResNbChd2004S1] * 100
      ) >= 25,
      1,
      0
    ) * IIf(
      [SocResNbISO2004S1] >= 10
      And [SocResNbISO2004S1] < 20,
      305,
      IIf(
        [SocResNbISO2004S1] >= 20
        And [SocResNbISO2004S1] < 30,
        762,
        IIf([SocResNbISO2004S1] >= 30, 1220, 0)
      )
    ),
    0
  ) AS BonusISO2004S1Ann,
  IIf(
    (
      [SocResNbChd2004S1] + [SocResNbChd2004S2]
    ) >=(
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    )
    And (
      [SocResNbChd2003S1] + [SocResNbChd2003S2]
    ) > 0
    And (
      [SocResNbChd2004S1] + [SocResNbChd2004S2]
    ) > 0,
    1,
    0
  ) * IIf(
    [SocResNbChd2004S2] < [SocResNbChd2004S2]
    And [SocResNbChd2004S2],
    IIf(
      (
        [SocResNbISO2004S2] / [SocResNbChd2004S2] * 100
      ) >= 25,
      1,
      0
    ) * IIf(
      [SocResNbISO2004S2] >= 10
      And [SocResNbISO2004S2] < 20,
      305,
      IIf(
        [SocResNbISO2004S2] >= 20
        And [SocResNbISO2004S2] < 30,
        762,
        IIf([SocResNbISO2004S2] >= 30, 1220, 0)
      )
    ),
    0
  ) AS BonusISO2004S2Ann
FROM
  SelSocietesResultatsSemestresDetailler
  LEFT JOIN SelSocietesSoldesExercicesDetailler ON SelSocietesResultatsSemestresDetailler.SocResSocNum = SelSocietesSoldesExercicesDetailler.MvtSocNum;
