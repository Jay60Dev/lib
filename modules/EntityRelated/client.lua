Client.GetId=function(a,b)if not DoesEntityExist(b)then return end;return GetPlayerServerId(NetworkGetPlayerIndexFromPed(b))end;Client.GetNetworkControlOfEntity=function(a,b,c)c=c or 2000;c=type(c)=="number"and c or 2000;if not NetworkGetEntityIsNetworked(b)then return true end;if NetworkHasControlOfEntity(b)then return true end;NetworkRequestControlOfEntity(b)Lib.Loop(function()NetworkRequestControlOfEntity(b)return not NetworkHasControlOfEntity(b)end,{timer=0,timeout=c})return NetworkHasControlOfEntity(b)end