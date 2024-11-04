if not(IsStarted("Framework","qb-core")or IsStarted("Framework","qbx_core"))then return end;Core=exports["qb-core"]:GetCoreObject()local a=function(b)local c=Core.Functions.GetPlayer(b)return c or print("Player not found for id",b)end;local d=function(b)local c=a(b)return c.PlayerData end;local e=function(b)local c=a(b)return c.Functions end;local f=function(g)if not DoesEntityExist(g)then g=NetworkGetEntityFromNetworkId(g)end;if not DoesEntityExist(g)then return nil end;local h=GetVehicleNumberPlateText(g)return h:gsub('^%s*(.-)%s*$','%1')end;local i={}for j,k in pairs(Core.Shared.Vehicles)do i[tostring(k.hash)]=k.model end;local l=function(m)return i[tostring(m)]end;Lib.Player={CharacterId=function(b)return d(b).citizenid end,Identifier=function(b,n)return GetPlayerIdentifierByType(b,n)end,License=function(b)return Lib.Player.Identifier(b,"license")end,Metadata=function(b,o,p)if p then e(b).SetMetaData(o,p)end;return d(b).metadata[o]end,Job=function(b,p,q)if p then e(b).SetJob(p,q)end;return d(b).job.name end,JobLabel=function(b)return d(b).job.label end,JobLevel=function(b)return d(b).job.grade end,JobType=function(b)return d(b).job.type end,Duty=function(b,p)if p then e(b).SetDuty(p)end;return d(b).job.onduty end,Gang=function(b,p,q)if p then e(b).SetGang(p,q)end;return d(b).gang.name end,GangLabel=function(b)return d(b).gang.label end,GangLevel=function(b)return d(b).gang.rank end,Money=function(b,r,p)if not r then print("Money type not provided")return end;if p then e(b).SetMoney(r,p)end;return d(b).money[r]end,Cash=function(b)return Lib.Player.Money(b,"cash")end,HasCash=function(b,s)return Lib.Player.Cash(b)>=s end,AddCash=function(b,s)e(b).AddMoney("cash",s)end,RemoveCash=function(b,s)e(b).RemoveMoney("cash",s)end,Bank=function(b)return Lib.Player.Money(b,"bank")end,HasBank=function(b,s)return Lib.Player.Bank(b)>=s end,AddBank=function(b,s)e(b).AddMoney("bank",s)end,RemoveBank=function(b,s)e(b).RemoveMoney("bank",s)end,AddItem=function(b,t,s,u,v)return Lib.Inventory.AddItem(b,t,s,u,v)end,RemoveItem=function(b,t,s,u)return Lib.Inventory.RemoveItem(b,t,s,u)end,HasItem=function(b,t,s,u)return Lib.Inventory.HasItem(b,t,s,u)end,IsVehicleOwned=function(g)local w=f(g)return MySQL.scalar.await('SELECT id FROM player_vehicles WHERE plate = ?',{tostring(w)})end,GiveVehicleOwnership=function(b,g)if not g then g=GetVehiclePedIsIn(GetPlayerPed(b),false)end;if not g or g==0 then return print("Couldnt find vehicle.")end;local x=Lib.Player.CharacterId(b)local w=f(g)local m=GetEntityModel(g)if Lib.Keys and Lib.Keys.Give then Lib.Keys.Give(b,g)end;if Lib.Player.IsVehicleOwned(g)then return Lib.Database.Update('player_vehicles',{citizenid=x},{plate=w})end;Lib.Database.Insert('player_vehicles',{citizenid=x,license=Lib.Player.License(b),vehicle=l(m),hash=m,mods=json.encode(props or{}),plate=w,state=0})end}