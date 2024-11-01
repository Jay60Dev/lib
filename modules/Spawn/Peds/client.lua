---@class SpawnPedProps
---@field model string
---@field coords vector3 | vector4
---@field networked? boolean
---@field freeze? boolean
---@field blockEvents? boolean
---@field animation? {dict: string, clip: string}
Lib.SpawnPed = function(data)

    local resource = GetInvokingResource()

    assert(Lib.assertEntityData(data))

    local model = Lib.LoadModel(data.model)
    local coords = vector4(data.coords.x, data.coords.y, data.coords.z, data.coords.w or 0.0)
    local networked = data.networked or false

    local ped = CreatePed(4, model, coords.x, coords.y, coords.z, coords.w, networked, false)

    AddToStore("ENTITIES", resource, ped)

    SetModelAsNoLongerNeeded(model)

    FreezeEntityPosition(ped, data.freeze)

    if data.blockEvents then
        SetBlockingOfNonTemporaryEvents(ped, true)
    end

    if data.animation then
        if DoesAnimDictExist(data.animation.dict) then
            RequestAnimDict(data.animation.dict)
            while not HasAnimDictLoaded(data.animation.dict) do
                Wait(0)
            end
            TaskPlayAnim(ped, data.animation.dict, data.animation.clip, 8.0, 8.0, -1, 1, 0, false, false, false)
        end
    end

    if data.targets and Lib.Target.AddEntity then
        Lib.Target.AddEntity(ped, data.targets)
    end

    return ped
end
