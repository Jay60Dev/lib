AddStore("ENTITIES",function(a)if DoesEntityExist(a)then DeleteEntity(a)end end)Lib.assertEntityData=function(b)local c={{type(b)=="table","paramater passed to SpawnVehicle must be a table"},{type(b.model)=="string","data.model must be a string"},{b.coords,"data.coords must be a vector3 or vector4"},{type(b.coords.x)=="number","data.coords.x must be a number"},{type(b.coords.y)=="number","data.coords.y must be a number"},{type(b.coords.z)=="number","data.coords.z must be a number"},{not b.coords.w or type(b.coords.w)=="number","data.coords.w must be a number or nil"},{not b.networked or type(b.networked)=="boolean","data.networked must be a boolean or nil"}}for d=1,#c do if not c[d][1]then return false,c[d][2]end end;return true,"success"end;Lib.LoadModel=function(e)local f=type(e)=="string"and joaat(e)or e;assert(IsModelValid(f),"model does not exist")while not HasModelLoaded(f)do RequestModel(f)Wait(0)end;return f end