
var format = function(data,ps)
{
  var ret = "";
  ret+="<text:灵魂等级：["+(data.length==0?'D':data[0][3])+"]:120:216{FCOLOR="+(data.length==0?'7':data[0][4])+"}>";
  var length = data.length;
  for (var i =0;i<length;i++)
  {
     ret+="<text:灵魂属性：["+data[i][1]+"]"+data[i][0]+":90:"+(230 + parseInt(i*2))+"{FCOLOR="+data[i][1]+"}>\\\\n";
  }
  length = 4 - data.length;
  for(var i =0 ;i<length;i++)
  {
    ret+="\\\n";
  }
  return ret;
}
format(retSources[0]);