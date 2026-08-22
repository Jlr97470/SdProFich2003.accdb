SELECT
  SelSocietesDRContactsATC.SocRaison AS DRSocRaison,
  SelSocietesDRContactsATC.ATCConNum AS ATCConNum,
  SelSocietesDRContactsATC.ATCConNom AS ATCConNom,
  SelSocietesDRContactsATC.ATCConPrenom AS ATCConPrenom,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  First(SelContactsInscrit.ConNom) AS ConNom,
  First(SelContactsInscrit.ConPrenom) AS ConPrenom,
  SelSocietesDRContactsATC.SocAdresse AS SocAdr,
  TBLVILLES.VilCodePostal AS SocVilCodePostal,
  TBLVILLES.VilNom AS SocVilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel2,
  First(SelContactsInscrit.ConTelPort) AS ConTelPort,
  TBLSOCIETES.SocFax,
  First(TBLSOCIETES.SocEMail) AS SocEMail,
  First(TBLSOCIETES.SocWeb) AS SocWeb
FROM
  TBLVILLES
  INNER JOIN (
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
  SelSocietesDRContactsATC.SocRaison,
  SelSocietesDRContactsATC.ATCConNum,
  SelSocietesDRContactsATC.ATCConNom,
  SelSocietesDRContactsATC.ATCConPrenom,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  SelSocietesDRContactsATC.SocAdresse,
  TBLVILLES.VilCodePostal,
  TBLVILLES.VilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel2,
  TBLSOCIETES.SocFax
ORDER BY
  SelSocietesDRContactsATC.SocRaison,
  SelSocietesDRContactsATC.ATCConNum,
  TBLSOCIETES.SocSTA;
