Lib.Teleport=function(a,b)b=b or 2000;local c=PlayerPedId()local d=a.w or GetEntityHeading(c)SetEntityInvincible(c,true)FreezeEntityPosition(c,true)SetPlayerControl(PlayerId(),false,256)NetworkFadeOutEntity(c,true,true)DoScreenFadeOut(1000)Lib.Loop(function()end,{timer=100,timeout=b or 3000})SetEntityCoordsNoOffset(c,a.x,a.y,a.z,false,false,false)SetEntityHeading(c,d)DoScreenFadeIn(1000)SetEntityInvincible(c,false)NetworkFadeInEntity(c,true)FreezeEntityPosition(c,false)SetPlayerControl(PlayerId(),true,0)SetGameplayCamRelativeHeading(0)end