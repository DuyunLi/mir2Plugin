
var formatMarster = function(data)
{
  if(data.length==1){
    return "<ItemShow:"+data[0][0]+":"+data[0][1]+":225:154:1>\\\n";
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
    str+="<ItemShow:"+data[i][0]+":"+data[i][1]+":"+ (15 + i * 3) +":170:1>\n";
  }
  str+="\\\n";
  return str;
}
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  
  var mar = formatMarster(data[0]);
  if(mar=="")
  {
    return "";
  }else
  {
    var detail = formatDetail(data[1],ps);
    if(detail=="")
    {
      return "";
    }
    var ret = "";
    ret+="<text:合成材料:0:163{FCOLOR=251}>\n";
    ret+="<text:物品展示:160:163{FCOLOR=253}>\\\n";
    ret+=detail;
    ret+=mar;
    ret+="<ImgEX:9:66:67:68:300:148/@升级按钮点击>\\\n";
    return ret;
  }
}
format(retSources,jsParams);