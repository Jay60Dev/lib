if not IsStarted("Fuel","Renewed-Fuel")then return end;local a=exports['Renewed-Fuel']Lib.Fuel={Get=function(b)if not DoesEntityExist(b)then return end;return Entity(b).state.fuel end,Set=function(b,c)if not DoesEntityExist(b)then return end;return a:SetFuel(b,c)end}