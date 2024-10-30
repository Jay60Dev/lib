local pendingCallbacks = {}
local registeredCallbacks = {}
Lib.Callback = function(name, id, ...)
    pendingCallbacks[id] = pendingCallbacks[id] or {}

    pendingCallbacks[id][name] = promise.new()
    TriggerClientEvent("lib:callback:client", id, name, ...)

    Citizen.Await(pendingCallbacks[id][name])

    local value = pendingCallbacks[id][name].value
    pendingCallbacks[id][name] = nil

    return table.unpack(value)
end

RegisterNetEvent("lib:callback:resolve", function(name, ...)
    local src = source
    if not (pendingCallbacks[src] and pendingCallbacks[src][name]) then return end
    pendingCallbacks[src][name]:resolve({...})
end)

-- Registration
Lib.RegisterCallback = function(name, cb)
    registeredCallbacks[name] = cb
end

RegisterNetEvent("lib:callback:server", function(name, ...)
    local src = source
    TriggerClientEvent("lib:callback:resolve", src, name, registeredCallbacks[name](src, ...))
end)