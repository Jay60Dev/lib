Server.Player=Server.Player or{}Server.Player.Identifier=function(a,source,b)return GetPlayerIdentifierByType(source,b)end;Server.Player.License=function(a,source)return Server.Player.Identifier(a,source,"license")end;Server.Player.AddItem=function(a,source,c,d,e,f)return Server.Inventory.AddItem(a,source,c,d,e,f)end;Server.Player.RemoveItem=function(a,source,c,d,e)return Server.Inventory.RemoveItem(a,source,c,d,e)end;Server.Player.HasItem=function(a,source,c,d,e)return Server.Inventory.HasItem(a,source,c,d,e)end;Server.Player.CharacterId=function(a,source)Shared.MissingResource()end;Server.Player.Metadata=function(a,source,g,h)Shared.MissingResource()end;Server.Player.Job=function(a,source,h,i)Shared.MissingResource()end;Server.Player.JobLabel=function(a,source)Shared.MissingResource()end;Server.Player.JobLevel=function(a,source)Shared.MissingResource()end;Server.Player.JobBoss=function(a,source)return Shared.MissingResource()end;Server.Player.Duty=function(a,source,h)Shared.MissingResource()end;Server.Player.Gang=function(a,source,h,i)Shared.MissingResource()end;Server.Player.GangLabel=function(a,source)Shared.MissingResource()end;Server.Player.GangLevel=function(a,source)Shared.MissingResource()end;Server.Player.Money=function(a,source,j,h)Shared.MissingResource()end;Server.Player.HasMoney=function(a,source,j,d)return Server.Player.Money(a,source,j)>=d end;Server.Player.AddMoney=function(a,source,j,d)Shared.MissingResource()end;Server.Player.RemoveMoney=function(a,source,j,d)Shared.MissingResource()end;Server.Player.Cash=function(a,source)return Server.Player.Money(a,source,"cash")end;Server.Player.HasCash=function(a,source,d)return Server.Player.Cash(a,source)>=d end;Server.Player.AddCash=function(a,source,d)return Server.Player.AddMoney(a,source,"cash",d)end;Server.Player.RemoveCash=function(a,source,d)return Server.Player.RemoveMoney(a,source,"cash",d)end;Server.Player.Bank=function(a,source)return Server.Player.Money(a,source,"bank")end;Server.Player.HasBank=function(a,source,d)return Server.Player.Bank(a,source)>=d end;Server.Player.AddBank=function(a,source,d)return Server.Player.AddMoney(a,source,"bank",d)end;Server.Player.RemoveBank=function(a,source,d)return Server.Player.RemoveMoney(a,source,"bank",d)end;Server.Player.IsVehicleOwned=function(a,k)Shared.MissingResource()end;Server.Player.GiveVehicleOwnership=function(a,source,k)Shared.MissingResource()end;Server.Inventory=Server.Inventory or{}Server.Inventory.UseableItem=function(a,c,l)print("Registering",c)Core.Functions.QBCore.Functions.CreateUseableItem(c,function(m)Shared.Print("nil",m)l(source,m.name,Server.Inventory.ConvertItemsMetdata(a,m))end)end