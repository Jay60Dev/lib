local a=Shared.UseResource()if not a then return end;if IsServer then Server.Notify=function(b,c,d,e,f)TriggerClientEvent('zr-notify:Notify',c,e or"info",d,f)end else Client.Notify=function(b,d,e,f)TriggerEvent('zr-notify:Notify',e or"info",d,f)end end