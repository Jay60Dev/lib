if not IsMissing("Zones","ox_lib")then return end;AddStore("ZONES",function(a)a:remove()end)Lib.Zones={Poly=function(b)local c=lib.zones.poly(b)local d=GetInvokingResource()AddToStore("ZONES",d,c)return c end,Circle=function(b)local c=lib.zones.sphere(b)local d=GetInvokingResource()AddToStore("ZONES",d,c)return c end,Box=function(b)local c=lib.zones.box(b)local d=GetInvokingResource()AddToStore("ZONES",d,c)return c end}