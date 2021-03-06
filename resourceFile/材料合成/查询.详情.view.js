var formatMarster=function(data,ps)
{
   if(data.length==0)
   {
     return "";
   }
   var str = "";
   str +=" \\\n";
   str +="<ItemShow:"+data[0][0]+":"+data[0][1]+":290:128:1>\n";
   str +=" \\ \\\n";
   str +="<text:需要元宝：:290:155{FCOLOR=249}><ImgNum:5:"+data[0][2]+":0:290:151>\\\n";
   str +="<text:合成数量：:290:170{FCOLOR=250}><ImgNum:6:<$str(N$SynthesisResultCount)>:0:290:160>\n";
   str +="<text:修改数量:295:170{FCOLOR=251}/@@InputInteger18>\\\n";
   str +="<imgex:9:32:33:34:288:176:0/@startSynthesis>\n";
   str +="<text:开始锻造:215:187:{FCOLOR=250}>\n";
   str +="<text:返回:250:190{FCOLOR=251}/@backSynthesis>\n";
   return str;
}
var formatDetail=function(data,ps)
{
  if(data.length==0)
  {
    return " \\\n";
  }
  var str ="";
  var point = { x: 25, y: 160 };
    var step = { x: 10, y: 50 };
    var rowLeft = [-133, -302, 0, 0, 0, 0];
    var current = { x: point.x, y: point.y };
    var max = 4;
    var cellindex = 0;
    var rowIndex = 0;
    for (var i = 0; i < data.length; i++) {
        if (cellindex < max)
        {
            current.x += step.x;
            cellindex += 1;
        } else
        {
            current.x = rowLeft[rowIndex];
            current.y += step.y;
            rowIndex += 1;
            cellindex = 1;
        }
        str += "<ItemShow:" + data[i][0] + ":" + data[i][1] + ":" + current.x + ":" + current.y + ":1>\n";
    }
  
  str+=" \\\n";
  return str;
}
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  var marster = formatMarster(data[0],ps);
  if(marster=="")
  {
    return "";
  }
  var detail = formatDetail(data[1],ps);
  return detail + marster;
}
format(retSources,jsParams);
