local a,b=Shared.UseResource()if not a then return end;Server.Keys=Server.Keys or{}Server.Keys.Give=function(c,d,e)if not DoesEntityExist(e)then return end;local f=NetworkGetNetworkIdFromEntity(e)b:GiveKeys(d,f)end;Server.Keys.Remove=function(c,d,e)if not DoesEntityExist(e)then return end;local f=NetworkGetNetworkIdFromEntity(e)b:RemoveKeys(d,f)end;Server.Keys.Has=function(c,d,e)if not DoesEntityExist(e)then return end;local f=NetworkGetNetworkIdFromEntity(e)return b:HasKeys(d,f)end