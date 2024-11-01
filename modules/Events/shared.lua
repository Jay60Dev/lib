AddStore("EVENTS", RemoveEventHandler)

Lib.RNE = function(name, cb)
    local resource = GetInvokingResource()
    if not (STORE.EVENTS and STORE.EVENTS[resource] and STORE.EVENTS[resource][name]) then RegisterNetEvent(name) end
    local event = AddEventHandler(name, cb)
    AddToStore("EVENTS", resource, event)
    return event
end

Lib.TE = TriggerEvent

local server = IsDuplicityVersion()

Lib[server and "TCE" or "TSE"] = function(name, ...)
    local event = server and TriggerClientEvent or TriggerServerEvent
    event(name, ...)
end