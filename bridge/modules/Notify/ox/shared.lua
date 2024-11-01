if not IsStarted("Notify", "ox_lib") then return end
local server = IsDuplicityVersion()

if server then
    Lib.Notify = function(id, message, messageType, timeout)
        TriggerClientEvent('ox_lib:notify', id, {
            description = message,
            type = messageType,
            duration = timeout,
        })
    end
else
    Lib.Notify = function(message, messageType, timeout)
        TriggerEvent('ox_lib:notify', {
            description = message,
            type = messageType,
            duration = timeout,
        })
    end
end