local server = IsDuplicityVersion()
local client = not server

local localFunctions = {
    NUI = {
        Send = function(data, focus, keepInput)
            SetNuiFocus(focus, focus)
            SetNuiFocusKeepInput(keepInput)
            SendNUIMessage(data)
        end,
        Callback = RegisterNUICallback,
    }
}

---@class LibProps
---@field SpawnVehicle SpawnVehicleProps
---@field SpawnPed SpawnPedProps
Lib = setmetatable(localFunctions, {
    __index = function(t, k)

        if rawget(t, k) then
            return rawget(t, k)
        end

        return setmetatable({}, {
            __index = function(t2, k2)
                return function(...)
                    local lib = exports['lib']
                    local modulePath = ("%s.%s"):format(k, k2)
                    return lib[modulePath](lib, ...)
                end
            end,
            __call = function(t2, ...)
                local lib = exports['lib']
                return lib[k](lib, ...)
            end,
        })
    end,
})

if client then
    Cache = Lib.Cache() or {}
    RegisterNetEvent("lib:cache:update", function(key, value, oldValue)
        Cache[key] = value
    end)
end

print = Lib.Print