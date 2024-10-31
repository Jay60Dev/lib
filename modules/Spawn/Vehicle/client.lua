local getColor = function(color)
    local Type = type(color)
    if Type == "number" then
        return color
    elseif Type == "string" then
        return Lib.LookupTable(GetCurrentResourceName(), "lookupTables/carColors.json", color)
    elseif Type == "vector3" then
        return vector3(color.x, color.y, color.z)
    end
end

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
---@field color? number | string | vector3
---@field secondColor? number | string | vector3
---@field windowTint? number | string
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

    if data.color or data.secondColor then

        local primaryColor = getColor(data.color)
        local secondaryColor = getColor(data.secondColor)

        if type(primaryColor) == "number" or type(secondaryColor) == "number" then
            SetVehicleColours(vehicle, type(primaryColor) == "number" and primaryColor or 0, type(secondaryColor) == "number" and secondaryColor or 0)
        end

        if type(primaryColor) == "vector3" then
            print("Setting primary color", primaryColor)
            SetVehicleCustomPrimaryColour(vehicle, primaryColor.x, primaryColor.y, primaryColor.z)
        end

        if type(secondaryColor) == "vector3" then
            SetVehicleCustomSecondaryColour(vehicle, secondaryColor.x, secondaryColor.y, secondaryColor.z)
        end
        
    end

    if data.windowTint then
        local num = type(data.windowTint) == "number" and data.windowTint or Lib.LookupTable(GetCurrentResourceName(), "lookupTables/windowTint.json", data.windowTint)
        SetVehicleWindowTint(vehicle, num)
    end

    return vehicle
end