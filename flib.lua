local flib = {

    fm = {
        add = function(x, y)
            return x + y
        end,

        sub = function(x, y)
            return x - y
        end,

        mul = function(x, y)
            return x * y
        end,

        div = function(x, y)
            return x / y
        end,

        exp = function(x, y)
            return x ^ y
        end,

        per = function(x, y)
            return x % y
        end,

        sqrt = function (x)
            return x ^ 0.5
        end,

        sin = function (x)
            return math.sin(x)
        end,

        asin = function (x)
            return math.asin(x)
        end,

        cos = function (x)
            return math.cos(x)
        end,

        tan = function (x)
            return math.tan(x)
        end,

        atan = function (x, y)
            return math.atan2(x, y)
        end,

        acos = function (x)
            return math.acos(x)
        end,

        mulp = {
            add = function(x, y, op, z)
                if op == "+" then
                    return x + y + z
                elseif op == "-" then
                    return x + y - z
                elseif op == "*" then
                    return x + y * z
                elseif op == "/" then
                    return x + y / z
                elseif op == "^" then
                    return x + y ^ z
                elseif op == "%" then
                    return x + y % z
                end
            end,

            sub = function(x, y, op, z)
                if op == "+" then
                    return x - y + z
                elseif op == "-" then
                    return x - y - z
                elseif op == "*" then
                    return x - y * z
                elseif op == "/" then
                    return x - y / z
                elseif op == "^" then
                    return x - y ^ z
                elseif op == "%" then
                    return x - y % z
                end
            end,

            mul = function(x, y, op, z)
                if op == "+" then
                    return x * y + z
                elseif op == "-" then
                    return x * y - z
                elseif op == "*" then
                    return x * y * z
                elseif op == "/" then
                    return x * y / z
                elseif op == "^" then
                    return x * y ^ z
                elseif op == "%" then
                    return x * y % z
                end
            end,

            div = function(x, y, op, z)
                if op == "+" then
                    return x / y + z
                elseif op == "-" then
                    return x / y - z
                elseif op == "*" then
                    return x / y * z
                elseif op == "/" then
                    return x / y / z
                elseif op == "^" then
                    return x / y ^ z
                elseif op == "%" then
                    return x / y % z
                end
            end,

            exp = function(x, y, op, z)
                if op == "+" then
                    return x ^ y + z
                elseif op == "-" then
                    return x ^ y - z
                elseif op == "*" then
                    return x ^ y * z
                elseif op == "/" then
                    return x ^ y / z
                elseif op == "^" then
                    return x ^ y ^ z
                elseif op == "%" then
                    return x ^ y % z
                end
            end,

            per = function(x, y, op, z)
                if op == "+" then
                    return x % y + z
                elseif op == "-" then
                    return x % y - z
                elseif op == "*" then
                    return x % y * z
                elseif op == "/" then
                    return x % y / z
                elseif op == "^" then
                    return x % y ^ z
                elseif op == "%" then
                    return x % y % z
                end
            end
        }
    },

    ft = {

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

        contains = function (x, v)
            for k, value in ipairs(x) do
                if value == v then
                    return true
                    end
                end
            return false
        end
    },

    ff = {

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
}

return flib
