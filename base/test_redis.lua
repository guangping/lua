--
-- Created by IntelliJ IDEA.
-- User: lance
-- Date: 2017/04/25 15:57
-- Desc:测试redis使用

local function close_redis(red)
    if not red then
        return
    end
    --释放连接(连接池实现)
    local pool_max_idle_time = 10000 --毫秒
    local pool_size = 100 --连接池大小
    local ok, err = red:set_keepalive(pool_max_idle_time, pool_size)
    if not ok then
        ngx.say("set keepalive error : ", err)
    end
end

local redis = require("resty.redis")
--创建实例
local red = redis:new()
--设置超时（毫秒）
red:set_timeout(1000)
--建立连接
local ip = "127.0.0.1"
local port = 6379
local ok, err = red:connect(ip, port)
if not ok then
    ngx.say("connect to redis error : ", err)
    return close_redis(red)
end

--set
ok, err = red:set("msg", "hello world")
if not ok then
    ngx.say("set msg error : ", err)
    return close_redis(red)
end


--get
local resp, err = red:get("json")
if not resp then
    ngx.say("get error : ", err)
    return close_reedis(red)
end

--得到的数据为空处理
if resp == ngx.null then
    resp = ''  --比如默认值
end

ngx.say("msg : ", resp)

close_redis(red)



