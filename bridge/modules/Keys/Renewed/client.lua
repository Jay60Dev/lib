if not IsStarted("Keys","Renewed-Vehiclekeys")then return end;local a=exports['Renewed-Vehiclekeys']Lib.Keys={Give=function(b)if not DoesEntityExist(b)then return end;local c=GetVehicleNumberPlateText(b)return a:addKey(c)end,Remove=function(b)if not DoesEntityExist(b)then return end;local c=GetVehicleNumberPlateText(b)return a:removeKey(c)end,Has=function(b)if not DoesEntityExist(b)then return end;local c=GetVehicleNumberPlateText(b)return a:hasKey(c)end}