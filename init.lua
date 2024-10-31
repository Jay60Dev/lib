local server = IsDuplicityVersion()
local client = not server

---@class LibProps
---@field SpawnVehicle SpawnVehicleProps
---@field SpawnPed SpawnPedProps
Lib = setmetatable({}, {
    __index = function(t, k)
        return setmetatable({}, {
            __index = function(t2, k2)
                return function(...)
                    local lib = exports['lib']
                    return lib[("%s.%s"):format(k, k2)](lib, ...)
                end
            end,
            __call = function(t2, ...)
                local lib = exports['lib']
                return lib[k](lib, ...)
            end,
        })
    end,
})  
-- Lib = setmetatable({}, {
--     __index = function(t, k)
--         return function(...)
--             return exports['lib'][k](exports['lib'], ...)
--         end
--     end,
-- })

if client then
    Cache = Lib.Cache() or {}

    RegisterNetEvent("lib:cache:update", function(key, value, oldValue)
        Cache[key] = value
    end)
end


local _print = print

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

print = function(...)
    for i = 1, select("#", ...) do
        local value = select(i, ...)
        if type(value) == "table" then
            _print(json.encode(convertFunctions(value), {indent = true, sort_keys = true}))
        else
            _print(convertFunctions(value))
        end
    end
end