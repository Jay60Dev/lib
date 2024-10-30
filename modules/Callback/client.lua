local pendingCallbacks = {}
local registeredCallbacks = {}

Lib.Callback = function(name, ...)
    pendingCallbacks[name] = promise.new()
    TriggerServerEvent("lib:callback:server", name, ...)

    Citizen.Await(pendingCallbacks[name])

    local value = pendingCallbacks[name].value

    pendingCallbacks[name] = nil

    return table.unpack(value)
end

RegisterNetEvent("lib:callback:resolve", function(name, ...)
    if not pendingCallbacks[name] then return end
    pendingCallbacks[name]:resolve({...})
end)

-- Registration
Lib.RegisterCallback = function(name, cb)
    registeredCallbacks[name] = cb
end

RegisterNetEvent("lib:callback:client", function(name, ...)
    local src = source
    TriggerServerEvent("lib:callback:resolve", name, registeredCallbacks[name](...))
end)