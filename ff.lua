local ff = {

    clamp = function(val, min, max)
        return math.max(min, math.min(val, max))
    end,

    merge = function (x, y)
        if type(x) == "number" and type(y) == "number" then
            return x + y
        else
            return tostring(x) .. " " .. tostring(y)
        end
    end
}

return ff
