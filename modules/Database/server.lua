local a=function(b)local c={}local d={}for e,f in pairs(b)do d[#d+1]={key=e,value=f}c.keys=("%s%s%s"):format(c.keys or"",c.keys and", "or"",e)c.values=c.values or{}c.values[#c.values+1]=f;c.create=("%s%s %s"):format(c.create or"",c.create and", "or"",("%s %s"):format(e,f))local g=type(f)=="number"and f or("'%s'"):format(tostring(f))c.set=("%s%s%s = %s"):format(c.set or"",c.set and", "or"",e,g)c.where=("%s%s%s = %s"):format(c.where or"",c.where and" AND "or"",e,g)end;local h=string.rep("?, ",#d,"")c.placeholders=h:sub(1,#h-2)return c,d end;Server.Database=Server.Database or{}local i={table=true,vector2=true,vector3=true,vector4=true}Server.Database.Encode=function(j)for e,f in pairs(j)do if i[type(f)]then j[e]=json.encode(f)end end;return j end;Server.Database.Decode=function(j)for e,f in pairs(j)do if type(f)=="string"then local k,l=pcall(json.decode,f)if k and l then j[e]=l else j[e]=f end end end;return j end;Server.Database.GenerateIdentifier=function(m,table,n,o)o=o or"A0A0A0A0"local p=Shared.Random.String("database",o)repeat p=Shared.Random.String("database",o)until not Server.Database.Select("lib",table,"*",{[n]=p})[1]return p end;Server.Database.Query=function(m,q)return MySQL.query.await(q)end;Server.Database.Insert=function(m,r,s)local c=a(Server.Database.Encode(s))local q=("INSERT INTO `%s` (%s) VALUES (%s)"):format(r,c.keys,c.placeholders)local j,t=MySQL.insert.await(q,c.values)if not j then print("Error inserting into database: "..t)end;return j end;Server.Database.Update=function(m,r,s,u)local c=a(Server.Database.Encode(s))local v=a(u)local q=("UPDATE `%s` SET %s WHERE %s"):format(r,c.set,v.where)local j,t=MySQL.query.await(q,c.values)if not j or not j.affectedRows then return false end;return j.affectedRows>0 end;Server.Database.Select=function(m,r,s,u)local v={}if u then v=a(u)end;if not s or s=="*"then s="*"elseif type(s)=="table"then s=a(s)end;local q=("SELECT %s FROM `%s` %s%s"):format(s,r,v.where and"WHERE "or"",v.where or"")local j,t=MySQL.query.await(q,v.values)if not j or not type(j)==table then print("Error selecting from database: ",t)end;local w={}for x,y in pairs(j)do w[x]=Server.Database.Decode(y)end;return w end;Server.Database.Create=function(m,r,s,z)local c=a(s)local q=("CREATE TABLE IF NOT EXISTS `%s` (%s%s)"):format(r,c.create,z or"")local j,t=MySQL.query.await(q)if not j then print("Error creating database table: "..t)end;return j.affectedRows>0 end;Server.Database.Delete=function(m,r,u)local v=a(u)local q=("DELETE FROM `%s` WHERE %s"):format(r,v.where)local j,t=MySQL.query.await(q,v.values)if not j then print("Error deleting from database: "..t)end;return j.affectedRows>0 end