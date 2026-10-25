local ff = {

    clamp = function(val, min, max)
        return math.max(min, math.min(val, max))
    end,

    merge = function (x, y)
        if type(x) == "number" and type(y) == "number" then
            return x + y
        elseif type(x) == "number" and type(y) == "string" then
            return tostring(x) .. " " .. y
        elseif type(x) == "string" and type(y) == "number" then
            return x .. " " .. tostring(y)
        elseif type(x) == "string" and type(y) == "string" then
            return x .. " " .. y
        elseif type(x) == "boolean" and type(y) == "number" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) == "boolean" and type(y) == "string" then
            return tostring(x) .. " " .. y
        elseif type(x) == "boolean" and type(y) == "boolean" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) == "number" and type(y) == "boolean" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) == "string" and type(y) == "boolean" then
            return x .. " " .. tostring(y)
        elseif type(x) == "table" and type(y) ~= "nil" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) ~= "nil" and type(y) == "table" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) == "function" and type(y) ~= "nil" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) ~= "nil" and type(y) == "function" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) == "thread" and type(y) ~= "nil" then
            return tostring(x) .. " " .. tostring(y)
        elseif type(x) ~= "nil" and type(y) == "thread" then
            return tostring(x) .. " " .. tostring(y)
        end
    end
}

return ff
