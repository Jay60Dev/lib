Lib.Table={Matches=function(a,b)if type(a)~="table"or type(b)~="table"then return a==b end;for c,d in pairs(a)do if b[c]==nil then return false end;if type(d)=="table"then if not Lib.Table.Matches(d,b[c])then return false end else if d~=b[c]then return false end end end;for c,d in pairs(b)do if a[c]==nil then return false end;if type(d)=="table"then if not Lib.Table.Matches(d,a[c])then return false end else if d~=a[c]then return false end end end;return true end}