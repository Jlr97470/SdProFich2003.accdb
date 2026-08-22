SELECT
  TBLMOUVEMENTS.*
FROM
  TBLMOUVEMENTS
WHERE
  (
    (
      (TBLMOUVEMENTS.MvtMvtNatNum) = 4
    )
    AND (
      (TBLMOUVEMENTS.MvtQuantite) < 0
    )
  );
