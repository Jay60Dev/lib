AddStore("ENTITIES",function(entity)
    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end)

Lib.assertEntityData = function(data)
    local checks = {
        {type(data) == "table", "paramater passed to SpawnVehicle must be a table"},
        {type(data.model) == "string", "data.model must be a string"},
        {data.coords, "data.coords must be a vector3 or vector4"},
        {type(data.coords.x) == "number", "data.coords.x must be a number"},
        {type(data.coords.y) == "number", "data.coords.y must be a number"},
        {type(data.coords.z) == "number", "data.coords.z must be a number"},
        {not data.coords.w or type(data.coords.w) == "number", "data.coords.w must be a number or nil"},
        {not data.networked or type(data.networked) == "boolean", "data.networked must be a boolean or nil"},
    }

    for i=1, #checks do
        if not checks[i][1] then
            return false, checks[i][2]
        end
    end

    return true, "success"
end

Lib.LoadModel = function(model)

    local modelHash = type(model) == "string" and joaat(model) or model
    assert(IsModelValid(modelHash), "model does not exist")

    while not HasModelLoaded(modelHash) do
        RequestModel(modelHash)
        Wait(0)
    end

    return modelHash
end