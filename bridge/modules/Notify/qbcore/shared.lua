if not IsMissing("Notify","qb-core")then return end;if Server then Lib.Notify=function(a,b,c,d,e)TriggerClientEvent('QBCore:Notify',b,c,d,e)end else Lib.Notify=function(a,c,d,e)TriggerEvent('QBCore:Notify',c,d,e)end end