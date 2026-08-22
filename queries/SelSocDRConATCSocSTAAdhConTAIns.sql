SELECT
  SelSocietesDRContactsATC.SocNum AS DRSocNum,
  SelSocietesDRContactsATC.SocRaison AS DRSocRaison,
  SelSocietesDRContactsATC.ATCConNum AS ATCConNum,
  SelSocietesDRContactsATC.ATCConCivCode AS ATCConCivCode,
  SelSocietesDRContactsATC.ATCConFonCode AS ATCConFonCode,
  SelSocietesDRContactsATC.ATCConNom AS ATCConNom,
  SelSocietesDRContactsATC.ATCConPrenom AS ATCConPrenom,
  SelSocietesDRContactsATC.ATCConInscrit AS ATCConInscrit,
  SelSocietesDRContactsATC.ATCConTelPort AS ATCConTelPort,
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal AS SocVilCodePostal,
  TBLVILLES.VilNom AS SocVilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel2,
  TBLSOCIETES.SocFax,
  First(SelContactsInscrit.ConFonCode) AS ConFonCode,
  First(SelContactsInscrit.ConCivCode) AS ConCivCode,
  First(SelContactsInscrit.ConNom) AS ConNom,
  First(SelContactsInscrit.ConPrenom) AS ConPrenom
FROM
  TBLVILLES
  RIGHT JOIN (
    SelSocietesDRContactsATC
    INNER JOIN (
      TBLSOCIETES
      LEFT JOIN SelContactsInscrit ON TBLSOCIETES.SocNum = SelContactsInscrit.ConSocNum
    ) ON SelSocietesDRContactsATC.ATCConNum = TBLSOCIETES.SocConNum
  ) ON TBLVILLES.VilNum = TBLSOCIETES.SocVilNum
WHERE
  (
    (
      (TBLSOCIETES.SocTypCode) = "STA"
    )
    AND (
      (TBLSOCIETES.SocAdh) = True
    )
  )
GROUP BY
  SelSocietesDRContactsATC.SocNum,
  SelSocietesDRContactsATC.SocRaison,
  SelSocietesDRContactsATC.ATCConNum,
  SelSocietesDRContactsATC.ATCConCivCode,
  SelSocietesDRContactsATC.ATCConFonCode,
  SelSocietesDRContactsATC.ATCConNom,
  SelSocietesDRContactsATC.ATCConPrenom,
  SelSocietesDRContactsATC.ATCConInscrit,
  SelSocietesDRContactsATC.ATCConTelPort,
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal,
  TBLVILLES.VilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel2,
  TBLSOCIETES.SocFax
ORDER BY
  TBLSOCIETES.SocSTA;
