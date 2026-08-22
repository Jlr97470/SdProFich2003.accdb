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
  TBLSOCIETESCALL1.SocCallQst2 AS Qst2,
  Switch(
    IsNull([SocCallQst3])
    Or [SocCallQst3] = 0,
    "",
    [SocCallQst3] = 1,
    "OUI",
    [SocCallQst3] = 2,
    "NON"
  ) AS Qst3,
  TBLSOCIETESCALL1.SocCallQst4 AS Qst4,
  Switch(
    IsNull([SocCallQst5])
    Or [SocCallQst5] = 0,
    "",
    [SocCallQst5] = 1,
    "OUI",
    [SocCallQst5] = 2,
    "NON"
  ) AS Qst5,
  TBLSOCIETESCALL1.SocCallQst6 AS Qst6,
  Switch(
    IsNull([SocCallQst7])
    Or [SocCallQst7] = 0,
    "",
    [SocCallQst7] = 1,
    "OUI",
    [SocCallQst7] = 2,
    "NON"
  ) AS Qst7,
  TBLSOCIETESCALL1.SocCallQst8 AS Qst8,
  Switch(
    IsNull([SocCallQst9])
    Or [SocCallQst9] = 0,
    "",
    [SocCallQst9] = 1,
    "OUI",
    [SocCallQst9] = 2,
    "NON"
  ) AS Qst9,
  TBLSOCIETESCALL1.SocCallQst10 AS Qst10,
  Switch(
    IsNull([SocCallQst11])
    Or [SocCallQst11] = 0,
    "",
    [SocCallQst11] = 1,
    "OUI",
    [SocCallQst11] = 2,
    "NON"
  ) AS Qst11,
  TBLSOCIETESCALL1.SocCallQst12 AS Qst12,
  Switch(
    IsNull([SocCallQst13])
    Or [SocCallQst13] = 0,
    "",
    [SocCallQst13] = 1,
    "OUI",
    [SocCallQst13] = 2,
    "NON"
  ) AS Qst13,
  TBLSOCIETESCALL1.SocCallQst14 AS Qst14,
  Switch(
    IsNull([SocCallQst15])
    Or [SocCallQst15] = 0,
    "",
    [SocCallQst15] = 1,
    "OUI",
    [SocCallQst15] = 2,
    "NON"
  ) AS Qst15,
  TBLSOCIETESCALL1.SocCallQst16 AS Qst16,
  Switch(
    IsNull([SocCallQst17])
    Or [SocCallQst17] = 0,
    "",
    [SocCallQst17] = 1,
    "OUI",
    [SocCallQst17] = 2,
    "NON"
  ) AS Qst17,
  TBLSOCIETESCALL1.SocCallQst18 AS Qst18,
  Switch(
    IsNull([SocCallQst19])
    Or [SocCallQst19] = 0,
    "",
    [SocCallQst19] = 1,
    "OUI",
    [SocCallQst19] = 2,
    "NON"
  ) AS Qst19,
  TBLSOCIETESCALL1.SocCallQst20 AS Qst20,
  Switch(
    IsNull([SocCallQst21])
    Or [SocCallQst21] = 0,
    "",
    [SocCallQst21] = 1,
    "OUI",
    [SocCallQst21] = 2,
    "NON"
  ) AS Qst21,
  TBLSOCIETESCALL1.SocCallQst22 AS Qst22,
  Switch(
    IsNull([SocCallQst23])
    Or [SocCallQst23] = 0,
    "",
    [SocCallQst23] = 1,
    "OUI",
    [SocCallQst23] = 2,
    "NON"
  ) AS Qst23,
  TBLSOCIETESCALL1.SocCallQst24 AS Qst24,
  Switch(
    IsNull([SocCallQst25])
    Or [SocCallQst25] = 0,
    "",
    [SocCallQst25] = 1,
    "OUI",
    [SocCallQst25] = 2,
    "NON"
  ) AS Qst25,
  TBLSOCIETESCALL1.SocCallQst26 AS Qst26,
  Switch(
    IsNull([SocCallQst27])
    Or [SocCallQst27] = 0,
    "",
    [SocCallQst27] = 1,
    "OUI",
    [SocCallQst27] = 2,
    "NON"
  ) AS Qst27,
  TBLSOCIETESCALL1.SocCallQst28 AS Qst28,
  Switch(
    IsNull([SocCallQst29])
    Or [SocCallQst29] = 0,
    "",
    [SocCallQst29] = 1,
    "OUI",
    [SocCallQst29] = 2,
    "NON"
  ) AS Qst29,
  TBLSOCIETESCALL1.SocCallQst30 AS Qst30,
  Switch(
    IsNull([SocCallQst31])
    Or [SocCallQst31] = 0,
    "",
    [SocCallQst31] = 1,
    "OUI",
    [SocCallQst31] = 2,
    "NON"
  ) AS Qst31,
  TBLSOCIETESCALL1.SocCallQst32 AS Qst32,
  Switch(
    IsNull([SocCallQst33])
    Or [SocCallQst33] = 0,
    "",
    [SocCallQst33] = 1,
    "OUI",
    [SocCallQst33] = 2,
    "NON"
  ) AS Qst33,
  TBLSOCIETESCALL1.SocCallQst34 AS Qst34,
  Switch(
    IsNull([SocCallQst35])
    Or [SocCallQst35] = 0,
    "",
    [SocCallQst35] = 1,
    "OUI",
    [SocCallQst35] = 2,
    "NON"
  ) AS Qst35,
  TBLSOCIETESCALL1.SocCallQst36 AS Qst36,
  Switch(
    IsNull([SocCallQst37])
    Or [SocCallQst37] = 0,
    "",
    [SocCallQst37] = 1,
    "OUI",
    [SocCallQst37] = 2,
    "NON"
  ) AS Qst37,
  TBLSOCIETESCALL1.SocCallQst38 AS Qst38,
  Switch(
    IsNull([SocCallQst39])
    Or [SocCallQst39] = 0,
    "",
    [SocCallQst39] = 1,
    "OUI",
    [SocCallQst39] = 2,
    "NON"
  ) AS Qst39,
  TBLSOCIETESCALL1.SocCallQst40 AS Qst40,
  Switch(
    IsNull([SocCallQst41])
    Or [SocCallQst41] = 0,
    "",
    [SocCallQst41] = 1,
    "OUI",
    [SocCallQst41] = 2,
    "NON"
  ) AS Qst41,
  TBLSOCIETESCALL1.SocCallQst42 AS Qst42,
  Switch(
    IsNull([SocCallQst43])
    Or [SocCallQst43] = 0,
    "",
    [SocCallQst43] = 1,
    "OUI",
    [SocCallQst43] = 2,
    "NON"
  ) AS Qst43,
  TBLSOCIETESCALL1.SocCallQst44 AS Qst44,
  Switch(
    IsNull([SocCallQst45])
    Or [SocCallQst45] = 0,
    "",
    [SocCallQst45] = 1,
    "OUI",
    [SocCallQst45] = 2,
    "NON"
  ) AS Qst45,
  TBLSOCIETESCALL1.SocCallQst46 AS Qst46,
  TBLSOCIETESCALL1.SocCallQst47 AS Qst47,
  TBLSOCIETESCALL1.SocCallQst48 AS Qst48,
  Switch(
    IsNull([SocCallQst49])
    Or [SocCallQst49] = 0,
    "",
    [SocCallQst49] = 1,
    "OUI",
    [SocCallQst49] = 2,
    "NON"
  ) AS Qst49,
  Switch(
    IsNull([SocCallQst50])
    Or [SocCallQst50] = 0,
    "",
    [SocCallQst50] = 1,
    "OUI",
    [SocCallQst50] = 2,
    "NON"
  ) AS Qst50,
  TBLSOCIETESCALL1.SocCallQst51 AS Qst51
FROM
  (
    SelSocietesSTAVillesContactsTAInscrit
    LEFT JOIN TBLSOCIETESAPPELS3 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESAPPELS3.SocAppSocNum
  )
  LEFT JOIN TBLSOCIETESCALL1 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESCALL1.SocCallSocNum
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
