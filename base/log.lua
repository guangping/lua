--
-- Created by IntelliJ IDEA.
-- User: lance
-- Date: 2017/05/03 14:38
-- Desc:记录日志

local cjson = require "cjson"

local log_json = {}
log_json["uri"]=ngx.var.uri
log_json["args"]=ngx.var.args
log_json["host"]=ngx.var.host
log_json["request_body"]=ngx.var.request_body
log_json["remote_addr"] = ngx.var.remote_addr
log_json["remote_user"] = ngx.var.remote_user
log_json["time_local"] = ngx.var.time_local
log_json["status"] = ngx.var.status
log_json["body_bytes_sent"] = ngx.var.body_bytes_sent
log_json["http_referer"] = ngx.var.http_referer
log_json["http_user_agent"] = ngx.var.http_user_agent
log_json["http_x_forwarded_for"] = ngx.var.http_x_forwarded_for
log_json["upstream_response_time"] = ngx.var.upstream_response_time
log_json["request_time"] = ngx.var.request_time

-- 转换json为字符串
local message = cjson.encode(log_json);

