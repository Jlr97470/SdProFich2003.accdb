SELECT DISTINCT
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocTypCode,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal AS SocVilCodePostal,
  TBLVILLES.VilNom AS SocVilNom,
  First(SelContactsInscrit.ConNum) AS SDDRConNum,
  First(SelContactsInscrit.ConCivCode) AS SDDRConCivCode,
  First(SelContactsInscrit.ConFonCode) AS SDDRConFonCode,
  First(SelContactsInscrit.ConNom) AS SDDRConNom,
  First(SelContactsInscrit.ConPrenom) AS SDDRConPrenom
FROM
  (
    TBLVILLES
    INNER JOIN (
      TBLSOCIETES
      INNER JOIN TBLCONTACTS ON TBLSOCIETES.SocNum = TBLCONTACTS.ConSocNum
    ) ON TBLVILLES.VilNum = TBLSOCIETES.SocVilNum
  )
  INNER JOIN SelContactsInscrit ON TBLSOCIETES.SocNum = SelContactsInscrit.ConSocNum
WHERE
  (
    (
      (TBLSOCIETES.SocTypCode) = "DR"
    )
    AND (
      (TBLCONTACTS.ConFonCode) = "ATC"
    )
    AND (
      (TBLCONTACTS.ConInscrit) = True
    )
    AND (
      (SelContactsInscrit.ConFonCode) = "SDDR"
    )
  )
GROUP BY
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocTypCode,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal,
  TBLVILLES.VilNom;
