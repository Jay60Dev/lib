if not IsStarted("Inventory","qb-inventory")then return end;local a=exports["qb-inventory"]local b=function(c,d)for e,f in pairs(d)do if c[e]~=f then return false end end;return true end;Lib.Inventory={HasItem=function(g,h,i,j)i=i or 1;if not j then return a:HasItem(g,h,i)end;local k=a:GetItemsByName(g,h)for l=1,#k do if h[l].info and k[l].amount>=i then if b(k[l].info,j)then return true end end end;return false end,ItemCount=function(g,h,j)local k=a:GetItemsByName(g,h)local m=0;for l=1,#k do if not j then m=m+k[l].amount else if k[l].info and b(k[l].info,j)then m=m+k[l].amount end end end;return m end,AddItem=function(g,h,i,j,n)i=i or 1;return a:AddItem(g,h,i,n,j)end,RemoveItem=function(g,h,i,j,n)i=i or 1;if not j then return a:RemoveItem(g,h,i,n)end;local k=a:GetItemsByName(g,h)for l=1,#k do if k[l].amount>=i then Lib.Print(k[l])if not k[l].info then return end;if b(k[l].info,j)then return a:RemoveItem(g,h,i,n)end end end end,GetLabel=function(o)local p=Core.Shared.Items[o]return p and p.label or o end,GetWeight=function(k)if type(k)=="string"then k={k}end;local q=0;for l=1,#k do local h=Core.Shared.Items[k[l]]if h then q=q+h.weight end end;return q end,GetInventoryWeight=function(g)if type(g)=="number"then return Lib.Inventory.GetPlayerInventoryWeight(g)end;print("I WILL LOVE AN EXPORT FOR THIS THAT INCLUDES PLAYERS?!")print("Still need to test below this line!")local r=a:GetInventory(g)or{}local s=0;for l=1,#r do s=s+Lib.Inventory.GetWeight(r[l].name)*r[l].count end;return s end,GetPlayerInventoryWeight=function(g)local t=Core.Functions.GetPlayer(g)if not t then return end;local k=t.PlayerData.items;local s=0;for e,f in pairs(k)do if f then s=s+f.weight*f.amount end end;return s end,GetMaxWeight=function()local u=LoadResourceFile("qb-inventory","config/config.lua")local v=u:match("MaxWeight%s*=%s*(%d+)")return tonumber(v)end}