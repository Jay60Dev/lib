Server.PlayAnim=function(a,b,c)if not DoesEntityExist(b)then return print("Entity doesnt exist")end;local d=Entity(b).state;if Shared.Table.Matches(a,c,d["lib:Animation"]or{})then d:set("lib:Animation",nil,true)end;d:set("lib:Animation",c,true)end