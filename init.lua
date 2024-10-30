---@class LibProps
---@field SpawnVehicle SpawnVehicleProps
---@field SpawnPed SpawnPedProps
Lib = setmetatable({}, {
    __index = function(t, k)
        return function(...)
            return exports['lib'][k](exports['lib'], ...)
        end
    end,
})

Cache = Lib.Cache() or {}

RegisterNetEvent("lib:cache:update", function(key, value, oldValue)
    Cache[key] = value
end)

CreateThread(function()
    while true do

        print(json.encode(Cache), GetCurrentResourceName())
        Wait(2000)
    end
end)