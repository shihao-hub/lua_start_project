---
--- DateTime: 2024/12/4 10:28
---

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
local t
t = {
    a = nil,
    b = 1,
    c = 2.0,
    d = "hello",
    e = { 1, 2, 3, nil, 4, nil, 5 },
    f = t
}
local encoded_t = dkjson.encode(t)
print(encoded_t)

local decoded_t = dkjson.decode(encoded_t)
print(dkjson.encode(decoded_t))
local decoded_t2 = dkjson.decode(dkjson.encode(decoded_t))

--print(inspect.inspect(t))
print(inspect.inspect(decoded_t))
print(inspect.inspect(decoded_t2))

-- 不可以解析稀疏数组（invalid table: sparse array）
--local t1
--t1 = {
--    a = nil,
--    b = 1,
--    c = 2.0,
--    d = "hello",
--    e = { 1, 2, 3 },
--    f = t1
--}
--local encoded_t1 = json.encode(t1)
--print(encoded_t1)
--local decoded_t1 = json.decode(encoded_t1)
--print(inspect.inspect(decoded_t1))
--print(inspect.inspect(t1))
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
