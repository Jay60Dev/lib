local a=Shared.UseResource()if not a then return end;local b=function()local c=promise.new()TriggerEvent('qb-lockpick:client:openLockpick',function(d)c:resolve(d)end)Citizen.Await(c)return c.value end;local e={easy=1,medium=2,hard=3,stupid=4}Client.SkillCheck=function(f,g,h)local i=e[g]or 1;h=h or i;for j=1,h do local d=b()if not d then return false end end;return true end