local a=function(b,c,d,...)return Lib.Callback(b,"Lib:Client:Trigger",d,b,c,"PerformOnPlayerPed",...)end;local e={"AddHealth","RemoveHealth","SetHealth","AddArmour","RemoveArmour","SetArmour"}for f,g in ipairs(e)do Lib[g]=function(b,d,...)return a(b,g,d,...)end end