WITH tsource AS (
    SELECT (
               SELECT COUNT(DISTINCT ID) 
                 FROM userInputText AS t2
                WHERE t2.ID <= t.ID AND 
                      status = 1 AND 
                      typeid = 1 AND 
                      Title LIKE '%{2}%'
           )
           AS rowNum,
           t.ID,
           t.Title,
           t.Text1,
           t.Text2,
           t.CreateBy,
           strftime('%Y.%m.%d %H',t.CreatedOn) date
      FROM userInputText t
     WHERE status = 1 AND 
           typeid = 1 AND 
           Title LIKE '%{2}%'
     ORDER BY CreatedOn DESC
)
SELECT '<text:' || rowNum || '.:115:-63&ltFCOLOR=250&gt>' || '<text:' || Title || ':115:-63&ltFCOLOR=250&gt>  ' || '<text:' || CreateBy || ':115:-63&ltFCOLOR=254&gt> ' || '<text:[' || date || ']:115:-63&ltFCOLOR=7&gt>\' || '<text:' || Text1 || ':130:-63&ltFCOLOR=255&gt>\' || '<text:' || Text2 || ':130:-63&ltFCOLOR=255&gt>\' text
  FROM tsource
 LIMIT {0} OFFSET {0} * ({1} - 1);
