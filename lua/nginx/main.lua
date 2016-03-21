--
-- Created by IntelliJ IDEA.
-- User: 51offer
-- Date: 2016/3/21
-- Time: 16:20
-- To change this template use File | Settings | File Templates.
--
ngx.log(ngx.ERR,"err err");
if true then
    ngx.say("测试");
end

--return ngx.exec("/web");
--请求转发到location
return ngx.exec("@web");

