local a=function(b,c,d)if not(Config.Commands[b]and Config.Commands[b].enabled)then return end;Lib.Command(GetCurrentResourceName(),b,c,d,Config.Commands[b].permission or false)end;a("fixnui",function(e,f)SetNuiFocus(true,true)SetNuiFocus(false,false)Lib.Notify(GetCurrentResourceName(),"NUI should be fixed.")end,{help="Reset a player's Routing Bucket",params={{name="player",help="Player ID",optional=true}}})