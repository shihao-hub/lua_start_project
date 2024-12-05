---
--- DateTime: 2024/12/5 12:21
---

local inspect = require("lib.inspect.inspect")

local fun = require("lib.luafun.fun")
fun()

for _it, a in fun.iter({ 1, 2, 3 }) do
    print(a)
end

local t = filter(function(x) return x % 3 == 0 end, range(10)):totable()

print(inspect(t))
