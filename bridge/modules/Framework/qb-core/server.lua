local a,b,c=Shared.UseResource()if not a then return end;local d={}Core=b:GetCoreObject()for e,f in pairs(Core.Shared.Vehicles)do d[tostring(f.hash)]=f.model end;local g=function(h)local i=Core.Functions.GetPlayer(h)return i or print("Player not found for id",h)end;local j=function(h)local i=g(h)if not i then return end;return i.PlayerData end;local k=function(h)local i=g(h)if not i then return end;return i.Functions end;local l=function(m)return d[tostring(m)]end;Server.Player=Server.Player or{}Server.Player.CharacterId=function(n,h)return j(h).citizenid end;Server.Player.Metadata=function(n,h,o,p)if p~=nil then k(h).SetMetaData(o,p)end;local q=j(h)if not q then return end;local r=q.metadata;if not r then return end;if not o then return r end;return r[o]end;Server.Player.Job=function(n,h,p,s)if p~=nil then k(h).SetJob(p,s)end;return j(h).job.name end;Server.Player.JobLabel=function(n,h)return j(h).job.label end;Server.Player.JobLevel=function(n,h)return j(h).job.grade.level end;Server.Player.JobBoss=function(n,h)local t=j(h).job;return t.isboss or t.grade.isboss end;Server.Player.Duty=function(n,h,p)if p~=nil then k(h).SetDuty(p)end;return j(h).job.onduty end;Server.Player.Gang=function(n,h,p,s)if p~=nil then k(h).SetGang(p,s)end;return j(h).gang.name end;Server.Player.GangLabel=function(n,h)return j(h).gang.label end;Server.Player.GangLevel=function(n,h)return j(h).gang.grade.level end;Server.Player.Money=function(n,h,u,p)if not u then print("Money type not provided")return end;if p~=nil then k(h).SetMoney(u,p)end;return j(h).money[u]end;Server.Player.AddMoney=function(n,h,u,v)return k(h).AddMoney(u,v)end;Server.Player.RemoveMoney=function(n,h,u,v)return k(h).RemoveMoney(u,v)end;Server.Player.IsVehicleOwned=function(n,w)local x=Shared.GetPlate(w)return MySQL.scalar.await('SELECT id FROM player_vehicles WHERE plate = ?',{tostring(x)})end;Server.Player.GiveVehicleOwnership=function(n,h,w)if not w then w=GetVehiclePedIsIn(GetPlayerPed(h),false)end;if not w or w==0 then return print("Couldnt find vehicle.")end;local y=Server.Player.CharacterId(n,h)local x=Shared.GetPlate(w)local m=GetEntityModel(w)if Server.Keys and Server.Keys.Give then Server.Keys.Give(n,h,w)end;if Server.Player.IsVehicleOwned(n,w)then return Server.Database.Update(n,'player_vehicles',{citizenid=y},{plate=x})end;Server.Database.Insert(n,'player_vehicles',{citizenid=y,license=Server.Player.License(n,h),vehicle=l(m),hash=m,mods=json.encode(props or{}),plate=x,state=0})end;Server.Inventory=Server.Inventory or{}Server.Inventory.UseableItem=function(n,z,A)Core.Functions.CreateUseableItem(z,function(h,B)local C=Server.Inventory.ConvertItemsMetdata(n,{B})A(h,B.name,C)end)end