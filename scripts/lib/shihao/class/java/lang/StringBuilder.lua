---
--- DateTime: 2024/12/5 10:14
---


local class = require("lib.middleclass.middleclass")

local log = require("lib.shihao.module.log")

---@class StringBuilder Java StringBuilder
local StringBuilder = class("StringBuilder")

function StringBuilder:__init__()
    self._value = {}
    self._count = 0
end

---@param another StringBuilder
---@return number
function StringBuilder:compareTo(another)

end

---@param value string | number
---@return StringBuilder
function StringBuilder:append(value)
    local str = tostring(value)
    local len = str:len()
    for i = 1, len do
        self._value[self._count + i] = str:sub(i, i)
    end
    self._count = self._count + len
    return self
end

---@param start number
---@param stop number
---@return StringBuilder
function StringBuilder:delete(start, stop)

    return self
end

---@param index number
function StringBuilder:deleteCharAt(index)

    return self
end

---@param start number
---@param stop number
---@param str string
---@return StringBuilder
function StringBuilder:replace(start, stop, str)
    return self
end

---@param offset number
---@param str string
---@return StringBuilder
function StringBuilder:insert(offset, str)
    return self
end

---@overload fun(str: string): number
---@param str string
---@param fromIndex number
---@return number
function StringBuilder:indexOf(str, fromIndex)
    if fromIndex == nil then
        return self:indexOf(str, 1)
    end
end

---@overload fun(str: string): number
---@param str string
---@param fromIndex number
---@return number
function StringBuilder:lastIndexOf(str, fromIndex)
    if fromIndex == nil then
        return self:lastIndexOf(str, 1)
    end
end

---@return StringBuilder
function StringBuilder:reverse()
    return self
end

function StringBuilder:__tostring()
    return table.concat(self._value, "")
end

if select("#", ...) == 0 then
    ---@type StringBuilder instance of StringBuilder
    local sb = StringBuilder()
    sb:append(123):append("abc"):append("def")
    print(sb)
end

return StringBuilder
