SELECT
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocSocNum,
  TBLSOCIETES.SocConNum,
  TBLSOCIETES.SocTypCode,
  TBLSOCIETES.SocAdh,
  TBLSOCIETES.SocDateCre,
  TBLSOCIETES.SocDateMaj,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocSTAOld,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal AS SocVilCodePostal,
  TBLVILLES.VilNom AS SocVilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel1Lib,
  TBLSOCIETES.SocTel2,
  TBLSOCIETES.SocTel2Lib,
  TBLSOCIETES.SocFax,
  TBLSOCIETES.SocEMail,
  TBLSOCIETES.SocWeb,
  TBLSOCIETES.SocNotes,
  First(SelContactsInscrit.ConNum) AS ConNum,
  First(SelContactsInscrit.ConCivCode) AS ConCivCode,
  First(SelContactsInscrit.ConNom) AS ConNom,
  First(SelContactsInscrit.ConPrenom) AS ConPrenom,
  First(SelContactsInscrit.ConTelPort) AS ConTelPort,
  First(SelContactsInscrit.ConEMail) AS ConEMail
FROM
  TBLVILLES
  RIGHT JOIN (
    TBLSOCIETES
    LEFT JOIN SelContactsInscrit ON TBLSOCIETES.SocNum = SelContactsInscrit.ConSocNum
  ) ON TBLVILLES.VilNum = TBLSOCIETES.SocVilNum
WHERE
  (
    (
      (TBLSOCIETES.SocTypCode) = "STA"
    )
  )
GROUP BY
  TBLSOCIETES.SocNum,
  TBLSOCIETES.SocSocNum,
  TBLSOCIETES.SocConNum,
  TBLSOCIETES.SocTypCode,
  TBLSOCIETES.SocAdh,
  TBLSOCIETES.SocDateCre,
  TBLSOCIETES.SocDateMaj,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocSTAOld,
  TBLSOCIETES.SocRaison,
  TBLSOCIETES.SocAdresse,
  TBLVILLES.VilCodePostal,
  TBLVILLES.VilNom,
  TBLSOCIETES.SocTel1,
  TBLSOCIETES.SocTel1Lib,
  TBLSOCIETES.SocTel2,
  TBLSOCIETES.SocTel2Lib,
  TBLSOCIETES.SocFax,
  TBLSOCIETES.SocEMail,
  TBLSOCIETES.SocWeb,
  TBLSOCIETES.SocNotes
ORDER BY
  TBLSOCIETES.SocNum;
