SELECT UserName,
       Value,
       strftime('%Y,%m,%d,%H,%M,%S,', CreatedOn) time
  FROM FirstHuman
 WHERE FirstKey = '{0}';
