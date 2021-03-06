var formatDetail = function(data,ps)
{
  var str = "";
  
    var point = { x: 23, y: 180 };
    var step = { x: 11, y: 53 };
    var rowLeft = [-301, -637, 0, 0, 0, 0];
    var current = { x: point.x, y: point.y };
    var max = 8;
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
        str += "<ItemShow:" + data[i][1] + ":" + data[i][2] + ":" + current.x + ":" + current.y + ":1/@ClickSynthesisDetail("+data[i][0]+")>\n";
    }
  
  str+=" \\\n";
  return str;
}
var formatPage = function(data)
{
    var str ="";
    var count = data[0][0];
    var index= data[0][1];
    var size= data[0][2];
    var max =parseInt( count/size) + (count %size ==0?0:1);
    if(max<=1)
    {
      return "";
    }
    if(index>1)
    {
        str+="<ImgEx:9:430:431:432:320:305/@ClickSynthesisPage("+(+index-1)+")>\\ \\\n";
    }else
    {
      str+=" \\\n";
    }
    if(index<max-1)
    {
        str+="<ImgEx:9:433:434:435:390:289/@ClickSynthesisPage("+(+index+1)+")>\\\n";
    }
    return str;
}
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  var detail = formatDetail(data[0],ps);
  if(detail=="")
  {
    return "";
  }
  var page = formatPage(data[1]);
  var ret = "";
  ret+=detail;
  ret+="  <text:温馨提示：请点击需要锻造的物品:35:325{FCOLOR=253}>\\\n";
  ret+=page;
  return ret;
  
}
format(retSources,jsParams);
