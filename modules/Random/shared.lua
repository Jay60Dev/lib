local function getLetter() 
    return string.char(Lib.Random.Number(65, 90))
end

local function getLowerCaseLetter()
    return string.char(Lib.Random.Number(97, 122))
end

local function getInteger()
    return math.random(0, 9)
end

local function getAlphaNumeric()
    return Lib.Random.Chance(50) and getLetter() or getInteger()
end


Lib.Random = {
    Number = function(min, max)
        if not max then return math.random(min) end
        return math.random(min, max)
    end,
    Letter = function(range)
        return string.char(math.random(65, 90))
    end,
    Chance = function(percent)
        return math.random(100) <= percent
    end,
    String = function(pattern, length)
        local formatChar = {
            ['0'] = getInteger,
            ['a'] = getLowerCaseLetter,
            ['A'] = getLetter,
            ['.'] = getAlphaNumeric,
        }
        local len = length or #pattern:gsub('%^', '')
        local arr = table.create(len, 0)
        local size = 0
        local i = 0

        while size < len do
            i += 1

            local char = pattern:sub(i, i)

            if char == '' then
                arr[size + 1] = string.rep(' ', len - size)
                break
            elseif char == '^' then
                i += 1
                char = pattern:sub(i, i)
            else
                local func = formatChar[char]
                char = func and func() or char
            end

            size += 1
            arr[size] = char
        end

        return table.concat(arr)
    end
}