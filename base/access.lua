--
-- Created by IntelliJ IDEA.
-- User: lance
-- Date: 2017/04/25 15:17
-- Desc:允许通过或者不通过

if ngx.req.get_uri_args()["token"] ~= "123" then
    return ngx.exit(403)
end

ngx.say(ngx.req.get_uri_args()["token"]);




