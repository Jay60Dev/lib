if not IsStarted("Fuel","ps-fuel")then return end;local a=exports['ps-fuel']Lib.Fuel={Get=function(b)if not DoesEntityExist(b)then return end;return a:GetFuel(b)end,Set=function(b,c)if not DoesEntityExist(b)then return end;return a:SetFuel(b,c)end}