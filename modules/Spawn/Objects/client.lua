---@class SpawnObjectProps
---@field model string
---@field coords vector3 | vector4
---@field networked? boolean
---@field freeze? boolean
Lib.SpawnObject = function(data)

    local resource = GetInvokingResource()

    assert(Lib.assertEntityData(data))

    local model = Lib.LoadModel(data.model)
    local coords = vector4(data.coords.x, data.coords.y, data.coords.z, data.coords.w or 0.0)
    local networked = data.networked or false

    local object = CreateObject(model, coords.x, coords.y, coords.z, networked, false, false)

    AddToStore("ENTITIES", resource, object)

    SetModelAsNoLongerNeeded(model)

    FreezeEntityPosition(object, data.freeze)

    return object
end