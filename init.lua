local a=GetCurrentResourceName()local b={NUI={Send=function(a,c,d,e)SetNuiFocus(d,d)SetNuiFocusKeepInput(e)SendNUIMessage(c)end,Callback=function(a,...)RegisterNUICallback(...)end}}Lib=setmetatable(b,{__index=function(f,g)if rawget(f,g)then return rawget(f,g)end;return setmetatable({},{__call=function(h,...)local i=exports['lib']return i[g](i,a,...)end,__index=function(h,j)return function(...)local i=exports['lib']local k=("%s.%s"):format(g,j)return i[k](i,a,...)end end})end})if not IsDuplicityVersion()then Cache=Lib.Cache()RegisterNetEvent("lib:cache:update",function(l,m,n)Cache[l]=m end)end;print=Lib.Print