if not IsStarted("Notify","ox_lib")then return end;if Server then Lib.Notify=function(a,b,c,d)TriggerClientEvent('ox_lib:notify',a,{description=b,type=c,duration=d})end else Lib.Notify=function(b,c,d)TriggerEvent('ox_lib:notify',{description=b,type=c,duration=d})end end