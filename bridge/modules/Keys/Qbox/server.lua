if not IsStarted("Keys", "qbx_vehiclekeys") then return end

local keys = exports.qbx_vehiclekeys

Lib.Keys = {
    Give = function(source, vehicle)
        keys:GiveKeys(source, vehicle)
    end,
    Remove = function(source, vehicle)
        keys:RemoveKeys(source, vehicle)
    end,
    Has = function(source, vehicle)
        return keys:HasKeys(source, vehicle)
    end
}