if not IsStarted("Keys","Renewed-Vehiclekeys")then return end;local a=exports['Renewed-Vehiclekeys']Lib.Keys={Give=function(b,c)if not DoesEntityExist(c)then return end;local d=GetVehicleNumberPlateText(c)return a:addKey(b,d)end,Remove=function(b,c)if not DoesEntityExist(c)then return end;local d=GetVehicleNumberPlateText(c)return a:removeKey(b,d)end,Has=function(b,c)if not DoesEntityExist(c)then return end;local d=GetVehicleNumberPlateText(c)return a:hasKey(b,d)end}