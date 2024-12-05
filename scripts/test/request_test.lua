---
--- DateTime: 2024/12/4 16:30
---

local http = require("socket.http")

local json = require("lib.json.json")
local inspect = require("lib.inspect.inspect")

local utils = require("lib.shihao.utils")
local log = require("lib.shihao.module.log")

local url = "http://127.0.0.1:8000/ninjaja/api/small_game"

-- 设置超时时间为 x s
http.TIMEOUT = 0.5

---@param headers table
local function is_json_response(headers)
    return (string.find(headers["content-type"], "application/json")) ~= nil
end

-- 2024-12-04：饥荒联机版的底层并不支持网络请求... 而且网络请求延迟太高，Lua 层只有单线程，这样会影响游戏主线程的...
if select("#", ...) == 0 then

    local response, status, headers

    utils.time_block(function()
        response, status, headers = http.request(url)
    end)

    if status == 200 then
        if not is_json_response(headers) then
            log.error("请求响应的内容格式必须是 application/json")
            return
        end

        print("Response body:")
        ---@type table
        local body = json.decode(response)
        print(inspect.inspect(body, { depth = 1 }))
        --print(inspect.inspect(headers))
    else
        print("HTTP request failed with status: " .. status)
        print(response)
        local body = json.decode(response)
        print(inspect.inspect(body))
    end
end
