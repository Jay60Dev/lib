local a=function(b,c)if IsClient then return Client.GetEntityCoords(b,c)end;if IsServer then return Server.GetCoordsFromIdEntityOrCoords(b,c)end end;Shared.Distance=function(b,d,e)d=a(b,d)e=a(b,e)if not d or not e then return print("Failed to get coords.")end;d=vector3(d.x,d.y,d.z)e=vector3(e.x,e.y,e.z)return#(d-e)end