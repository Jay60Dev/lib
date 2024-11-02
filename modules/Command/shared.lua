local server = IsDuplicityVersion()

AddStore("COMMANDS", function(command)
    if server then return end
    TriggerEvent('chat:removeSuggestion')
end)


Lib.Command = function(name, cb, data, permission, preventSuggestions)
    local resource = GetInvokingResource() or GetCurrentResourceName()
    data = type(data) == "table" and data or {}
    RegisterCommand(name, function(source, ...)
        cb(source, ...)
    end, permission or false)

    AddToStore("COMMANDS", resource, {
        name = name,
        data = data,
        preventSuggestions = preventSuggestions
    })

end

local addSuggestions = function(id)
    local commands = STORE.COMMANDS
    local suggestions = {}
    for _, data in pairs(commands) do
        for _, command in pairs(data) do
            if not command.preventSuggestions then
                suggestions[#suggestions+1] = {
                    name = command.name,
                    help = command.data.help,
                    params = command.data.params
                }
            end
        end
    end
    if server then
        TriggerClientEvent('chat:addSuggestions', id, suggestions)
    else
        TriggerEvent('chat:addSuggestions', suggestions)
    end
end

-- handle online players
CreateThread(function()
    Wait(1500)
    addSuggestions(-1)
end)

-- handle new players
if server then
    AddEventHandler('playerJoining', function()
        local source = source
        addSuggestions(source)
    end)
end



-- if not preventSuggestions then
--     clEvent("chat:addSuggestion", source, ("/%s"):format(name), data.help, data.params)
-- end