Config=Config or{}Lib={}STORE={}Resources={}Server=IsDuplicityVersion()Client=not Server;local a={}if GetResourceState("ox_lib")=="started"then load(LoadResourceFile("ox_lib","init.lua"))()end;local b=function(c)if c==GetCurrentResourceName()then for d in pairs(STORE)do local e=a[d]for f in pairs(STORE[d])do for g=1,#STORE[d][f]do local h=STORE[d][f][g]e(h)end end end end;for d in pairs(STORE)do local i=STORE[d][c]if i then local e=a[d]for g=1,#i do local h=i[g]e(h)end;STORE[d][c]=nil end end end;RegisterNetEvent('onResourceStop',b)AddStore=function(d,e)STORE[d]={}a[d]=e end;AddToStore=function(j,c,k)if not j then print("STORE is required, got nil")return end;if not c then print("RESOURCE is required, got nil")return end;if not STORE[j]then return print(("STORE %s does not exist"):format(j))end;STORE[j][c]=STORE[j][c]or{}STORE[j][c][#STORE[j][c]+1]=k end;Lib.LookupTable=function(f,l,m)local n=LoadResourceFile(f,l)local o=json.decode(n)m=m:lower()local p=o[m]collectgarbage("collect")return p end;Config.ForceResource=Config.ForceResource or{}Config.RenamedResources=Config.RenamedResources or{}IsStarted=function(q,c)local f=Config.RenamedResources[c]or c;if Config.ForceResource[q]then local r=Config.ForceResource[q]==f;Resources[q]=r and f or Resources[q]return r end;local s=GetResourceState(f)=="started"Resources[q]=s and f or Resources[q]return s end