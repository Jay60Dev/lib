if IsServer then Server.Notify=function(a,b,c,d,e)Shared.MissingResource()end else Client.Notify=function(a,c,d,e)Shared.MissingResource()end end