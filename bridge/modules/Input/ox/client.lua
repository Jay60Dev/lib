if not IsStarted("Input", "ox_lib") then return end

local lib = exports.ox_lib

Lib.Input = function(header, options)
    return lib.inputDialog(header, options)
end