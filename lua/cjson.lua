--
-- Created by IntelliJ IDEA.
-- User: 51offer
-- Date: 2016/3/21
-- Time: 17:03
-- To change this template use File | Settings | File Templates.
--

mytable ={};
mytable['id']=1;
mytable['name']='测试';
mytable['sex']='F';


ngx.say(type(mytable));
ngx.say('<br/>');
for k,v in pairs(mytable) do
    ngx.say(k,":",v,'<br/>');
end
--json
json = require 'cjson';
jsonStr = json.encode(mytable);
ngx.say(jsonStr);

