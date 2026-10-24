local fm = {
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
}

return fm
