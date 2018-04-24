WITH tsource AS (
    SELECT t.ID,
           t.Title,
           t.Text1,
           t.CreateBy,
           strftime('%Y.%m.%d', t.CreatedOn) date
      FROM userInputText t
     WHERE typeid = 4
     ORDER BY CreatedOn DESC
)
SELECT '<text:' || Title || ':215:-51&ltFCOLOR=250&gt> <text:[' || date || ']:215:-51&ltFCOLOR=7&gt>\\' || Text1 text
  FROM tsource
 LIMIT {0} OFFSET {0} * ({1} - 1);
