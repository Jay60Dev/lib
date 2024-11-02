local registerCommand = function(name, cb, data)
    if not (Config.Commands[name] and Config.Commands[name].enabled) then return end
    Lib.Command(name, cb, data, Config.Commands[name].permission or false)
end

registerCommand("citizenid", function(source)
    local citizenid = Lib.Player.CharacterId(source)
    if not citizenid then return end
    Lib.Notify(source, ("Your Citizen ID is: %s"):format(citizenid))
end, {
    help = "Get your Citizen ID",
})

registerCommand("routingbucket", function(source)
    local routingBucket = GetPlayerRoutingBucket(source)
    if routingBucket == 0 then routingBucket = "Default" end
    Lib.Notify(source, ("Your Routing Bucket is: %s"):format(routingBucket))
end,{
    help = "Get your Routing Bucket",
})

registerCommand("resetbucket", function(source, args)
    local player = args[1] and tonumber(args[1]) or source
    SetPlayerRoutingBucket(player, 0)
    Lib.Notify(source, ("You have reset the Routing Bucket for ID:%s"):format(player))
    Lib.Notify(player, ("Your Routing Bucket has been reset by ID:%s"):format(source))
end,{
    help = "Reset a player's Routing Bucket",
    params = {
        {name = "player", help = "Player ID", optional = true}
    }
})