local a=function(b,c,d)if not(Config.Commands[b]and Config.Commands[b].enabled)then return end;Lib.Command(b,c,d,Config.Commands[b].permission or false)end;a("citizenid",function(e)local f=Lib.Player.CharacterId(e)if not f then return end;Lib.Notify(e,("Your Citizen ID is: %s"):format(f))end,{help="Get your Citizen ID"})a("routingbucket",function(e)local g=GetPlayerRoutingBucket(e)if g==0 then g="Default"end;Lib.Notify(e,("Your Routing Bucket is: %s"):format(g))end,{help="Get your Routing Bucket"})a("resetbucket",function(e,h)local i=h[1]and tonumber(h[1])or e;SetPlayerRoutingBucket(i,0)Lib.Notify(e,("You have reset the Routing Bucket for ID:%s"):format(i))Lib.Notify(i,("Your Routing Bucket has been reset by ID:%s"):format(e))end,{help="Reset a player's Routing Bucket",params={{name="player",help="Player ID",optional=true}}})