local a=Shared.UseResource()if not a then return end;if IsServer then Server.Notify=function(b,c,d,e,f)TriggerClientEvent('fl:notify',c,nil,nil,d,f)end else Client.Notify=function(b,d,e,f)TriggerEvent('fl:notify',nil,nil,d,f)end end