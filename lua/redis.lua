--
-- Created by IntelliJ IDEA.
-- User: 51offer
-- Date: 2016/3/21
-- Time: 16:14
-- To change this template use File | Settings | File Templates.
--

---redis相关
local redis = require "resty.redis"

local cache = redis.new()

local ok, err = cache.connect(cache, '127.0.0.1', '6379')

cache:set_timeout(60000)

if not ok then
    ngx.say("failed to connect:", err)
    return
end

---设置值
res, err = cache:set("dog", "an aniaml")
if not ok then
    ngx.say("failed to set dog: ", err)
    return
end

ngx.say("set result: ", res)

local res, err = cache:get("dog")
if not res then
    ngx.say("failed to get dog: ", err)
    return
end

if res == ngx.null then
    ngx.say("dog not found.")
    return
end

ngx.say("dog: ", res)


local ok, err = cache:close()

if not ok then
    ngx.say("failed to close:", err)
    return
end