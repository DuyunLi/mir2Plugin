
var format = function(data,ps)
{
  if(data[0].length==0)
  {
    return "";
  }
  var items = data[0];
  var str = "";
  if(parseInt(ps[0])<=items.length)
  {
    str ="<imgex:9:163:163:164:120:405:/@backPage><imgex:9:166:166:165:130:405:/@nextPage>\\\n";
  }else  
  {
    str ="<imgex:9:163:163:164:120:405:/@backPage>\\\n";
  }

  for (var index = 0; index < items.length; index++) {
    
    if(index == items.length -1)
    {
      continue ;
    }
    var element = items[index];
    str+="<Img:<$str(n252)>:9:60:57:-1>\n";
    str+="<ItemShow:"+element[1]+":"+element[3]+":-230:54:-1>\n";
    str+="<imgex:9:167:167:168:-60:66:/@clickitem("+element[0]+","+element[4]+","+element[3]+")>\\\n";
    str+="<text:"+element[4]+"x"+element[3]+":112:46{FCOLOR=250}>\\\n";
    str+="<ImgNum:1:"+element[2]+":-3:110:44>\\\n";
  }
  
  return  str;
}
format(retSources,jsParams);