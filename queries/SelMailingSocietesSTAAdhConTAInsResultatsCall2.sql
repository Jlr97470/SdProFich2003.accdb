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
  Switch(
    IsNull([SocCallQst3])
    Or [SocCallQst3] = 0,
    "",
    [SocCallQst3] = 1,
    "OUI",
    [SocCallQst3] = 2,
    "NON"
  ) AS Qst3,
  Switch(
    IsNull([SocCallQst4])
    Or [SocCallQst4] = 0,
    "",
    [SocCallQst4] = 1,
    "OUI",
    [SocCallQst4] = 2,
    "NON"
  ) AS Qst4,
  Switch(
    IsNull([SocCallQst5])
    Or [SocCallQst5] = 0,
    "",
    [SocCallQst5] = 1,
    "OUI",
    [SocCallQst5] = 2,
    "NON"
  ) AS Qst5,
  Switch(
    IsNull([SocCallQst6])
    Or [SocCallQst6] = 0,
    "",
    [SocCallQst6] = 1,
    "OUI",
    [SocCallQst6] = 2,
    "NON"
  ) AS Qst6,
  Switch(
    IsNull([SocCallQst7])
    Or [SocCallQst7] = 0,
    "",
    [SocCallQst7] = 1,
    "OUI",
    [SocCallQst7] = 2,
    "NON"
  ) AS Qst7,
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
  Switch(
    IsNull([SocCallQst15])
    Or [SocCallQst15] = 0,
    "",
    [SocCallQst15] = 1,
    "OUI",
    [SocCallQst15] = 2,
    "NON"
  ) AS Qst15,
  Switch(
    IsNull([SocCallQst16])
    Or [SocCallQst16] = 0,
    "",
    [SocCallQst16] = 1,
    "OUI",
    [SocCallQst16] = 2,
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
  Switch(
    IsNull([SocCallQst19])
    Or [SocCallQst19] = 0,
    "",
    [SocCallQst19] = 1,
    "OUI",
    [SocCallQst19] = 2,
    "NON"
  ) AS Qst19,
  Switch(
    IsNull([SocCallQst20])
    Or [SocCallQst20] = 0,
    "",
    [SocCallQst20] = 1,
    "OUI",
    [SocCallQst20] = 2,
    "NON"
  ) AS Qst20,
  Switch(
    IsNull([SocCallQst21])
    Or [SocCallQst21] = 0,
    "",
    [SocCallQst21] = 1,
    "OUI",
    [SocCallQst21] = 2,
    "NON"
  ) AS Qst21,
  Switch(
    IsNull([SocCallQst22])
    Or [SocCallQst22] = 0,
    "",
    [SocCallQst22] = 1,
    "OUI",
    [SocCallQst22] = 2,
    "NON"
  ) AS Qst22,
  Switch(
    IsNull([SocCallQst23])
    Or [SocCallQst23] = 0,
    "",
    [SocCallQst23] = 1,
    "OUI",
    [SocCallQst23] = 2,
    "NON"
  ) AS Qst23,
  Switch(
    IsNull([SocCallQst24])
    Or [SocCallQst24] = 0,
    "",
    [SocCallQst24] = 1,
    "OUI",
    [SocCallQst24] = 2,
    "NON"
  ) AS Qst24,
  Switch(
    IsNull([SocCallQst25])
    Or [SocCallQst25] = 0,
    "",
    [SocCallQst25] = 1,
    "OUI",
    [SocCallQst25] = 2,
    "NON"
  ) AS Qst25,
  Switch(
    IsNull([SocCallQst26])
    Or [SocCallQst26] = 0,
    "",
    [SocCallQst26] = 1,
    "OUI",
    [SocCallQst26] = 2,
    "NON"
  ) AS Qst26,
  Switch(
    IsNull([SocCallQst27])
    Or [SocCallQst27] = 0,
    "",
    [SocCallQst27] = 1,
    "OUI",
    [SocCallQst27] = 2,
    "NON"
  ) AS Qst27,
  Switch(
    IsNull([SocCallQst28])
    Or [SocCallQst28] = 0,
    "",
    [SocCallQst28] = 1,
    "OUI",
    [SocCallQst28] = 2,
    "NON"
  ) AS Qst28,
  Switch(
    IsNull([SocCallQst29])
    Or [SocCallQst29] = 0,
    "",
    [SocCallQst29] = 1,
    "OUI",
    [SocCallQst29] = 2,
    "NON"
  ) AS Qst29,
  Switch(
    IsNull([SocCallQst30])
    Or [SocCallQst30] = 0,
    "",
    [SocCallQst30] = 1,
    "OUI",
    [SocCallQst30] = 2,
    "NON"
  ) AS Qst30,
  Switch(
    IsNull([SocCallQst31])
    Or [SocCallQst31] = 0,
    "",
    [SocCallQst31] = 1,
    "OUI",
    [SocCallQst31] = 2,
    "NON"
  ) AS Qst31,
  Switch(
    IsNull([SocCallQst32])
    Or [SocCallQst32] = 0,
    "",
    [SocCallQst32] = 1,
    "OUI",
    [SocCallQst32] = 2,
    "NON"
  ) AS Qst32,
  Switch(
    IsNull([SocCallQst33])
    Or [SocCallQst33] = 0,
    "",
    [SocCallQst33] = 1,
    "OUI",
    [SocCallQst33] = 2,
    "NON"
  ) AS Qst33,
  Switch(
    IsNull([SocCallQst34])
    Or [SocCallQst34] = 0,
    "",
    [SocCallQst34] = 1,
    "OUI",
    [SocCallQst34] = 2,
    "NON"
  ) AS Qst34,
  Switch(
    IsNull([SocCallQst35])
    Or [SocCallQst35] = 0,
    "",
    [SocCallQst35] = 1,
    "OUI",
    [SocCallQst35] = 2,
    "NON"
  ) AS Qst35,
  Switch(
    IsNull([SocCallQst36])
    Or [SocCallQst36] = 0,
    "",
    [SocCallQst36] = 1,
    "OUI",
    [SocCallQst36] = 2,
    "NON"
  ) AS Qst36,
  Switch(
    IsNull([SocCallQst37])
    Or [SocCallQst37] = 0,
    "",
    [SocCallQst37] = 1,
    "OUI",
    [SocCallQst37] = 2,
    "NON"
  ) AS Qst37,
  Switch(
    IsNull([SocCallQst38])
    Or [SocCallQst38] = 0,
    "",
    [SocCallQst38] = 1,
    "OUI",
    [SocCallQst38] = 2,
    "NON"
  ) AS Qst38,
  Switch(
    IsNull([SocCallQst39])
    Or [SocCallQst39] = 0,
    "",
    [SocCallQst39] = 1,
    "OUI",
    [SocCallQst39] = 2,
    "NON"
  ) AS Qst39,
  Switch(
    IsNull([SocCallQst40])
    Or [SocCallQst40] = 0,
    "",
    [SocCallQst40] = 1,
    "OUI",
    [SocCallQst40] = 2,
    "NON"
  ) AS Qst40,
  Switch(
    IsNull([SocCallQst41])
    Or [SocCallQst41] = 0,
    "",
    [SocCallQst41] = 1,
    "OUI",
    [SocCallQst41] = 2,
    "NON"
  ) AS Qst41,
  Switch(
    IsNull([SocCallQst42])
    Or [SocCallQst42] = 0,
    "",
    [SocCallQst42] = 1,
    "OUI",
    [SocCallQst42] = 2,
    "NON"
  ) AS Qst42,
  Switch(
    IsNull([SocCallQst43])
    Or [SocCallQst43] = 0,
    "",
    [SocCallQst43] = 1,
    "OUI",
    [SocCallQst43] = 2,
    "NON"
  ) AS Qst43,
  Switch(
    IsNull([SocCallQst44])
    Or [SocCallQst44] = 0,
    "",
    [SocCallQst44] = 1,
    "OUI",
    [SocCallQst44] = 2,
    "NON"
  ) AS Qst44,
  Switch(
    IsNull([SocCallQst45])
    Or [SocCallQst45] = 0,
    "",
    [SocCallQst45] = 1,
    "OUI",
    [SocCallQst45] = 2,
    "NON"
  ) AS Qst45,
  Switch(
    IsNull([SocCallQst46])
    Or [SocCallQst46] = 0,
    "",
    [SocCallQst46] = 1,
    "OUI",
    [SocCallQst46] = 2,
    "NON"
  ) AS Qst46,
  Switch(
    IsNull([SocCallQst47])
    Or [SocCallQst47] = 0,
    "",
    [SocCallQst47] = 1,
    "OUI",
    [SocCallQst47] = 2,
    "NON"
  ) AS Qst47,
  Switch(
    IsNull([SocCallQst48])
    Or [SocCallQst48] = 0,
    "",
    [SocCallQst48] = 1,
    "OUI",
    [SocCallQst48] = 2,
    "NON"
  ) AS Qst48,
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
  Switch(
    IsNull([SocCallQst51])
    Or [SocCallQst51] = 0,
    "",
    [SocCallQst51] = 1,
    "OUI",
    [SocCallQst51] = 2,
    "NON"
  ) AS Qst51,
  Switch(
    IsNull([SocCallQst52])
    Or [SocCallQst52] = 0,
    "",
    [SocCallQst52] = 1,
    "OUI",
    [SocCallQst52] = 2,
    "NON"
  ) AS Qst52,
  Switch(
    IsNull([SocCallQst53])
    Or [SocCallQst53] = 0,
    "",
    [SocCallQst53] = 1,
    "OUI",
    [SocCallQst53] = 2,
    "NON"
  ) AS Qst53,
  Switch(
    IsNull([SocCallQst54])
    Or [SocCallQst54] = 0,
    "",
    [SocCallQst54] = 1,
    "OUI",
    [SocCallQst54] = 2,
    "NON"
  ) AS Qst54,
  Switch(
    IsNull([SocCallQst55])
    Or [SocCallQst55] = 0,
    "",
    [SocCallQst55] = 1,
    "OUI",
    [SocCallQst55] = 2,
    "NON"
  ) AS Qst55,
  Switch(
    IsNull([SocCallQst56])
    Or [SocCallQst56] = 0,
    "",
    [SocCallQst56] = 1,
    "OUI",
    [SocCallQst56] = 2,
    "NON"
  ) AS Qst56,
  Switch(
    IsNull([SocCallQst57])
    Or [SocCallQst57] = 0,
    "",
    [SocCallQst57] = 1,
    "OUI",
    [SocCallQst57] = 2,
    "NON"
  ) AS Qst57,
  Switch(
    IsNull([SocCallQst58])
    Or [SocCallQst58] = 0,
    "",
    [SocCallQst58] = 1,
    "OUI",
    [SocCallQst58] = 2,
    "NON"
  ) AS Qst58,
  Switch(
    IsNull([SocCallQst59])
    Or [SocCallQst59] = 0,
    "",
    [SocCallQst59] = 1,
    "OUI",
    [SocCallQst59] = 2,
    "NON"
  ) AS Qst59,
  Switch(
    IsNull([SocCallQst60])
    Or [SocCallQst60] = 0,
    "",
    [SocCallQst60] = 1,
    "OUI",
    [SocCallQst60] = 2,
    "NON"
  ) AS Qst60,
  Switch(
    IsNull([SocCallQst61])
    Or [SocCallQst61] = 0,
    "",
    [SocCallQst61] = 1,
    "OUI",
    [SocCallQst61] = 2,
    "NON"
  ) AS Qst61,
  Switch(
    IsNull([SocCallQst62])
    Or [SocCallQst62] = 0,
    "",
    [SocCallQst62] = 1,
    "OUI",
    [SocCallQst62] = 2,
    "NON"
  ) AS Qst62,
  Switch(
    IsNull([SocCallQst63])
    Or [SocCallQst63] = 0,
    "",
    [SocCallQst63] = 1,
    "OUI",
    [SocCallQst63] = 2,
    "NON"
  ) AS Qst63,
  Switch(
    IsNull([SocCallQst64])
    Or [SocCallQst64] = 0,
    "",
    [SocCallQst64] = 1,
    "OUI",
    [SocCallQst64] = 2,
    "NON"
  ) AS Qst64,
  Switch(
    IsNull([SocCallQst65])
    Or [SocCallQst65] = 0,
    "",
    [SocCallQst65] = 1,
    "OUI",
    [SocCallQst65] = 2,
    "NON"
  ) AS Qst65,
  Switch(
    IsNull([SocCallQst66])
    Or [SocCallQst66] = 0,
    "",
    [SocCallQst66] = 1,
    "OUI",
    [SocCallQst66] = 2,
    "NON"
  ) AS Qst66,
  Switch(
    IsNull([SocCallQst67])
    Or [SocCallQst67] = 0,
    "",
    [SocCallQst67] = 1,
    "OUI",
    [SocCallQst67] = 2,
    "NON"
  ) AS Qst67,
  Switch(
    IsNull([SocCallQst68])
    Or [SocCallQst68] = 0,
    "",
    [SocCallQst68] = 1,
    "OUI",
    [SocCallQst68] = 2,
    "NON"
  ) AS Qst68,
  Switch(
    IsNull([SocCallQst69])
    Or [SocCallQst69] = 0,
    "",
    [SocCallQst69] = 1,
    "OUI",
    [SocCallQst69] = 2,
    "NON"
  ) AS Qst69,
  Switch(
    IsNull([SocCallQst70])
    Or [SocCallQst70] = 0,
    "",
    [SocCallQst70] = 1,
    "OUI",
    [SocCallQst70] = 2,
    "NON"
  ) AS Qst70,
  Switch(
    IsNull([SocCallQst71])
    Or [SocCallQst71] = 0,
    "",
    [SocCallQst71] = 1,
    "OUI",
    [SocCallQst71] = 2,
    "NON"
  ) AS Qst71,
  Switch(
    IsNull([SocCallQst72])
    Or [SocCallQst72] = 0,
    "",
    [SocCallQst72] = 1,
    "OUI",
    [SocCallQst72] = 2,
    "NON"
  ) AS Qst72,
  Switch(
    IsNull([SocCallQst73])
    Or [SocCallQst73] = 0,
    "",
    [SocCallQst73] = 1,
    "OUI",
    [SocCallQst73] = 2,
    "NON"
  ) AS Qst73,
  Switch(
    IsNull([SocCallQst74])
    Or [SocCallQst74] = 0,
    "",
    [SocCallQst74] = 1,
    "OUI",
    [SocCallQst74] = 2,
    "NON"
  ) AS Qst74,
  Switch(
    IsNull([SocCallQst75])
    Or [SocCallQst75] = 0,
    "",
    [SocCallQst75] = 1,
    "OUI",
    [SocCallQst75] = 2,
    "NON"
  ) AS Qst75,
  Switch(
    IsNull([SocCallQst76])
    Or [SocCallQst76] = 0,
    "",
    [SocCallQst76] = 1,
    "OUI",
    [SocCallQst76] = 2,
    "NON"
  ) AS Qst76,
  TBLSOCIETESCALL2.SocCallQst77 AS Qst77,
  TBLSOCIETESCALL2.SocCallQst78 AS Qst78,
  Switch(
    IsNull([SocCallQst79])
    Or [SocCallQst79] = 0,
    "",
    [SocCallQst79] = 1,
    "OUI",
    [SocCallQst79] = 2,
    "NON"
  ) AS Qst79,
  Switch(
    IsNull([SocCallQst80])
    Or [SocCallQst80] = 0,
    "",
    [SocCallQst80] = 1,
    "OUI",
    [SocCallQst80] = 2,
    "NON"
  ) AS Qst80,
  TBLSOCIETESCALL2.SocCallQst81 AS Qst81,
  TBLSOCIETESCALL2.SocCallQst82 AS Qst82,
  Switch(
    IsNull([SocCallQst83])
    Or [SocCallQst83] = 0,
    "",
    [SocCallQst83] = 1,
    "OUI",
    [SocCallQst83] = 2,
    "NON"
  ) AS Qst83,
  TBLSOCIETESCALL2.SocCallQst84 AS Qst84,
  TBLSOCIETESCALL2.SocCallQst85 AS Qst85,
  Switch(
    IsNull([SocCallQst86])
    Or [SocCallQst86] = 0,
    "",
    [SocCallQst86] = 1,
    "OUI",
    [SocCallQst86] = 2,
    "NON"
  ) AS Qst86,
  TBLSOCIETESCALL2.SocCallQst87 AS Qst87,
  TBLSOCIETESCALL2.SocCallQst88 AS Qst88,
  Switch(
    IsNull([SocCallQst89])
    Or [SocCallQst89] = 0,
    "",
    [SocCallQst89] = 1,
    "OUI",
    [SocCallQst89] = 2,
    "NON"
  ) AS Qst89,
  TBLSOCIETESCALL2.SocCallQst90 AS Qst90,
  TBLSOCIETESCALL2.SocCallQst91 AS Qst91,
  Switch(
    IsNull([SocCallQst92])
    Or [SocCallQst92] = 0,
    "",
    [SocCallQst92] = 1,
    "OUI",
    [SocCallQst92] = 2,
    "NON"
  ) AS Qst92,
  TBLSOCIETESCALL2.SocCallQst93 AS Qst93,
  TBLSOCIETESCALL2.SocCallQst94 AS Qst94,
  Switch(
    IsNull([SocCallQst95])
    Or [SocCallQst95] = 0,
    "",
    [SocCallQst95] = 1,
    "OUI",
    [SocCallQst95] = 2,
    "NON"
  ) AS Qst95,
  TBLSOCIETESCALL2.SocCallQst96 AS Qst96,
  TBLSOCIETESCALL2.SocCallQst97 AS Qst97,
  Switch(
    IsNull([SocCallQst98])
    Or [SocCallQst98] = 0,
    "",
    [SocCallQst98] = 1,
    "OUI",
    [SocCallQst98] = 2,
    "NON"
  ) AS Qst98,
  TBLSOCIETESCALL2.SocCallQst99 AS Qst99,
  TBLSOCIETESCALL2.SocCallQst100 AS Qst100,
  Switch(
    IsNull([SocCallQst101])
    Or [SocCallQst101] = 0,
    "",
    [SocCallQst101] = 1,
    "OUI",
    [SocCallQst101] = 2,
    "NON"
  ) AS Qst101,
  TBLSOCIETESCALL2.SocCallQst102 AS Qst102,
  TBLSOCIETESCALL2.SocCallQst103 AS Qst103,
  Switch(
    IsNull([SocCallQst104])
    Or [SocCallQst104] = 0,
    "",
    [SocCallQst104] = 1,
    "OUI",
    [SocCallQst104] = 2,
    "NON"
  ) AS Qst104,
  TBLSOCIETESCALL2.SocCallQst105 AS Qst105,
  TBLSOCIETESCALL2.SocCallQst106 AS Qst106,
  Switch(
    IsNull([SocCallQst107])
    Or [SocCallQst107] = 0,
    "",
    [SocCallQst107] = 1,
    "OUI",
    [SocCallQst107] = 2,
    "NON"
  ) AS Qst107,
  TBLSOCIETESCALL2.SocCallQst108 AS Qst108,
  TBLSOCIETESCALL2.SocCallQst109 AS Qst109,
  Switch(
    IsNull([SocCallQst110])
    Or [SocCallQst110] = 0,
    "",
    [SocCallQst110] = 1,
    "OUI",
    [SocCallQst110] = 2,
    "NON"
  ) AS Qst110,
  TBLSOCIETESCALL2.SocCallQst111 AS Qst111,
  Switch(
    IsNull([SocCallQst112])
    Or [SocCallQst112] = 0,
    "",
    [SocCallQst112] = 1,
    "OUI",
    [SocCallQst112] = 2,
    "NON"
  ) AS Qst112,
  TBLSOCIETESCALL2.SocCallQst113 AS Qst113,
  Switch(
    IsNull([SocCallQst114])
    Or [SocCallQst114] = 0,
    "",
    [SocCallQst114] = 1,
    "OUI",
    [SocCallQst114] = 2,
    "NON"
  ) AS Qst114,
  TBLSOCIETESCALL2.SocCallQst115 AS Qst115,
  Switch(
    IsNull([SocCallQst116])
    Or [SocCallQst116] = 0,
    "",
    [SocCallQst116] = 1,
    "OUI",
    [SocCallQst116] = 2,
    "NON"
  ) AS Qst116,
  TBLSOCIETESCALL2.SocCallQst117 AS Qst117,
  Switch(
    IsNull([SocCallQst120])
    Or [SocCallQst120] = 0,
    "",
    [SocCallQst120] = 1,
    "OUI",
    [SocCallQst120] = 2,
    "NON"
  ) AS Qst120,
  TBLSOCIETESCALL2.SocCallQst121 AS Qst121,
  Switch(
    IsNull([SocCallQst122])
    Or [SocCallQst122] = 0,
    "",
    [SocCallQst122] = 1,
    "OUI",
    [SocCallQst122] = 2,
    "NON"
  ) AS Qst122,
  TBLSOCIETESCALL2.SocCallQst123 AS Qst123,
  Switch(
    IsNull([SocCallQst124])
    Or [SocCallQst124] = 0,
    "",
    [SocCallQst124] = 1,
    "OUI",
    [SocCallQst124] = 2,
    "NON"
  ) AS Qst124,
  TBLSOCIETESCALL2.SocCallQst125 AS Qst125,
  Switch(
    IsNull([SocCallQst126])
    Or [SocCallQst126] = 0,
    "",
    [SocCallQst126] = 1,
    "OUI",
    [SocCallQst126] = 2,
    "NON"
  ) AS Qst126,
  TBLSOCIETESCALL2.SocCallQst127 AS Qst127,
  Switch(
    IsNull([SocCallQst128])
    Or [SocCallQst128] = 0,
    "",
    [SocCallQst128] = 1,
    "OUI",
    [SocCallQst128] = 2,
    "NON"
  ) AS Qst128,
  Switch(
    IsNull([SocCallQst129])
    Or [SocCallQst129] = 0,
    "",
    [SocCallQst129] = 1,
    "OUI",
    [SocCallQst129] = 2,
    "NON"
  ) AS Qst129,
  TBLSOCIETESCALL2.SocCallQst130 AS Qst130,
  TBLSOCIETESCALL2.SocCallQst131 AS Qst131,
  Switch(
    IsNull([SocCallQst132])
    Or [SocCallQst132] = 0,
    "",
    [SocCallQst132] = 1,
    "OUI",
    [SocCallQst132] = 2,
    "NON"
  ) AS Qst132,
  Switch(
    IsNull([SocCallQst133])
    Or [SocCallQst133] = 0,
    "",
    [SocCallQst133] = 1,
    "OUI",
    [SocCallQst133] = 2,
    "NON"
  ) AS Qst133,
  Switch(
    IsNull([SocCallQst134])
    Or [SocCallQst134] = 0,
    "",
    [SocCallQst134] = 1,
    "OUI",
    [SocCallQst134] = 2,
    "NON"
  ) AS Qst134,
  Switch(
    IsNull([SocCallQst135])
    Or [SocCallQst135] = 0,
    "",
    [SocCallQst135] = 1,
    "OUI",
    [SocCallQst135] = 2,
    "NON"
  ) AS Qst135,
  Switch(
    IsNull([SocCallQst136])
    Or [SocCallQst136] = 0,
    "",
    [SocCallQst136] = 1,
    "OUI",
    [SocCallQst136] = 2,
    "NON"
  ) AS Qst136,
  TBLSOCIETESCALL2.SocCallQst137 AS Qst137
FROM
  (
    SelSocietesSTAVillesContactsTAInscrit
    LEFT JOIN TBLSOCIETESCALL2 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESCALL2.SocCallSocNum
  )
  LEFT JOIN TBLSOCIETESAPPELS3 ON SelSocietesSTAVillesContactsTAInscrit.SocNum = TBLSOCIETESAPPELS3.SocAppSocNum
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
