UPDATE refereeItem
   SET Status = 1,
       ReceiveDate= datetime(CURRENT_TIMESTAMP, 'localtime') 
 WHERE userName = '{0}' AND 
       strftime('%Y-%m-%d', CURRENT_TIMESTAMP, 'localtime') = strftime('%Y-%m-%d', GenerateDate) AND 
       Status = 0 AND 
       ReceiveDate IS NULL;
