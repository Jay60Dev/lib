if not IsMissing("Zones","PolyZone")then return end;assert(load(LoadResourceFile("PolyZone","client.lua")))()assert(load(LoadResourceFile("PolyZone","BoxZone.lua")))()assert(load(LoadResourceFile("PolyZone","EntityZone.lua")))()assert(load(LoadResourceFile("PolyZone","CircleZone.lua")))()AddStore("ZONES",function(a)a:destroy()end)local b=function(c)local d={points={},options={}}local e,f=nil,nil;if c.points then for g=1,#c.points do d.points[#d.points+1]=vector2(c.points[g].x,c.points[g].y)e=e and(c.points[g].z<e and c.points[g].z or e)or c.points[g].z;f=f and(c.points[g].z>f and c.points[g].z or f)or c.points[g].z end;local h=(e+f)/2;d.options.minZ=h-(c.thickness or 4)/2 or e;d.options.maxZ=h+(c.thickness or 4)/2 or f end;d.options.debugGrid=c.debug;return d.points,d.options end;local i=function(j,c)j.onEnter=c.onEnter;j.onExit=c.onExit;j.inside=c.inside;j.entered=false;local k=GetInvokingResource()AddToStore("ZONES",k,j)j:onPlayerInOut(function(l,m)if j.onEnter and l then j:onEnter(m)end;if j.onExit and not l then j:onExit(m)end;j.entered=l;if j.inside then CreateThread(function()while j.entered do j:inside(m)Wait(0)end end)end end)return j end;Lib.Zones={Poly=function(c)local j=PolyZone:Create(b(c))return i(j,c)end,Circle=function(c)local j=CircleZone:Create(c.coords,c.radius,{debugPoly=c.debug,useZ=true})return i(j,c)end,Box=function(c)local j=BoxZone:Create(c.coords,c.size.x,c.size.y,{debugPoly=c.debug,heading=c.rotation,minZ=c.coords.z-c.size.z/2,maxZ=c.coords.z+c.size.z/2})return i(j,c)end}