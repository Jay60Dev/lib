Server.Inventory=Server.Inventory or{}local a=function(b,c,d,e)if type(b)=="string"then return{{name=b,count=c or 1,metadata=d or{},slot=e or 1}}end;local f=Shared.Table.Type(nil,b)if f=="array"then return b end;if f=="object"then return{b}end;print("Invalid table, we dont support mixed tables")end;Server.Inventory.UseableItem=Server.Inventory.UseableItem or function(g,h,i)print("We use framework to create useable items")Shared.MissingResource()end;Server.Inventory.GetAllItems=function(g,j)Shared.MissingResource()end;Server.Inventory.GetMaxWeightForPlayer=function(g,j)Shared.MissingResource()end;Server.Inventory.GetMaxSlots=function(g)Shared.MissingResource()end;Server.Inventory.GetItemWeight=function(g,h)Shared.MissingResource()end;Server.Inventory.GetLabel=function(g,h)Shared.MissingResource()end;Server.Inventory.AddItem=function(g,j,b,k,d,e)Shared.MissingResource()end;Server.Inventory.AddItems=function(g,j,b,k,d,e)local l=a(b,k,d,e)if not Server.Inventory.CanCarry(g,j,l)then return false end;local m=true;for n=1,#l do local o=Server.Inventory.AddItem(g,j,l[n].name,l[n].count,l[n].metadata,l[n].slot)if not o then m=false end end;return m end;Server.Inventory.RemoveItem=function(g,j,b,k,d,e)Shared.MissingResource()end;Server.Inventory.RemoveItems=function(g,j,b,k,d,e)local l=a(b,k,d,e)if not Server.Inventory.HasItems(g,j,l)then return false end;local m=true;for n=1,#l do local o=Server.Inventory.RemoveItem(g,j,l[n].name,l[n].count,l[n].metadata,l[n].slot)if not o then m=false end end;return m end;Server.Inventory.HasItems=function(g,j,l)for n=1,#l do if not Server.Inventory.HasItem(g,j,l[n].name,l[n].count,l[n].metadata)then return false end end;return true end;Server.Inventory.GetWeight=function(g,b,c,d,e)local l=a(b,c,d,e)local p=0;for n=1,#l do p=p+Server.Inventory.GetItemWeight(g,l[n].name)*(l[n].count or 1)end;return p end;Server.Inventory.CanCarry=function(g,j,b,c,d,e)local q=Server.Inventory.GetMaxWeightForPlayer(g,j)if not q then return false,"Failed to get maximum weight"end;local r=Server.Inventory.GetMaxSlots(g)if not r then return false,"Failed to get maximum slots"end;local l=a(b,c,d,e)local s=Server.Inventory.GetWeight(g,l)local t=Server.Inventory.GetAllItems(g,j)local u=next(t)and Server.Inventory.GetWeight(g,t)or 0;local v=u+s;if v>q then return false,"Player cannot carry this weight"end;local w=#t;local x=#l;if(w or 0)+(x or 0)>=r then return false,"Player has no more slots"end;return true end;Server.Inventory.HasItem=function(g,j,b,k,d)return Server.Inventory.GetCount(g,j,b,d)>=(k or 1)end;Server.Inventory.GetSlotsWithMetadata=function(g,l,b,d)local y={}for n=1,#l do if l[n].name==b then if not d or not next(d)then y[#y+1]=l[n]else local z=true;for A,B in pairs(d)do if l[n].metadata[A]~=B then z=false end end;if z then y[#y+1]=l[n]end end end end;return y end;Server.Inventory.GetCount=function(g,j,b,d)local c=0;local l=Server.Inventory.GetAllItems(g,j)if not l then return c end;local C=Server.Inventory.GetSlotsWithMetadata(g,l,b,d)for n=1,#C do c=c+(C[n].count or 0)end;return c end;Server.Inventory.GetItemsToRemoveForInventoriesThatDontSupportRemovalWithMetadata=function(g,j,b,k,d)local l=Shared.Table.Clone(g,a(b,k,d))local D={}local E=Shared.Table.Clone(g,Server.Inventory.GetAllItems(g,j))for n=1,#l do l[n].StillNeeded=l[n].count;local F=l[n].name;local G=l[n].metadata;local y=Server.Inventory.GetSlotsWithMetadata(g,E,F,G)for H=1,#y do if l[n].StillNeeded==0 then break end;local e=y[H]local I=e.count;local J=e.slot;if I>0 then D[#D+1]={slot=J,count=I>=l[n].StillNeeded and l[n].StillNeeded or I,metadata=G,name=F}l[n].StillNeeded=I>=l[n].StillNeeded and 0 or l[n].StillNeeded-I end end end;for n=1,#l do if l[n].StillNeeded>0 then return false,"Player does not have enough items"end end;local K=true;for n=1,#D do local o=Server.Inventory.RemoveItem(g,j,D[n].name,D[n].count,nil,D[n].slot)if not o then K=false end end;return K end;Server.Inventory.MergeDuplicateItems=function(g,l)local L={}local M=Shared.Table.RealArrayLengthIncludingNilValues(g,l)for n=1,M do local z=false;for N=1,#L do if l[n].name==L[N].name and Shared.Table.Matches(g,l[n].metadata,L[N].metadata)then L[N].count=L[N].count+l[n].count;z=true end end;if not z then L[#L+1]=l[n]end end;return L end;Server.Inventory.Transaction=function(g,j,O,P)if type(O)~="table"then print("param 2 must be a table")return false end;if type(P)~="table"then print("param 3 must be a table")return false end;local Q=Server.Inventory.MergeDuplicateItems(g,O)if type(Q)~="table"then return false end;local R=Server.Inventory.MergeDuplicateItems(g,P)if type(R)~="table"then return false end;local t=Server.Inventory.GetAllItems(g,j)local p={give=Server.Inventory.GetWeight(g,R),take=Server.Inventory.GetWeight(g,Q),playerCurrent=next(t)and Server.Inventory.GetWeight(g,t)or 0,max=Server.Inventory.GetMaxWeightForPlayer(g,j)}local S=p.give-p.take;local T=p.playerCurrent+S;if type(T)~="number"then return false,"Failed to calculate new weight"end;if T>p.max then return false,"Cannot carry new weight"end;if not Server.Inventory.HasItems(g,j,Q)then return false,"Player does not have the items"end;if not Server.Inventory.RemoveItems(g,j,Q)then return false,"Failed to remove items"end;if not Server.Inventory.AddItems(g,j,R)then return false,"Failed to add items"end;return true end;Server.RegisterCallback(nil,"lib:inventory:getAllItems",function(U)local l=Server.Inventory.GetAllItems(nil,U)return l end)Server.RegisterCallback(nil,"lib:inventory:getCount",function(U,b,d)local c=Server.Inventory.GetCount(nil,U,b,d)return c end)Server.RegisterCallback(nil,"lib:inventory:getLabel",function(U,b)local V=Server.Inventory.GetLabel(nil,b)return V end)Server.RegisterCallback(nil,"lib:inventory:hasItem",function(U,b,d)local W=Server.Inventory.HasItem(nil,U,b,d)return W end)