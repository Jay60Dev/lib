if not IsStarted("Target", "ox_target") then return end

local target = exports.ox_target
local convertOptions = function(options)
    local newOptions = {}

    -- Keys are the indexes required, there should be no need to change the values.
    -- with the exception of how paramaters are passed for functions.
    for i = 1, #options do
        newOptions[i] = {
            label = options[i].label,
            name = options[i].name or options[i].label,
            icon = options[i].icon,
            onSelect = function(data)
                if not options[i].onSelect then return end
                options[i].onSelect(data.entity, data.distance, data.coords)
            end,
            canInteract = function(data)
                if not options[i].canInteract then return true end
                return options[i].canInteract(data.entity, data.coords, data.distance)
            end,
            distance = options[i].distance,
        }
    end

    return newOptions
end

local convertZone = function(zone)
    -- Keys are the indexes required, there should be no need to change the values.
    return {
        name = zone.name,
        coords = zone.coords,
        size = zone.size,
        rotation = zone.rotation,
        debug = zone.debug,
    }
end

local loopThroughVariable = function(variable, cb, ...)
    if type(variable) ~= "table" then variable = { variable } end
    for i = 1, #variable do
        cb(variable[i], ...)
    end
end

Lib.Target = {
    AddEntity = function(entity, options)
        -- loopThroughVariable(entity, function(ent)
        --     target:addLocalEntity(ent, convertOptions(options))
        -- end)
        target:addLocalEntity(entity, convertOptions(options))
    end,

    RemoveEntity = function(entity, label)
        -- loopThroughVariable(label, function(label)
        --     target:removeLocalEntity(entity, label)
        -- end)
        target:removeLocalEntity(entity, label)
    end,

    AddModel = function(model, options)
        target:addModel(model, convertOptions(options))
    end,

    RemoveModel = function(model, label)
        target:removeModel(model, label)
    end,

    AddGlobalPed = function(ped, options)
        target:addGlobalPed(convertOptions(options))
    end,

    RemoveGlobalPed = function(label)
        target:removeGlobalPed(label)
    end,

    AddGlobalPlayer = function(options)
        target:addGlobalPlayer(convertOptions(options))
    end,

    RemoveGlobalPlayer = function(label)
        target:removeGlobalPlayer(label)
    end,

    AddGlobalVehicle = function(options)
        target:addGlobalVehicle(convertOptions(options))
    end,

    RemoveGlobalVehicle = function(label)
        target:removeGlobalVehicle(label)
    end,

    AddGlobalObject = function(Object, options)
        target:addGlobalObject(convertOptions(options))
    end,

    RemoveGlobalObject = function(label)
        target:removeGlobalObject(label)
    end,

    AddBoxZone = function(zone, options)
        zone = convertZone(zone)
        zone.options = convertOptions(options)
        target:addBoxZone(zone)
    end,
}