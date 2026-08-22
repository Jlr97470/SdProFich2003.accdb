SELECT
  TBLCADEAUXACHATS.CadAchNum,
  TBLCADEAUXACHATS.CadAchDateSaisie,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  First(SelContactsInscrit.ConNom) AS ConNom,
  First(SelContactsInscrit.ConPrenom) AS ConPrenom,
  First(
    IIf(
      [CadAchAdrPerso] = True, [ConPerAdr],
      [SocAdresse]
    )
  ) AS CadAchAdresse,
  First(
    IIf(
      [CadAchAdrPerso] = True, TBLVILLES_2.VilCodePostal,
      TBLVILLES.VilCodePostal
    )
  ) AS CadAchVilCodePostal,
  First(
    IIf(
      [CadAchAdrPerso] = True, TBLVILLES_2.VilNom,
      TBLVILLES.VilNom
    )
  ) AS CadAchVilNom,
  First(
    IIf(
      [CadAchAdrPerso] = True, [ConPerTel],
      [SocTel1]
    )
  ) AS CadAchTel,
  TBLEXERCICES.ExeExercice AS CadExeExercice,
  TBLCADEAUXACHATS.CadAchQuantite,
  TBLCADEAUXARTICLES.CadArtRef,
  TBLCADEAUXARTICLES.CadArtDescription
FROM
  TBLVILLES
  RIGHT JOIN (
    (
      (
        (
          TBLSOCIETES
          LEFT JOIN SelContactsInscrit ON TBLSOCIETES.SocNum = SelContactsInscrit.ConSocNum
        )
        LEFT JOIN TBLVILLES AS TBLVILLES_1 ON SelContactsInscrit.ConVilNum = TBLVILLES_1.VilNum
      )
      LEFT JOIN TBLVILLES AS TBLVILLES_2 ON SelContactsInscrit.ConPerVilNum = TBLVILLES_2.VilNum
    )
    INNER JOIN (
      TBLEXERCICES
      INNER JOIN (
        TBLCADEAUXARTICLES
        INNER JOIN TBLCADEAUXACHATS ON TBLCADEAUXARTICLES.CadArtNum = TBLCADEAUXACHATS.CadAchCadArtNum
      ) ON TBLEXERCICES.ExeNum = TBLCADEAUXARTICLES.CadArtExeNum
    ) ON TBLSOCIETES.SocNum = TBLCADEAUXACHATS.CadAchSocNum
  ) ON TBLVILLES.VilNum = TBLSOCIETES.SocVilNum
GROUP BY
  TBLCADEAUXACHATS.CadAchNum,
  TBLCADEAUXACHATS.CadAchDateSaisie,
  TBLSOCIETES.SocSTA,
  TBLSOCIETES.SocRaison,
  TBLEXERCICES.ExeExercice,
  TBLCADEAUXACHATS.CadAchQuantite,
  TBLCADEAUXARTICLES.CadArtRef,
  TBLCADEAUXARTICLES.CadArtDescription,
  TBLCADEAUXACHATS.CadAchEtat
HAVING
  (
    (
      (
        TBLCADEAUXACHATS.CadAchDateSaisie
      ) >=(
        SELECT
          ParValeur
        FROM
          TBLPARAMETRESGENERAUX
        WHERE
          ParType = 'CADEAU'
          AND ParCode = 'DATE';
      )
    )
    AND (
      (TBLCADEAUXACHATS.CadAchEtat) = "Commandé"
    )
  )
ORDER BY
  TBLCADEAUXACHATS.CadAchDateSaisie DESC,
  TBLCADEAUXACHATS.CadAchNum DESC;
