UPDATE cdkeyMaster
   SET Recipient = '{1}',
       RecipientOn = datetime(CURRENT_TIMESTAMP, 'localtime'),
       status = 1
 WHERE cdk = '{0}' AND 
       ifnull(status, 0) = 0 AND 
       recipient IS NULL;
