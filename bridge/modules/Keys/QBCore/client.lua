if not IsStarted("Keys","qb-vehiclekeys")then return end;local a=exports["qb-vehiclekeys"]local b=function(c)return GetVehicleNumberPlateText(c)end;Lib.Keys={Give=function(c)local d=b(c)if not d then return print("Vehicle does not have a plate")end;TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys',d)end,Remove=function(c)return print("Can only remove keys on the server")end,Has=function(c)local d=DoesEntityExist(c)and b(c)if not d then return false end;return a:HasKeys(d)end}