Lib.SpawnObject=function(a)local b=GetInvokingResource()assert(Lib.assertEntityData(a))local c=Lib.LoadModel(a.model)local d=vector4(a.coords.x,a.coords.y,a.coords.z,a.coords.w or 0.0)local e=a.networked or false;local f=CreateObject(c,d.x,d.y,d.z,e,false,false)AddToStore("ENTITIES",b,f)SetModelAsNoLongerNeeded(c)FreezeEntityPosition(f,a.freeze)if a.targets and Lib.Target.AddEntity then Lib.Target.AddEntity(f,a.targets)end;return f end