if not IsStarted("Inventory","ox_inventory")then return end;local a=exports.ox_inventory;Lib.Inventory={HasItem=function(b,c,d,e)d=d or 1;local f=a:GetItemCount(b,c,e)return f>=d end,ItemCount=function(b,c,e)return a:GetItemCount(b,c,e)end,AddItem=function(b,c,d,e,g)d=d or 1;return a:AddItem(b,c,d,e,g)end,RemoveItem=function(b,c,d,e,g)d=d or 1;return a:RemoveItem(b,c,d,e,g)end,GetLabel=function(h)local c=a:Items(h)if c then return c.label end;return h end,GetWeight=function(i)if type(i)=="string"then i={i}end;local j=0;for k=1,#i do local c=a:Items(i[k])if c then j=j+c.weight end end;return j end,GetInventoryWeight=function(b)local l=a:GetInventoryItems(b)or{}local m=0;for k=1,#l do m=m+Lib.Inventory.GetWeight(l[k].name)*l[k].count end;return m end,GetPlayerInventoryWeight=function(b)return Lib.Inventory.GetInventoryWeight(b)end}