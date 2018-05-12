SELECT ifnull(s.name, d.SrcIdx),
       d.Count
  FROM cdkeyMaster m
       JOIN
       cdkeyDetail d ON m.CDKID = d.CDKID
       LEFT JOIN
       stditems s ON s.idx = d.SrcIdx
 WHERE cdk = '{0}' AND 
       recipient = '{1}';
