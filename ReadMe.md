# Importing the lib
The lib can be imported by adding the follwing to top of resource's fxmanifest.lua:
```lua
shared_script "@lib/init.lua"
```
# How to use
After importing via the manifest, you now have 2 new global variables: **Lib** and **Cache**
Both of these are objects.
# Lib
## Audio
```lua
local file = "airwrench" -- This is a .ogg file, in the web/assets/sounds folder.
local options = {
    volume = 10, -- optional: number between 1 and 100. Default: 100
    onEnd = { -- optional: a table with what audio to play when this one ends.
        file = "airwrench", -- required if using onEnd
        volume = 10, -- optional: number between 1 and 100. Default: 100

    }
}
Lib.Audio.Play(file, options) -- Client Only
Lib.Audio.Pause(file) -- Client Only
Lib.Audio.Stop(file) -- Client Only
Lib.Audio.StopAll() -- Client Only
```
## Blip
```lua
Lib.AddBlip({ -- Client Only
    coords = vector3(0, 0, 0),
    label = "Test Blip", -- optional: string Default: ""
    sprite = 1, -- optional: number Blip style Default: 1
    scale = 1, -- optional: number Blip scale Default: 0.8
    color = 1, -- optional: number Blip colour Default: 0
    shortRange = true, -- optional boolean Only shows on minimap when nearby Default: true
})
```
## Cache
```lua
 -- Client Only
local ped = Cache.ped
local weapon = Cache.weapon
local vehicle = Cache.veh
local seat = Cache.seat
local coords = Cache.coords
local source = Cache.source
```
We can add change handlers in our resources using:
```lua
Lib.CacheChange("weapon", function(weapon, oldWeapon)
    print(("Weapon changed from: %s to %s"):format(weapon, oldWeapon))
end)
```
This works for all cached values.
## Callbacks
We provide both client and server callbacks.
This means you can register and trigger on both.
Client:
```lua
-- Register a callback, for server to get data from client
Lib.RegisterCallback("nameOfCallback", function(parameter1FromServer, ...)
    return "AnyValue", "Can be", "returned"
end)
-- Get data from server
local variable1, variable2 = Lib.Callback("nameOfCallback", firstParam, secondParam)
```
server:
```lua
-- Register a callback, for client to get data from server
Lib.RegisterCallback("nameOfCallback", function(source, parameter1FromServer, ...)
    return "AnyValue", "Can be", "returned"
end)

-- Get data from client
-- id is the client you want to get data from.
local variable1, variable2 = Lib.Callback("nameOfCallback", id, firstParam, secondParam)
```
## Commands
Can be registered both client and server.
```lua
-- commandName is the /commandName
Lib.Command("commandName", function(source, args)

end, {
    help = "help for chat", 
    params = {}
}, true--[[adminOnly]], true --[[Prevent suggestions in chat.]])
```
## Coordinates
```lua
Lib.GetEntityCoords(entity) -- returns a vector4
Lib.GetOffset(entity or vector3 or vector4, vector3(0, 5, 0)) -- returns a vector4 with the offset from either entity or the coords provided. if vector3, it will use 0 for heading. 

-- example to get coords 5 units infront of player
local forwardVector = Lib.GetOffset(Cache.ped, vector3(0, 5, 0))
```
