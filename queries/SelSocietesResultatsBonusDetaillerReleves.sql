SELECT
  SelSocietesResultatsSemestresDetaillerReleves.SocResSocNum,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2003RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2003RelevesFin
  ) AS TotalDebit2003RelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2003RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2003RelevesFin
  ) AS TotalCredit2003RelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.Solde2003RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.Solde2003RelevesFin
  ) AS Solde2003RelevesFin,
  IIf(
    (
      [SocResNbChd2003S1RelevesFin] + [SocResNbChd2003S2RelevesFin]
    ) > 0
    And (
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    ) > 0,
    IIf(
      (
        [SocResNbChd2003S1RelevesFin] + [SocResNbChd2003S2RelevesFin]
      ) >= [SocResNbChd2002S1] + [SocResNbChd2002S2],
      1.2,
      1
    ),
    1
  ) AS BonusRea2003RelevesFin,
  Round(
    (
      [TotalCredit2003RelevesFin] * [BonusRea2003RelevesFin]
    ) -([TotalCredit2003RelevesFin]),
    0
  ) AS PointsRea2003RelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2004RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2004RelevesFin
  ) AS TotalDebit2004RelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2004RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2004RelevesFin
  ) AS TotalCredit2004RelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.Solde2004RelevesFin
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.Solde2004RelevesFin
  ) AS Solde2004RelevesFin,
  IIf(
    (
      [SocResNbChd2004S1RelevesFin] + [SocResNbChd2004S2RelevesFin]
    ) > 0
    And (
      [SocResNbChd2003S1RelevesFin] + [SocResNbChd2003S2RelevesFin]
    ) > 0,
    IIf(
      (
        [SocResNbChd2004S1RelevesFin] + [SocResNbChd2004S2RelevesFin]
      ) >= [SocResNbChd2003S1RelevesFin] + [SocResNbChd2003S2RelevesFin],
      1.2,
      1
    ),
    1
  ) AS BonusRea2004RelevesFin,
  Round(
    (
      [TotalCredit2004RelevesFin] * [BonusRea2004RelevesFin]
    ) -([TotalCredit2004RelevesFin]),
    0
  ) AS PointsRea2004RelevesFin,
  [TotalDebit2003RelevesFin] + [TotalDebit2004RelevesFin] AS TotalDebitRelevesFin,
  [TotalCredit2003RelevesFin] + [TotalCredit2004RelevesFin] AS TotalCreditRelevesFin,
  [Solde2003RelevesFin] + [PointsRea2003RelevesFin] + [Solde2004RelevesFin] + [PointsRea2004RelevesFin] AS SoldeRelevesFin,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2003RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2003RelevesDebut
  ) AS TotalDebit2003RelevesDebut,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2003RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2003RelevesDebut
  ) AS TotalCredit2003RelevesDebut,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.Solde2003RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.Solde2003RelevesDebut
  ) AS Solde2003RelevesDebut,
  IIf(
    (
      [SocResNbChd2003S1RelevesDebut] + [SocResNbChd2003S2RelevesDebut]
    ) > 0
    And (
      [SocResNbChd2002S1] + [SocResNbChd2002S2]
    ) > 0,
    IIf(
      (
        [SocResNbChd2003S1RelevesDebut] + [SocResNbChd2003S2RelevesDebut]
      ) >= [SocResNbChd2002S1] + [SocResNbChd2002S2],
      1.2,
      1
    ),
    1
  ) AS BonusRea2003RelevesDebut,
  Round(
    (
      [TotalCredit2003RelevesDebut] * [BonusRea2003RelevesDebut]
    ) -([TotalCredit2003RelevesDebut]),
    0
  ) AS PointsRea2003RelevesDebut,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2004RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalDebit2004RelevesDebut
  ) AS TotalDebit2004RelevesDebut,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2004RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.TotalCredit2004RelevesDebut
  ) AS TotalCredit2004RelevesDebut,
  IIf(
    IsNull(
      SelSocietesSoldesExercicesDetaillerReleves.Solde2004RelevesDebut
    ),
    0,
    SelSocietesSoldesExercicesDetaillerReleves.Solde2004RelevesDebut
  ) AS Solde2004RelevesDebut,
  IIf(
    (
      [SocResNbChd2004S1RelevesDebut] + [SocResNbChd2004S2RelevesDebut]
    ) > 0
    And (
      [SocResNbChd2003S1RelevesDebut] + [SocResNbChd2003S2RelevesDebut]
    ) > 0,
    IIf(
      (
        [SocResNbChd2004S1RelevesDebut] + [SocResNbChd2004S2RelevesDebut]
      ) >= [SocResNbChd2003S1RelevesDebut] + [SocResNbChd2003S2RelevesDebut],
      1.2,
      1
    ),
    1
  ) AS BonusRea2004RelevesDebut,
  Round(
    (
      [TotalCredit2004RelevesDebut] * [BonusRea2004RelevesDebut]
    ) -([TotalCredit2004RelevesDebut]),
    0
  ) AS PointsRea2004RelevesDebut,
  [TotalDebit2003RelevesDebut] + [TotalDebit2004RelevesDebut] AS TotalDebitRelevesDebut,
  [TotalCredit2003RelevesDebut] + [TotalCredit2004RelevesDebut] AS TotalCreditRelevesDebut,
  [Solde2003RelevesDebut] + [PointsRea2003RelevesDebut] + [Solde2004RelevesDebut] + [PointsRea2004RelevesDebut] AS SoldeRelevesDebut
FROM
  SelSocietesResultatsSemestresDetaillerReleves
  LEFT JOIN SelSocietesSoldesExercicesDetaillerReleves ON SelSocietesResultatsSemestresDetaillerReleves.SocResSocNum = SelSocietesSoldesExercicesDetaillerReleves.MvtSocNum;
