local a,b=Shared.UseResource()if not a then return end;local c=function(d)local e=b:GetPlayer(d)return e or print("Player not found for id",d)end;local f=function(d)local e=c(d)if not e then return end;return e.PlayerData end;local g=function(d)local e=c(d)if not e then return end;return e.Functions end;local h={}local i=assert(load(LoadResourceFile("qbx_core","shared/vehicles.lua")))()for j,k in pairs(i)do h[tostring(k.hash)]=k.model end;local l=function(m)return h[tostring(m)]end;Server.Player=Server.Player or{}Server.Player.CharacterId=function(n,d)return f(d).citizenid end;Server.Player.Metadata=function(n,d,o,p)if not type(d)=="number"then return print(("Invalid source type %s = %s"):format(d,type(d)))end;if p~=nil then g(d).SetMetaData(o,p)end;local q=f(d)if not q then return end;local r=q.metadata;if not r then return end;if not o then return r end;return r[o]end;Server.Player.Job=function(n,d,p,s)if p~=nil then local t=f(d).citizenid;exports.qbx_core:AddPlayerToJob(t,p,s)end;return f(d).job.name end;Server.Player.JobLabel=function(n,d)return f(d).job.label end;Server.Player.JobLevel=function(n,d)return f(d).job.grade.level end;Server.Player.JobBoss=function(n,d)local u=f(d).job;return u.isboss or u.grade.isboss end;Server.Player.Duty=function(n,d,p)if p~=nil then g(d).SetDuty(p)end;return f(d).job.onduty end;Server.Player.Gang=function(n,d,p,s)if p~=nil then local t=f(d).citizenid;exports.qbx_core:AddPlayerToGang(t,p,s)end;return f(d).gang.name end;Server.Player.GangLabel=function(n,d)return f(d).gang.label end;Server.Player.GangLevel=function(n,d)return f(d).gang.grade.level end;Server.Player.Money=function(n,d,v,p)if not v then print("Money type not provided")return end;if p~=nil then g(d).SetMoney(v,p)end;return f(d).money[v]end;Server.Player.AddMoney=function(n,d,v,w)return g(d).AddMoney(v,w)end;Server.Player.RemoveMoney=function(n,d,v,w)return g(d).RemoveMoney(v,w)end;Server.IsVehicleOwned=function(n,x)local y=MySQL.query.await('SELECT id FROM player_vehicles WHERE plate = ?',{tostring(x)})return y[1]and true or false end;Server.Player.OwnedVehicles=function(n,d)local z=Server.Player.CharacterId(n,d)local A=MySQL.query.await('SELECT * FROM player_vehicles WHERE citizenid = ?',{z})or{}local B={}for C,k in pairs(A)do B[#B+1]={owner=k.citizenid,plate=k.plate,model=k.vehicle}end;return B end;Server.Player.GiveVehicleOwnership=function(n,d,D)if not D then D=GetVehiclePedIsIn(GetPlayerPed(d),false)end;if not D or D==0 then return print("Couldnt find vehicle.")end;local z=Server.Player.CharacterId(n,d)local x=Shared.GetPlate(D)local m=GetEntityModel(D)if Server.Keys and Server.Keys.Give then Server.Keys.Give(n,d,D)end;if Server.Player.IsVehicleOwned(n,D)then return Server.Database.Update(n,'player_vehicles',{citizenid=z},{plate=x})end;Server.Database.Insert(n,'player_vehicles',{citizenid=z,license=Server.Player.License(n,d),vehicle=l(m),hash=m,mods=json.encode(props or{}),plate=x,state=0})end;Server.Inventory=Server.Inventory or{}Server.Inventory.UseableItem=function(n,E,F)b:CreateUseableItem(E,function(d,G)local H=Server.Inventory.ConvertItemsMetdata and Server.Inventory.ConvertItemsMetdata(n,{G})or G;F(d,G.name,H)end)end