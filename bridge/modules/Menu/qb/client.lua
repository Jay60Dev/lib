if not IsMissing("Menu","qb-menu")then return end;local a=exports["qb-menu"]AddStore("MENUFUNCTIONS")RegisterNetEvent('lib:TriggerMenuEvent',function(b)local c=b.args or{}local resource=b.resource;for d=1,#STORE.MENUFUNCTIONS[resource]do local e=STORE.MENUFUNCTIONS[resource][d]if e.id==b.id then e.func(c)break end end end)local f=function(g,e)local h={}h[#h+1]={header=e.title,isMenuHeader=true}for d=1,#e.options do local i=e.options[d]local j=function(b)if i.serverEvent then TriggerServerEvent(i.serverEvent,b)end;if i.event then TriggerEvent(i.event,b)end;if i.onSelect then i.onSelect(b)end end;local k=("%s:%s:%d"):format(e.id,i.title,d)AddToStore("MENUFUNCTIONS",g,{id=k,func=j})local l={header=i.title,txt=i.description,icon=i.icon,disabled=i.disabled or i.readOnly,params={isServer=false,event='lib:TriggerMenuEvent',args={id=k,resource=resource,args=i.args}}}h[#h+1]=l end;return h end;Lib.Menu=function(g,e)if not(e.id and e.title)then return print("Menu requires an id and title.")end;a:openMenu(f(g,e))end