SELECT
  SelSocietesSTAVillesContactsTAInscrit.SocSTA,
  SelSocietesSTAVillesContactsTAInscrit.SocRaison,
  SelSocietesSTAVillesContactsTAInscrit.ConNom,
  SelSocietesSTAVillesContactsTAInscrit.ConPrenom,
  DonneAdresse([SocAdresse], 1) AS SocAdr1,
  DonneAdresse([SocAdresse], 2) AS SocAdr2,
  DonneAdresse([SocAdresse], 3) AS SocAdr3,
  SelSocietesSTAVillesContactsTAInscrit.SocVilCodePostal,
  SelSocietesSTAVillesContactsTAInscrit.SocVilNom,
  SelSocietesSTAVillesContactsTAInscrit.SocTel1,
  SelSocietesSTAVillesContactsTAInscrit.SocTel2,
  SelSocietesSTAVillesContactsTAInscrit.ConTelPort,
  SelSocietesSTAVillesContactsTAInscrit.SocFax,
  SelSocietesSTAVillesContactsTAInscrit.SocEMail,
  SelSocietesSTAVillesContactsTAInscrit.SocWeb,
  TBLSOCIETESAPPELS3.SocAppDate,
  TBLSOCIETESAPPELS3.SocAppHeure,
  TBLSOCIETESAPPELS3.SocAppNotes,
  Switch(
    IsNull([SocCallQst1])
    Or [SocCallQst1] = 0,
    "",
    [SocCallQst1] = 1,
    "OUI",
    [SocCallQst1] = 2,
    "NON"
  ) AS Qst1,
  Switch(
    IsNull([SocCallQst2])
    Or [SocCallQst2] = 0,
    "",
    [SocCallQst2] = 1,
    "OUI",
    [SocCallQst2] = 2,
    "NON"
  ) AS Qst2,
  TBLSOCIETESCALL3.SocCallQst3 AS Qst3,
  TBLSOCIETESCALL3.SocCallQst4 AS Qst4,
  Switch(
    IsNull([SocCallQst5])
    Or [SocCallQst5] = 0,
    "",
    [SocCallQst5] = 1,
    "POUR CONVAINCRE VOTRE CLIENT D'ACHETER UNE CHAUDIERE PLUS HAUT DE GAMME",
    [SocCallQst5] = 2,
    "LORSQUE LE DEVIS DEPASSE UN CERTAIN MONTANT (INDIQUER LEQUEL)",
    [SocCallQst5] = 3,
    "LORSQUE LE CLIENT DEMANDE UN FINANCEMENT",
    [SocCallQst5] = 4,
    "DANS TOUS LES CAS",
    [SocCallQst5] = 5,
    "AUTRES"
  ) AS Qst5,
  TBLSOCIETESCALL3.SocCallQst6 AS Qst6,
  TBLSOCIETESCALL3.SocCallQst7 AS Qst7,
  Switch(
    IsNull([SocCallQst8])
    Or [SocCallQst8] = 0,
    "",
    [SocCallQst8] = 1,
    "OUI",
    [SocCallQst8] = 2,
    "NON"
  ) AS Qst8,
  Switch(
    IsNull([SocCallQst9])
    Or [SocCallQst9] = 0,
    "",
    [SocCallQst9] = 1,
    "OUI",
    [SocCallQst9] = 2,
    "NON"
  ) AS Qst9,
  Switch(
    IsNull([SocCallQst10])
    Or [SocCallQst10] = 0,
    "",
    [SocCallQst10] = 1,
    "OUI",
    [SocCallQst10] = 2,
    "NON"
  ) AS Qst10,
  Switch(
    IsNull([SocCallQst11])
    Or [SocCallQst11] = 0,
    "",
    [SocCallQst11] = 1,
    "OUI",
    [SocCallQst11] = 2,
    "NON"
  ) AS Qst11,
  Switch(
    IsNull([SocCallQst12])
    Or [SocCallQst12] = 0,
    "",
    [SocCallQst12] = 1,
    "OUI",
    [SocCallQst12] = 2,
    "NON"
  ) AS Qst12,
  Switch(
    IsNull([SocCallQst13])
    Or [SocCallQst13] = 0,
    "",
    [SocCallQst13] = 1,
    "OUI",
    [SocCallQst13] = 2,
    "NON"
  ) AS Qst13,
  Switch(
    IsNull([SocCallQst14])
    Or [SocCallQst14] = 0,
    "",
    [SocCallQst14] = 1,
    "OUI",
    [SocCallQst14] = 2,
    "NON"
  ) AS Qst14,
  TBLSOCIETESCALL3.SocCallQst15 AS Qst15,
  Switch(
    IsNull([SocCallQst17])
    Or [SocCallQst17] = 0,
    "",
    [SocCallQst17] = 1,
    "OUI",
    [SocCallQst17] = 2,
    "NON"
  ) AS Qst16,
  Switch(
    IsNull([SocCallQst17])
    Or [SocCallQst17] = 0,
    "",
    [SocCallQst17] = 1,
    "OUI",
    [SocCallQst17] = 2,
    "NON"
  ) AS Qst17,
  Switch(
    IsNull([SocCallQst18])
    Or [SocCallQst18] = 0,
    "",
    [SocCallQst18] = 1,
    "OUI",
    [SocCallQst18] = 2,
    "NON"
  ) AS Qst18,
  TBLSOCIETESCALL3.SocCallQst19 AS Qst19,
  Switch(
    IsNull([SocCallQst20])
    Or [SocCallQst20] = 0,
    "",
    [SocCallQst20] = 1,
    "TROP COMPLIQUE",
    [SocCallQst20] = 2,
    "PAS DE DEMANDE DES CLIENTS",
    [SocCallQst20] = 3,
    "CELA NE M'INTERESSE PAS (JE N'EN VOIS PAS L'INTERET)",
    [SocCallQst20] = 4,
    "AUTRE"
  ) AS Qst20,
  TBLSOCIETESCALL3.SocCallQst21 AS Qst21,
  TBLSOCIETESCALL3.SocCallQst22 AS Qst22
FROM
  (
    SelSocietesSTAVillesContactsTAInscrit
    LEFT JOIN TBLSOCIETESAPPELS3 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESAPPELS3.SocAppSocNum
  )
  LEFT JOIN TBLSOCIETESCALL3 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESCALL3.SocCallSocNum
WHERE
  (
    (
      (
        SelSocietesSTAVillesContactsTAInscrit.SocAdh
      ) = True
    )
  )
ORDER BY
  SelSocietesSTAVillesContactsTAInscrit.SocSTA;
