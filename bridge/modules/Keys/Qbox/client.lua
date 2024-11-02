if not IsStarted("Keys", "qbx_vehiclekeys") then return end

local keys = exports.qbx_vehiclekeys

Lib.Keys = {
    Give = function(vehicle)
        local plate = GetVehicleNumberPlateText(vehicle)
        if not plate then return print("Vehicle does not have a plate") end
        TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
    end,
    Remove = function(vehicle)
        return print("Can only remove keys on the server")
    end,
    Has = function(vehicle)
        return keys:HasKeys(vehicle)
    end
}