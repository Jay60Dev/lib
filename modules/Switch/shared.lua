Shared.Switch=function(a,b,c)local d=c[b]if d then if type(d)=="function"then return d()end;if d~=nil then return d end end;local e=c.default;if e and type(e)=="function"then return e()end end