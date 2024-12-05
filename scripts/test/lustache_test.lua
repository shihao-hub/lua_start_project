---
--- DateTime: 2024/12/4 17:39
---

local lustache = require("lib.lustache.lustache")

print(lustache:render("hello {{name}}", { name = "world" }))

view_model = {
    title = "Joe",
    calc = function ()
        return 2 + 4
    end
}

output = lustache:render("{{title}} spends {{calc}}", view_model)


print(output)
