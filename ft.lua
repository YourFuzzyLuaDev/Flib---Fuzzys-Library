local ft = {

    merge = function (x, y)
        local i = 1

        while x[i] ~= nil do
            i = i + 1
        end
        x[i] = y
        return x
    end,

    countt = function (x)
        local r = ""
            for p, v in pairs(x) do
                local value = v
            if type(v) == "function" then
                    value = "[function]"
                end

                r = r .. "| " .. tostring(p):gsub("^%l", string.upper) .. ": " .. tostring(value) .. "\n"
            end
        return r
    end,

    countr = function (x)
        local r = ""
            for i, v in ipairs(x) do
                r = r .. tostring(v) .. "\n"
            end
        return r
    end,

    containsr = function (x, v)
        for k, value in ipairs(x) do
            if value == v then
                return true
                end
            end
        return false
    end,

    containst = function (x, v)
        for k, value in pairs(x) do
            if value == v then
                print(v)
                return true
                end
            end
        return false
    end,
}

return ft
