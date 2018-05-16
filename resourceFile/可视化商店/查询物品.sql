SELECT i.idx,
       i.srcIdx,
       CAST (i.unit * ifnull(si.discount, 1) AS INT) unit,
       i.quantity,
       it.Name
  FROM ShopItem i
       JOIN
       stditems it ON it.idx = i.srcIdx
       LEFT JOIN
       shopitemdiscount si ON si.active = 1 AND 
                              si.itemidx = i.idx AND 
                              si.userName = '{2}'
 WHERE i.active = 1 AND 
       i.shoptype = {3}
 LIMIT ({0} + 1) OFFSET {0} * ({1} - 1);
