if not IsMissing("Progress","progressbar")then return end;local a=exports.progressbar;local b=function(c)c=c or{}return{disableMovement=c.move,disableCarMovement=c.car,disableMouse=c.mouse,disableCombat=c.combat}end;local d=function(e)e=e or{}return{animDict=e.dict,anim=e.clip,flags=e.flags}end;local f=function(g)g=g or{}if type(g.model)=='number'then print([[Model is a number, returning as progressbar doesnt support model hashes.
You can edit line:
    local propEntity = CreateObject(GetHashKey(prop.model), coords.x, coords.y, coords.z, true, true, true)
in progressbar/client.lua to:
    local propEntity = CreateObject(type(prop.model) == "number" and prop.model or GetHashKey(prop.model), coords.x, coords.y, coords.z, true, true, true)
]])end;return{model=g.model,coords=g.pos,rotation=g.rot,bone=g.bone}end;Lib.Progress=function(h)h=h or{}local i={name=h.label,duration=h.duration,label=h.label,useWhileDead=h.useWhileDead,canCancel=h.canCancel,controlDisables=h.disable and b(h.disable),animation=h.anim and d(h.anim),prop=h.prop and type(h.prop)=='table'and h.prop[1]and h.prop[1]or f(h.prop),propTwo=h.prop and type(h.prop)=='table'and h.prop[2]and f(h.prop[2])}local j=promise.new()exports['progressbar']:Progress(i,function(k)j:resolve(not k)end)return Citizen.Await(j)end