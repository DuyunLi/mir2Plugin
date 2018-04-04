
var formatMarster = function(data,offset)
{
  if(parseInt(data[0][1])>0){
    var str = "";
    str+="<text:需要元宝：:"+(parseInt(offset) + 250)+":114{FCOLOR=251}>\n";
    str+="<ImgNum:4:"+data[0][1]+":-7:"+(parseInt(offset) + 245)+":101>\\\n";
    return str;
  }else
  {
    return "";
  }
}
var formatDetail = function(data,ps)
{
  var str = "";
  for(var i = 0; i<data.length;i++)
  {
    switch(i)
    {
      case 0:
        str+="<ItemShow:"+data[i][0]+":"+data[i][1]+":160:50:1>\n";
      break;
      case 1:
        str+="<ItemShow:"+data[i][0]+":"+data[i][1]+":250:50:1>\\\n";
      break;
      case 2:
        str+="<ItemShow:"+data[i][0]+":"+data[i][1]+":160:90:1>\n";
      break;
    }
  }
  if(data.length<2)
  {
    str+="\\\n";
  }
  return str;
}
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  var mar = formatMarster(data[0],data[1].length<3?40:0);
  var detail = formatDetail(data[1],ps);
  return detail+mar+"<ImgEX:9:32:33:34:195:130/@确认按钮点击("+data[0][0]+")><text:开始铸魂:120:141{FCOLOR=251}>\n";
  
}
format(retSources,jsParams);