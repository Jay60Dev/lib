if not IsStarted("Framework","qbx_core")then return end;local a=exports.qbx_core;local b=function()return a:GetPlayerData()end;Lib.Player={Id=function()return b().citizenid end,Identifier=function(c)print("Identifiers are only available on the server.")return end,License=function()return Lib.Player.Identifier("license")end,Metadata=function(d)return b().metadata[d]end,Job=function()return b().job.name end,JobLabel=function()return b().job.label end,JobLevel=function()return b().job.grade end,JobType=function()return b().job.type end,Duty=function()return b().job.onduty end,Gang=function()return b().gang.name end,GangLabel=function()return b().gang.label end,GangLevel=function()return b().gang.rank end,Money=function(e)if not e then print("Money type not provided")return end;return b().money[e]end,Cash=function()return Lib.Player.Money("cash")end,HasCash=function(f)return Lib.Player.Cash()>=f end,AddCash=function(f)print("Adding cash is only available on the server.")end,RemoveCash=function(f)print("Removing cash is only available on the server.")end,Bank=function()return Lib.Player.Money("bank")end,HasBank=function(f)return Lib.Player.Bank()>=f end,AddBank=function(f)print("Adding bank is only available on the server.")end,RemoveBank=function(f)print("Removing bank is only available on the server.")end}