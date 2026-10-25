local ft = {

        merge = function (x, y)
            local i = 1

            while x[i] ~= nil do
                i = i + 1
            end
            x[i] = y
            return x
        end,

        countt = function (x, mode)
            local r = ""
                for p, v in pairs(x) do
                    local value = v
                if type(v) == "function" then
                        value = "[function]"
                    end

                    if mode == "line" then
                        r = r .. "| " .. tostring(p):gsub("^%l", string.upper) .. ": " .. tostring(value) .. "\n"
                    else
                        r = r .. tostring(p):gsub("^%l", string.upper) .. ": " .. tostring(value) .. "\n"
                    end
                end
            return (r:gsub("\n$", ""))
        end,

        countr = function (x, mode)
            local r = ""

            if mode == "line" then
                for i, v in ipairs(x) do
                    r = r .. "| " .. tostring(v) .. "\n"
                end
            else
                for i, v in ipairs(x) do
                        r = r .. tostring(v) .. "\n"
                    end
                end
            return (r:gsub("\n$", ""))
        end,

        contains = function (x, v)
            for k, value in ipairs(x) do
                if value == v then
                    return true
                    end
                end
            return false
        end
}

return ft
