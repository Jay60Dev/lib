if not IsMissing("Target","sleepless_interact")then return end;Lib.Loop(nil,function()Lib.Print(nil,"^1sleepless_interact is still under development.^7 Many functions may not function as expected.")end,{timer=10000,thread=true})local a=exports.sleepless_interact;AddStore("TARGETS",function(b)if b.remove then if type(b.name)=="table"then for c=1,#(b.name.options or{})do if b.remove=="RemoveById"then a.removeById(b.name.options[c].id)else Lib.Target[b.remove](GetCurrentResourceName(),b.name.options[c].name)end end;return end;if b.remove=="RemoveById"then a.removeById(b.id)else Lib.Target[b.remove](GetCurrentResourceName(),b.name)end end end)local d=function(e)local f={}for c=1,#e do f[c]={label=e[c].label,name=e[c].name or e[c].label,icon=e[c].icon,onSelect=e[c].onSelect and function(b)e[c].onSelect(b.entity,b.currentDistance,b.coords)end,canInteract=e[c].canInteract and function(g,h,i)return e[c].canInteract(g,h,i)end}end;return f end;local j=function(k,g)return("%s%s%s%s"):format(k,g,GetGameTimer(),Lib.Random.String(nil,"........"))end;Lib.Target={AddEntity=function(k,g,e)local l=j(k,g)print(l)a:addLocalEntity({id=l,entity=g,options=d(e),activeDistance=5})AddToStore("TARGETS",k,{remove="RemoveById",name=l})end,RemoveEntity=function(k,g,m)a.removeLocalEntity(g)end,AddModel=function(k,n,e)end,RemoveModel=function(k,n,m)end,AddGlobalPed=function(k,o,e)end,RemoveGlobalPed=function(k,m)end,AddGlobalPlayer=function(k,e)end,RemoveGlobalPlayer=function(k,m)end,AddGlobalVehicle=function(k,e)end,RemoveGlobalVehicle=function(k,m)end,AddGlobalObject=function(k,p,e)end,RemoveGlobalObject=function(k,m)end,AddBoxZone=function(k,q)end,RemoveBoxZone=function(k,r)end,AddCircleZone=function(k,q)end,RemoveCircleZone=function(k,r)end,AddPolyZone=function(k,q)end,RemovePolyZone=function(k,r)end}