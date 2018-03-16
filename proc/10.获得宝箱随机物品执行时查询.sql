select box.srcIDx,std.name,box.count,box.probability,box.luck,box.fail,box.sort from treasureBox box
join stditems std on std.idx = srcIdx
where box.idx = {0} And box.type = 1 and box.isactive = 1
order by sort