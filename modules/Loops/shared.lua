Shared.Loop=function(a,b,c,...)c=c or{}local d={...}or{}local sleep,e=c.timer or sleep,c.timeout;local f=GetGameTimer()local g=function()while true do local h=b(table.unpack(d))if h==false then break end;if e and e>0 and GetGameTimer()-f>e then break end;if c.condition and type(c.condition)=="function"and c.condition()then break end;Wait(sleep)end end;if c.thread then Citizen.CreateThread(g)else g()end end