if not IsStarted("Notify", "qb_core") then return end
local server = IsDuplicityVersion()

if server then
    Lib.Notify = function(id, message, messageType, timeout)
        TriggerClientEvent('QBCore:Notify', id, message, messageType, timeout)
    end
else
    Lib.Notify = function(message, messageType, timeout)
        TriggerEvent('QBCore:Notify', message, messageType, timeout)
    end
end