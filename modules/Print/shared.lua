
local function convertFunctions(value)
    if type(value) == "function" then
        return "**Function**"
    elseif type(value) == "table" then
        local newTable = {}
        for k, v in pairs(value) do
            newTable[k] = convertFunctions(v)
        end
        return newTable
    end
    return value
end

Lib.Print = function(...)
    local toPrint = {}
    for i = 1, select("#", ...) do
        local value = select(i, ...)
        if type(value) == "table" then
            toPrint[#toPrint+1] = json.encode(convertFunctions(value), {indent = true, sort_keys = true})
        else
            toPrint[#toPrint+1] = convertFunctions(value)
        end
    end

    print(table.unpack(toPrint))
end