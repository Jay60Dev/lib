local a=function(b)local c=type(b)if c=="number"then return b elseif c=="string"then b=Lib.LookupTable(GetCurrentResourceName(),"lookupTables/carColors.json",b)or b;if b:find("#")then local d=b:gsub("#","")local e,f,g=d:match("(%w%w)(%w%w)(%w%w)")return{tonumber(e,16),tonumber(f,16),tonumber(g,16)}end elseif c=="vector3"then return{b.x,b.y,b.z}end end;Lib.SpawnVehicle=function(h,i)assert(Lib.assertEntityData(h,i))local j=Lib.LoadModel(h,i.model)local k=vector4(i.coords.x,i.coords.y,i.coords.z,i.coords.w or 0.0)local l=i.networked or false;local m=CreateVehicle(j,k.x,k.y,k.z,k.w,l,false)AddToStore("ENTITIES",h,m)SetModelAsNoLongerNeeded(j)SetVehicleOnGroundProperly(m)FreezeEntityPosition(m,i.freeze)SetVehicleDoorsLocked(m,i.locked and 2 or 1)SetVehicleEngineOn(m,i.engine,true,true)SetVehicleLights(m,i.lights and 3 or 4)SetVehicleLivery(m,i.livery)if i.invincible then SetEntityInvincible(m,true)end;if i.color or i.secondColor then i.color1=i.color1 or a(i.color)i.color2=i.color2 or a(i.secondColor)end;if i.windowTint then i.windowTint=type(i.windowTint)=="number"and i.windowTint or Lib.LookupTable(GetCurrentResourceName(),"lookupTables/windowTints.json",i.windowTint)end;if i.targets and Lib.Target.AddEntity then Lib.Target.AddEntity(h,m,i.targets,h)end;Lib.VehicleProperties.Set(h,m,i)return m end