local a=Shared.UseResource()if not a then return end;if IsServer then Server.Notify=function(b,c,d,e,f)TriggerClientEvent("k5_notify:notify",c,nil,d,e,f)end else Client.Notify=function(b,d,e,f)TriggerEvent("k5_notify:notify",nil,d,e,f)end end