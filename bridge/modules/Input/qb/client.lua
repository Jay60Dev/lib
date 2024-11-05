if not IsStarted("Input","qb-input")then return end;local a=exports["qb-input"]local b={input=true,text=true,number=true,checkbox=true,password=true,color=true,select=true,date=false,slider=false,time=false,["date-range"]=false,["multi-select"]=false}local c={}for d,e in pairs(b)do if e then c[#c+1]=('"%s"'):format(d)end end;table.sort(c)local f=function(g)local h={}for i=1,#g do local j=g[i]if j.type=="input"then j.type="text"end;if j.password then j.type="password"end;if b[j.type]then local k={text=("%s%s"):format(j.label,g.description and("- %s"):format(g.description)or""),name=tostring(#h+1),type=j.type,isRequired=j.required,default=j.default,options=j.options and{}}for l=1,#(j.options or{})do local m=j.options[l]k.options[#k.options+1]={value=m.value,text=m.label,checked=m.checked}end;if j.type=="checkbox"then k.text=""k.options={{text=j.label,value=tostring(#h+1),checked=j.checked}}end;h[#h+1]=k else Lib.Print(('Unsupported input type: ^1"%s"^7, Supported types: ^2%s^7'):format(j.type,table.concat(c,"^7, ^2")))end end;return h end;local n=function(o,p)if p=="number"then return tonumber(o)end;if p=="checkbox"then return o=="true"end;if o=="true"then o=true end;if o=="false"then o=false end;if o=="nil"then o=nil end;return o end;Lib.Input=function(q,g)local r={header=q,submitText="Submit",inputs=f(g)}local s=a:ShowInput(r)local t={}if s==nil then return{}end;for d,e in pairs(s)do local u=tonumber(d)or 0;local v=r.inputs[u].type;t[u]=n(e,v)end;return t end