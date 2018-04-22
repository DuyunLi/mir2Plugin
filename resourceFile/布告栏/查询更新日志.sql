SELECT ID,
       Title,
       Text,
       CreateBy,
       date(CreatedOn)
  FROM userInputText
 WHERE status = 1 AND 
       typeid = 4
 ORDER BY CreatedOn DESC
 LIMIT {0} OFFSET {0} * ({1}-1);
