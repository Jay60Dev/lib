local a,b=Lib.UseResource()if not a then return end;AddStore("TARGETS",function(c)if c.remove then if type(c.name)=="table"then for d=1,#(c.name.options or{})do Lib.Target[c.remove](GetCurrentResourceName(),c.name.options[d].name)end;return end;Lib.Target[c.remove](GetCurrentResourceName(),c.name)end end)Lib.Target={AddEntity=function(e,f,g)b:addLocalEntity(f,g)AddToStore("TARGETS",e,{remove="RemoveEntity",name=g})end,RemoveEntity=function(e,f,h)b:removeLocalEntity(f,h)end,AddModel=function(e,i,g)b:addModel(i,g)AddToStore("TARGETS",e,{remove="RemoveModel",name=g})end,RemoveModel=function(e,i,h)b:removeModel(i,h)end,AddGlobalPed=function(e,j,g)b:addGlobalPed(g)AddToStore("TARGETS",e,{remove="RemoveGlobalPed",name=g})end,RemoveGlobalPed=function(e,h)b:removeGlobalPed(h)end,AddGlobalPlayer=function(e,g)b:addGlobalPlayer(g)AddToStore("TARGETS",e,{remove="RemoveGlobalPlayer",name=g})end,RemoveGlobalPlayer=function(e,h)b:removeGlobalPlayer(h)end,AddGlobalVehicle=function(e,g)b:addGlobalVehicle(g)AddToStore("TARGETS",e,{remove="RemoveGlobalVehicle",name=g})end,RemoveGlobalVehicle=function(e,h)b:removeGlobalVehicle(h)end,AddGlobalObject=function(e,k,g)b:addGlobalObject(g)AddToStore("TARGETS",e,{remove="RemoveGlobalObject",name=g})end,RemoveGlobalObject=function(e,h)b:removeGlobalObject(h)end,AddBoxZone=function(e,l)local m=b:addBoxZone(l)AddToStore("TARGETS",e,{remove="RemoveBoxZone",name=m})end,RemoveBoxZone=function(e,m)b:removeZone(m)end,AddCircleZone=function(e,l)local m=b:addSphereZone(l)AddToStore("TARGETS",e,{remove="RemoveCircleZone",name=m})end,RemoveCircleZone=function(e,m)b:removeZone(m)end,AddPolyZone=function(e,l)local m=b:addPolyZone(l)AddToStore("TARGETS",e,{remove="RemovePolyZone",name=m})end,RemovePolyZone=function(e,m)b:removeZone(m)end}