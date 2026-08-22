INSERT INTO TBLSOCIETESRESULTATSBONUS (
  SocNum, BonusRea2003, PointsRea2003,
  BonusRea2004, PointsRea2004, BonusISO2003S1,
  BonusISO2003S2, BonusISO2003S1Ann,
  BonusISO2003S2Ann, BonusISO2004S1,
  BonusISO2004S2, BonusISO2004S1Ann,
  BonusISO2004S2Ann
)
SELECT
  SelSocietesResultatsBonusDetailler.SocResSocNum,
  SelSocietesResultatsBonusDetailler.BonusRea2003,
  SelSocietesResultatsBonusDetailler.PointsRea2003,
  SelSocietesResultatsBonusDetailler.BonusRea2004,
  SelSocietesResultatsBonusDetailler.PointsRea2004,
  SelSocietesResultatsBonusDetailler.BonusISO2003S1,
  SelSocietesResultatsBonusDetailler.BonusISO2003S2,
  SelSocietesResultatsBonusDetailler.BonusISO2003S1Ann,
  SelSocietesResultatsBonusDetailler.BonusISO2003S2Ann,
  SelSocietesResultatsBonusDetailler.BonusISO2004S1,
  SelSocietesResultatsBonusDetailler.BonusISO2004S2,
  SelSocietesResultatsBonusDetailler.BonusISO2004S1Ann,
  SelSocietesResultatsBonusDetailler.BonusISO2004S2Ann
FROM
  SelSocietesResultatsBonusDetailler;
