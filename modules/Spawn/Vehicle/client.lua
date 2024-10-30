---@class SpawnVehicleProps
---@field model string
---@field coords vector3 | vector4
---@field networked? boolean
---@field freeze? boolean
---@field locked? boolean
---@field engine? boolean
---@field lights? boolean
---@field livery? number
---@field plate? string
Lib.SpawnVehicle = function(data)

    local resource = GetInvokingResource()

    assert(Lib.assertEntityData(data))

    local model = Lib.LoadModel(data.model)
    local coords = vector4(data.coords.x, data.coords.y, data.coords.z, data.coords.w or 0.0)
    local networked = data.networked or false

    local vehicle = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, networked, false)

    AddToStore("ENTITIES", resource, vehicle)

    SetModelAsNoLongerNeeded(model)
    SetVehicleOnGroundProperly(vehicle)
    FreezeEntityPosition(vehicle, data.freeze)
    SetVehicleDoorsLocked(vehicle, data.locked and 2 or 1)
    SetVehicleEngineOn(vehicle, data.engine, true, true)
    SetVehicleLights(vehicle, data.lights and 3 or 4)
    SetVehicleLivery(vehicle, data.livery)
    if data.plate then SetVehicleNumberPlateText(vehicle, data.plate) end

    return vehicle
end