SELECT
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  First(SelContactsInscrit.ConNom) AS ConNom,
  First(SelContactsInscrit.ConPrenom) AS ConPrenom,
  TBLSOCIETES.SocAdresse AS SocAdr,
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
    TBLSOCIETES
    LEFT JOIN SelContactsInscrit ON TBLSOCIETES.SocNum = SelContactsInscrit.ConSocNum
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
