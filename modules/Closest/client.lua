Client.Closest=Client.Closest or{}Client.Closest.Player=function(a,b,c,d)local e=GetActivePlayers()local f,g,h,i;c=c or 2.0;b=vector3(b.x,b.y,b.z)for j=1,#e do local k=e[j]if k~=PlayerId()or d then local l=GetPlayerPed(k)local m=GetEntityCoords(l)local n=#(b-m)if n<c then c=n;f=k;i=Client.GetId(a,l)g=l;h=m end end end;return i,f,g,h end