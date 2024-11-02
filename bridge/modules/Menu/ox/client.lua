if not IsStarted("Menu", "ox_lib") then return end
local lib = exports.ox_lib

Lib.Menu = function(data)
    if not (data.id and data.title) then return print("Menu requires an id and title.") end
    lib:registerContext(data)
    lib:showContext(data.id)
end