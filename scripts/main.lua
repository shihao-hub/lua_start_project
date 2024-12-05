---
--- DateTime: 2024/12/3 10:04
--- Description: 项目启动入口
---

require("preload")

local dkjson = require("lib.dkjson.dkjson")
local json = require("lib.json.json")
local inspect = require("lib.inspect.inspect")

local log = require("lib.shihao.module.log")
local settings = require("settings")
local utils = require("lib.shihao.utils")

log.info("main start")

utils.invoke(function()
    --require("lib.a")
end)

log.info(1)

utils.invoke_safe(function()
    local v = 1 / 0
    log.info(v)
end)

log.info(2)


