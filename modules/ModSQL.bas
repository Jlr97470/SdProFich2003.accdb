Attribute VB_Name = "ModSQL"
Option Compare Database
Option Explicit

Const ADODBChaineMySQL = "DRIVER={MySQL ODBC 9.4 Unicode Driver};Database=SD;User ID=root;Password=Reunion@2024;SSLMODE=REQUIRED;"
Const ODBCChaineMySQL = "ODBC;DSN=SD;UID=root;PWD=Reunion@2024"

Private Const ModName = "ModExport"

Public Function ExporteMySQL() As Boolean
    Dim DatBase As DAO.Database
    Dim TdfTable As DAO.TableDef
    Dim QryRequete As DAO.QueryDef
    Dim RelRelation As DAO.Relation
    Dim FldChamp As DAO.Field
    Dim IndIndex As DAO.Index
    Dim ConBaseADODB As New ADODB.Connection
    Dim StrSQL As String
    Dim StrSQLReference As String
    Dim LngDebut As Long
    Dim LngFin As Long
    Dim StrNum As String

    On Error GoTo Err_ExporteMySQL

    ExporteMySQL = True

    Set DatBase = CurrentDb

    ConBaseADODB.Open ADODBChaineMySQL

    For Each TdfTable In DatBase.TableDefs

        If (TdfTable.Attributes And dbSystemObject) = 0 Then

            DoCmd.TransferDatabase acExport, "ODBC", ODBCChaineMySQL, acTable, TdfTable.Name, TdfTable.Name

            If Err.Number <> 0 Then

                Debug.Print StrSQL & ":" & Err.Number & Err.Description

                'MsgBox StrSQL & ":" & Err.Number & Err.Description

                Err.Clear

            End If

            On Error Resume Next

            For Each FldChamp In TdfTable.Fields

                If FldChamp.DefaultValue <> "" Then

                    Select Case FldChamp.Type
                        Case 8

                            If InStr(FldChamp.Name, "Heure") > 0 Then

                                If FldChamp.DefaultValue = "=Time()" Then

                                    StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " TIME " & IIf(FldChamp.Required, "NOT NULL", "") & " DEFAULT " & Replace(FldChamp.DefaultValue, "=Time()", "(CURRENT_TIME)") & ";"

                                Else

                                    StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " TIME " & IIf(FldChamp.Required, "NOT NULL", "") & " DEFAULT '" & "00:00:00" & "';"

                                End If

                            Else

                                If FldChamp.DefaultValue = "=Date()" Then

                                    StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " DATE " & IIf(FldChamp.Required, "NOT NULL", "") & " DEFAULT " & Replace(FldChamp.DefaultValue, "=Date()", "(CURRENT_DATE)") & ";"

                                Else

                                    StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " DATE " & IIf(FldChamp.Required, "NOT NULL", "") & " DEFAULT '" & "1989-12-31" & "';"

                                End If

                            End If

                        Case 10

                                StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " VARCHAR(" & FldChamp.Size & ") " & IIf(FldChamp.Required, "NOT NULL", "") & " DEFAULT '" & Replace(FldChamp.DefaultValue, """", "") & "';"

                        Case Else

                    End Select

                    ConBaseADODB.Execute StrSQL

                    If Err.Number <> 0 Then

                        Debug.Print StrSQL & ":" & Err.Number & Err.Description

                        'MsgBox StrSQL & ":" & Err.Number & Err.Description

                        Err.Clear

                    End If

                End If

                If FldChamp.Attributes = 17 Then

                    StrSQL = "ALTER TABLE " & TdfTable.Name & " MODIFY " & FldChamp.Name & " INT AUTO_INCREMENT PRIMARY KEY NOT NULL;"

                    ConBaseADODB.Execute StrSQL

                    If Err.Number <> 0 Then

                        Debug.Print StrSQL & ":" & Err.Number & Err.Description

                        'MsgBox StrSQL & ":" & Err.Number & Err.Description

                        Err.Clear

                    End If

                End If

            Next

        End If

        DoEvents

    Next

    For Each TdfTable In DatBase.TableDefs

        If (TdfTable.Attributes And dbSystemObject) = 0 Then

            For Each IndIndex In TdfTable.Indexes

                StrSQL = "CREATE " & IIf(IndIndex.Unique, "UNIQUE", "") & " INDEX " & Replace(Replace(Replace(IndIndex.Name, "{", ""), "}", ""), "-", "") & " ON " & TdfTable.Name & " ("

                For Each FldChamp In IndIndex.Fields

                    StrSQL = StrSQL & FldChamp.Name & IIf(TdfTable.Fields(FldChamp.Name).Type = 12, "(255)", "") & " ASC ,"

                Next

                StrSQL = Left(StrSQL, Len(StrSQL) - 1) & ");"

                ConBaseADODB.Execute StrSQL

                If Err.Number <> 0 Then

                    Debug.Print StrSQL & ":" & Err.Number & Err.Description

                    'MsgBox StrSQL & ":" & Err.Number & Err.Description

                    Err.Clear

                End If

                DoEvents

            Next

        End If

    Next

    For Each RelRelation In DatBase.Relations

        StrSQL = "ALTER TABLE " & RelRelation.ForeignTable & " ADD FOREIGN KEY ("

        StrSQLReference = " REFERENCES " & RelRelation.Table & "("

        For Each FldChamp In RelRelation.Fields

            StrSQL = StrSQL & FldChamp.ForeignName & " ,"

            StrSQLReference = StrSQLReference & FldChamp.Name & " ,"

        Next

        StrSQL = Left(StrSQL, Len(StrSQL) - 1) & ") "

        StrSQLReference = Left(StrSQLReference, Len(StrSQLReference) - 1) & ")" & IIf(RelRelation.Attributes And dbRelationDontEnforce, " ON UPDATE SET NULL ON DELETE SET NULL ", " ON UPDATE " & IIf(RelRelation.Attributes And dbRelationUpdateCascade, " CASCADE ", " RESTRICT ") & " ON DELETE " & IIf(RelRelation.Attributes And dbRelationDeleteCascade, " CASCADE ", " RESTRICT ")) & ";"

        StrSQL = StrSQL & StrSQLReference

        ConBaseADODB.Execute StrSQL

        If Err.Number <> 0 Then

            Debug.Print StrSQL & ":" & Err.Number & Err.Description

            'MsgBox StrSQL & ":" & Err.Number & Err.Description

            Err.Clear

        End If

        DoEvents

    Next

    For Each QryRequete In DatBase.QueryDefs

        If Mid(QryRequete.Name, 2, 3) <> "sq_" Then

            StrSQL = QryRequete.SQL

            Do While InStr(StrSQL, " TOP ") > 0

                LngDebut = InStr(StrSQL, " TOP ")

                LngFin = InStr(LngDebut + 5, StrSQL, " ")

                StrNum = Mid(StrSQL, LngDebut + 5, LngFin - (LngDebut + 5))

                StrSQL = Left(StrSQL, LngDebut) & Mid(StrSQL, LngFin + 1)

                LngDebut = InStr(LngDebut, StrSQL, ";")

                StrSQL = Left(StrSQL, LngDebut - 1) & " LIMIT " & StrNum & Mid(StrSQL, LngDebut)

            Loop

            StrSQL = "CREATE VIEW " & QryRequete.Name & " AS " & Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(StrSQL, ";)", ")"), Chr(34), Chr(39)), "[", ""), "]", ""), "LEN(", "LENGTH("), "Iif(", "If("), "SGN(", "SIGN("), "INT(", "CINT("), "SQR(", "SQRT(")

            ConBaseADODB.Execute StrSQL

            If Err.Number <> 0 Then

                Debug.Print StrSQL & ":" & Err.Number & Err.Description

                'MsgBox StrSQL & ":" & Err.Number & Err.Description

                Err.Clear

            End If

        End If

        DoEvents

    Next

    ConBaseADODB.Close

Exit_ExporteMySQL:

    Set DatBase = Nothing

    Set TdfTable = Nothing

    Set QryRequete = Nothing

    Set IndIndex = Nothing

    Set ConBaseADODB = Nothing

    Exit Function

Err_ExporteMySQL:

   ExporteMySQL = False

   MsgBox Err.Number & " " & Err.Description, vbCritical, ModName & ".ExporteMySQL()"

   Resume Exit_ExporteMySQL
End Function
